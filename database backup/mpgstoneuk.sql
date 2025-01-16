-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 16, 2025 at 11:00 AM
-- Server version: 11.3.2-MariaDB
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mpgstoneuk`
--

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_actionscheduler_actions`
--

DROP TABLE IF EXISTS `mpgstoneuk_actionscheduler_actions`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_actionscheduler_actions`
--

INSERT INTO `mpgstoneuk_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(80, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-19 06:28:26', '2024-12-19 06:28:26', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734589706;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734589706;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-19 06:28:31', '2024-12-19 06:28:31', 0, NULL),
(72, 'wpforms_process_purge_spam', 'complete', '2024-12-17 06:41:14', '2024-12-17 06:41:14', 10, '{\"tasks_meta_id\":7}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734417674;s:18:\"\0*\0first_timestamp\";i:1734417674;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734417674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-12-17 06:41:23', '2024-12-17 06:41:23', 0, NULL),
(81, 'action_scheduler/migration_hook', 'complete', '2024-12-18 08:23:05', '2024-12-18 08:23:05', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734510185;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734510185;}', 1, 1, '2024-12-18 08:23:17', '2024-12-18 08:23:17', 0, NULL),
(71, 'wpforms_process_forms_locator_scan', 'complete', '2024-12-17 06:41:14', '2024-12-17 06:41:14', 10, '{\"tasks_meta_id\":6}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734417674;s:18:\"\0*\0first_timestamp\";i:1734417674;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734417674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-12-17 06:41:23', '2024-12-17 06:41:23', 0, NULL),
(70, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-18 06:26:39', '2024-12-18 06:26:39', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734503199;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734503199;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-18 06:28:26', '2024-12-18 06:28:26', 0, NULL),
(66, 'wp_mail_smtp_summary_report_email', 'complete', '2024-12-23 14:00:00', '2024-12-23 14:00:00', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734962400;s:18:\"\0*\0first_timestamp\";i:1734962400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734962400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2024-12-24 03:37:21', '2024-12-24 03:37:21', 0, NULL),
(110, 'wp_mail_smtp_admin_notifications_update', 'pending', '2025-01-17 10:59:59', '2025-01-17 10:59:59', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737111599;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737111599;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(68, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-17 06:26:38', '2024-12-17 06:26:38', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734416798;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734416798;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-17 06:26:39', '2024-12-17 06:26:39', 0, NULL),
(109, 'wp_mail_smtp_summary_report_email', 'pending', '2025-01-23 10:51:54', '2025-01-23 10:51:54', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737629514;s:18:\"\0*\0first_timestamp\";i:1734962400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737629514;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(79, 'action_scheduler/migration_hook', 'complete', '2024-12-17 06:45:09', '2024-12-17 06:45:09', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734417909;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734417909;}', 1, 1, '2024-12-17 06:45:31', '2024-12-17 06:45:31', 0, NULL),
(75, 'wpforms_admin_notifications_update', 'complete', '2024-12-17 06:41:17', '2024-12-17 06:41:17', 10, '{\"tasks_meta_id\":9}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2024-12-17 06:41:23', '2024-12-17 06:41:23', 0, NULL),
(84, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-20 06:28:31', '2024-12-20 06:28:31', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734676111;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734676111;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-20 10:54:03', '2024-12-20 10:54:03', 0, NULL),
(82, 'action_scheduler/migration_hook', 'complete', '2024-12-18 10:30:25', '2024-12-18 10:30:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734517825;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734517825;}', 1, 1, '2024-12-18 10:30:35', '2024-12-18 10:30:35', 0, NULL),
(83, 'action_scheduler/migration_hook', 'complete', '2024-12-19 04:13:43', '2024-12-19 04:13:43', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734581623;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734581623;}', 1, 1, '2024-12-19 04:14:23', '2024-12-19 04:14:23', 0, NULL),
(78, 'action_scheduler/migration_hook', 'complete', '2024-12-17 06:42:32', '2024-12-17 06:42:32', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734417752;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734417752;}', 1, 1, '2024-12-17 06:43:23', '2024-12-17 06:43:23', 0, NULL),
(85, 'action_scheduler/migration_hook', 'complete', '2024-12-19 09:36:12', '2024-12-19 09:36:12', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734600972;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734600972;}', 1, 1, '2024-12-19 09:36:37', '2024-12-19 09:36:37', 0, NULL),
(86, 'action_scheduler/migration_hook', 'complete', '2024-12-19 09:38:42', '2024-12-19 09:38:42', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734601122;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734601122;}', 1, 1, '2024-12-19 09:38:44', '2024-12-19 09:38:44', 0, NULL),
(87, 'action_scheduler/migration_hook', 'complete', '2024-12-19 10:14:41', '2024-12-19 10:14:41', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734603281;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734603281;}', 1, 1, '2024-12-19 10:14:44', '2024-12-19 10:14:44', 0, NULL),
(88, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-21 10:54:03', '2024-12-21 10:54:03', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734778443;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734778443;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-23 03:46:35', '2024-12-23 03:46:35', 0, NULL),
(89, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-24 03:46:35', '2024-12-24 03:46:35', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735011995;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735011995;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-24 03:46:48', '2024-12-24 03:46:48', 0, NULL),
(90, 'action_scheduler/migration_hook', 'complete', '2024-12-23 04:48:12', '2024-12-23 04:48:12', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734929292;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734929292;}', 1, 1, '2024-12-23 04:48:34', '2024-12-23 04:48:34', 0, NULL),
(91, 'action_scheduler/migration_hook', 'complete', '2024-12-23 07:17:59', '2024-12-23 07:17:59', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734938279;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734938279;}', 1, 1, '2024-12-23 07:18:02', '2024-12-23 07:18:02', 0, NULL),
(92, 'action_scheduler/migration_hook', 'complete', '2024-12-23 09:09:16', '2024-12-23 09:09:16', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1734944956;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1734944956;}', 1, 1, '2024-12-23 09:10:12', '2024-12-23 09:10:12', 0, NULL),
(93, 'wp_mail_smtp_summary_report_email', 'complete', '2024-12-31 03:37:21', '2024-12-31 03:37:21', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735616241;s:18:\"\0*\0first_timestamp\";i:1734962400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735616241;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2024-12-31 10:29:25', '2024-12-31 10:29:25', 0, NULL),
(94, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-25 03:46:48', '2024-12-25 03:46:48', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735098408;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735098408;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-26 03:57:00', '2024-12-26 03:57:00', 0, NULL),
(95, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-27 03:57:00', '2024-12-27 03:57:00', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735271820;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735271820;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-27 04:12:04', '2024-12-27 04:12:04', 0, NULL),
(96, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-28 04:12:04', '2024-12-28 04:12:04', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735359124;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735359124;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-30 03:33:15', '2024-12-30 03:33:15', 0, NULL),
(97, 'action_scheduler/migration_hook', 'complete', '2024-12-27 06:46:02', '2024-12-27 06:46:02', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1735281962;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1735281962;}', 1, 1, '2024-12-27 06:46:28', '2024-12-27 06:46:28', 0, NULL),
(98, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-12-31 03:33:15', '2024-12-31 03:33:15', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735615995;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735615995;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-12-31 10:29:24', '2024-12-31 10:29:24', 0, NULL),
(101, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-02 10:35:46', '2025-01-02 10:35:46', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735814146;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735814146;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-02 10:36:39', '2025-01-02 10:36:39', 0, NULL),
(99, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-01 10:29:24', '2025-01-01 10:29:24', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735727364;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735727364;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-01 10:35:46', '2025-01-01 10:35:46', 0, NULL),
(100, 'wp_mail_smtp_summary_report_email', 'complete', '2025-01-07 10:29:25', '2025-01-07 10:29:25', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1736245765;s:18:\"\0*\0first_timestamp\";i:1734962400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1736245765;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2025-01-09 08:34:31', '2025-01-09 08:34:31', 0, NULL),
(102, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-03 10:36:39', '2025-01-03 10:36:39', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1735900599;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1735900599;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-07 04:56:25', '2025-01-07 04:56:25', 0, NULL),
(103, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-08 04:56:25', '2025-01-08 04:56:25', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1736312185;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1736312185;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-09 08:34:32', '2025-01-09 08:34:32', 0, NULL),
(104, 'wp_mail_smtp_summary_report_email', 'complete', '2025-01-16 08:34:31', '2025-01-16 08:34:31', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737016471;s:18:\"\0*\0first_timestamp\";i:1734962400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737016471;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2025-01-16 10:51:54', '2025-01-16 10:51:54', 0, NULL),
(106, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-11 08:34:44', '2025-01-11 08:34:44', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1736584484;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1736584484;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-14 04:45:12', '2025-01-14 04:45:12', 0, NULL),
(105, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-10 08:34:32', '2025-01-10 08:34:32', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1736498072;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1736498072;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-10 08:34:44', '2025-01-10 08:34:44', 0, NULL),
(107, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-15 04:45:12', '2025-01-15 04:45:12', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1736916312;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1736916312;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-15 10:55:09', '2025-01-15 10:55:09', 0, NULL),
(108, 'wp_mail_smtp_admin_notifications_update', 'complete', '2025-01-16 10:55:09', '2025-01-16 10:55:09', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1737024909;s:18:\"\0*\0first_timestamp\";i:1734330386;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1737024909;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-01-16 10:59:59', '2025-01-16 10:59:59', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_actionscheduler_claims`
--

DROP TABLE IF EXISTS `mpgstoneuk_actionscheduler_claims`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=2577 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_actionscheduler_groups`
--

DROP TABLE IF EXISTS `mpgstoneuk_actionscheduler_groups`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_actionscheduler_groups`
--

INSERT INTO `mpgstoneuk_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wpforms'),
(3, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_actionscheduler_logs`
--

DROP TABLE IF EXISTS `mpgstoneuk_actionscheduler_logs`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_actionscheduler_logs`
--

INSERT INTO `mpgstoneuk_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(36, 70, 'action created', '2024-12-17 06:26:39', '2024-12-17 06:26:39'),
(38, 72, 'action created', '2024-12-17 06:41:14', '2024-12-17 06:41:14'),
(37, 71, 'action created', '2024-12-17 06:41:14', '2024-12-17 06:41:14'),
(148, 104, 'action complete via WP Cron', '2025-01-16 10:51:54', '2025-01-16 10:51:54'),
(149, 109, 'action created', '2025-01-16 10:51:54', '2025-01-16 10:51:54'),
(150, 108, 'action started via WP Cron', '2025-01-16 10:59:59', '2025-01-16 10:59:59'),
(21, 66, 'action created', '2024-12-16 06:25:00', '2024-12-16 06:25:00'),
(152, 110, 'action created', '2025-01-16 10:59:59', '2025-01-16 10:59:59'),
(25, 68, 'action created', '2024-12-16 06:26:38', '2024-12-16 06:26:38'),
(151, 108, 'action complete via WP Cron', '2025-01-16 10:59:59', '2025-01-16 10:59:59'),
(34, 68, 'action started via WP Cron', '2024-12-17 06:26:39', '2024-12-17 06:26:39'),
(35, 68, 'action complete via WP Cron', '2024-12-17 06:26:39', '2024-12-17 06:26:39'),
(147, 104, 'action started via WP Cron', '2025-01-16 10:51:48', '2025-01-16 10:51:48'),
(58, 79, 'action started via WP Cron', '2024-12-17 06:45:31', '2024-12-17 06:45:31'),
(41, 75, 'action created', '2024-12-17 06:41:17', '2024-12-17 06:41:17'),
(42, 71, 'action started via WP Cron', '2024-12-17 06:41:23', '2024-12-17 06:41:23'),
(43, 71, 'action complete via WP Cron', '2024-12-17 06:41:23', '2024-12-17 06:41:23'),
(59, 79, 'action complete via WP Cron', '2024-12-17 06:45:31', '2024-12-17 06:45:31'),
(45, 72, 'action started via WP Cron', '2024-12-17 06:41:23', '2024-12-17 06:41:23'),
(46, 72, 'action complete via WP Cron', '2024-12-17 06:41:23', '2024-12-17 06:41:23'),
(48, 75, 'action started via WP Cron', '2024-12-17 06:41:23', '2024-12-17 06:41:23'),
(49, 75, 'action complete via WP Cron', '2024-12-17 06:41:23', '2024-12-17 06:41:23'),
(55, 78, 'action started via WP Cron', '2024-12-17 06:43:23', '2024-12-17 06:43:23'),
(56, 78, 'action complete via WP Cron', '2024-12-17 06:43:23', '2024-12-17 06:43:23'),
(57, 79, 'action created', '2024-12-17 06:44:09', '2024-12-17 06:44:09'),
(54, 78, 'action created', '2024-12-17 06:41:32', '2024-12-17 06:41:32'),
(60, 70, 'action started via WP Cron', '2024-12-18 06:28:25', '2024-12-18 06:28:25'),
(61, 70, 'action complete via WP Cron', '2024-12-18 06:28:26', '2024-12-18 06:28:26'),
(62, 80, 'action created', '2024-12-18 06:28:26', '2024-12-18 06:28:26'),
(63, 81, 'action created', '2024-12-18 08:22:05', '2024-12-18 08:22:05'),
(64, 81, 'action started via Async Request', '2024-12-18 08:23:17', '2024-12-18 08:23:17'),
(65, 81, 'action complete via Async Request', '2024-12-18 08:23:17', '2024-12-18 08:23:17'),
(66, 82, 'action created', '2024-12-18 10:29:25', '2024-12-18 10:29:25'),
(67, 82, 'action started via Async Request', '2024-12-18 10:30:35', '2024-12-18 10:30:35'),
(68, 82, 'action complete via Async Request', '2024-12-18 10:30:35', '2024-12-18 10:30:35'),
(69, 83, 'action created', '2024-12-19 04:12:43', '2024-12-19 04:12:43'),
(70, 83, 'action started via WP Cron', '2024-12-19 04:14:23', '2024-12-19 04:14:23'),
(71, 83, 'action complete via WP Cron', '2024-12-19 04:14:23', '2024-12-19 04:14:23'),
(72, 80, 'action started via WP Cron', '2024-12-19 06:28:30', '2024-12-19 06:28:30'),
(73, 80, 'action complete via WP Cron', '2024-12-19 06:28:31', '2024-12-19 06:28:31'),
(74, 84, 'action created', '2024-12-19 06:28:31', '2024-12-19 06:28:31'),
(75, 85, 'action created', '2024-12-19 09:35:12', '2024-12-19 09:35:12'),
(76, 85, 'action started via WP Cron', '2024-12-19 09:36:37', '2024-12-19 09:36:37'),
(77, 85, 'action complete via WP Cron', '2024-12-19 09:36:37', '2024-12-19 09:36:37'),
(78, 86, 'action created', '2024-12-19 09:37:42', '2024-12-19 09:37:42'),
(79, 86, 'action started via WP Cron', '2024-12-19 09:38:44', '2024-12-19 09:38:44'),
(80, 86, 'action complete via WP Cron', '2024-12-19 09:38:44', '2024-12-19 09:38:44'),
(81, 87, 'action created', '2024-12-19 10:13:41', '2024-12-19 10:13:41'),
(82, 87, 'action started via WP Cron', '2024-12-19 10:14:44', '2024-12-19 10:14:44'),
(83, 87, 'action complete via WP Cron', '2024-12-19 10:14:44', '2024-12-19 10:14:44'),
(84, 84, 'action started via WP Cron', '2024-12-20 10:54:03', '2024-12-20 10:54:03'),
(85, 84, 'action complete via WP Cron', '2024-12-20 10:54:03', '2024-12-20 10:54:03'),
(86, 88, 'action created', '2024-12-20 10:54:03', '2024-12-20 10:54:03'),
(87, 88, 'action started via WP Cron', '2024-12-23 03:46:34', '2024-12-23 03:46:34'),
(88, 88, 'action complete via WP Cron', '2024-12-23 03:46:35', '2024-12-23 03:46:35'),
(89, 89, 'action created', '2024-12-23 03:46:35', '2024-12-23 03:46:35'),
(90, 90, 'action created', '2024-12-23 04:47:12', '2024-12-23 04:47:12'),
(91, 90, 'action started via WP Cron', '2024-12-23 04:48:34', '2024-12-23 04:48:34'),
(92, 90, 'action complete via WP Cron', '2024-12-23 04:48:34', '2024-12-23 04:48:34'),
(93, 91, 'action created', '2024-12-23 07:16:59', '2024-12-23 07:16:59'),
(94, 91, 'action started via WP Cron', '2024-12-23 07:18:02', '2024-12-23 07:18:02'),
(95, 91, 'action complete via WP Cron', '2024-12-23 07:18:02', '2024-12-23 07:18:02'),
(96, 92, 'action created', '2024-12-23 09:08:16', '2024-12-23 09:08:16'),
(97, 92, 'action started via WP Cron', '2024-12-23 09:10:12', '2024-12-23 09:10:12'),
(98, 92, 'action complete via WP Cron', '2024-12-23 09:10:12', '2024-12-23 09:10:12'),
(99, 66, 'action started via WP Cron', '2024-12-24 03:37:21', '2024-12-24 03:37:21'),
(100, 66, 'action complete via WP Cron', '2024-12-24 03:37:21', '2024-12-24 03:37:21'),
(101, 93, 'action created', '2024-12-24 03:37:21', '2024-12-24 03:37:21'),
(102, 89, 'action started via Async Request', '2024-12-24 03:46:47', '2024-12-24 03:46:47'),
(103, 89, 'action complete via Async Request', '2024-12-24 03:46:48', '2024-12-24 03:46:48'),
(104, 94, 'action created', '2024-12-24 03:46:48', '2024-12-24 03:46:48'),
(105, 94, 'action started via WP Cron', '2024-12-26 03:56:59', '2024-12-26 03:56:59'),
(106, 94, 'action complete via WP Cron', '2024-12-26 03:57:00', '2024-12-26 03:57:00'),
(107, 95, 'action created', '2024-12-26 03:57:00', '2024-12-26 03:57:00'),
(108, 95, 'action started via WP Cron', '2024-12-27 04:12:03', '2024-12-27 04:12:03'),
(109, 95, 'action complete via WP Cron', '2024-12-27 04:12:04', '2024-12-27 04:12:04'),
(110, 96, 'action created', '2024-12-27 04:12:04', '2024-12-27 04:12:04'),
(111, 97, 'action created', '2024-12-27 06:45:02', '2024-12-27 06:45:02'),
(112, 97, 'action started via WP Cron', '2024-12-27 06:46:28', '2024-12-27 06:46:28'),
(113, 97, 'action complete via WP Cron', '2024-12-27 06:46:28', '2024-12-27 06:46:28'),
(114, 96, 'action started via WP Cron', '2024-12-30 03:33:15', '2024-12-30 03:33:15'),
(115, 96, 'action complete via WP Cron', '2024-12-30 03:33:15', '2024-12-30 03:33:15'),
(116, 98, 'action created', '2024-12-30 03:33:15', '2024-12-30 03:33:15'),
(117, 98, 'action started via WP Cron', '2024-12-31 10:29:24', '2024-12-31 10:29:24'),
(118, 98, 'action complete via WP Cron', '2024-12-31 10:29:24', '2024-12-31 10:29:24'),
(119, 99, 'action created', '2024-12-31 10:29:24', '2024-12-31 10:29:24'),
(120, 93, 'action started via WP Cron', '2024-12-31 10:29:24', '2024-12-31 10:29:24'),
(121, 93, 'action complete via WP Cron', '2024-12-31 10:29:25', '2024-12-31 10:29:25'),
(122, 100, 'action created', '2024-12-31 10:29:25', '2024-12-31 10:29:25'),
(123, 99, 'action started via WP Cron', '2025-01-01 10:35:45', '2025-01-01 10:35:45'),
(124, 99, 'action complete via WP Cron', '2025-01-01 10:35:46', '2025-01-01 10:35:46'),
(125, 101, 'action created', '2025-01-01 10:35:46', '2025-01-01 10:35:46'),
(126, 101, 'action started via WP Cron', '2025-01-02 10:36:38', '2025-01-02 10:36:38'),
(127, 101, 'action complete via WP Cron', '2025-01-02 10:36:39', '2025-01-02 10:36:39'),
(128, 102, 'action created', '2025-01-02 10:36:39', '2025-01-02 10:36:39'),
(129, 102, 'action started via WP Cron', '2025-01-07 04:56:24', '2025-01-07 04:56:24'),
(130, 102, 'action complete via WP Cron', '2025-01-07 04:56:25', '2025-01-07 04:56:25'),
(131, 103, 'action created', '2025-01-07 04:56:25', '2025-01-07 04:56:25'),
(132, 100, 'action started via WP Cron', '2025-01-09 08:34:31', '2025-01-09 08:34:31'),
(133, 100, 'action complete via WP Cron', '2025-01-09 08:34:31', '2025-01-09 08:34:31'),
(134, 104, 'action created', '2025-01-09 08:34:31', '2025-01-09 08:34:31'),
(135, 103, 'action started via WP Cron', '2025-01-09 08:34:31', '2025-01-09 08:34:31'),
(136, 103, 'action complete via WP Cron', '2025-01-09 08:34:32', '2025-01-09 08:34:32'),
(137, 105, 'action created', '2025-01-09 08:34:32', '2025-01-09 08:34:32'),
(138, 105, 'action started via WP Cron', '2025-01-10 08:34:43', '2025-01-10 08:34:43'),
(139, 105, 'action complete via WP Cron', '2025-01-10 08:34:44', '2025-01-10 08:34:44'),
(140, 106, 'action created', '2025-01-10 08:34:44', '2025-01-10 08:34:44'),
(141, 106, 'action started via WP Cron', '2025-01-14 04:45:11', '2025-01-14 04:45:11'),
(142, 106, 'action complete via WP Cron', '2025-01-14 04:45:12', '2025-01-14 04:45:12'),
(143, 107, 'action created', '2025-01-14 04:45:12', '2025-01-14 04:45:12'),
(144, 107, 'action started via WP Cron', '2025-01-15 10:55:08', '2025-01-15 10:55:08'),
(145, 107, 'action complete via WP Cron', '2025-01-15 10:55:09', '2025-01-15 10:55:09'),
(146, 108, 'action created', '2025-01-15 10:55:09', '2025-01-15 10:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_commentmeta`
--

DROP TABLE IF EXISTS `mpgstoneuk_commentmeta`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_comments`
--

DROP TABLE IF EXISTS `mpgstoneuk_comments`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_comments`
--

INSERT INTO `mpgstoneuk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-12-12 04:21:39', '2024-12-12 04:21:39', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_links`
--

DROP TABLE IF EXISTS `mpgstoneuk_links`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_options`
--

DROP TABLE IF EXISTS `mpgstoneuk_options`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=9581 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_options`
--

INSERT INTO `mpgstoneuk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:13:{i:1737025222;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1737026499;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1737044555;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737048098;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737049898;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737051698;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737087699;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737087755;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737087762;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737096051;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737606566;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1737606570;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/mpgstoneuk', 'on'),
(3, 'home', 'http://localhost/mpgstoneuk', 'on'),
(4, 'blogname', 'MPG Stone UK', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'developer@mpgstone.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:182:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:29:\"product/%product_category%/?$\";s:27:\"index.php?post_type=product\";s:59:\"product/%product_category%/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:54:\"product/%product_category%/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:46:\"product/%product_category%/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:38:\"wpdiscuzsubscription/([a-z0-9-]+)[/]?$\";s:42:\"index.php?wpdiscuzsubscription=$matches[1]\";s:7:\"blog/?$\";s:24:\"index.php?post_type=blog\";s:37:\"blog/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=blog&feed=$matches[1]\";s:32:\"blog/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=blog&feed=$matches[1]\";s:24:\"blog/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=blog&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"wpdiscuz_form/([^/]+)/embed/?$\";s:46:\"index.php?wpdiscuz_form=$matches[1]&embed=true\";s:34:\"wpdiscuz_form/([^/]+)/trackback/?$\";s:40:\"index.php?wpdiscuz_form=$matches[1]&tb=1\";s:42:\"wpdiscuz_form/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?wpdiscuz_form=$matches[1]&paged=$matches[2]\";s:49:\"wpdiscuz_form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?wpdiscuz_form=$matches[1]&cpage=$matches[2]\";s:38:\"wpdiscuz_form/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?wpdiscuz_form=$matches[1]&page=$matches[2]\";s:30:\"wpdiscuz_form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"wpdiscuz_form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"wpdiscuz_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wpdiscuz_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wpdiscuz_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"wpdiscuz_form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"product/[^/]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"product/[^/]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"product/[^/]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"product/[^/]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"product/[^/]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"product/[^/]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"product/([^/]+)/([^/]+)/embed/?$\";s:69:\"index.php?product_category=$matches[1]&product=$matches[2]&embed=true\";s:36:\"product/([^/]+)/([^/]+)/trackback/?$\";s:63:\"index.php?product_category=$matches[1]&product=$matches[2]&tb=1\";s:56:\"product/([^/]+)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:75:\"index.php?product_category=$matches[1]&product=$matches[2]&feed=$matches[3]\";s:51:\"product/([^/]+)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:75:\"index.php?product_category=$matches[1]&product=$matches[2]&feed=$matches[3]\";s:44:\"product/([^/]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:76:\"index.php?product_category=$matches[1]&product=$matches[2]&paged=$matches[3]\";s:51:\"product/([^/]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:76:\"index.php?product_category=$matches[1]&product=$matches[2]&cpage=$matches[3]\";s:40:\"product/([^/]+)/([^/]+)(?:/([0-9]+))?/?$\";s:75:\"index.php?product_category=$matches[1]&product=$matches[2]&page=$matches[3]\";s:30:\"product/[^/]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"product/[^/]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"product/[^/]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"product/[^/]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"product/[^/]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"product/[^/]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product_category=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product_category=$matches[1]&feed=$matches[2]\";s:24:\"product/([^/]+)/embed/?$\";s:49:\"index.php?product_category=$matches[1]&embed=true\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?product_category=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?product_category=$matches[1]&cpage=$matches[2]\";s:18:\"product/([^/]+)/?$\";s:38:\"index.php?product_category=$matches[1]\";s:59:\"product-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product_category=$matches[1]&feed=$matches[2]\";s:54:\"product-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product_category=$matches[1]&feed=$matches[2]\";s:35:\"product-categories/([^/]+)/embed/?$\";s:49:\"index.php?product_category=$matches[1]&embed=true\";s:47:\"product-categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?product_category=$matches[1]&paged=$matches[2]\";s:29:\"product-categories/([^/]+)/?$\";s:38:\"index.php?product_category=$matches[1]\";s:53:\"product-tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:48:\"product-tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:29:\"product-tags/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:41:\"product-tags/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:23:\"product-tags/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:32:\"blog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blog/([^/]+)/embed/?$\";s:37:\"index.php?blog=$matches[1]&embed=true\";s:25:\"blog/([^/]+)/trackback/?$\";s:31:\"index.php?blog=$matches[1]&tb=1\";s:45:\"blog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?blog=$matches[1]&feed=$matches[2]\";s:40:\"blog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?blog=$matches[1]&feed=$matches[2]\";s:33:\"blog/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?blog=$matches[1]&paged=$matches[2]\";s:40:\"blog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?blog=$matches[1]&cpage=$matches[2]\";s:29:\"blog/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?blog=$matches[1]&page=$matches[2]\";s:21:\"blog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"blog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"blog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"blog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"blog-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?blog_category=$matches[1]&feed=$matches[2]\";s:49:\"blog-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?blog_category=$matches[1]&feed=$matches[2]\";s:30:\"blog-category/([^/]+)/embed/?$\";s:46:\"index.php?blog_category=$matches[1]&embed=true\";s:42:\"blog-category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?blog_category=$matches[1]&paged=$matches[2]\";s:24:\"blog-category/([^/]+)/?$\";s:35:\"index.php?blog_category=$matches[1]\";s:49:\"blog-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?blog_tag=$matches[1]&feed=$matches[2]\";s:44:\"blog-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?blog_tag=$matches[1]&feed=$matches[2]\";s:25:\"blog-tag/([^/]+)/embed/?$\";s:41:\"index.php?blog_tag=$matches[1]&embed=true\";s:37:\"blog-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?blog_tag=$matches[1]&paged=$matches[2]\";s:19:\"blog-tag/([^/]+)/?$\";s:30:\"index.php?blog_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=39&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:9:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:63:\"custom-plugin-for-breadcrumbs/custom-plugin-for-breadcrumbs.php\";i:5;s:87:\"custom-post-type-with-categories-and-tags/custom-post-type-with-categories-and-tags.php\";i:6;s:41:\"custom-search-form/custom-search-form.php\";i:7;s:57:\"custom-testimonials-slider/custom-testimonials-slider.php\";i:8;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:2:{i:0;s:73:\"C:\\wamp64\\www\\mpgstoneuk/wp-content/themes/twentytwentyonechild/style.css\";i:1;s:0:\"\";}', 'off'),
(41, 'template', 'twentytwentyone', 'on'),
(42, 'stylesheet', 'twentytwentyonechild', 'on'),
(43, 'comment_registration', '', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '1', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '39', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1749529298', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'mpgstoneuk_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:73:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"read_wpdiscuz_form\";b:1;s:19:\"read_wpdiscuz_forms\";b:1;s:18:\"edit_wpdiscuz_form\";b:1;s:19:\"edit_wpdiscuz_forms\";b:1;s:26:\"edit_others_wpdiscuz_forms\";b:1;s:29:\"edit_published_wpdiscuz_forms\";b:1;s:22:\"publish_wpdiscuz_forms\";b:1;s:20:\"delete_wpdiscuz_form\";b:1;s:21:\"delete_wpdiscuz_forms\";b:1;s:28:\"delete_others_wpdiscuz_forms\";b:1;s:29:\"delete_private_wpdiscuz_forms\";b:1;s:31:\"delete_published_wpdiscuz_forms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto');
INSERT INTO `mpgstoneuk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(9577, '_site_transient_timeout_theme_roots', '1737026518', 'off'),
(9578, '_site_transient_theme_roots', 'a:2:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:20:\"twentytwentyonechild\";s:7:\"/themes\";}', 'off'),
(4923, 'wp_paginate_options', 'a:22:{s:5:\"title\";s:6:\"Pages:\";s:8:\"nextpage\";s:7:\"&raquo;\";s:12:\"previouspage\";s:7:\"&laquo;\";s:3:\"css\";b:1;s:5:\"slash\";b:0;s:6:\"before\";s:24:\"<div class=\"navigation\">\";s:5:\"after\";s:6:\"</div>\";s:5:\"empty\";b:1;s:5:\"range\";i:3;s:6:\"anchor\";i:1;s:3:\"gap\";i:3;s:10:\"everywhere\";b:1;s:9:\"home-page\";b:0;s:9:\"blog-page\";b:0;s:11:\"search-page\";b:0;s:13:\"category-page\";b:0;s:12:\"archive-page\";b:0;s:8:\"position\";s:4:\"none\";s:24:\"hide-standard-pagination\";b:0;s:13:\"hide-ellipses\";b:0;s:4:\"font\";s:12:\"font-inherit\";s:6:\"preset\";s:7:\"default\";}', 'auto'),
(126, 'theme_mods_twentytwentyfive', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1733979346;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'off'),
(125, 'recovery_keys', 'a:0:{}', 'off'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"d4f91a4a5ba654320d900b46a0471756\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(7297, 'wp_mail_smtp_summary_report_email_last_sent_week', '03', 'auto'),
(2644, 'options_footer_logo', '45', 'off'),
(2645, '_options_footer_logo', 'field_6760f33ede89a', 'off'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1737024716;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}', 'off'),
(2018, 'action_scheduler_lock_async-request-runner', '678109461d8dd3.04939295|1736509826', 'no'),
(356, 'theme_switched', '', 'auto'),
(394, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1737024718;s:7:\"checked\";a:2:{s:15:\"twentytwentyone\";s:3:\"2.4\";s:20:\"twentytwentyonechild\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.2.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(9570, '_site_transient_timeout_wp_theme_files_patterns-a2c5941e2a9fc7f65af6548610ebd0af', '1737026508', 'off'),
(9571, '_site_transient_wp_theme_files_patterns-a2c5941e2a9fc7f65af6548610ebd0af', 'a:2:{s:7:\"version\";s:3:\"2.4\";s:8:\"patterns\";a:0:{}}', 'off'),
(156, 'finished_updating_comment_type', '1', 'auto'),
(138, 'can_compress_scripts', '1', 'on'),
(6590, 'wpdiscuz-addon-note-dismissed', 'BuddyPress Integration, Tenor GIFs Integration, Voice Commenting, GIPHY Integration, User Notifications', 'auto'),
(1643, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(3326, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'auto'),
(9163, '_site_transient_timeout_browser_f51bb482c660d0eeadd1f058058a2b35', '1737093459', 'off'),
(9164, '_site_transient_browser_f51bb482c660d0eeadd1f058058a2b35', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"131.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(8487, 'action_scheduler_migration_status', 'complete', 'auto'),
(1363, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'auto'),
(1364, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":0}', 'on'),
(151, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(159, 'acf_first_activated_version', '6.3.11', 'on'),
(160, 'acf_site_health', '{\"version\":\"6.3.4\",\"plugin_type\":\"PRO\",\"activated\":true,\"activated_url\":\"http:\\/\\/localhost\\/mpgstoneuk\",\"license_type\":\"\",\"license_status\":\"active\",\"subscription_expires\":\"\",\"wp_version\":\"6.7.1\",\"mysql_version\":\"11.3.2-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Twenty Twenty-One Child\",\"version\":\"1.0.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"parent_theme\":{\"name\":\"Twenty Twenty-One\",\"version\":\"2.4\",\"theme_uri\":\"https:\\/\\/wordpress.org\\/themes\\/twentytwentyone\\/\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.11\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"advanced-custom-fields-pro-master\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.3.4\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"classic-editor\\/classic-editor.php\":{\"name\":\"Classic Editor\",\"version\":\"1.6.7\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/classic-editor\\/\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"6.0.2\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"custom-plugin-for-breadcrumbs\\/custom-plugin-for-breadcrumbs.php\":{\"name\":\"Custom plugin for breadcrumbs\",\"version\":\"1.0\",\"plugin_uri\":\"\"},\"custom-testimonials-slider\\/custom-testimonials-slider.php\":{\"name\":\"Custom Post Type For Testimonials\",\"version\":\"1.0\",\"plugin_uri\":\"\"},\"custom-search-form\\/custom-search-form.php\":{\"name\":\"Custom Post Type Search Form with Custom Results Template\",\"version\":\"1.0\",\"plugin_uri\":\"\"},\"custom-post-type-with-categories-and-tags\\/custom-post-type-with-categories-and-tags.php\":{\"name\":\"Custom Post Type with Categories and Tags\",\"version\":\"1.0\",\"plugin_uri\":\"\"},\"wp-mail-smtp\\/wp_mail_smtp.php\":{\"name\":\"WP Mail SMTP\",\"version\":\"4.3.0\",\"plugin_uri\":\"https:\\/\\/wpmailsmtp.com\\/\"}},\"ui_field_groups\":\"5\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"image\":2,\"flexible_content\":1,\"repeater\":2},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"7\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"7\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"4\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1733977770,\"event_first_created_ui_options_page\":1733978036,\"event_first_created_field_group\":1734320960,\"last_updated\":1737024715}', 'off'),
(161, 'recently_activated', 'a:3:{s:64:\"custom-plugin-related-products/custom-plugin-related-product.php\";i:1734944896;s:50:\"custom-customer-reviews/custom-customer-revies.php\";i:1734938219;s:31:\"wpdiscuz/class.WpdiscuzCore.php\";i:1734929232;}', 'off'),
(163, 'acf_version', '6.3.4', 'auto'),
(399, 'theme_mods_twentytwentyonechild', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:45;s:16:\"background_color\";s:6:\"fcfcfc\";}', 'on'),
(355, 'theme_mods_twentytwentythree', 'a:4:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1733979207;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'off'),
(354, 'current_theme', 'Twenty Twenty-One Child', 'auto'),
(1859, 'site_logo', '45', 'auto'),
(169, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo4OiIqKioqKioqKiI7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvbXBnc3RvbmV1ayI7fQ==', 'auto'),
(170, 'acf_pro_license_status', 'a:2:{s:6:\"status\";s:6:\"active\";s:10:\"next_check\";i:15633226782;}', 'auto'),
(9568, '_site_transient_timeout_wp_theme_files_patterns-a5aafb52975ba6a2e132f623d089d4c9', '1737026508', 'off'),
(9569, '_site_transient_wp_theme_files_patterns-a5aafb52975ba6a2e132f623d089d4c9', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(385, 'theme_mods_twentytwentyone', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1733979621;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'off'),
(6094, 'wpdiscuz_form_post_rel', 'a:1:{i:35;i:98;}', 'auto'),
(9142, '_site_transient_timeout_php_check_d876ede602bb9ac9456a7d884ebdc1f3', '1737091007', 'off'),
(9143, '_site_transient_php_check_d876ede602bb9ac9456a7d884ebdc1f3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(5583, 'blog_category_children', 'a:0:{}', 'auto'),
(5807, 'wpcr3_options', 'a:9:{s:9:\"act_email\";s:0:\"\";s:8:\"act_uniq\";s:36:\"9e0e5dc9-59e7-4002-a8ee-cbea05094995\";s:9:\"activated\";s:1:\"1\";s:9:\"dbversion\";i:372;s:9:\"templates\";a:10:{s:22:\"frontend_review_holder\";s:343:\"\n<div class=\'wpcr3_respond_1 {{classes}}\' data-ajaxurl=\'{{ajaxurl}}\' data-on-postid=\'{{on_postid}}\'\n	data-postid=\'{{postid}}\'>\n	{{review_form}}\n	{{!hidereviews}}\n	<div class=\"wpcr3_reviews_holder\">\n		{{reviews}}\n	</div>\n	{{pagination}}\n	{{/hidereviews}}\n	{{:power}}\n	<div class=\"wpcr3_clear wpcr3_power\">\n		{{power}}\n	</div>\n	{{/power}}\n</div>\";s:20:\"frontend_review_form\";s:1655:\"\n\n{{:showform}}\n<div class=\"wpcr3_respond_2\">\n	<div class=\"wpcr3_div_2\">\n		<table class=\"wpcr3_table_2\">\n			<tbody>\n				<tr>\n					<td colspan=\"2\">\n						<div class=\"wpcr3_leave_text\">\n							Submit your review\n						</div>\n					</td>\n				</tr>\n				{{input_fields}}\n				{{rating_field}}\n				{{review_field}}\n				<tr>\n					<td colspan=\"2\" class=\"wpcr3_check_confirm\">\n						<div class=\"wpcr3_clear\"></div>\n						<input type=\"hidden\" name=\"wpcr3_postid\" value=\"{{postid}}\" />\n						<input type=\"text\" class=\"wpcr3_fakehide wpcr3_fake_website\" name=\"website\" />\n						<input type=\"text\" class=\"wpcr3_fakehide wpcr3_fake_url\" name=\"url\" />\n						<input type=\"checkbox\" class=\"wpcr3_fakehide wpcr3_fconfirm1\" name=\"wpcr3_fconfirm1\" value=\"1\" />\n						<label>\n							<input type=\"checkbox\" name=\"wpcr3_fconfirm2\" class=\"wpcr3_fconfirm2\" value=\"1\" />\n							&nbsp; Check this box to confirm you are human.\n						</label>\n						<input type=\"checkbox\" class=\"wpcr3_fakehide wpcr3_fconfirm3\" name=\"wpcr3_fconfirm3\" checked=\"checked\" value=\"1\" />\n					</td>\n				</tr>\n				<tr>\n					<td colspan=\"2\">\n						<div class=\"wpcr3_button_1 wpcr3_submit_btn\">Submit</div>\n						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n						<div class=\"wpcr3_button_1 wpcr3_cancel_btn\">Cancel</div>\n					</td>\n				</tr>\n			</tbody>\n		</table>\n	</div>\n</div>\n<div class=\"wpcr3_clear wpcr3_pb5\"></div>\n<div class=\"wpcr3_respond_3\">\n	<p>\n	<div class=\"wpcr3_button_1 wpcr3_show_btn\">\n		Create your own review\n	</div>\n	</p>\n	{{!found_posts}}\n	<p class=\"wpcr3_no_reviews\">\n		There are no reviews yet. Be the first to leave yours!\n	</p>\n	{{/found_posts}}\n</div>\n<div class=\"wpcr3_dotline\"></div>\n{{/showform}}\";s:31:\"frontend_review_form_text_field\";s:290:\"\n<tr class=\"wpcr3_review_form_text_field\">\n	<td>\n		<label for=\"{{name}}\" class=\"comment-field\">{{label}}: </label>\n	</td>\n	{{#test}}\n	test only\n	{{/test}}\n	<td>\n		<input maxlength=\"150\" class=\"text-input {{class}}\" type=\"text\" id=\"{{name}}\" name=\"{{name}}\" value=\"{{value}}\" />\n	</td>\n</tr>\";s:33:\"frontend_review_form_rating_field\";s:335:\"\n<tr class=\"wpcr3_review_form_rating_field\">\n	<td>\n		<label for=\"id_wpcr3_frating\" class=\"comment-field\">Rating: </label>\n	</td>\n	<td>\n		<div class=\"wpcr3_rating_stars\">{{rating_stars}}</div>\n		<input style=\"display:none;\" type=\"hidden\" class=\"wpcr3_required wpcr3_frating\" id=\"id_wpcr3_frating\"\n			name=\"wpcr3_frating\" />\n	</td>\n</tr>\";s:33:\"frontend_review_form_review_field\";s:363:\"\n<tr class=\"wpcr3_review_form_review_field_label\">\n	<td colspan=\"2\">\n		<label for=\"id_wpcr3_ftext\" class=\"comment-field\">Review: </label>\n	</td>\n</tr>\n<tr class=\"wpcr3_review_form_review_field_textarea\">\n	<td colspan=\"2\">\n		<textarea class=\"wpcr3_required wpcr3_ftext\" id=\"id_wpcr3_ftext\" name=\"wpcr3_ftext\" rows=\"8\"\n			cols=\"50\">{{value}}</textarea>\n	</td>\n</tr>\";s:20:\"frontend_review_item\";s:1894:\"\n<div class=\"wpcr3_review_item\">\n	{{:is_business}}\n	<div class=\"wpcr3_item wpcr3_business\" itemscope itemtype=\"https://schema.org/LocalBusiness\">\n		{{:aggregate}}\n		<div class=\"wpcr3_item_name\">\n			{{:on_same_page}}\n			{{wpcr3_business_name}}\n			{{/on_same_page}}\n			{{!on_same_page}}\n			<a href=\"{{postLink}}\">{{wpcr3_business_name}}</a>\n			{{/on_same_page}}\n		</div>\n		{{/aggregate}}\n		<meta itemprop=\"name\" content=\"{{wpcr3_business_name}}\" />\n		<meta itemprop=\"url\" content=\"{{wpcr3_business_url}}\" />\n		<meta itemprop=\"image\" content=\"{{wpcr3_business_image}}\" />\n		{{:wpcr3_business_phone}}\n		<meta itemprop=\"telephone\" content=\"{{wpcr3_business_phone}}\" />\n		{{/}}\n		{{:wpcr3_business_city}}\n		<div class=\"wpcr3_hide\" itemprop=\"address\" itemscope itemtype=\"https://schema.org/PostalAddress\">\n			<meta itemprop=\"streetAddress\"\n				content=\"{{wpcr3_business_street1}}{{:wpcr3_business_street2}}{{wpcr3_business_street2}}{{/wpcr3_business_street2}}\" />\n			<meta itemprop=\"addressLocality\" content=\"{{wpcr3_business_city}}\" />\n			<meta itemprop=\"addressRegion\" content=\"{{wpcr3_business_state}}\" />\n			<meta itemprop=\"postalCode\" content=\"{{wpcr3_business_zip}}\" />\n		</div>\n		{{/}}\n		{{aggregate}}\n		{{reviews}}\n	</div>\n	{{/is_business}}\n\n	{{:is_product}}\n	<div class=\"wpcr3_item wpcr3_product\" itemscope itemtype=\"https://schema.org/Product\">\n		{{:aggregate}}\n		<div class=\"wpcr3_item_name\">\n			{{:on_same_page}}\n			{{wpcr3_product_name}}\n			{{/on_same_page}}\n			{{!on_same_page}}\n			<a href=\"{{postLink}}\">{{wpcr3_product_name}}</a>\n			{{/on_same_page}}\n		</div>\n		{{/aggregate}}\n		<meta itemprop=\"name\" content=\"{{wpcr3_product_name}}\" />\n		<meta itemprop=\"brand\" content=\"{{wpcr3_product_brand}}\" />\n		<meta itemprop=\"productID\" content=\"{{wpcr3_product_id}}\" />\n		<meta itemprop=\"image\" content=\"{{wpcr3_product_image}}\" />\n		{{aggregate}}\n		{{reviews}}\n	</div>\n	{{/is_product}}\n</div>\";s:30:\"frontend_review_item_aggregate\";s:713:\"\n{{#aggregate}}\n<div class=\"wpcr3_aggregateRating\"{{:aggregate_count_valid}} itemprop=\"aggregateRating\" itemscope itemtype=\"https://schema.org/AggregateRating\"{{/aggregate_count_valid}}>\n	{{:aggregate_count_valid}}\n	<meta itemprop=\"bestRating\" content=\"5\" />\n	<meta itemprop=\"worstRating\" content=\"1\" />\n	<meta itemprop=\"ratingValue\" content=\"{{aggregate_rating}}\" />\n	<meta itemprop=\"reviewCount\" content=\"{{aggregate_count}}\" />\n	{{/aggregate_count_valid}}\n	<span class=\"wpcr3_aggregateRating_overallText\">Average rating: </span>&nbsp;\n	<div class=\"wpcr3_aggregateRating_ratingValue\">{{stars}}</div>&nbsp;\n	<span class=\"wpcr3_aggregateRating_reviewCount\">{{aggregate_count}} reviews</span>\n</div>\n{{/aggregate}}\";s:28:\"frontend_review_item_reviews\";s:2002:\"\n{{#reviews}}\n<div class=\"wpcr3_dotline\"></div>\n<div id=\"wpcr3_id_{{id}}\" class=\"wpcr3_review\" itemprop=\"review\" itemscope itemtype=\"https://schema.org/Review\">\n	<div class=\"wpcr3_hide\" itemprop=\"author\" itemscope itemtype=\"https://schema.org/Person\">\n		<div itemprop=\"name\">{{wpcr3_review_name}}</div>\n	</div>\n	<div class=\"wpcr3_hide\" itemprop=\"reviewRating\" itemscope itemtype=\"https://schema.org/Rating\">\n		<meta itemprop=\"bestRating\" content=\"5\" />\n		<meta itemprop=\"worstRating\" content=\"1\" />\n		<meta itemprop=\"ratingValue\" content=\"{{wpcr3_review_rating}}\" />\n	</div>\n	<div class=\"wpcr3_review_ratingValue\">{{stars}}</div>\n	<div class=\"wpcr3_review_datePublished\" itemprop=\"datePublished\">{{post_date}}</div>\n	<div class=\"wpcr3_review_author\">&nbsp;by&nbsp;\n		<span class=\"wpcr3_caps\">\n			{{:wpcr3_review_website}}\n			<a target=\"_blank\" href=\"{{wpcr3_review_website}}\">{{wpcr3_review_name}}</a>\n			{{/wpcr3_review_website}}\n			{{!wpcr3_review_website}}\n			{{wpcr3_review_name}}\n			{{/wpcr3_review_website}}\n		</span>{{!on_same_page}}&nbsp;on&nbsp;<span class=\"wpcr3_item_name\"><a href=\"{{postLink}}\">{{item_name}}</a></span>{{/on_same_page}}\n	</div>\n	<div class=\"wpcr3_clear\"></div>\n	{{:wpcr3_review_title}}\n	<div class=\"wpcr3_review_title wpcr3_caps\">{{wpcr3_review_title}}</div>\n	{{/wpcr3_review_title}}\n	<div class=\"wpcr3_clear\"></div>\n	{{:wpcr3_custom_fields}}\n	<div class=\"wpcr3_review_customs\">\n		{{#wpcr3_custom_fields}}\n		<div class=\"wpcr3_review_custom\">\n			<span class=\"wpcr3_review_custom_label\">{{label}}:</span> <span class=\"wpcr3_review_custom_value\">{{value}}</span>\n		</div>\n		{{/wpcr3_custom_fields}}\n	</div>\n	<div class=\"wpcr3_clear\"></div>\n	{{/wpcr3_custom_fields}}\n\n	<blockquote class=\"wpcr3_content\" itemprop=\"reviewBody\">\n		<p>\n			{{content}}\n		</p>\n	</blockquote>\n\n	{{:wpcr3_review_admin_response}}\n	<blockquote class=\"wpcr3_content wpcr3_admin_response\">\n		<p>\n			{{wpcr3_review_admin_response}}\n		</p>\n	</blockquote>\n	{{/wpcr3_review_admin_response}}\n</div>\n{{/reviews}}\";s:26:\"frontend_review_pagination\";s:735:\"\n<div data-page-opts=\"{{pageOpts}}\" class=\"wpcr3_pagination\">\n	<div class=\"wpcr3_pagination_page\">Page {{onPage}} of {{numPages}}: </div>\n	<div data-page=\"1\" class=\"wpcr3_a {{!hasPrev}}wpcr3_disabled{{/hasPrev}}\">&laquo;</div>&nbsp;\n	<div data-page=\"{{prevPage}}\" class=\"wpcr3_a wpcr3_ls {{!hasPrev}}wpcr3_disabled{{/hasPrev}}\">&lsaquo;</div>&nbsp;\n	{{#pages}}\n	<div data-page=\"{{pageNum}}\" class=\"wpcr3_a {{:current}}wpcr3_current{{/current}}\">{{pageNum}}</div>\n	{{/pages}}\n	<div data-page=\"{{nextPage}}\" class=\"wpcr3_a wpcr3_rs {{!hasNext}}wpcr3_disabled{{/hasNext}}\">&rsaquo;</div>&nbsp;\n	<div data-page=\"{{numPages}}\" class=\"wpcr3_a {{!hasNext}}wpcr3_disabled{{/hasNext}}\">&raquo;</div>&nbsp;\n</div>\n<div class=\"wpcr3_clear\"></div>\";s:28:\"frontend_review_rating_stars\";s:607:\"<div class=\"wpcr3_rating_style1\">\n	{{:hoverable}}\n		<div class=\"wpcr3_rating_style1_status\">\n			<div class=\"wpcr3_rating_style1_score\">\n				<div class=\"wpcr3_rating_style1_score1\">1</div>\n				<div class=\"wpcr3_rating_style1_score2\">2</div>\n				<div class=\"wpcr3_rating_style1_score3\">3</div>\n				<div class=\"wpcr3_rating_style1_score4\">4</div>\n				<div class=\"wpcr3_rating_style1_score5\">5</div>\n			</div>\n		</div>\n	{{/hoverable}}\n	<div class=\"wpcr3_rating_style1_base {{:hoverable}}wpcr3_hide{{/hoverable}}\">\n		<div class=\"wpcr3_rating_style1_average\" style=\"width:{{rating_width}}%;\"></div>\n	</div>\n</div>\";}s:15:\"standard_fields\";a:4:{s:5:\"fname\";a:4:{s:5:\"label\";s:4:\"Name\";s:3:\"ask\";s:1:\"1\";s:7:\"require\";s:1:\"1\";s:4:\"show\";s:1:\"1\";}s:6:\"femail\";a:4:{s:5:\"label\";s:5:\"Email\";s:3:\"ask\";s:1:\"1\";s:7:\"require\";s:1:\"1\";s:4:\"show\";s:2:\"-1\";}s:8:\"fwebsite\";a:4:{s:5:\"label\";s:7:\"Website\";s:3:\"ask\";s:1:\"1\";s:7:\"require\";s:1:\"0\";s:4:\"show\";s:1:\"0\";}s:6:\"ftitle\";a:4:{s:5:\"label\";s:12:\"Review Title\";s:3:\"ask\";s:1:\"1\";s:7:\"require\";s:1:\"0\";s:4:\"show\";s:1:\"1\";}}s:13:\"custom_fields\";a:3:{s:2:\"f1\";a:4:{s:5:\"label\";s:7:\"Field 1\";s:3:\"ask\";s:1:\"0\";s:7:\"require\";s:1:\"0\";s:4:\"show\";s:1:\"0\";}s:2:\"f2\";a:4:{s:5:\"label\";s:7:\"Field 2\";s:3:\"ask\";s:1:\"0\";s:7:\"require\";s:1:\"0\";s:4:\"show\";s:1:\"0\";}s:2:\"f3\";a:4:{s:5:\"label\";s:7:\"Field 3\";s:3:\"ask\";s:1:\"0\";s:7:\"require\";s:1:\"0\";s:4:\"show\";s:1:\"0\";}}s:16:\"reviews_per_page\";s:2:\"10\";s:10:\"support_us\";s:1:\"0\";}', 'auto'),
(6040, 'wpd_admin_notices', 'a:0:{}', 'auto'),
(6023, 'wc_plugin_version', '7.6.27', 'auto'),
(6024, 'wc_hash_key', 'c222267e34414bae45b50d47aece0268', 'off');
INSERT INTO `mpgstoneuk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(6025, 'wc_options', 'a:15:{s:4:\"form\";a:18:{s:15:\"commentFormView\";s:9:\"collapsed\";s:19:\"enableDropAnimation\";i:1;s:10:\"richEditor\";s:7:\"desktop\";s:10:\"boldButton\";i:1;s:12:\"italicButton\";i:1;s:15:\"underlineButton\";i:1;s:12:\"strikeButton\";i:1;s:8:\"olButton\";i:1;s:8:\"ulButton\";i:1;s:16:\"blockquoteButton\";i:1;s:15:\"codeblockButton\";i:1;s:10:\"linkButton\";i:1;s:16:\"sourcecodeButton\";i:1;s:13:\"spoilerButton\";i:1;s:15:\"enableQuickTags\";i:0;s:22:\"commenterNameMinLength\";i:3;s:22:\"commenterNameMaxLength\";i:50;s:18:\"storeCommenterData\";i:-1;}s:9:\"recaptcha\";a:8:{s:7:\"siteKey\";s:0:\"\";s:9:\"secretKey\";s:0:\"\";s:5:\"theme\";s:5:\"light\";s:4:\"lang\";s:0:\"\";s:13:\"requestMethod\";s:4:\"auto\";s:13:\"showForGuests\";i:0;s:12:\"showForUsers\";i:0;s:21:\"isShowOnSubscribeForm\";i:0;}s:5:\"login\";a:9:{s:20:\"showLoggedInUsername\";i:1;s:22:\"showLoginLinkForGuests\";i:1;s:15:\"showActivityTab\";i:1;s:20:\"showSubscriptionsTab\";i:1;s:14:\"showFollowsTab\";i:1;s:17:\"enableProfileURLs\";i:1;s:19:\"websiteAsProfileUrl\";i:1;s:13:\"isUserByEmail\";i:0;s:8:\"loginUrl\";s:0:\"\";}s:6:\"social\";a:60:{s:28:\"socialLoginAgreementCheckbox\";i:1;s:26:\"socialLoginInSecondaryForm\";i:0;s:19:\"displaySocialAvatar\";i:1;s:19:\"displayIconOnAvatar\";i:1;s:20:\"rememberLoggedinUser\";i:1;s:13:\"enableFbLogin\";i:0;s:13:\"enableFbShare\";i:0;s:7:\"fbAppID\";s:0:\"\";s:11:\"fbAppSecret\";s:0:\"\";s:11:\"fbUseOAuth2\";i:0;s:18:\"enableTwitterLogin\";i:0;s:18:\"enableTwitterShare\";i:1;s:12:\"twitterAppID\";s:0:\"\";s:16:\"twitterAppSecret\";s:0:\"\";s:17:\"enableGoogleLogin\";i:0;s:14:\"googleClientID\";s:0:\"\";s:18:\"googleClientSecret\";s:0:\"\";s:19:\"enableTelegramLogin\";i:0;s:13:\"telegramToken\";s:0:\"\";s:17:\"enableDisqusLogin\";i:0;s:15:\"disqusPublicKey\";s:0:\"\";s:15:\"disqusSecretKey\";s:0:\"\";s:20:\"enableWordpressLogin\";i:0;s:17:\"wordpressClientID\";s:0:\"\";s:21:\"wordpressClientSecret\";s:0:\"\";s:20:\"enableInstagramLogin\";i:0;s:14:\"instagramAppID\";s:0:\"\";s:18:\"instagramAppSecret\";s:0:\"\";s:19:\"enableLinkedinLogin\";i:0;s:25:\"enableLinkedinLoginOpenID\";i:0;s:16:\"linkedinClientID\";s:0:\"\";s:20:\"linkedinClientSecret\";s:0:\"\";s:19:\"enableWhatsappShare\";i:0;s:17:\"enableYandexLogin\";i:0;s:8:\"yandexID\";s:0:\"\";s:14:\"yandexPassword\";s:0:\"\";s:17:\"enableMailruLogin\";i:0;s:14:\"mailruClientID\";s:0:\"\";s:18:\"mailruClientSecret\";s:0:\"\";s:16:\"enableWeiboLogin\";i:0;s:8:\"weiboKey\";s:0:\"\";s:11:\"weiboSecret\";s:0:\"\";s:17:\"enableWechatLogin\";i:0;s:11:\"wechatAppID\";s:0:\"\";s:12:\"wechatSecret\";s:0:\"\";s:13:\"enableQQLogin\";i:0;s:7:\"qqAppID\";s:0:\"\";s:8:\"qqSecret\";s:0:\"\";s:16:\"enableBaiduLogin\";i:0;s:10:\"baiduAppID\";s:0:\"\";s:11:\"baiduSecret\";s:0:\"\";s:13:\"enableVkLogin\";i:0;s:13:\"enableVkShare\";i:1;s:7:\"vkAppID\";s:0:\"\";s:11:\"vkAppSecret\";s:0:\"\";s:13:\"enableOkLogin\";i:0;s:13:\"enableOkShare\";i:1;s:7:\"okAppID\";s:0:\"\";s:8:\"okAppKey\";s:0:\"\";s:11:\"okAppSecret\";s:0:\"\";}s:6:\"rating\";a:6:{s:22:\"enablePostRatingSchema\";i:0;s:19:\"displayRatingOnPost\";a:1:{i:0;s:19:\"before_comment_form\";}s:23:\"ratingCssOnNoneSingular\";i:0;s:16:\"ratingHoverColor\";s:7:\"#FFED85\";s:19:\"ratingInactiveColor\";s:7:\"#DDDDDD\";s:17:\"ratingActiveColor\";s:7:\"#FFD700\";}s:14:\"thread_display\";a:11:{s:17:\"firstLoadWithAjax\";i:0;s:19:\"commentListLoadType\";i:0;s:24:\"isLoadOnlyParentComments\";i:0;s:23:\"showReactedFilterButton\";i:1;s:23:\"showHottestFilterButton\";i:1;s:18:\"showSortingButtons\";i:1;s:18:\"mostVotedByDefault\";i:0;s:15:\"reverseChildren\";i:0;s:23:\"highlightUnreadComments\";i:0;s:15:\"scrollToComment\";i:1;s:15:\"orderCommentsBy\";s:10:\"comment_ID\";}s:14:\"thread_layouts\";a:12:{s:15:\"showCommentLink\";i:1;s:15:\"showCommentDate\";i:1;s:17:\"showVotingButtons\";i:1;s:17:\"votingButtonsIcon\";s:16:\"fa-plus|fa-minus\";s:18:\"votingButtonsStyle\";i:0;s:19:\"enableDislikeButton\";i:1;s:14:\"isGuestCanVote\";i:1;s:22:\"highlightVotingButtons\";i:1;s:11:\"showAvatars\";i:1;s:23:\"defaultAvatarUrlForUser\";s:0:\"\";s:24:\"defaultAvatarUrlForGuest\";s:0:\"\";s:23:\"changeAvatarsEverywhere\";i:1;}s:13:\"thread_styles\";a:22:{s:5:\"theme\";s:11:\"wpd-default\";s:12:\"primaryColor\";s:7:\"#00B38F\";s:23:\"newLoadedCommentBGColor\";s:7:\"#FFFAD6\";s:18:\"primaryButtonColor\";s:7:\"#FFFFFF\";s:15:\"primaryButtonBG\";s:7:\"#07B290\";s:12:\"bubbleColors\";s:7:\"#1DB99A\";s:20:\"inlineFeedbackColors\";s:7:\"#1DB99A\";s:20:\"defaultCommentAreaBG\";s:0:\"\";s:23:\"defaultCommentTextColor\";s:7:\"#777777\";s:22:\"defaultCommentFieldsBG\";s:0:\"\";s:31:\"defaultCommentFieldsBorderColor\";s:7:\"#DDDDDD\";s:29:\"defaultCommentFieldsTextColor\";s:7:\"#777777\";s:36:\"defaultCommentFieldsPlaceholderColor\";s:0:\"\";s:17:\"darkCommentAreaBG\";s:7:\"#111111\";s:20:\"darkCommentTextColor\";s:7:\"#CCCCCC\";s:19:\"darkCommentFieldsBG\";s:7:\"#999999\";s:28:\"darkCommentFieldsBorderColor\";s:7:\"#D1D1D1\";s:26:\"darkCommentFieldsTextColor\";s:7:\"#000000\";s:33:\"darkCommentFieldsPlaceholderColor\";s:7:\"#DDDDDD\";s:15:\"commentTextSize\";s:4:\"14px\";s:17:\"enableFontAwesome\";i:1;s:9:\"customCss\";s:27:\".comments-area{width:auto;}\";}s:12:\"subscription\";a:27:{s:20:\"enableUserMentioning\";i:1;s:24:\"sendMailToMentionedUsers\";i:1;s:24:\"isNotifyOnCommentApprove\";i:1;s:19:\"enableMemberConfirm\";i:0;s:19:\"enableGuestsConfirm\";i:1;s:16:\"subscriptionType\";i:1;s:17:\"showReplyCheckbox\";i:1;s:21:\"isReplyDefaultChecked\";i:0;s:34:\"usePostmaticForCommentNotification\";i:0;s:14:\"isFollowActive\";i:1;s:28:\"disableFollowConfirmForUsers\";i:1;s:23:\"emailSubjectPostComment\";s:11:\"New Comment\";s:23:\"emailContentPostComment\";s:292:\"Hi [SUBSCRIBER_NAME],<br/><br/> new comment has been posted by the <em><strong>[COMMENT_AUTHOR]</em></strong> on the discussion section you\'ve been interested in<br/><br/><a href=\'[COMMENT_URL]\'>[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]<br/><br/><a href=\'[UNSUBSCRIBE_URL]\'>Unsubscribe</a>\";s:27:\"emailSubjectAllCommentReply\";s:27:\"New Reply ( your comments )\";s:27:\"emailContentAllCommentReply\";s:290:\"Hi [SUBSCRIBER_NAME],<br/><br/> new reply has been posted by the <em><strong>[COMMENT_AUTHOR]</em></strong> on the discussion section you\'ve been interested in<br/><br/><a href=\'[COMMENT_URL]\'>[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]<br/><br/><a href=\'[UNSUBSCRIBE_URL]\'>Unsubscribe</a>\";s:24:\"emailSubjectCommentReply\";s:35:\"New Reply ( your specific comment )\";s:24:\"emailContentCommentReply\";s:290:\"Hi [SUBSCRIBER_NAME],<br/><br/> new reply has been posted by the <em><strong>[COMMENT_AUTHOR]</em></strong> on the discussion section you\'ve been interested in<br/><br/><a href=\'[COMMENT_URL]\'>[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]<br/><br/><a href=\'[UNSUBSCRIBE_URL]\'>Unsubscribe</a>\";s:36:\"emailSubjectSubscriptionConfirmation\";s:25:\"Subscription Confirmation\";s:36:\"emailContentSubscriptionConfirmation\";s:470:\"Hi, <br/> You just subscribed for new comments on our website. This means you will receive an email when new comments are posted according to subscription option you\'ve chosen. <br/> To activate, click confirm below. If you believe this is an error, ignore this message and we\'ll never bother you again. <br/><br/><a href=\'[POST_URL]\'>[POST_TITLE]</a><br/><br/><a href=\'[CONFIRM_URL]\'>Confirm Your Subscription</a><br/><br/><a href=\'[CANCEL_URL]\'>Cancel Subscription</a>\";s:27:\"emailSubjectCommentApproved\";s:25:\"Your comment is approved!\";s:27:\"emailContentCommentApproved\";s:139:\"Hi [COMMENT_AUTHOR],<br/><br/>your comment has been approved.<br/><br/><a href=\"[COMMENT_URL]\">[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]\";s:25:\"emailSubjectUserMentioned\";s:34:\"You have been mentioned in comment\";s:25:\"emailContentUserMentioned\";s:181:\"Hi [MENTIONED_USER_NAME]!<br/>You have been mentioned in a comment posted on \"[POST_TITLE]\" post by [COMMENT_AUTHOR].<br/><br/>Comment URL: <a href=\"[COMMENT_URL]\">[COMMENT_URL]</a>\";s:30:\"emailSubjectFollowConfirmation\";s:27:\"User Following Confirmation\";s:30:\"emailContentFollowConfirmation\";s:433:\"Hi, <br/> You just started following a new user. You\'ll get email notification once new comment is posted by this user. <br/> Please click on \"user following confirmation\" link to confirm your request. If you believe this is an error, ignore this message and we\'ll never bother you again. <br/><br/><a href=\"[POST_URL]\">[POST_TITLE]</a><br/><br/><a href=\"[CONFIRM_URL]\">Confirm Follow</a><br/><br/><a href=\"[CANCEL_URL]\">Unfollow</a>\";s:25:\"emailSubjectFollowComment\";s:11:\"New Comment\";s:25:\"emailContentFollowComment\";s:248:\"Hi [FOLLOWER_NAME],<br/><br/> new comment has been posted by the <em><strong>[COMMENT_AUTHOR]</em></strong> you are following<br/><br/><a href=\"[COMMENT_URL]\">[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]<br/><br/><a href=\"[CANCEL_URL]\">Unfollow</a>\";}s:6:\"labels\";a:2:{s:14:\"blogRoleLabels\";a:7:{s:13:\"administrator\";i:1;s:6:\"editor\";i:1;s:6:\"author\";i:0;s:11:\"contributor\";i:0;s:10:\"subscriber\";i:0;s:11:\"post_author\";i:1;s:5:\"guest\";i:0;}s:9:\"blogRoles\";a:7:{s:13:\"administrator\";s:7:\"#00B38F\";s:6:\"editor\";s:7:\"#00B38F\";s:6:\"author\";s:7:\"#00B38F\";s:11:\"contributor\";s:7:\"#00B38F\";s:10:\"subscriber\";s:7:\"#00B38F\";s:11:\"post_author\";s:7:\"#00B38F\";s:5:\"guest\";s:7:\"#00B38F\";}}s:10:\"moderation\";a:8:{s:19:\"commentEditableTime\";i:900;s:28:\"enableEditingWhenHaveReplies\";i:0;s:18:\"displayEditingInfo\";i:1;s:17:\"enableStickButton\";i:1;s:17:\"enableCloseButton\";i:1;s:25:\"restrictCommentingPerUser\";s:7:\"disable\";s:22:\"commentRestrictionType\";s:4:\"both\";s:17:\"userCommentsLimit\";i:1;}s:7:\"content\";a:17:{s:20:\"commentTextMinLength\";i:1;s:18:\"replyTextMinLength\";i:1;s:20:\"commentTextMaxLength\";s:0:\"\";s:18:\"replyTextMaxLength\";s:0:\"\";s:21:\"enableImageConversion\";i:1;s:16:\"enableShortcodes\";i:0;s:20:\"commentReadMoreLimit\";i:0;s:12:\"wmuIsEnabled\";i:1;s:17:\"wmuIsGuestAllowed\";i:1;s:13:\"wmuIsLightbox\";i:1;s:12:\"wmuMimeTypes\";a:9:{s:3:\"jpg\";s:10:\"image/jpeg\";s:4:\"jpeg\";s:10:\"image/jpeg\";s:3:\"jpe\";s:10:\"image/jpeg\";s:3:\"gif\";s:9:\"image/gif\";s:3:\"png\";s:9:\"image/png\";s:3:\"bmp\";s:9:\"image/bmp\";s:4:\"tiff\";s:10:\"image/tiff\";s:3:\"tif\";s:10:\"image/tiff\";s:3:\"ico\";s:12:\"image/x-icon\";}s:14:\"wmuMaxFileSize\";i:2;s:23:\"wmuIsShowFilesDashboard\";i:1;s:19:\"wmuSingleImageWidth\";s:4:\"auto\";s:20:\"wmuSingleImageHeight\";i:200;s:17:\"wmuThumbnailSizes\";a:4:{i:0;s:9:\"thumbnail\";i:1;s:6:\"medium\";i:2;s:12:\"medium_large\";i:3;s:5:\"large\";}s:22:\"wmuIsThumbnailsViaCron\";i:1;}s:4:\"live\";a:9:{s:12:\"enableBubble\";i:1;s:16:\"bubbleLiveUpdate\";i:0;s:14:\"bubbleLocation\";s:12:\"content_left\";s:27:\"bubbleShowNewCommentMessage\";i:1;s:17:\"bubbleHintTimeout\";i:45;s:21:\"bubbleHintHideTimeout\";i:10;s:21:\"commentListUpdateType\";i:0;s:16:\"liveUpdateGuests\";i:0;s:22:\"commentListUpdateTimer\";i:60;}s:6:\"inline\";a:2:{s:22:\"showInlineFilterButton\";i:1;s:28:\"inlineFeedbackAttractionType\";s:5:\"blink\";}s:7:\"general\";a:12:{s:14:\"isEnableOnHome\";i:1;s:19:\"isNativeAjaxEnabled\";i:1;s:16:\"loadComboVersion\";i:1;s:14:\"loadMinVersion\";i:1;s:17:\"commentLinkFilter\";i:1;s:12:\"redirectPage\";i:0;s:17:\"simpleCommentDate\";i:1;s:14:\"dateDiffFormat\";s:32:\"[number] [time_unit] [adjective]\";s:9:\"isUsePoMo\";i:0;s:23:\"showPluginPoweredByLink\";i:1;s:14:\"isCacheEnabled\";i:1;s:12:\"cacheTimeout\";i:10;}}', 'auto'),
(6029, 'wpdiscuz_form_content_type_rel', 'a:5:{s:4:\"post\";a:1:{s:5:\"en_US\";i:98;}s:10:\"attachment\";a:1:{s:5:\"en_US\";i:98;}s:4:\"page\";a:1:{s:5:\"en_US\";i:98;}s:4:\"blog\";a:1:{s:5:\"en_US\";i:98;}s:7:\"product\";a:1:{s:5:\"en_US\";i:98;}}', 'auto'),
(6030, 'wpdiscuz_show_vote_regenerate_message', '0', 'off'),
(6031, 'wpdiscuz_show_closed_regenerate_message', '0', 'off'),
(6032, 'wpdiscuz_show_vote_data_regenerate_message', '0', 'off'),
(6033, 'wpdiscuz_show_sync_commenters_message', '1', 'off'),
(6034, 'wpdiscuz_wizard_completed', '1', 'off'),
(6035, 'wpdiscuz_wizard_after_update', '0', 'off'),
(513, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(1377, 'product_category_children', 'a:0:{}', 'auto'),
(3354, '_wpforms_transient_timeout_existing_tables', '1735022473', 'off'),
(3355, '_wpforms_transient_existing_tables', 'a:1:{s:20:\"mpgstoneuk_wpforms_%\";a:4:{i:0;s:23:\"mpgstoneuk_wpforms_logs\";i:1;s:31:\"mpgstoneuk_wpforms_payment_meta\";i:2;s:27:\"mpgstoneuk_wpforms_payments\";i:3;s:29:\"mpgstoneuk_wpforms_tasks_meta\";}}', 'off'),
(747, 'recovery_mode_email_last_sent', '1735812030', 'auto'),
(4169, '_site_transient_yoast_translations_wordpress-seo-premium', 'a:2:{s:21:\"wordpress-seo-premium\";a:1:{s:12:\"translations\";a:36:{i:0;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-23T14:43:13+00:00\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:95:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-ar.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ar\";i:1;s:3:\"ara\";}}i:1;a:7:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-08T13:09:33+00:00\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:95:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-ca.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ca\";i:1;s:3:\"cat\";}}i:2;a:7:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-07-23T20:39:30+00:00\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-zh_CN.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"zh\";i:1;s:3:\"zho\";}}i:3;a:7:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-30T21:42:55+00:00\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-cs_CZ.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"cs\";i:1;s:3:\"ces\";}}i:4;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-31T07:14:05+00:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-da_DK.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"da\";i:1;s:3:\"dan\";}}i:5;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-22T19:09:07+00:00\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-nl_NL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:6;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-05T12:26:40+00:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-nl_BE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:7;a:7:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-04T10:45:07+00:00\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-en_AU.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:8;a:7:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-05-01T14:47:37+00:00\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-en_CA.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:9;a:7:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-05-01T14:47:17+00:00\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-en_NZ.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:10;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-04T14:28:22+00:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-en_GB.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:11;a:7:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-09-04T09:41:19+00:00\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:95:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-fi.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"fi\";i:1;s:3:\"fin\";}}i:12;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-04T10:37:48+00:00\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-fr_FR.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"fr\";}}i:13;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-23T11:10:53+00:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-de_DE.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"de\";}}i:14;a:7:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-04T18:05:05+00:00\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:95:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-el.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"el\";i:1;s:3:\"ell\";}}i:15;a:7:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-09-04T09:41:21+00:00\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-he_IL.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"he\";}}i:16;a:7:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-27T16:13:25+00:00\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-hi_IN.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"hi\";i:1;s:3:\"hin\";}}i:17;a:7:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-09-04T09:41:24+00:00\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-hu_HU.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"hu\";i:1;s:3:\"hun\";}}i:18;a:7:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-01T14:25:08+00:00\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-id_ID.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"id\";i:1;s:3:\"ind\";}}i:19;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-04T16:45:00+00:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-it_IT.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"it\";i:1;s:3:\"ita\";}}i:20;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-13T06:22:38+00:00\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:95:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-ja.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"ja\";}}i:21;a:7:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-07-23T20:39:32+00:00\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-nb_NO.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nb\";i:1;s:3:\"nob\";}}i:22;a:7:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-09-04T09:41:18+00:00\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-fa_IR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"fa\";i:1;s:3:\"fas\";}}i:23;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-04T21:54:29+00:00\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-pl_PL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pl\";i:1;s:3:\"pol\";}}i:24;a:7:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-23T21:48:39+00:00\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-pt_BR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pt\";i:1;s:3:\"por\";}}i:25;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-04T22:38:00+00:00\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-pt_PT.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"pt\";}}i:26;a:7:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-02T14:33:16+00:00\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-ro_RO.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ro\";i:1;s:3:\"ron\";}}i:27;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-29T01:23:03+00:00\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-ru_RU.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ru\";i:1;s:3:\"rus\";}}i:28;a:7:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-05T11:54:28+00:00\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-sr_RS.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sr\";i:1;s:3:\"srp\";}}i:29;a:7:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-09T05:09:33+00:00\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-sk_SK.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sk\";i:1;s:3:\"slk\";}}i:30;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-13T07:30:59+00:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-es_MX.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:31;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-22T18:32:17+00:00\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-es_ES.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:32;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-11-01T10:25:14+00:00\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-sv_SE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sv\";i:1;s:3:\"swe\";}}i:33;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-26T20:28:55+00:00\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:98:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-tr_TR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"tr\";i:1;s:3:\"tur\";}}i:34;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2024-10-29T02:02:53+00:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:95:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-uk.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"uk\";i:1;s:3:\"ukr\";}}i:35;a:7:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:8:\"24.1-RC2\";s:7:\"updated\";s:25:\"2023-08-09T09:58:31+00:00\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:95:\"https://packages.translationspress.com/yoast/wordpress-seo-premium/wordpress-seo-premium-vi.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"vi\";i:1;s:3:\"vie\";}}}}s:13:\"_last_checked\";i:1734504551;}', 'off'),
(2019, 'wpforms_versions_lite', 'a:14:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:5:\"1.8.4\";i:0;s:5:\"1.8.6\";i:0;s:5:\"1.8.7\";i:0;s:5:\"1.9.1\";i:0;s:5:\"1.9.2\";i:0;s:7:\"1.9.2.3\";i:1734329663;}', 'auto'),
(1961, 'options_social_media_section_0_social_icon', 'facebook', 'off'),
(1962, '_options_social_media_section_0_social_icon', 'field_675fa2f7034f5', 'off'),
(1963, 'options_social_media_section_0_link', 'https://www.facebook.com/mpgnaturalstone', 'off'),
(1964, '_options_social_media_section_0_link', 'field_675fa31b034f6', 'off'),
(1965, 'options_social_media_section_1_social_icon', 'twitter', 'off'),
(1966, '_options_social_media_section_1_social_icon', 'field_675fa2f7034f5', 'off'),
(1967, 'options_social_media_section_1_link', 'https://x.com/MPG_Stone', 'off'),
(1968, '_options_social_media_section_1_link', 'field_675fa31b034f6', 'off'),
(1969, 'options_social_media_section_2_social_icon', 'instagram', 'off'),
(1970, '_options_social_media_section_2_social_icon', 'field_675fa2f7034f5', 'off'),
(1971, 'options_social_media_section_2_link', 'https://www.instagram.com/mpg_stone/', 'off'),
(1972, '_options_social_media_section_2_link', 'field_675fa31b034f6', 'off'),
(1973, 'options_social_media_section_3_social_icon', 'linkedin', 'off'),
(1974, '_options_social_media_section_3_social_icon', 'field_675fa2f7034f5', 'off'),
(1975, 'options_social_media_section_3_link', 'https://www.linkedin.com/company/mpg-stone/', 'off'),
(1976, '_options_social_media_section_3_link', 'field_675fa31b034f6', 'off'),
(1977, 'options_social_media_section', '4', 'off'),
(1978, '_options_social_media_section', 'field_675fa2c4034f4', 'off'),
(3476, 'wpseo_redirect', 'a:2:{s:20:\"disable_php_redirect\";s:3:\"off\";s:13:\"separate_file\";s:3:\"off\";}', 'on'),
(3440, 'yoast_premium_as_an_addon_installer', 'completed', 'on'),
(3323, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"24.0\";}', 'auto'),
(3324, 'wpseo', 'a:105:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";i:1734418220;s:15:\"indexing_reason\";s:21:\"post_type_made_public\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:100:\"-1R6o0WvuIpH2w0-t3sphrXFPowJuBEZ4lClUIGZAXxHBOGYKlqUaHRJa-9nvYa1GV0gvNzGZRPxnfVkwmwGVKF9GnJnTfONLHK8\";s:7:\"version\";s:4:\"24.0\";s:16:\"previous_version\";s:4:\"23.5\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1734417652;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:27:\"http://localhost/mpgstoneuk\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:2:{s:16:\"product_category\";s:18:\"product-categories\";s:11:\"product_tag\";s:12:\"product-tags\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:1;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1734417654;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:4:\"blog\";i:3;s:7:\"product\";}s:28:\"last_known_public_taxonomies\";a:7:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:13:\"blog_category\";i:4;s:8:\"blog_tag\";i:5;s:16:\"product_category\";i:6;s:11:\"product_tag\";}s:23:\"last_known_no_unindexed\";a:5:{s:27:\"wpseo_total_unindexed_posts\";i:1734418244;s:27:\"wpseo_total_unindexed_terms\";i:1734418244;s:40:\"wpseo_total_unindexed_post_type_archives\";i:1734506989;s:31:\"wpseo_unindexed_post_link_count\";i:1734504988;s:31:\"wpseo_unindexed_term_link_count\";i:1734506989;}s:14:\"new_post_types\";a:1:{i:2;s:4:\"blog\";}s:14:\"new_taxonomies\";a:2:{i:3;s:13:\"blog_category\";i:4;s:8:\"blog_tag\";}s:34:\"show_new_content_type_notification\";b:1;}', 'auto'),
(3325, 'wpseo_titles', 'a:166:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:15:\"org-description\";s:0:\"\";s:9:\"org-email\";s:0:\"\";s:9:\"org-phone\";s:0:\"\";s:14:\"org-legal-name\";s:0:\"\";s:17:\"org-founding-date\";s:0:\"\";s:20:\"org-number-employees\";s:0:\"\";s:10:\"org-vat-id\";s:0:\"\";s:10:\"org-tax-id\";s:0:\"\";s:7:\"org-iso\";s:0:\"\";s:8:\"org-duns\";s:0:\"\";s:11:\"org-leicode\";s:0:\"\";s:9:\"org-naics\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";i:0;s:24:\"schema-page-type-product\";s:7:\"WebPage\";s:27:\"schema-article-type-product\";s:4:\"None\";s:20:\"social-title-product\";s:9:\"%%title%%\";s:26:\"social-description-product\";s:0:\"\";s:24:\"social-image-url-product\";s:0:\"\";s:23:\"social-image-id-product\";i:0;s:23:\"title-ptarchive-product\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:30:\"social-title-ptarchive-product\";s:21:\"%%pt_plural%% Archive\";s:36:\"social-description-ptarchive-product\";s:0:\"\";s:34:\"social-image-url-ptarchive-product\";s:0:\"\";s:33:\"social-image-id-ptarchive-product\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:26:\"title-tax-product_category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:29:\"metadesc-tax-product_category\";s:0:\"\";s:36:\"display-metabox-tax-product_category\";b:1;s:28:\"noindex-tax-product_category\";b:0;s:33:\"social-title-tax-product_category\";s:23:\"%%term_title%% Archives\";s:39:\"social-description-tax-product_category\";s:0:\"\";s:37:\"social-image-url-tax-product_category\";s:0:\"\";s:36:\"social-image-id-tax-product_category\";i:0;s:34:\"taxonomy-product_category-ptparent\";i:0;s:21:\"title-tax-product_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:31:\"display-metabox-tax-product_tag\";b:1;s:23:\"noindex-tax-product_tag\";b:0;s:28:\"social-title-tax-product_tag\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-product_tag\";s:0:\"\";s:32:\"social-image-url-tax-product_tag\";s:0:\"\";s:31:\"social-image-id-tax-product_tag\";i:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'auto'),
(2020, '_wpforms_transient_timeout_addons.json', '1734934463', 'off'),
(2021, '_wpforms_transient_addons.json', '1734329663', 'off'),
(2022, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(2025, 'wpforms_settings', 'a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}', 'auto'),
(2034, '_wpforms_transient_timeout_docs.json', '1734934478', 'off'),
(2035, '_wpforms_transient_docs.json', '1734329678', 'off'),
(2036, '_wpforms_transient_timeout_templates.json', '1734934478', 'off'),
(2037, '_wpforms_transient_templates.json', '1734329678', 'off'),
(2061, 'wpforms_email_summaries_fetch_info_blocks_last_run', '1734329792', 'auto'),
(2062, 'wpforms_process_forms_locator_status', 'completed', 'auto'),
(2008, 'action_scheduler_hybrid_store_demarkation', '55', 'auto'),
(2009, 'schema-ActionScheduler_StoreSchema', '7.0.1734329662', 'auto'),
(2010, 'schema-ActionScheduler_LoggerSchema', '3.0.1734329662', 'auto'),
(2011, 'wpforms_version', '1.9.2.3', 'auto'),
(2012, 'wpforms_version_lite', '1.9.2.3', 'auto'),
(2013, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1734329663;}', 'auto'),
(2030, 'wpforms_admin_notices', 'a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1734329665;s:9:\"dismissed\";b:0;}}', 'auto'),
(2041, 'wpforms_builder_opened_date', '1734329680', 'off'),
(2042, 'wpforms_challenge', 'a:13:{s:6:\"status\";s:6:\"paused\";s:4:\"step\";i:0;s:7:\"user_id\";i:1;s:7:\"form_id\";i:0;s:10:\"embed_page\";i:0;s:16:\"embed_page_title\";s:0:\"\";s:16:\"started_date_gmt\";s:19:\"2024-12-16 06:37:11\";s:17:\"finished_date_gmt\";s:0:\"\";s:13:\"seconds_spent\";i:12;s:12:\"seconds_left\";i:288;s:13:\"feedback_sent\";b:0;s:19:\"feedback_contact_me\";b:0;s:13:\"window_closed\";s:0:\"\";}', 'auto'),
(2045, 'wpforms_templates_hash', '4cf7a5df0acf83ca9c72c6a0a419c622', 'auto'),
(2046, '_wpforms_transient_wpforms_htaccess_file', 'a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1734329682;s:5:\"ctime\";i:1734329682;}', 'on'),
(2047, '_wpforms_transient_wpforms_C:/wamp64/www/mpgstoneuk/wp-content/uploads/wpforms/cache/.htaccess_file', 'a:3:{s:4:\"size\";i:446;s:5:\"mtime\";i:1734329682;s:5:\"ctime\";i:1734329682;}', 'on'),
(2054, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"6.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1734329705;s:7:\"version\";s:5:\"6.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(2092, 'wp_mail_smtp_initial_version', '4.3.0', 'off'),
(2093, 'wp_mail_smtp_version', '4.3.0', 'off'),
(2094, 'wp_mail_smtp', 'a:3:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:22:\"developer@mpgstone.com\";s:9:\"from_name\";s:12:\"MPG Stone UK\";s:6:\"mailer\";s:5:\"gmail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}}', 'off'),
(2095, 'wp_mail_smtp_activated_time', '1734330300', 'off'),
(2096, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1734330300;}', 'auto'),
(2111, 'wp_mail_smtp_activation_prevent_redirect', '1', 'auto'),
(2101, 'wp_mail_smtp_source', 'wpforms', 'auto'),
(2124, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1737025199;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'auto'),
(2142, 'wp_mail_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1734330536;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}', 'off'),
(2169, 'secret_key', 'g2@+1__a;*Un^q9iGCD>CY_`542y>:.YP18gd8VUV`YQp .^2l[M$$?:}MyhO[L@', 'off'),
(2170, 'wp_mail_smtp_lite_sent_email_counter', '17', 'on'),
(2171, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:5:{i:51;i:8;i:52;i:6;s:2:\"01\";i:1;s:2:\"02\";i:1;s:2:\"03\";i:1;}', 'on'),
(2172, 'wp_mail_smtp_debug', 'a:17:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;}', 'off'),
(2106, 'wp_mail_smtp_migration_version', '5', 'on'),
(2107, 'wp_mail_smtp_debug_events_db_version', '1', 'on'),
(2118, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1734330338;s:9:\"dismissed\";b:0;}', 'auto'),
(3441, 'yoast_migrations_premium', 'a:1:{s:7:\"version\";s:4:\"23.5\";}', 'auto'),
(3442, 'wpseo_current_version', '16', 'off'),
(3443, 'wpseo_premium_version', '23.5', 'auto'),
(3444, 'wpseo-premium-redirects-export-plain', 'a:0:{}', 'yes'),
(3445, 'wpseo-premium-redirects-export-regex', 'a:0:{}', 'yes'),
(3446, 'wpseo_premium', 'a:5:{s:34:\"prominent_words_indexing_completed\";b:0;s:8:\"workouts\";a:1:{s:11:\"cornerstone\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:29:\"should_redirect_after_install\";b:0;s:29:\"activation_redirect_timestamp\";i:0;s:35:\"dismiss_update_premium_notification\";s:1:\"0\";}', 'auto'),
(1260, 'category_children', 'a:0:{}', 'auto');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_postmeta`
--

DROP TABLE IF EXISTS `mpgstoneuk_postmeta`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=414 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_postmeta`
--

INSERT INTO `mpgstoneuk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(8, 10, '_edit_lock', '1733978446:1'),
(9, 12, '_edit_last', '1'),
(7, 10, '_edit_last', '1'),
(10, 12, '_edit_lock', '1733978943:1'),
(11, 14, '_edit_last', '1'),
(12, 14, '_edit_lock', '1733978879:1'),
(13, 15, '_edit_last', '1'),
(14, 15, '_edit_lock', '1733978990:1'),
(199, 87, '_edit_last', '1'),
(28, 21, '_edit_lock', '1733984438:1'),
(27, 20, '_edit_lock', '1733983455:1'),
(31, 22, '_edit_lock', '1734936234:1'),
(32, 22, '_wp_page_template', 'custom-product.php'),
(30, 22, '_edit_last', '1'),
(29, 21, '_edit_last', '1'),
(26, 20, '_edit_last', '1'),
(36, 26, '_edit_last', '1'),
(37, 26, '_edit_lock', '1734955006:1'),
(45, 26, '_wp_old_slug', 'jjh'),
(44, 31, '_edit_lock', '1733999107:1'),
(43, 31, '_edit_last', '1'),
(41, 27, '_edit_last', '1'),
(42, 27, '_edit_lock', '1734948898:1'),
(46, 34, '_edit_last', '1'),
(47, 34, '_edit_lock', '1734948901:1'),
(48, 35, '_edit_last', '1'),
(49, 35, '_edit_lock', '1735033698:1'),
(50, 36, '_wp_attached_file', '2024/12/dummy-post-square-1-1.jpg'),
(51, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:1280;s:4:\"file\";s:33:\"2024/12/dummy-post-square-1-1.jpg\";s:8:\"filesize\";i:30829;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"dummy-post-square-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3406;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"dummy-post-square-1-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21219;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"dummy-post-square-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1588;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"dummy-post-square-1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13278;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 35, '_thumbnail_id', '130'),
(53, 27, '_thumbnail_id', '128'),
(54, 34, '_thumbnail_id', '129'),
(55, 26, '_thumbnail_id', '131'),
(56, 37, '_menu_item_type', 'custom'),
(57, 37, '_menu_item_menu_item_parent', '0'),
(58, 37, '_menu_item_object_id', '37'),
(59, 37, '_menu_item_object', 'custom'),
(60, 37, '_menu_item_target', ''),
(61, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 37, '_menu_item_xfn', ''),
(63, 37, '_menu_item_url', 'http://localhost/mpgstoneuk/'),
(75, 39, '_edit_lock', '1735276350:1'),
(65, 38, '_menu_item_type', 'post_type'),
(66, 38, '_menu_item_menu_item_parent', '0'),
(67, 38, '_menu_item_object_id', '22'),
(68, 38, '_menu_item_object', 'page'),
(69, 38, '_menu_item_target', ''),
(70, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 38, '_menu_item_xfn', ''),
(72, 38, '_menu_item_url', ''),
(74, 39, '_edit_last', '1'),
(76, 39, '_wp_page_template', 'homepage.php'),
(77, 41, '_edit_last', '1'),
(78, 41, '_edit_lock', '1734429072:1'),
(79, 45, '_wp_attached_file', '2024/12/mpgstoneuk-logo.svg'),
(80, 45, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:7813;}'),
(88, 55, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(89, 55, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <developer@mpgstone.com>\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(90, 55, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <developer@mpgstone.com>\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(91, 55, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(92, 55, '_additional_settings', ''),
(93, 55, '_locale', 'en_US'),
(94, 55, '_hash', 'eddc9ca27a75312b14b36e59b1a1c3fbe1d9baf3'),
(95, 56, '_edit_last', '1'),
(96, 56, '_edit_lock', '1734332502:1'),
(97, 56, '_wp_page_template', 'default'),
(98, 36, '_wp_attachment_image_alt', 'hello'),
(99, 60, '_edit_last', '1'),
(100, 60, '_edit_lock', '1734429188:1'),
(101, 45, '_wp_attachment_image_alt', 'Hello Footer'),
(105, 65, '_wp_page_template', 'default'),
(104, 65, '_edit_last', '1'),
(106, 65, '_yoast_indexnow_last_ping', '1734511283'),
(107, 65, '_yoast_wpseo_focuskeywords', ''),
(108, 65, '_yoast_wpseo_keywordsynonyms', ''),
(109, 65, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(110, 65, '_edit_lock', '1735809667:1'),
(111, 67, '_edit_last', '1'),
(112, 67, '_wp_page_template', 'default'),
(113, 67, '_yoast_indexnow_last_ping', '1734493128'),
(114, 67, '_yoast_wpseo_focuskeywords', ''),
(115, 67, '_yoast_wpseo_keywordsynonyms', ''),
(116, 67, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(117, 67, '_edit_lock', '1736506639:1'),
(118, 69, '_edit_last', '1'),
(119, 69, '_wp_page_template', 'default'),
(120, 69, '_yoast_indexnow_last_ping', '1734493359'),
(121, 69, '_yoast_wpseo_focuskeywords', ''),
(122, 69, '_yoast_wpseo_keywordsynonyms', ''),
(123, 69, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(124, 69, '_edit_lock', '1734590040:1'),
(125, 71, '_menu_item_type', 'post_type'),
(126, 71, '_menu_item_menu_item_parent', '0'),
(127, 71, '_menu_item_object_id', '69'),
(128, 71, '_menu_item_object', 'page'),
(129, 71, '_menu_item_target', ''),
(130, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 71, '_menu_item_xfn', ''),
(132, 71, '_menu_item_url', ''),
(134, 72, '_menu_item_type', 'post_type'),
(135, 72, '_menu_item_menu_item_parent', '0'),
(136, 72, '_menu_item_object_id', '67'),
(137, 72, '_menu_item_object', 'page'),
(138, 72, '_menu_item_target', ''),
(139, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 72, '_menu_item_xfn', ''),
(141, 72, '_menu_item_url', ''),
(154, 22, '_yoast_indexnow_last_ping', '1734504133'),
(143, 73, '_menu_item_type', 'post_type'),
(144, 73, '_menu_item_menu_item_parent', '0'),
(145, 73, '_menu_item_object_id', '65'),
(146, 73, '_menu_item_object', 'page'),
(147, 73, '_menu_item_target', ''),
(148, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 73, '_menu_item_xfn', ''),
(150, 73, '_menu_item_url', ''),
(155, 22, '_yoast_wpseo_focuskeywords', ''),
(152, 37, '_wp_old_date', '2024-12-16'),
(153, 38, '_wp_old_date', '2024-12-16'),
(156, 22, '_yoast_wpseo_keywordsynonyms', ''),
(157, 22, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(158, 74, '_edit_last', '1'),
(159, 74, '_wp_page_template', 'default'),
(160, 74, '_yoast_indexnow_last_ping', '1734505728'),
(161, 74, '_yoast_wpseo_focuskeywords', ''),
(162, 74, '_yoast_wpseo_keywordsynonyms', ''),
(163, 74, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(164, 74, '_edit_lock', '1734505585:1'),
(165, 76, '_edit_last', '1'),
(166, 76, '_edit_lock', '1735201922:1'),
(167, 76, '_yoast_indexnow_last_ping', '1734505427'),
(168, 76, '_yoast_wpseo_primary_blog_category', ''),
(169, 76, '_yoast_wpseo_focuskeywords', ''),
(170, 76, '_yoast_wpseo_keywordsynonyms', ''),
(171, 76, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(172, 74, '_wp_trash_meta_status', 'publish'),
(173, 74, '_wp_trash_meta_time', '1734505727'),
(174, 74, '_wp_desired_post_slug', 'ds'),
(175, 77, '_edit_last', '1'),
(176, 77, '_yoast_indexnow_last_ping', '1734507448'),
(177, 77, '_yoast_wpseo_primary_blog_category', ''),
(178, 77, '_yoast_wpseo_focuskeywords', ''),
(179, 77, '_yoast_wpseo_keywordsynonyms', ''),
(180, 77, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(181, 77, '_edit_lock', '1734509845:1'),
(182, 78, '_edit_last', '1'),
(183, 78, '_edit_lock', '1734511465:1'),
(197, 85, '_edit_last', '1'),
(198, 85, '_edit_lock', '1734583663:1'),
(186, 81, '_wp_attached_file', '2024/12/about.jpg'),
(187, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:970;s:6:\"height\";i:360;s:4:\"file\";s:17:\"2024/12/about.jpg\";s:8:\"filesize\";i:81538;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"about-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8162;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5444;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"about-768x285.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36184;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 81, '_wp_attachment_image_alt', 'About'),
(189, 65, 'banner_image', '81'),
(190, 65, '_banner_image', 'field_67628a2b9ff38'),
(191, 82, 'banner_image', '81'),
(192, 82, '_banner_image', 'field_67628a2b9ff38'),
(193, 83, '_edit_last', '1'),
(194, 83, '_edit_lock', '1735818489:1'),
(195, 84, '_edit_last', '1'),
(196, 84, '_edit_lock', '1734581812:1'),
(200, 87, '_edit_lock', '1734583276:1'),
(201, 88, '_edit_last', '1'),
(202, 88, '_edit_lock', '1734583623:1'),
(209, 95, '_form', '<div>\n        <div class=\"modal-body\">\n          <div class=\"form-group\">\n            [text* your-name class:form-control placeholder \"Enter your Name\"] \n          </div>\n          <div class=\"form-group\">\n           [email* your-email class:form-control placeholder \"Enter email\"]\n          </div>\n          <div class=\"form-group\">\n           [tel* phone class:form-control placeholder \"Enter Phone Number\"]\n          </div>\n          <div class=\"form-group\">\n           [textarea message 10x3 class:form-control placeholder] Message.... [/textarea]\n          </div>\n        </div>\n        <div class=\"modal-footer border-top-0 d-flex justify-content-center\">\n          [submit class:btn class:btn-success \"Submit\"]\n        </div>\n</div>'),
(203, 90, '_wp_trash_meta_status', 'publish'),
(204, 90, '_wp_trash_meta_time', '1734587531'),
(205, 91, '_wp_trash_meta_status', 'publish'),
(206, 91, '_wp_trash_meta_time', '1734587545'),
(207, 92, '_wp_trash_meta_status', 'publish'),
(208, 92, '_wp_trash_meta_time', '1734587571'),
(210, 95, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <developer@mpgstone.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(211, 95, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <developer@mpgstone.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(212, 95, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(213, 95, '_additional_settings', ''),
(214, 95, '_locale', 'en_US'),
(215, 95, '_hash', '34c1c4e45900136fa35b4eafaa4e6c3da5528d93'),
(217, 96, '_form', '<div class=\"inquiryform\">\n  <div class=\"modal-body\">\n    <small id=\"emailHelp\" class=\"form-text text-muted\">Your information is safe with us.</small>\n    [text product-name class:form-control id:product_name readonly]\n    <div class=\"form-group\">\n      [text your-name class:form-control placeholder \"Enter Your Name\"]\n    </div>\n    <div class=\"form-group\">\n      [email* your-email class:form-control placeholder \"Enter your Email-Id\"]            \n    </div>\n    <div class=\"form-group\">\n      [tel tel-751 class:form-control placeholder \"Enter Your Phone Number\"]\n    </div>\n    <div class=\"form-group\">\n      [textarea your-message class:form-control 10x3] Message [/textarea]\n    </div>\n    </div>\n    <div class=\"modal-footer border-top-0 d-flex justify-content-center\">\n      [submit class:btn class:btn-success \"Submit\"]\n  </div>\n</div>'),
(239, 98, 'wpdiscuz_form_general_options', 'a:21:{s:4:\"lang\";s:5:\"en_US\";s:25:\"roles_cannot_see_comments\";a:0:{}s:22:\"guest_can_see_comments\";i:1;s:20:\"roles_cannot_comment\";a:0:{}s:17:\"guest_can_comment\";i:1;s:21:\"show_subscription_bar\";i:1;s:19:\"guest_can_subscribe\";i:1;s:19:\"roles_can_subscribe\";a:4:{i:0;s:6:\"editor\";i:1;s:6:\"author\";i:2;s:11:\"contributor\";i:3;s:10:\"subscriber\";}s:18:\"header_text_single\";s:7:\"Comment\";s:18:\"header_text_plural\";s:8:\"Comments\";s:24:\"wpdiscuz_form_post_types\";a:5:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";s:7:\"product\";s:7:\"product\";s:4:\"blog\";s:4:\"blog\";}s:6:\"postid\";s:2:\"35\";s:12:\"postidsArray\";a:1:{i:0;i:35;}s:27:\"show_subscription_agreement\";i:0;s:28:\"subscription_agreement_label\";s:119:\"I allow to use my email address and send notification about new comments and replies (you can unsubscribe at any time).\";s:5:\"theme\";s:67:\"C:/wamp64/www/mpgstoneuk/wp-content/plugins/wpdiscuz/themes/default\";s:6:\"layout\";i:1;s:18:\"enable_post_rating\";i:1;s:17:\"post_rating_title\";s:14:\"Article Rating\";s:25:\"allow_guests_rate_on_post\";i:0;s:16:\"is_rate_editable\";i:0;}'),
(218, 96, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <developer@mpgstone.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(219, 96, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <developer@mpgstone.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(220, 96, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(221, 96, '_additional_settings', ''),
(222, 96, '_locale', 'en_US'),
(223, 96, '_hash', 'dec16facee6081a08a1eb4fbe00061480cceaba5'),
(238, 98, 'wpd_form_custom_css', ''),
(240, 98, 'wpdiscuz_form_structure', 'a:1:{s:19:\"wpd_form_row_wrap_0\";a:4:{s:11:\"column_type\";s:3:\"two\";s:9:\"row_order\";i:0;s:4:\"left\";a:3:{s:7:\"wc_name\";a:9:{s:4:\"name\";s:4:\"Name\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-user\";s:8:\"required\";i:1;s:4:\"type\";s:35:\"wpdFormAttr\\Field\\DefaultField\\Name\";s:18:\"is_show_on_comment\";i:0;s:13:\"is_show_sform\";i:0;s:15:\"show_for_guests\";i:0;s:14:\"show_for_users\";i:0;}s:8:\"wc_email\";a:9:{s:4:\"name\";s:5:\"Email\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:9:\"fas fa-at\";s:8:\"required\";i:1;s:4:\"type\";s:36:\"wpdFormAttr\\Field\\DefaultField\\Email\";s:18:\"is_show_on_comment\";i:0;s:13:\"is_show_sform\";i:0;s:15:\"show_for_guests\";i:0;s:14:\"show_for_users\";i:0;}s:10:\"wc_website\";a:5:{s:4:\"name\";s:7:\"Website\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-link\";s:6:\"enable\";i:1;s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Website\";}}s:5:\"right\";a:2:{s:10:\"wc_captcha\";a:5:{s:4:\"name\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:15:\"show_for_guests\";s:1:\"0\";s:14:\"show_for_users\";s:1:\"0\";s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Captcha\";}s:6:\"submit\";a:2:{s:4:\"name\";s:12:\"Post Comment\";s:4:\"type\";s:37:\"wpdFormAttr\\Field\\DefaultField\\Submit\";}}}}'),
(241, 98, 'wpdiscuz_form_fields', 'a:5:{s:7:\"wc_name\";a:9:{s:4:\"name\";s:4:\"Name\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-user\";s:8:\"required\";i:1;s:4:\"type\";s:35:\"wpdFormAttr\\Field\\DefaultField\\Name\";s:18:\"is_show_on_comment\";i:0;s:13:\"is_show_sform\";i:0;s:15:\"show_for_guests\";i:0;s:14:\"show_for_users\";i:0;}s:8:\"wc_email\";a:9:{s:4:\"name\";s:5:\"Email\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:9:\"fas fa-at\";s:8:\"required\";i:1;s:4:\"type\";s:36:\"wpdFormAttr\\Field\\DefaultField\\Email\";s:18:\"is_show_on_comment\";i:0;s:13:\"is_show_sform\";i:0;s:15:\"show_for_guests\";i:0;s:14:\"show_for_users\";i:0;}s:10:\"wc_website\";a:5:{s:4:\"name\";s:7:\"Website\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-link\";s:6:\"enable\";i:1;s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Website\";}s:10:\"wc_captcha\";a:5:{s:4:\"name\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:15:\"show_for_guests\";s:1:\"0\";s:14:\"show_for_users\";s:1:\"0\";s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Captcha\";}s:6:\"submit\";a:2:{s:4:\"name\";s:12:\"Post Comment\";s:4:\"type\";s:37:\"wpdFormAttr\\Field\\DefaultField\\Submit\";}}'),
(242, 98, '_edit_lock', '1734930524:1'),
(243, 98, '_edit_last', '1'),
(244, 35, '_product_gallery', 'a:3:{i:0;i:0;i:1;i:36;i:2;i:81;}'),
(245, 100, '_edit_last', '1'),
(246, 100, '_edit_lock', '1734665925:1'),
(247, 100, '_thumbnail_id', '36'),
(248, 101, '_edit_last', '1'),
(249, 101, '_edit_lock', '1734666601:1'),
(250, 101, '_wp_trash_meta_status', 'publish'),
(251, 101, '_wp_trash_meta_time', '1734668077'),
(252, 101, '_wp_desired_post_slug', 'iuuuuuuuuuuuuuuuuuu'),
(253, 100, '_wp_trash_meta_status', 'publish'),
(254, 100, '_wp_trash_meta_time', '1734668077'),
(255, 100, '_wp_desired_post_slug', 'vggfggfggh'),
(256, 103, '_edit_last', '1'),
(257, 103, '_edit_lock', '1734948898:1'),
(258, 103, '_thumbnail_id', '127'),
(259, 105, '_wp_attached_file', '2024/12/blog1.jpg'),
(260, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:612;s:6:\"height\";i:390;s:4:\"file\";s:17:\"2024/12/blog1.jpg\";s:8:\"filesize\";i:40756;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"blog1-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14458;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"blog1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7171;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:107:\"Professional blogger working on his new post for social media at home, close up. Creative collage. Panorama\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 83, '_thumbnail_id', '105'),
(262, 105, '_wp_attachment_image_alt', 'dsffdfdfdfd'),
(263, 106, '_edit_last', '1'),
(264, 106, '_edit_lock', '1734946689:1'),
(391, 167, 'testimonial_section_0_name', 'Dhan'),
(390, 167, '_testimonial_section_0_reviews_content', 'field_676e42b8aa893'),
(375, 151, 'home_page_section_0_home_banner_2_heading', ''),
(376, 151, '_home_page_section_0_home_banner_2_heading', 'field_676e2a78135f2'),
(377, 151, 'home_page_section_0_home_banner_2_button', ''),
(378, 151, '_home_page_section_0_home_banner_2_button', 'field_676e2aa6135f3'),
(379, 151, 'home_page_section_1_about_image', ''),
(380, 151, '_home_page_section_1_about_image', 'field_676e2ae360118'),
(381, 151, 'home_page_section_1_about_content', ''),
(382, 151, '_home_page_section_1_about_content', 'field_676e2af660119'),
(383, 153, '_edit_last', '1'),
(384, 153, '_edit_lock', '1735283508:1'),
(385, 167, '_edit_last', '1'),
(386, 167, '_edit_lock', '1735285385:1'),
(387, 167, 'testimonial_section_0_reviewer', ''),
(388, 167, '_testimonial_section_0_reviewer', 'field_676e431373beb'),
(389, 167, 'testimonial_section_0_reviews_content', 'If you\'re using a plugin for the Classic Editor or a theme that has TinyMCE customization, you can directly enqueue the style using a hook for the TinyMCE settings.'),
(298, 106, '_wp_trash_meta_status', 'publish'),
(299, 106, '_wp_trash_meta_time', '1734948537'),
(300, 106, '_wp_desired_post_slug', 'dfsssssssss'),
(301, 127, '_wp_attached_file', '2024/12/Additional-Tips-for-How-to-Clean-Porcelain-Tile-Floors.webp'),
(302, 127, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:600;s:4:\"file\";s:67:\"2024/12/Additional-Tips-for-How-to-Clean-Porcelain-Tile-Floors.webp\";s:8:\"filesize\";i:106470;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:67:\"Additional-Tips-for-How-to-Clean-Porcelain-Tile-Floors-300x176.webp\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10138;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:67:\"Additional-Tips-for-How-to-Clean-Porcelain-Tile-Floors-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4946;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:67:\"Additional-Tips-for-How-to-Clean-Porcelain-Tile-Floors-768x450.webp\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:55684;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 128, '_wp_attached_file', '2024/12/How-to-clean-porcelain-tiles-All-you-need-to-know.webp'),
(304, 128, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:600;s:4:\"file\";s:62:\"2024/12/How-to-clean-porcelain-tiles-All-you-need-to-know.webp\";s:8:\"filesize\";i:72538;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:62:\"How-to-clean-porcelain-tiles-All-you-need-to-know-300x176.webp\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11000;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:62:\"How-to-clean-porcelain-tiles-All-you-need-to-know-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5676;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:62:\"How-to-clean-porcelain-tiles-All-you-need-to-know-768x450.webp\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:43524;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 129, '_wp_attached_file', '2024/12/Cleaning-Supplies-Youll-need-to-clean-porcelain-tiles.webp'),
(306, 129, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:600;s:4:\"file\";s:66:\"2024/12/Cleaning-Supplies-Youll-need-to-clean-porcelain-tiles.webp\";s:8:\"filesize\";i:77902;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:66:\"Cleaning-Supplies-Youll-need-to-clean-porcelain-tiles-300x176.webp\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11826;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:66:\"Cleaning-Supplies-Youll-need-to-clean-porcelain-tiles-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5638;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:66:\"Cleaning-Supplies-Youll-need-to-clean-porcelain-tiles-768x450.webp\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47468;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 130, '_wp_attached_file', '2024/12/Mint-Cobblestone-Paving.webp'),
(308, 130, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:36:\"2024/12/Mint-Cobblestone-Paving.webp\";s:8:\"filesize\";i:160316;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"Mint-Cobblestone-Paving-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:32704;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"Mint-Cobblestone-Paving-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9852;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"Mint-Cobblestone-Paving-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:117102;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 131, '_wp_attached_file', '2024/12/Kandla-grey-Tumbled-Sandstone.webp'),
(310, 131, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:42:\"2024/12/Kandla-grey-Tumbled-Sandstone.webp\";s:8:\"filesize\";i:966124;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"Kandla-grey-Tumbled-Sandstone-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24640;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:42:\"Kandla-grey-Tumbled-Sandstone-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6344;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:42:\"Kandla-grey-Tumbled-Sandstone-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:148894;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 132, '_wp_attached_file', '2024/12/brazilian-black-slate-1000x1000-1.webp'),
(312, 132, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:46:\"2024/12/brazilian-black-slate-1000x1000-1.webp\";s:8:\"filesize\";i:228478;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:46:\"brazilian-black-slate-1000x1000-1-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16354;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:46:\"brazilian-black-slate-1000x1000-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5028;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:46:\"brazilian-black-slate-1000x1000-1-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:80452;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 133, '_edit_last', '1'),
(314, 133, '_edit_lock', '1735029450:1'),
(315, 133, '_thumbnail_id', '131'),
(316, 136, '_wp_attached_file', '2024/12/Screenshot-2024-11-27-110204.png'),
(317, 136, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1906;s:6:\"height\";i:1079;s:4:\"file\";s:40:\"2024/12/Screenshot-2024-11-27-110204.png\";s:8:\"filesize\";i:1614071;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"Screenshot-2024-11-27-110204-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63165;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"Screenshot-2024-11-27-110204-1024x580.png\";s:5:\"width\";i:1024;s:6:\"height\";i:580;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:533286;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"Screenshot-2024-11-27-110204-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31145;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Screenshot-2024-11-27-110204-768x435.png\";s:5:\"width\";i:768;s:6:\"height\";i:435;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:324973;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"Screenshot-2024-11-27-110204-1536x870.png\";s:5:\"width\";i:1536;s:6:\"height\";i:870;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1057667;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:41:\"Screenshot-2024-11-27-110204-1568x888.png\";s:5:\"width\";i:1568;s:6:\"height\";i:888;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1093002;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 76, '_thumbnail_id', '129'),
(319, 141, '_edit_last', '1'),
(320, 141, '_edit_lock', '1735278240:1'),
(321, 39, 'home_page_section_0_home_banner_0_banner_image', ''),
(322, 39, '_home_page_section_0_home_banner_0_banner_image', 'field_676e2c61783a0'),
(323, 39, 'home_page_section_0_home_banner_0_heading', ''),
(324, 39, '_home_page_section_0_home_banner_0_heading', 'field_676e2a78135f2'),
(325, 39, 'home_page_section_0_home_banner_0_button', ''),
(326, 39, '_home_page_section_0_home_banner_0_button', 'field_676e2aa6135f3'),
(327, 39, 'home_page_section_0_home_banner', '3'),
(328, 39, '_home_page_section_0_home_banner', 'field_676e2c4f7839f'),
(329, 39, 'home_page_section', 'a:2:{i:0;s:14:\"banner_section\";i:1;s:13:\"about_section\";}'),
(330, 39, '_home_page_section', 'field_676e2a12135f0'),
(331, 150, 'home_page_section_0_home_banner_0_banner_image', ''),
(332, 150, '_home_page_section_0_home_banner_0_banner_image', 'field_676e2c61783a0'),
(333, 150, 'home_page_section_0_home_banner_0_heading', ''),
(334, 150, '_home_page_section_0_home_banner_0_heading', 'field_676e2a78135f2'),
(335, 150, 'home_page_section_0_home_banner_0_button', ''),
(336, 150, '_home_page_section_0_home_banner_0_button', 'field_676e2aa6135f3'),
(337, 150, 'home_page_section_0_home_banner', '1'),
(338, 150, '_home_page_section_0_home_banner', 'field_676e2c4f7839f'),
(339, 150, 'home_page_section', 'a:1:{i:0;s:14:\"banner_section\";}'),
(340, 150, '_home_page_section', 'field_676e2a12135f0'),
(341, 39, 'home_page_section_0_home_banner_1_banner_image', ''),
(342, 39, '_home_page_section_0_home_banner_1_banner_image', 'field_676e2c61783a0'),
(343, 39, 'home_page_section_0_home_banner_1_heading', ''),
(344, 39, '_home_page_section_0_home_banner_1_heading', 'field_676e2a78135f2'),
(345, 39, 'home_page_section_0_home_banner_1_button', ''),
(346, 39, '_home_page_section_0_home_banner_1_button', 'field_676e2aa6135f3'),
(347, 39, 'home_page_section_0_home_banner_2_banner_image', ''),
(348, 39, '_home_page_section_0_home_banner_2_banner_image', 'field_676e2c61783a0'),
(349, 39, 'home_page_section_0_home_banner_2_heading', ''),
(350, 39, '_home_page_section_0_home_banner_2_heading', 'field_676e2a78135f2'),
(351, 39, 'home_page_section_0_home_banner_2_button', ''),
(352, 39, '_home_page_section_0_home_banner_2_button', 'field_676e2aa6135f3'),
(353, 39, 'home_page_section_1_about_image', ''),
(354, 39, '_home_page_section_1_about_image', 'field_676e2ae360118'),
(355, 39, 'home_page_section_1_about_content', ''),
(356, 39, '_home_page_section_1_about_content', 'field_676e2af660119'),
(357, 151, 'home_page_section_0_home_banner_0_banner_image', ''),
(358, 151, '_home_page_section_0_home_banner_0_banner_image', 'field_676e2c61783a0'),
(359, 151, 'home_page_section_0_home_banner_0_heading', ''),
(360, 151, '_home_page_section_0_home_banner_0_heading', 'field_676e2a78135f2'),
(361, 151, 'home_page_section_0_home_banner_0_button', ''),
(362, 151, '_home_page_section_0_home_banner_0_button', 'field_676e2aa6135f3'),
(363, 151, 'home_page_section_0_home_banner', '3'),
(364, 151, '_home_page_section_0_home_banner', 'field_676e2c4f7839f'),
(365, 151, 'home_page_section', 'a:2:{i:0;s:14:\"banner_section\";i:1;s:13:\"about_section\";}'),
(366, 151, '_home_page_section', 'field_676e2a12135f0'),
(367, 151, 'home_page_section_0_home_banner_1_banner_image', ''),
(368, 151, '_home_page_section_0_home_banner_1_banner_image', 'field_676e2c61783a0'),
(369, 151, 'home_page_section_0_home_banner_1_heading', ''),
(370, 151, '_home_page_section_0_home_banner_1_heading', 'field_676e2a78135f2'),
(371, 151, 'home_page_section_0_home_banner_1_button', ''),
(372, 151, '_home_page_section_0_home_banner_1_button', 'field_676e2aa6135f3'),
(373, 151, 'home_page_section_0_home_banner_2_banner_image', ''),
(374, 151, '_home_page_section_0_home_banner_2_banner_image', 'field_676e2c61783a0'),
(392, 167, '_testimonial_section_0_name', 'field_676e3fb57240c'),
(393, 167, 'testimonial_section_0_location', 'Noida'),
(394, 167, '_testimonial_section_0_location', 'field_676e429d93bf6'),
(395, 167, 'testimonial_section_0_rating', '3'),
(396, 167, '_testimonial_section_0_rating', 'field_676e3fbd7240d'),
(397, 167, 'testimonial_section', '2'),
(398, 167, '_testimonial_section', 'field_676e3f3d7240a'),
(399, 172, '_edit_last', '1'),
(400, 172, '_wp_page_template', 'default'),
(401, 172, '_edit_lock', '1735282873:1'),
(402, 167, 'testimonial_section_0_reviewer_image', '132'),
(403, 167, '_testimonial_section_0_reviewer_image', 'field_676e431373beb'),
(404, 167, 'testimonial_section_1_reviewer_image', ''),
(405, 167, '_testimonial_section_1_reviewer_image', 'field_676e431373beb'),
(406, 167, 'testimonial_section_1_reviews_content', ''),
(407, 167, '_testimonial_section_1_reviews_content', 'field_676e42b8aa893'),
(408, 167, 'testimonial_section_1_name', ''),
(409, 167, '_testimonial_section_1_name', 'field_676e3fb57240c'),
(410, 167, 'testimonial_section_1_location', ''),
(411, 167, '_testimonial_section_1_location', 'field_676e429d93bf6'),
(412, 167, 'testimonial_section_1_rating', ''),
(413, 167, '_testimonial_section_1_rating', 'field_676e3fbd7240d');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_posts`
--

DROP TABLE IF EXISTS `mpgstoneuk_posts`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_posts`
--

INSERT INTO `mpgstoneuk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-12-12 04:21:39', '2024-12-12 04:21:39', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-12-12 04:21:39', '2024-12-12 04:21:39', '', 0, 'http://localhost/mpgstoneuk/?p=1', 0, 'post', '', 1),
(3, 1, '2024-12-12 04:21:39', '2024-12-12 04:21:39', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/mpgstoneuk.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-12-12 04:21:39', '2024-12-12 04:21:39', '', 0, 'http://localhost/mpgstoneuk/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-12-12 04:21:43', '2024-12-12 04:21:43', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-12-12 04:21:43', '2024-12-12 04:21:43', '', 0, 'http://localhost/mpgstoneuk/2024/12/12/navigation/', 0, 'wp_navigation', '', 0),
(91, 1, '2024-12-19 05:52:25', '2024-12-19 05:52:25', '{\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-12-19 05:52:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0144cb03-f67d-45a7-be83-21761e083dd4', '', '', '2024-12-19 05:52:25', '2024-12-19 05:52:25', '', 0, 'http://localhost/mpgstoneuk/0144cb03-f67d-45a7-be83-21761e083dd4/', 0, 'customize_changeset', '', 0),
(10, 1, '2024-12-12 04:33:56', '2024-12-12 04:33:56', 'a:16:{s:10:\"page_title\";s:14:\"Global Setting\";s:9:\"menu_slug\";s:14:\"global-setting\";s:11:\"parent_slug\";s:4:\"none\";s:22:\"advanced_configuration\";i:1;s:8:\"icon_url\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:8:\"position\";s:0:\"\";s:8:\"redirect\";i:0;s:11:\"description\";s:1594:\"This is                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  This is global setting For website custom fields.\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:24:\"dashicons-admin-site-alt\";}s:13:\"update_button\";s:6:\"Update\";s:15:\"updated_message\";s:15:\"Options Updated\";s:10:\"capability\";s:10:\"edit_posts\";s:12:\"data_storage\";s:7:\"options\";s:7:\"post_id\";s:0:\"\";s:8:\"autoload\";i:0;}', 'Global Setting', 'global-setting', 'publish', 'closed', 'closed', '', 'ui_options_page_675a679f7b685', '', '', '2024-12-12 04:43:05', '2024-12-12 04:43:05', '', 0, 'http://localhost/mpgstoneuk/?post_type=acf-ui-options-page&#038;p=10', 0, 'acf-ui-options-page', '', 0),
(12, 1, '2024-12-12 04:37:21', '2024-12-12 04:37:21', 'a:16:{s:10:\"page_title\";s:14:\"Header Section\";s:9:\"menu_slug\";s:14:\"header-section\";s:11:\"parent_slug\";s:14:\"global-setting\";s:22:\"advanced_configuration\";i:1;s:8:\"icon_url\";s:0:\"\";s:10:\"menu_title\";s:6:\"Header\";s:8:\"position\";s:0:\"\";s:8:\"redirect\";b:0;s:11:\"description\";s:43:\"This is globally setting for Header section\";s:9:\"menu_icon\";a:0:{}s:13:\"update_button\";s:6:\"Update\";s:15:\"updated_message\";s:15:\"Options Updated\";s:10:\"capability\";s:10:\"edit_posts\";s:12:\"data_storage\";s:7:\"options\";s:7:\"post_id\";s:0:\"\";s:8:\"autoload\";i:0;}', 'Header Section', 'header-section', 'publish', 'closed', 'closed', '', 'ui_options_page_675a6863ca6a8', '', '', '2024-12-12 04:51:20', '2024-12-12 04:51:20', '', 10, 'http://localhost/mpgstoneuk/?post_type=acf-ui-options-page&#038;p=12', 0, 'acf-ui-options-page', '', 0),
(92, 1, '2024-12-19 05:52:51', '2024-12-19 05:52:51', '{\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-12-19 05:52:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bda6be7b-8a1f-4b9f-a56c-d48a7396e582', '', '', '2024-12-19 05:52:51', '2024-12-19 05:52:51', '', 0, 'http://localhost/mpgstoneuk/bda6be7b-8a1f-4b9f-a56c-d48a7396e582/', 0, 'customize_changeset', '', 0),
(14, 1, '2024-12-12 04:38:41', '2024-12-12 04:38:41', 'a:16:{s:10:\"page_title\";s:14:\"Footer Section\";s:9:\"menu_slug\";s:14:\"footer-section\";s:11:\"parent_slug\";s:14:\"global-setting\";s:22:\"advanced_configuration\";i:1;s:8:\"icon_url\";s:0:\"\";s:10:\"menu_title\";s:6:\"Footer\";s:8:\"position\";s:0:\"\";s:8:\"redirect\";b:0;s:11:\"description\";s:44:\"This is globally setting for footer section.\";s:9:\"menu_icon\";a:0:{}s:13:\"update_button\";s:6:\"Update\";s:15:\"updated_message\";s:15:\"Options Updated\";s:10:\"capability\";s:10:\"edit_posts\";s:12:\"data_storage\";s:7:\"options\";s:7:\"post_id\";s:0:\"\";s:8:\"autoload\";i:0;}', 'Footer Section', 'footer-section', 'publish', 'closed', 'closed', '', 'ui_options_page_675a68a5493c1', '', '', '2024-12-12 04:50:09', '2024-12-12 04:50:09', '', 10, 'http://localhost/mpgstoneuk/?post_type=acf-ui-options-page&#038;p=14', 0, 'acf-ui-options-page', '', 0),
(15, 1, '2024-12-12 04:44:34', '2024-12-12 04:44:34', 'a:16:{s:10:\"page_title\";s:20:\"Social Media Setting\";s:9:\"menu_slug\";s:20:\"social-media-setting\";s:11:\"parent_slug\";s:14:\"global-setting\";s:22:\"advanced_configuration\";i:1;s:8:\"icon_url\";s:0:\"\";s:10:\"menu_title\";s:12:\"Social Media\";s:8:\"position\";s:0:\"\";s:8:\"redirect\";b:0;s:11:\"description\";s:58:\"Here Set Global setting for social media globally setting.\";s:9:\"menu_icon\";a:0:{}s:13:\"update_button\";s:6:\"Update\";s:15:\"updated_message\";s:15:\"Options Updated\";s:10:\"capability\";s:10:\"edit_posts\";s:12:\"data_storage\";s:7:\"options\";s:7:\"post_id\";s:0:\"\";s:8:\"autoload\";i:0;}', 'Social Media Setting', 'social-media-setting', 'publish', 'closed', 'closed', '', 'ui_options_page_675a69e56a49d', '', '', '2024-12-12 04:51:57', '2024-12-12 04:51:57', '', 10, 'http://localhost/mpgstoneuk/?post_type=acf-ui-options-page&#038;p=15', 0, 'acf-ui-options-page', '', 0),
(90, 1, '2024-12-19 05:52:11', '2024-12-19 05:52:11', '{\n    \"page_for_posts\": {\n        \"value\": \"69\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-12-19 05:52:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3760d067-448a-4873-91dd-f16ea2f0db31', '', '', '2024-12-19 05:52:11', '2024-12-19 05:52:11', '', 0, 'http://localhost/mpgstoneuk/3760d067-448a-4873-91dd-f16ea2f0db31/', 0, 'customize_changeset', '', 0),
(89, 1, '2024-12-19 05:09:48', '2024-12-19 05:09:48', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2024-12-19 05:09:48', '2024-12-19 05:09:48', '', 69, 'http://localhost/mpgstoneuk/?p=89', 0, 'revision', '', 0),
(21, 1, '2024-12-12 06:11:26', '2024-12-12 06:11:26', 'This is Cat 1', 'Test 1 (Duplicate)', '', 'publish', 'closed', 'closed', '', 'test-1-duplicate', '', '', '2024-12-12 06:11:26', '2024-12-12 06:11:26', '', 0, 'http://localhost/mpgstoneuk/?post_type=customproduct&#038;p=21', 0, 'customproduct', '', 0),
(22, 1, '2024-12-12 06:12:08', '2024-12-12 06:12:08', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2024-12-19 04:52:51', '2024-12-19 04:52:51', '', 0, 'http://localhost/mpgstoneuk/?page_id=22', 0, 'page', '', 0),
(20, 1, '2024-12-12 06:06:30', '2024-12-12 06:06:30', 'This is Cat 1', 'Test 1', '', 'publish', 'closed', 'closed', '', 'test-1', '', '', '2024-12-12 06:06:35', '2024-12-12 06:06:35', '', 0, 'http://localhost/mpgstoneuk/?post_type=customproduct&#038;p=20', 0, 'customproduct', '', 0),
(23, 1, '2024-12-12 06:12:08', '2024-12-12 06:12:08', '', 'Product List', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-12-12 06:12:08', '2024-12-12 06:12:08', '', 22, 'http://localhost/mpgstoneuk/?p=23', 0, 'revision', '', 0),
(88, 1, '2024-12-19 04:43:47', '2024-12-19 04:43:47', '', 'ffeaffeefr', '', 'publish', 'closed', 'closed', '', 'ffeaffeefr', '', '', '2024-12-19 04:43:47', '2024-12-19 04:43:47', '', 0, 'http://localhost/mpgstoneuk/?post_type=ourproduct&#038;p=88', 0, 'ourproduct', '', 0),
(26, 1, '2024-12-12 07:08:31', '2024-12-12 07:08:31', 'Right after installing WooCommerce, your store may look empty — no products, orders, reviews. This is intentional so you can get started creating your own products and setting up WooCommerce exactly as you need.\r\n\r\nBut maybe you’d like to see what a store full of sample products looks like. If so, we’ve got some data for you! This document covers how to import the sample WooCommerce product data included in the plugin files.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Importing WooCommerce Sample Data', '', 'publish', 'open', 'closed', '', 'importing-woocommerce-sample-data', '', '', '2024-12-23 10:17:19', '2024-12-23 10:17:19', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=26', 0, 'product', '', 0),
(27, 1, '2024-12-12 08:16:02', '2024-12-12 08:16:02', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?', '', 'publish', 'open', 'closed', '', 'what-is-lorem-ipsum', '', '', '2024-12-23 10:15:49', '2024-12-23 10:15:49', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=27', 0, 'product', '', 0),
(87, 1, '2024-12-19 04:43:29', '2024-12-19 04:43:29', '', 'ffff', '', 'publish', 'closed', 'closed', '', 'ffff', '', '', '2024-12-19 04:43:34', '2024-12-19 04:43:34', '', 0, 'http://localhost/mpgstoneuk/?post_type=ourproduct&#038;p=87', 0, 'ourproduct', '', 0),
(179, 1, '2025-01-10 05:57:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-01-10 05:57:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/mpgstoneuk/?p=179', 0, 'post', '', 0),
(31, 1, '2024-12-12 10:26:25', '2024-12-12 10:26:25', 'The <code>privacy-policy.php</code> template file is used to render your site’s Privacy Policy page. The Privacy Policy page template takes precedence over the static page (<code>page.php</code>) template. If the <code>privacy-policy.php</code> file does not exist, WordPress will either use the <code>page.php</code> or <code>singular.php</code> files depending on the available templates. If neither of those files exist, it will use the <code>index.php</code> file.', 'Privacy Policy Page display', '', 'publish', 'closed', 'closed', '', 'privacy-policy-page-display', '', '', '2024-12-12 10:26:25', '2024-12-12 10:26:25', '', 0, 'http://localhost/mpgstoneuk/?post_type=custom_products&#038;p=31', 0, 'custom_products', '', 0),
(131, 1, '2024-12-23 10:17:14', '2024-12-23 10:17:14', '', 'Kandla-grey-Tumbled-Sandstone', '', 'inherit', 'open', 'closed', '', 'kandla-grey-tumbled-sandstone', '', '', '2024-12-23 10:17:14', '2024-12-23 10:17:14', '', 26, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/Kandla-grey-Tumbled-Sandstone.webp', 0, 'attachment', 'image/webp', 0),
(34, 1, '2024-12-13 04:38:46', '2024-12-13 04:38:46', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Why do we use it?', '', 'publish', 'open', 'closed', '', 'why-do-we-use-it', '', '', '2024-12-23 10:16:10', '2024-12-23 10:16:10', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=34', 0, 'product', '', 0),
(35, 1, '2024-12-13 04:40:24', '2024-12-13 04:40:24', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'publish', 'open', 'closed', '', 'where-can-i-get-some', '', '', '2024-12-23 10:16:39', '2024-12-23 10:16:39', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2024-12-13 04:55:01', '2024-12-13 04:55:01', '', 'dummy-post-square-1-1', '', 'inherit', 'open', 'closed', '', 'dummy-post-square-1-1', '', '', '2024-12-16 10:50:12', '2024-12-16 10:50:12', '', 35, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2024-12-18 03:45:03', '2024-12-16 03:45:51', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-12-18 03:45:03', '2024-12-18 03:45:03', '', 0, 'http://localhost/mpgstoneuk/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2024-12-18 03:45:03', '2024-12-16 03:45:51', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2024-12-18 03:45:03', '2024-12-18 03:45:03', '', 0, 'http://localhost/mpgstoneuk/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2024-12-16 03:46:37', '2024-12-16 03:46:37', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-12-27 04:46:51', '2024-12-27 04:46:51', '', 0, 'http://localhost/mpgstoneuk/?page_id=39', 0, 'page', '', 0),
(40, 1, '2024-12-16 03:46:37', '2024-12-16 03:46:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2024-12-16 03:46:37', '2024-12-16 03:46:37', '', 39, 'http://localhost/mpgstoneuk/?p=40', 0, 'revision', '', 0),
(41, 1, '2024-12-16 03:49:20', '2024-12-16 03:49:20', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"social-media-setting\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Social Media', 'social-media', 'publish', 'closed', 'closed', '', 'group_675fa2c407997', '', '', '2024-12-16 06:08:17', '2024-12-16 06:08:17', '', 0, 'http://localhost/mpgstoneuk/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2024-12-16 03:49:20', '2024-12-16 03:49:20', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Social media section', 'social_media_section', 'publish', 'closed', 'closed', '', 'field_675fa2c4034f4', '', '', '2024-12-16 03:49:20', '2024-12-16 03:49:20', '', 41, 'http://localhost/mpgstoneuk/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2024-12-16 03:49:20', '2024-12-16 03:49:20', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:8:\"facebook\";s:8:\"Facebook\";s:7:\"twitter\";s:7:\"Twitter\";s:9:\"instagram\";s:9:\"Instagram\";s:8:\"linkedin\";s:8:\"LinkedIn\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Social icon', 'social_icon', 'publish', 'closed', 'closed', '', 'field_675fa2f7034f5', '', '', '2024-12-16 03:53:18', '2024-12-16 03:53:18', '', 42, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=43', 0, 'acf-field', '', 0),
(44, 1, '2024-12-16 03:49:20', '2024-12-16 03:49:20', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_675fa31b034f6', '', '', '2024-12-16 03:49:20', '2024-12-16 03:49:20', '', 42, 'http://localhost/mpgstoneuk/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(45, 1, '2024-12-16 04:56:29', '2024-12-16 04:56:29', '', 'mpgstoneuk-logo', '', 'inherit', 'open', 'closed', '', 'mpgstoneuk-logo', '', '', '2024-12-17 03:52:20', '2024-12-17 03:52:20', '', 0, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/mpgstoneuk-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(106, 1, '2024-12-23 08:33:20', '2024-12-23 08:33:20', 'sgfgfgfgfgfgfgfgfgfgfgfgfgf', 'dfsssssssss', '', 'trash', 'open', 'closed', '', 'dfsssssssss__trashed', '', '', '2024-12-23 10:08:57', '2024-12-23 10:08:57', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=106', 0, 'product', '', 0),
(51, 1, '2024-12-16 05:34:28', '2024-12-16 05:34:28', '', 'Products', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-12-16 05:34:28', '2024-12-16 05:34:28', '', 22, 'http://localhost/mpgstoneuk/?p=51', 0, 'revision', '', 0),
(107, 1, '2024-12-23 09:39:52', '2024-12-23 09:39:52', '', 'dfsssssssss', '', 'inherit', 'closed', 'closed', '', '106-autosave-v1', '', '', '2024-12-23 09:39:52', '2024-12-23 09:39:52', '', 106, 'http://localhost/mpgstoneuk/?p=107', 0, 'revision', '', 0),
(55, 1, '2024-12-16 06:15:05', '2024-12-16 06:15:05', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <developer@mpgstone.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <developer@mpgstone.com>\nMessage Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2024-12-16 06:15:05', '2024-12-16 06:15:05', '', 0, 'http://localhost/mpgstoneuk/?post_type=wpcf7_contact_form&p=55', 0, 'wpcf7_contact_form', '', 0),
(56, 1, '2024-12-16 06:35:57', '2024-12-16 06:35:57', '[<span style=\"background-color: var(--global--color-background); color: var(--global--color-primary); font-family: var(--global--font-secondary); font-size: var(--global--font-size-base);\">send_test_email</span>]', 'Conatct Form', '', 'publish', 'closed', 'closed', '', 'conatct-form', '', '', '2024-12-16 06:46:01', '2024-12-16 06:46:01', '', 0, 'http://localhost/mpgstoneuk/?page_id=56', 0, 'page', '', 0),
(57, 1, '2024-12-16 06:35:57', '2024-12-16 06:35:57', '[contact-form-7 id=\"eddc9ca\" title=\"Contact form 1\"]', 'Conatct Form', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-12-16 06:35:57', '2024-12-16 06:35:57', '', 56, 'http://localhost/mpgstoneuk/?p=57', 0, 'revision', '', 0),
(58, 1, '2024-12-16 06:46:01', '2024-12-16 06:46:01', '[<span style=\"background-color: var(--global--color-background); color: var(--global--color-primary); font-family: var(--global--font-secondary); font-size: var(--global--font-size-base);\">send_test_email</span>]', 'Conatct Form', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-12-16 06:46:01', '2024-12-16 06:46:01', '', 56, 'http://localhost/mpgstoneuk/?p=58', 0, 'revision', '', 0),
(132, 1, '2024-12-23 10:19:24', '2024-12-23 10:19:24', '', 'brazilian black slate 1000x1000', '', 'inherit', 'open', 'closed', '', 'brazilian-black-slate-1000x1000', '', '', '2024-12-23 10:19:24', '2024-12-23 10:19:24', '', 26, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/brazilian-black-slate-1000x1000-1.webp', 0, 'attachment', 'image/webp', 0),
(59, 1, '2024-12-16 09:38:43', '2024-12-16 09:38:43', 'Right after installing WooCommerce, your store may look empty — no products, orders, reviews. This is intentional so you can get started creating your own products and setting up WooCommerce exactly as you need.\n\nBut maybe you’d like to see what a store full of sample products looks like. If so, we’ve got some data for you! This document covers how to import the sample WooCommerce product data included in the plugin files.', 'Importing WooCommerce Sample Data', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2024-12-16 09:38:43', '2024-12-16 09:38:43', '', 26, 'http://localhost/mpgstoneuk/?p=59', 0, 'revision', '', 0),
(61, 1, '2024-12-17 03:43:40', '2024-12-17 03:43:40', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Footer Organization Logo', 'footer_logo', 'publish', 'closed', 'closed', '', 'field_6760f33ede89a', '', '', '2024-12-17 03:46:24', '2024-12-17 03:46:24', '', 60, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=61', 0, 'acf-field', '', 0),
(60, 1, '2024-12-17 03:43:40', '2024-12-17 03:43:40', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"footer-section\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Footer Section', 'footer-section', 'publish', 'closed', 'closed', '', 'group_6760f33e38626', '', '', '2024-12-17 03:46:24', '2024-12-17 03:46:24', '', 0, 'http://localhost/mpgstoneuk/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(65, 1, '2024-12-18 03:38:22', '2024-12-18 03:38:22', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2024-12-18 08:41:23', '2024-12-18 08:41:23', '', 0, 'http://localhost/mpgstoneuk/?page_id=65', 0, 'page', '', 0),
(66, 1, '2024-12-18 03:38:22', '2024-12-18 03:38:22', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2024-12-18 03:38:22', '2024-12-18 03:38:22', '', 65, 'http://localhost/mpgstoneuk/?p=66', 0, 'revision', '', 0),
(67, 1, '2024-12-18 03:38:47', '2024-12-18 03:38:47', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2024-12-18 03:38:47', '2024-12-18 03:38:47', '', 0, 'http://localhost/mpgstoneuk/?page_id=67', 0, 'page', '', 0),
(68, 1, '2024-12-18 03:38:47', '2024-12-18 03:38:47', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2024-12-18 03:38:47', '2024-12-18 03:38:47', '', 67, 'http://localhost/mpgstoneuk/?p=68', 0, 'revision', '', 0),
(69, 1, '2024-12-18 03:42:38', '2024-12-18 03:42:38', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2024-12-19 06:34:00', '2024-12-19 06:34:00', '', 0, 'http://localhost/mpgstoneuk/?page_id=69', 0, 'page', '', 0),
(70, 1, '2024-12-18 03:42:38', '2024-12-18 03:42:38', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2024-12-18 03:42:38', '2024-12-18 03:42:38', '', 69, 'http://localhost/mpgstoneuk/?p=70', 0, 'revision', '', 0),
(71, 1, '2024-12-18 03:45:03', '2024-12-18 03:45:03', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2024-12-18 03:45:03', '2024-12-18 03:45:03', '', 0, 'http://localhost/mpgstoneuk/?p=71', 4, 'nav_menu_item', '', 0),
(72, 1, '2024-12-18 03:45:03', '2024-12-18 03:45:03', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2024-12-18 03:45:03', '2024-12-18 03:45:03', '', 0, 'http://localhost/mpgstoneuk/?p=72', 5, 'nav_menu_item', '', 0),
(73, 1, '2024-12-18 03:45:03', '2024-12-18 03:45:03', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2024-12-18 03:45:03', '2024-12-18 03:45:03', '', 0, 'http://localhost/mpgstoneuk/?p=73', 3, 'nav_menu_item', '', 0),
(74, 1, '2024-12-18 06:57:07', '2024-12-18 06:57:07', '', 'ds', '', 'trash', 'closed', 'closed', '', 'ds__trashed', '', '', '2024-12-18 07:08:47', '2024-12-18 07:08:47', '', 0, 'http://localhost/mpgstoneuk/?page_id=74', 0, 'page', '', 0),
(75, 1, '2024-12-18 06:57:07', '2024-12-18 06:57:07', '', 'ds', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2024-12-18 06:57:07', '2024-12-18 06:57:07', '', 74, 'http://localhost/mpgstoneuk/?p=75', 0, 'revision', '', 0),
(76, 1, '2024-12-18 07:03:46', '2024-12-18 07:03:46', 'This is blogssss', 'Dummy Blog', '', 'publish', 'open', 'closed', '', 'dummy-blog', '', '', '2024-12-26 07:24:53', '2024-12-26 07:24:53', '', 0, 'http://localhost/mpgstoneuk/?post_type=blog&#038;p=76', 0, 'blog', '', 0),
(77, 1, '2024-12-18 07:37:27', '2024-12-18 07:37:27', '', 'ffff', '', 'publish', 'open', 'closed', '', 'ffff', '', '', '2024-12-18 07:37:27', '2024-12-18 07:37:27', '', 0, 'http://localhost/mpgstoneuk/?post_type=blogs&#038;p=77', 0, 'blogs', '', 0),
(78, 1, '2024-12-18 08:39:40', '2024-12-18 08:39:40', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"65\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us Page', 'about-us-page', 'publish', 'closed', 'closed', '', 'group_67628a2b634cc', '', '', '2024-12-18 08:39:40', '2024-12-18 08:39:40', '', 0, 'http://localhost/mpgstoneuk/?post_type=acf-field-group&#038;p=78', 0, 'acf-field-group', '', 0),
(79, 1, '2024-12-18 08:39:40', '2024-12-18 08:39:40', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_67628a2b9ff38', '', '', '2024-12-18 08:39:40', '2024-12-18 08:39:40', '', 78, 'http://localhost/mpgstoneuk/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(81, 1, '2024-12-18 08:41:04', '2024-12-18 08:41:04', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2024-12-18 08:41:10', '2024-12-18 08:41:10', '', 65, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2024-12-18 08:41:23', '2024-12-18 08:41:23', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2024-12-18 08:41:23', '2024-12-18 08:41:23', '', 65, 'http://localhost/mpgstoneuk/?p=82', 0, 'revision', '', 0),
(83, 1, '2024-12-19 03:48:01', '2024-12-19 03:48:01', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?', '', 'publish', 'open', 'closed', '', 'what-is-lorem-ipsum', '', '', '2024-12-23 08:15:01', '2024-12-23 08:15:01', '', 0, 'http://localhost/mpgstoneuk/?post_type=blog&#038;p=83', 0, 'blog', '', 0),
(84, 1, '2024-12-19 04:19:12', '2024-12-19 04:19:12', '', 'fgdgggh', '', 'publish', 'closed', 'closed', '', 'fgdgggh', '', '', '2024-12-19 04:19:12', '2024-12-19 04:19:12', '', 0, 'http://localhost/mpgstoneuk/?post_type=book&#038;p=84', 0, 'book', '', 0),
(85, 1, '2024-12-19 04:19:21', '2024-12-19 04:19:21', '', 'dhghghhd', '', 'publish', 'closed', 'closed', '', 'dhghghhd', '', '', '2024-12-19 04:19:21', '2024-12-19 04:19:21', '', 0, 'http://localhost/mpgstoneuk/?post_type=book&#038;p=85', 0, 'book', '', 0),
(93, 1, '2024-12-19 06:33:51', '2024-12-19 06:33:51', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2024-12-19 06:33:51', '2024-12-19 06:33:51', '', 69, 'http://localhost/mpgstoneuk/?p=93', 0, 'revision', '', 0),
(94, 1, '2024-12-19 06:34:00', '2024-12-19 06:34:00', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2024-12-19 06:34:00', '2024-12-19 06:34:00', '', 69, 'http://localhost/mpgstoneuk/?p=94', 0, 'revision', '', 0),
(95, 1, '2024-12-19 07:23:54', '2024-12-19 07:23:54', '<div>\r\n        <div class=\"modal-body\">\r\n          <div class=\"form-group\">\r\n            [text* your-name class:form-control placeholder \"Enter your Name\"] \r\n          </div>\r\n          <div class=\"form-group\">\r\n           [email* your-email class:form-control placeholder \"Enter email\"]\r\n          </div>\r\n          <div class=\"form-group\">\r\n           [tel* phone class:form-control placeholder \"Enter Phone Number\"]\r\n          </div>\r\n          <div class=\"form-group\">\r\n           [textarea message 10x3 class:form-control placeholder] Message.... [/textarea]\r\n          </div>\r\n        </div>\r\n        <div class=\"modal-footer border-top-0 d-flex justify-content-center\">\r\n          [submit class:btn class:btn-success \"Submit\"]\r\n        </div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <developer@mpgstone.com>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <developer@mpgstone.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact Us Form', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2025-01-10 07:01:55', '2025-01-10 07:01:55', '', 0, 'http://localhost/mpgstoneuk/?post_type=wpcf7_contact_form&#038;p=95', 0, 'wpcf7_contact_form', '', 0),
(96, 1, '2024-12-19 07:24:22', '2024-12-19 07:24:22', '<div class=\"inquiryform\">\r\n  <div class=\"modal-body\">\r\n    <small id=\"emailHelp\" class=\"form-text text-muted\">Your information is safe with us.</small>\r\n    [text product-name class:form-control id:product_name readonly]\r\n    <div class=\"form-group\">\r\n      [text your-name class:form-control placeholder \"Enter Your Name\"]\r\n    </div>\r\n    <div class=\"form-group\">\r\n      [email* your-email class:form-control placeholder \"Enter your Email-Id\"]            \r\n    </div>\r\n    <div class=\"form-group\">\r\n      [tel tel-751 class:form-control placeholder \"Enter Your Phone Number\"]\r\n    </div>\r\n    <div class=\"form-group\">\r\n      [textarea your-message class:form-control 10x3] Message [/textarea]\r\n    </div>\r\n    </div>\r\n    <div class=\"modal-footer border-top-0 d-flex justify-content-center\">\r\n      [submit class:btn class:btn-success \"Submit\"]\r\n  </div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <developer@mpgstone.com>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <developer@mpgstone.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Model Form', '', 'publish', 'closed', 'closed', '', 'model-form', '', '', '2024-12-19 08:46:05', '2024-12-19 08:46:05', '', 0, 'http://localhost/mpgstoneuk/?post_type=wpcf7_contact_form&#038;p=96', 0, 'wpcf7_contact_form', '', 0),
(100, 1, '2024-12-19 11:35:45', '2024-12-19 11:35:45', 'gfdhhhhhhh', 'vggfggfggh', '', 'trash', 'closed', 'closed', '', 'vggfggfggh__trashed', '', '', '2024-12-20 04:14:37', '2024-12-20 04:14:37', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=100', 0, 'product', '', 0),
(105, 1, '2024-12-23 08:14:35', '2024-12-23 08:14:35', '', 'blog1', 'Professional blogger working on his new post for social media at home, close up. Creative collage. Panorama', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2024-12-23 08:14:58', '2024-12-23 08:14:58', '', 83, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/blog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2024-12-19 09:41:03', '2024-12-19 09:41:03', '', 'Default Form', '', 'publish', 'closed', 'closed', '', 'default-form', '', '', '2024-12-23 04:41:58', '2024-12-23 04:41:58', '', 0, 'http://localhost/mpgstoneuk/?p=98', 0, 'wpdiscuz_form', '', 0),
(101, 1, '2024-12-20 03:41:23', '2024-12-20 03:41:23', 'utttttttt', 'iuuuuuuuuuuuuuuuuuu', '', 'trash', 'open', 'closed', '', 'iuuuuuuuuuuuuuuuuuu__trashed', '', '', '2024-12-20 04:14:37', '2024-12-20 04:14:37', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=101', 0, 'product', '', 0),
(148, 1, '2024-12-27 04:26:52', '2024-12-27 04:26:52', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_676e2a45654a0\";s:6:\"layout\";s:5:\"table\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Home Banner', 'home_banner', 'publish', 'closed', 'closed', '', 'field_676e2c4f7839f', '', '', '2024-12-27 04:26:52', '2024-12-27 04:26:52', '', 142, 'http://localhost/mpgstoneuk/?post_type=acf-field&p=148', 0, 'acf-field', '', 0),
(103, 1, '2024-12-20 04:15:26', '2024-12-20 04:15:26', 'Autumn Brown Indian Sandstone is a popular paving option for a classic patio due to its beautiful natural colour tones. It contains relatively darker and richer colour shades and is great for creating a more traditional and rich paving patio. It is a great stone slab to add character and warmth to any exterior.', 'Autumn Brown Natural Sandstone Paving- Mix Pack', '', 'publish', 'open', 'closed', '', 'autumn-brown-natural-sandstone-paving-mix-pack', '', '', '2024-12-23 10:15:21', '2024-12-23 10:15:21', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=103', 0, 'product', '', 0),
(127, 1, '2024-12-23 10:15:16', '2024-12-23 10:15:16', '', 'Additional Tips for How to Clean Porcelain Tile Floors', '', 'inherit', 'open', 'closed', '', 'additional-tips-for-how-to-clean-porcelain-tile-floors', '', '', '2024-12-23 10:15:16', '2024-12-23 10:15:16', '', 103, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/Additional-Tips-for-How-to-Clean-Porcelain-Tile-Floors.webp', 0, 'attachment', 'image/webp', 0),
(128, 1, '2024-12-23 10:15:44', '2024-12-23 10:15:44', '', 'How to clean porcelain tiles All you need to know', '', 'inherit', 'open', 'closed', '', 'how-to-clean-porcelain-tiles-all-you-need-to-know', '', '', '2024-12-23 10:15:44', '2024-12-23 10:15:44', '', 27, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/How-to-clean-porcelain-tiles-All-you-need-to-know.webp', 0, 'attachment', 'image/webp', 0),
(129, 1, '2024-12-23 10:16:04', '2024-12-23 10:16:04', '', 'Cleaning Supplies You\'ll need to clean porcelain tiles.', '', 'inherit', 'open', 'closed', '', 'cleaning-supplies-youll-need-to-clean-porcelain-tiles', '', '', '2024-12-23 10:16:04', '2024-12-23 10:16:04', '', 34, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/Cleaning-Supplies-Youll-need-to-clean-porcelain-tiles.webp', 0, 'attachment', 'image/webp', 0),
(130, 1, '2024-12-23 10:16:32', '2024-12-23 10:16:32', '', 'Mint Cobblestone Paving', '', 'inherit', 'open', 'closed', '', 'mint-cobblestone-paving', '', '', '2024-12-23 10:16:32', '2024-12-23 10:16:32', '', 35, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/Mint-Cobblestone-Paving.webp', 0, 'attachment', 'image/webp', 0),
(141, 1, '2024-12-27 04:19:11', '2024-12-27 04:19:11', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"39\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_676e2a12024ee', '', '', '2024-12-27 04:35:13', '2024-12-27 04:35:13', '', 0, 'http://localhost/mpgstoneuk/?post_type=acf-field-group&#038;p=141', 0, 'acf-field-group', '', 0);
INSERT INTO `mpgstoneuk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(142, 1, '2024-12-27 04:19:11', '2024-12-27 04:19:11', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:2:{s:20:\"layout_676e2a45654a0\";a:6:{s:3:\"key\";s:20:\"layout_676e2a45654a0\";s:5:\"label\";s:14:\"Banner Section\";s:4:\"name\";s:14:\"banner_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_676e2ace60116\";a:6:{s:3:\"key\";s:20:\"layout_676e2ace60116\";s:5:\"label\";s:13:\"About Section\";s:4:\"name\";s:13:\"about_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";}', 'Home page Section', 'home_page_section', 'publish', 'closed', 'closed', '', 'field_676e2a12135f0', '', '', '2024-12-27 04:35:13', '2024-12-27 04:35:13', '', 141, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=142', 0, 'acf-field', '', 0),
(133, 1, '2024-12-24 03:46:57', '2024-12-24 03:46:57', 'Create a custom query for fetching related products based on a taxonomy or meta field.', 'Test and Adjust', '', 'publish', 'open', 'closed', '', 'test-and-adjust', '', '', '2024-12-24 03:47:11', '2024-12-24 03:47:11', '', 0, 'http://localhost/mpgstoneuk/?post_type=product&#038;p=133', 0, 'product', '', 0),
(136, 1, '2024-12-24 03:56:04', '2024-12-24 03:56:04', '', 'Screenshot 2024-11-27 110204', '', 'inherit', 'open', 'closed', '', 'screenshot-2024-11-27-110204', '', '', '2024-12-24 03:56:04', '2024-12-24 03:56:04', '', 0, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/Screenshot-2024-11-27-110204.png', 0, 'attachment', 'image/png', 0),
(153, 1, '2024-12-27 05:49:13', '2024-12-27 05:49:13', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"testimonials\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Testimonial', 'testimonial', 'publish', 'closed', 'closed', '', 'group_676e3f3d20c99', '', '', '2024-12-27 06:41:50', '2024-12-27 06:41:50', '', 0, 'http://localhost/mpgstoneuk/?post_type=acf-field-group&#038;p=153', 0, 'acf-field-group', '', 0),
(154, 1, '2024-12-27 05:49:13', '2024-12-27 05:49:13', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"pagination\";i:1;s:13:\"rows_per_page\";i:2;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";}', 'Testimonial Section', 'testimonial_section', 'publish', 'closed', 'closed', '', 'field_676e3f3d7240a', '', '', '2024-12-27 06:09:52', '2024-12-27 06:09:52', '', 153, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=154', 0, 'acf-field', '', 0),
(144, 1, '2024-12-27 04:19:11', '2024-12-27 04:19:11', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_676e2a78135f2', '', '', '2024-12-27 04:26:52', '2024-12-27 04:26:52', '', 148, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=144', 1, 'acf-field', '', 0),
(145, 1, '2024-12-27 04:19:11', '2024-12-27 04:19:11', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_676e2aa6135f3', '', '', '2024-12-27 04:26:52', '2024-12-27 04:26:52', '', 148, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=145', 2, 'acf-field', '', 0),
(150, 1, '2024-12-27 04:34:20', '2024-12-27 04:34:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2024-12-27 04:34:20', '2024-12-27 04:34:20', '', 39, 'http://localhost/mpgstoneuk/?p=150', 0, 'revision', '', 0),
(151, 1, '2024-12-27 04:46:51', '2024-12-27 04:46:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2024-12-27 04:46:51', '2024-12-27 04:46:51', '', 39, 'http://localhost/mpgstoneuk/?p=151', 0, 'revision', '', 0),
(146, 1, '2024-12-27 04:20:34', '2024-12-27 04:20:34', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_676e2ace60116\";s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'About Image', 'about_image', 'publish', 'closed', 'closed', '', 'field_676e2ae360118', '', '', '2024-12-27 04:20:34', '2024-12-27 04:20:34', '', 142, 'http://localhost/mpgstoneuk/?post_type=acf-field&p=146', 0, 'acf-field', '', 0),
(147, 1, '2024-12-27 04:20:34', '2024-12-27 04:20:34', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_676e2ace60116\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'About Content', 'about_content', 'publish', 'closed', 'closed', '', 'field_676e2af660119', '', '', '2024-12-27 04:20:34', '2024-12-27 04:20:34', '', 142, 'http://localhost/mpgstoneuk/?post_type=acf-field&p=147', 1, 'acf-field', '', 0),
(149, 1, '2024-12-27 04:26:52', '2024-12-27 04:26:52', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_676e2c61783a0', '', '', '2024-12-27 04:26:52', '2024-12-27 04:26:52', '', 148, 'http://localhost/mpgstoneuk/?post_type=acf-field&p=149', 0, 'acf-field', '', 0),
(155, 1, '2024-12-27 05:49:13', '2024-12-27 05:49:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_676e3fb57240c', '', '', '2024-12-27 06:04:16', '2024-12-27 06:04:16', '', 154, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=155', 2, 'acf-field', '', 0),
(156, 1, '2024-12-27 05:49:13', '2024-12-27 05:49:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:16:\"Number of Rating\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Rating', 'rating', 'publish', 'closed', 'closed', '', 'field_676e3fbd7240d', '', '', '2024-12-27 06:04:16', '2024-12-27 06:04:16', '', 154, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=156', 4, 'acf-field', '', 0),
(160, 1, '2024-12-27 06:01:22', '2024-12-27 06:01:22', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:8:\"Location\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_676e429d93bf6', '', '', '2024-12-27 06:04:16', '2024-12-27 06:04:16', '', 154, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=160', 3, 'acf-field', '', 0),
(161, 1, '2024-12-27 06:01:57', '2024-12-27 06:01:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Reviews Content', 'reviews_content', 'publish', 'closed', 'closed', '', 'field_676e42b8aa893', '', '', '2024-12-27 06:04:16', '2024-12-27 06:04:16', '', 154, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=161', 1, 'acf-field', '', 0),
(162, 1, '2024-12-27 06:04:16', '2024-12-27 06:04:16', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Avtar', 'reviewer_image', 'publish', 'closed', 'closed', '', 'field_676e431373beb', '', '', '2024-12-27 06:41:50', '2024-12-27 06:41:50', '', 154, 'http://localhost/mpgstoneuk/?post_type=acf-field&#038;p=162', 0, 'acf-field', '', 0),
(167, 1, '2024-12-27 06:10:30', '2024-12-27 06:10:30', '', 'Testimonial List', '', 'publish', 'closed', 'closed', '', 'testimonial-list', '', '', '2024-12-27 07:18:26', '2024-12-27 07:18:26', '', 0, 'http://localhost/mpgstoneuk/?post_type=testimonials&#038;p=167', 0, 'testimonials', '', 0),
(172, 1, '2024-12-27 06:27:04', '2024-12-27 06:27:04', '[testimonials_shortcode]', 'Testimonial', '', 'publish', 'closed', 'closed', '', 'testimonial', '', '', '2024-12-27 07:02:52', '2024-12-27 07:02:52', '', 0, 'http://localhost/mpgstoneuk/?page_id=172', 0, 'page', '', 0),
(173, 1, '2024-12-27 06:27:04', '2024-12-27 06:27:04', '', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2024-12-27 06:27:04', '2024-12-27 06:27:04', '', 172, 'http://localhost/mpgstoneuk/?p=173', 0, 'revision', '', 0),
(174, 1, '2024-12-27 06:27:18', '2024-12-27 06:27:18', '[<span style=\"background-color: var(--global--color-background); color: var(--global--color-primary); font-family: var(--global--font-secondary); font-size: var(--global--font-size-base);\">testimonials_shortcode]</span>', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2024-12-27 06:27:18', '2024-12-27 06:27:18', '', 172, 'http://localhost/mpgstoneuk/?p=174', 0, 'revision', '', 0),
(175, 1, '2024-12-27 06:44:37', '2024-12-27 06:44:37', '[\n<div>\n<div>testimonials_shortcode</div>\n</div>\n<span style=\"background-color: var(--global--color-background); color: var(--global--color-primary); font-family: var(--global--font-secondary); font-size: var(--global--font-size-base);\">]</span>', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '172-autosave-v1', '', '', '2024-12-27 06:44:37', '2024-12-27 06:44:37', '', 172, 'http://localhost/mpgstoneuk/?p=175', 0, 'revision', '', 0),
(177, 1, '2024-12-27 07:02:52', '2024-12-27 07:02:52', '[testimonials_shortcode]', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2024-12-27 07:02:52', '2024-12-27 07:02:52', '', 172, 'http://localhost/mpgstoneuk/?p=177', 0, 'revision', '', 0),
(176, 1, '2024-12-27 06:44:42', '2024-12-27 06:44:42', '[<span style=\"background-color: var(--global--color-background); color: var(--global--color-primary); font-family: var(--global--font-secondary); font-size: var(--global--font-size-base);\">testimonials_shortcode</span><span style=\"background-color: var(--global--color-background); color: var(--global--color-primary); font-family: var(--global--font-secondary); font-size: var(--global--font-size-base);\">]</span>', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2024-12-27 06:44:42', '2024-12-27 06:44:42', '', 172, 'http://localhost/mpgstoneuk/?p=176', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_termmeta`
--

DROP TABLE IF EXISTS `mpgstoneuk_termmeta`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_terms`
--

DROP TABLE IF EXISTS `mpgstoneuk_terms`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_terms`
--

INSERT INTO `mpgstoneuk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(5, 'Indoor Floor Tiles', 'indoor-floor-tiles', 0),
(4, 'Cattt2', 'cattt2', 0),
(6, 'Limestone', 'limestone', 0),
(7, 'Cobbles', 'cobbles', 0),
(8, 'top_head_menu', 'top_head_menu', 0),
(9, 'Tg1', 'tg1', 0),
(10, 'tag2', 'tag2', 0),
(11, 'Ndkjfjk', 'ndkjfjk', 0),
(12, 'Hello', 'hello', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_term_relationships`
--

DROP TABLE IF EXISTS `mpgstoneuk_term_relationships`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_term_relationships`
--

INSERT INTO `mpgstoneuk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(35, 5, 0),
(26, 5, 0),
(34, 6, 0),
(27, 7, 0),
(31, 4, 0),
(37, 8, 0),
(38, 8, 0),
(26, 9, 0),
(26, 10, 0),
(73, 8, 0),
(71, 8, 0),
(72, 8, 0),
(87, 7, 0),
(88, 5, 0),
(83, 11, 0),
(100, 6, 0),
(101, 5, 0),
(103, 5, 0),
(103, 6, 0),
(106, 6, 0),
(133, 5, 0),
(76, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_term_taxonomy`
--

DROP TABLE IF EXISTS `mpgstoneuk_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_term_taxonomy`
--

INSERT INTO `mpgstoneuk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(5, 5, 'product_category', '', 0, 4),
(6, 6, 'product_category', '', 0, 2),
(4, 4, 'category', '', 0, 1),
(7, 7, 'product_category', '', 0, 1),
(8, 8, 'nav_menu', '', 0, 5),
(9, 9, 'product_tag', '', 0, 1),
(10, 10, 'product_tag', '', 0, 1),
(11, 11, 'blog_category', '', 0, 1),
(12, 12, 'blog_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_usermeta`
--

DROP TABLE IF EXISTS `mpgstoneuk_usermeta`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_usermeta`
--

INSERT INTO `mpgstoneuk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'mpgstoneuk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'mpgstoneuk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"b269a6833f1a98852d08d441da8c122594a1ed9e17048596d05ade72296bd3b6\";a:4:{s:10:\"expiration\";i:1736584474;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\";s:5:\"login\";i:1736411674;}s:64:\"1c3b519cce7bf51f340882dd4942f55edf10f05e720d2cecc03e48278099eacb\";a:4:{s:10:\"expiration\";i:1736661456;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\";s:5:\"login\";i:1736488656;}}'),
(17, 1, 'mpgstoneuk_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list'),
(18, 1, 'mpgstoneuk_user-settings-time', '1735809802'),
(19, 1, 'mpgstoneuk_dashboard_quick_press_last_post_id', '179'),
(20, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(21, 1, 'acf_user_settings', 'a:2:{s:23:\"options-pages-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}'),
(22, 1, 'closedpostboxes_acf-ui-options-page', 'a:0:{}'),
(23, 1, 'metaboxhidden_acf-ui-options-page', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'mpgstoneuk_persisted_preferences', 'a:3:{s:4:\"core\";a:3:{s:26:\"isComplementaryAreaVisible\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:31:\"taxonomy-panel-product_category\";i:2;s:26:\"taxonomy-panel-product_tag\";}s:10:\"editorMode\";s:6:\"visual\";}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-12-12T05:16:27.760Z\";}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-product_category\";i:4;s:15:\"add-product_tag\";}'),
(39, 1, 'mpgstoneuk_media_library_mode', 'list'),
(27, 1, 'nav_menu_recently_edited', '8'),
(28, 1, 'wpforms_dismissed', 'a:1:{s:20:\"edu-edit-post-notice\";i:1734330976;}'),
(29, 1, 'wpforms_overview_table_columns', 'a:6:{i:1;s:4:\"name\";i:2;s:4:\"tags\";i:3;s:6:\"author\";i:4;s:9:\"shortcode\";i:5;s:7:\"created\";i:6;s:9:\"locations\";}'),
(30, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(40, 1, 'closedpostboxes_product', 'a:0:{}'),
(41, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(42, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(43, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(33, 1, '_yoast_wpseo_introductions', 'a:1:{s:18:\"ai-fix-assessments\";b:1;}'),
(38, 1, 'wpp_review_notice', '2024-12-21'),
(36, 1, 'closedpostboxes_page', 'a:2:{i:0;s:22:\"yoast_internal_linking\";i:1;s:10:\"wpseo_meta\";}'),
(37, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_users`
--

DROP TABLE IF EXISTS `mpgstoneuk_users`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_users`
--

INSERT INTO `mpgstoneuk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mpgstoneuk', '$P$BlJXRLC07/cIcNtveJh7AM4QjNJBd/1', 'admin', 'developer@mpgstone.com', 'http://localhost/mpgstoneuk', '2024-12-12 04:21:39', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wc_comments_subscription`
--

DROP TABLE IF EXISTS `mpgstoneuk_wc_comments_subscription`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wc_comments_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `subscribtion_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `subscribtion_type` varchar(20) NOT NULL,
  `activation_key` varchar(32) NOT NULL,
  `confirm` tinyint(4) DEFAULT 0,
  `subscription_date` timestamp NULL DEFAULT current_timestamp(),
  `imported_from` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscribe_unique_index` (`subscribtion_id`,`email`,`post_id`),
  KEY `subscribtion_id` (`subscribtion_id`),
  KEY `post_id` (`post_id`),
  KEY `confirm` (`confirm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wc_feedback_forms`
--

DROP TABLE IF EXISTS `mpgstoneuk_wc_feedback_forms`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wc_feedback_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `unique_id` varchar(15) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opened` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id` (`unique_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wc_follow_users`
--

DROP TABLE IF EXISTS `mpgstoneuk_wc_follow_users`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wc_follow_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_email` varchar(100) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `follower_id` int(11) NOT NULL DEFAULT 0,
  `follower_email` varchar(100) NOT NULL,
  `follower_name` varchar(255) NOT NULL,
  `activation_key` varchar(32) NOT NULL,
  `confirm` tinyint(1) NOT NULL DEFAULT 0,
  `follow_timestamp` int(11) NOT NULL,
  `follow_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `follow_unique_key` (`user_email`,`follower_email`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `user_email` (`user_email`),
  KEY `follower_id` (`follower_id`),
  KEY `follower_email` (`follower_email`),
  KEY `confirm` (`confirm`),
  KEY `follow_timestamp` (`follow_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wc_phrases`
--

DROP TABLE IF EXISTS `mpgstoneuk_wc_phrases`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wc_phrases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_key` varchar(100) NOT NULL,
  `phrase_value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phrase_key` (`phrase_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wc_users_rated`
--

DROP TABLE IF EXISTS `mpgstoneuk_wc_users_rated`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wc_users_rated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_ip` varchar(32) NOT NULL DEFAULT '',
  `rating` int(11) NOT NULL,
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wc_users_voted`
--

DROP TABLE IF EXISTS `mpgstoneuk_wc_users_voted`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wc_users_voted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `vote_type` int(11) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT 0,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comment_id` (`comment_id`),
  KEY `vote_type` (`vote_type`),
  KEY `is_guest` (`is_guest`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wpforms_logs`
--

DROP TABLE IF EXISTS `mpgstoneuk_wpforms_logs`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wpforms_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `types` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `entry_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wpforms_payments`
--

DROP TABLE IF EXISTS `mpgstoneuk_wpforms_payments`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wpforms_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `discount_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `total_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(3) NOT NULL DEFAULT '',
  `entry_id` bigint(20) NOT NULL DEFAULT 0,
  `gateway` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `mode` varchar(4) NOT NULL DEFAULT '',
  `transaction_id` varchar(40) NOT NULL DEFAULT '',
  `customer_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_status` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wpforms_payment_meta`
--

DROP TABLE IF EXISTS `mpgstoneuk_wpforms_payment_meta`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wpforms_payment_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `mpgstoneuk_wpforms_tasks_meta`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_wpforms_tasks_meta`
--

INSERT INTO `mpgstoneuk_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_forms_locator_scan', 'W10=', '2024-12-16 06:16:09'),
(2, 'wpforms_process_purge_spam', 'W10=', '2024-12-16 06:16:09'),
(3, 'wpforms_admin_addons_cache_update', 'W10=', '2024-12-16 06:18:26'),
(4, 'wpforms_admin_builder_templates_cache_update', 'W10=', '2024-12-16 06:18:26'),
(6, 'wpforms_process_forms_locator_scan', 'W10=', '2024-12-17 06:41:14'),
(7, 'wpforms_process_purge_spam', 'W10=', '2024-12-17 06:41:14'),
(8, 'wpforms_admin_addons_cache_update', 'W10=', '2024-12-17 06:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wpmailsmtp_debug_events`
--

DROP TABLE IF EXISTS `mpgstoneuk_wpmailsmtp_debug_events`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `initiator` text DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_wpmailsmtp_debug_events`
--

INSERT INTO `mpgstoneuk_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\contact-form-7\\\\includes\\\\mail.php\",\"line\":324}', 0, '2024-12-16 01:06:09'),
(2, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\contact-form-7\\\\includes\\\\mail.php\",\"line\":324}', 0, '2024-12-16 01:08:44'),
(3, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\contact-form-7\\\\includes\\\\mail.php\",\"line\":324}', 0, '2024-12-16 01:15:50'),
(4, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\custom-smtp-mail-plugin\\\\custom-smtp-mail.php\",\"line\":50}', 0, '2024-12-16 01:19:53'),
(5, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\custom-smtp-mail-plugin\\\\custom-smtp-mail.php\",\"line\":50}', 0, '2024-12-16 01:20:35'),
(6, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\custom-smtp-mail-plugin\\\\custom-smtp-mail.php\",\"line\":50}', 0, '2024-12-16 01:20:44'),
(7, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-includes\\\\class-wp-recovery-mode-email-service.php\",\"line\":225}', 0, '2024-12-18 03:42:15'),
(8, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-includes\\\\pluggable.php\",\"line\":2054}', 0, '2024-12-19 03:52:55'),
(9, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-includes\\\\pluggable.php\",\"line\":2054}', 0, '2024-12-22 23:27:00'),
(10, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-includes\\\\pluggable.php\",\"line\":2054}', 0, '2024-12-22 23:37:43'),
(11, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-includes\\\\pluggable.php\",\"line\":2054}', 0, '2024-12-22 23:38:32'),
(12, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-includes\\\\pluggable.php\",\"line\":2054}', 0, '2024-12-22 23:38:47'),
(13, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-includes\\\\pluggable.php\",\"line\":2054}', 0, '2024-12-22 23:39:08'),
(14, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112}', 0, '2024-12-23 22:07:21'),
(15, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112}', 0, '2024-12-31 04:59:25'),
(16, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112}', 0, '2025-01-09 03:04:31'),
(17, 'Mailer: Google / Gmail\r\ncURL error 60: SSL certificate problem: unable to get local issuer certificate (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://gmail.googleapis.com/gmail/v1/users/me/messages/send', '{\"file\":\"C:\\\\wamp64\\\\www\\\\mpgstoneuk\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112}', 0, '2025-01-16 05:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_wpmailsmtp_tasks_meta`
--

DROP TABLE IF EXISTS `mpgstoneuk_wpmailsmtp_tasks_meta`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_wpmailsmtp_tasks_meta`
--

INSERT INTO `mpgstoneuk_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2024-12-16 06:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_yoast_indexable`
--

DROP TABLE IF EXISTS `mpgstoneuk_yoast_indexable`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_yoast_indexable`
--

INSERT INTO `mpgstoneuk_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'http://localhost/mpgstoneuk/products/indoor-floor-tiles/where-can-i-get-some/', '77:af56ffede9989e128583f591d4519549', 35, 'post', 'product', 1, 0, NULL, NULL, 'Where can I get some?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', NULL, '36', 'featured-image', NULL, NULL, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', '36', 'featured-image', '{\n    \"width\": 1280,\n    \"height\": 1280,\n    \"filesize\": 30829,\n    \"url\": \"http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg\",\n    \"path\": \"C:\\\\wamp64\\\\www\\\\mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 36,\n    \"alt\": \"hello\",\n    \"pixels\": 1638400,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-12-17 06:41:35', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-13 04:55:07', '2024-12-13 04:40:24', 0),
(2, 'http://localhost/mpgstoneuk/author/admin/', '41:cd17c56c6da45609b6f36bf3779d4629', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/7c185c5e181e6b79252590023322f582?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/7c185c5e181e6b79252590023322f582?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2024-12-17 06:41:35', '2024-12-18 03:11:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-18 08:41:23', '2024-12-12 04:21:39', NULL),
(3, 'http://localhost/mpgstoneuk/products/limestone/why-do-we-use-it/', '64:ffb122ebdaafc7407f493926b9f62ea8', 34, 'post', 'product', 1, 0, NULL, NULL, 'Why do we use it?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', NULL, '36', 'featured-image', NULL, NULL, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', '36', 'featured-image', '{\n    \"width\": 1280,\n    \"height\": 1280,\n    \"filesize\": 30829,\n    \"url\": \"http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg\",\n    \"path\": \"C:\\\\wamp64\\\\www\\\\mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 36,\n    \"alt\": \"hello\",\n    \"pixels\": 1638400,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-12-17 06:41:35', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-13 04:55:31', '2024-12-13 04:38:46', 0),
(4, 'http://localhost/mpgstoneuk/products/cobbles/what-is-lorem-ipsum/', '65:ddf3e5160eeaa8d301d6700506a526ca', 27, 'post', 'product', 1, 0, NULL, NULL, 'What is Lorem Ipsum?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', NULL, '36', 'featured-image', NULL, NULL, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', '36', 'featured-image', '{\n    \"width\": 1280,\n    \"height\": 1280,\n    \"filesize\": 30829,\n    \"url\": \"http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg\",\n    \"path\": \"C:\\\\wamp64\\\\www\\\\mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 36,\n    \"alt\": \"hello\",\n    \"pixels\": 1638400,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-12-17 06:41:35', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-13 04:55:23', '2024-12-12 08:16:02', 0),
(5, 'http://localhost/mpgstoneuk/products/indoor-floor-tiles/importing-woocommerce-sample-data/', '90:cb8504f0d0fec3b303f46240f688277d', 26, 'post', 'product', 1, 0, NULL, NULL, 'Importing WooCommerce Sample Data', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', NULL, '36', 'featured-image', NULL, NULL, 'http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg', '36', 'featured-image', '{\n    \"width\": 1280,\n    \"height\": 1280,\n    \"filesize\": 30829,\n    \"url\": \"http://localhost/mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg\",\n    \"path\": \"C:\\\\wamp64\\\\www\\\\mpgstoneuk/wp-content/uploads/2024/12/dummy-post-square-1-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 36,\n    \"alt\": \"hello\",\n    \"pixels\": 1638400,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-12-17 06:41:35', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-16 10:50:16', '2024-12-12 07:08:31', 0),
(6, 'http://localhost/mpgstoneuk/category/uncategorized/', '51:507eb09ce06b40050e8e0561b0ce2073', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-12 04:21:39', '2024-12-12 04:21:39', NULL),
(7, 'http://localhost/mpgstoneuk/category/cattt2/', '44:88f837909ae847b917a69a01d90edabe', 4, 'term', 'category', NULL, NULL, NULL, NULL, 'Cattt2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-12 10:26:25', '2024-12-12 10:26:25', NULL),
(8, 'http://localhost/mpgstoneuk/product-categories/indoor-floor-tiles/', '66:35db19e6d2519ec0558843d7ccafebeb', 5, 'term', 'product_category', NULL, NULL, NULL, NULL, 'Indoor Floor Tiles', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-16 10:50:16', '2024-12-12 07:08:31', NULL),
(32, 'http://localhost/mpgstoneuk/blogs/', '34:44bb7099f618a0aea6eea66de4850059', NULL, 'post-type-archive', 'blog', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Blogs', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-18 08:25:56', '2024-12-18 02:55:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-18 07:03:46', '2024-12-18 07:03:46', NULL),
(9, 'http://localhost/mpgstoneuk/product-categories/limestone/', '57:32ecf8ccac6f69cdb520bd99d24f7bb9', 6, 'term', 'product_category', NULL, NULL, NULL, NULL, 'Limestone', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-13 04:55:31', '2024-12-13 04:38:46', NULL),
(33, 'http://localhost/mpgstoneuk/blogs/dummy-blog/', '45:9c7c199bbccaaf2ed9db37c70b163ba9', 76, 'post', 'blog', 1, 0, NULL, NULL, 'Dummy Blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-18 08:26:19', '2024-12-18 02:56:19', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-12-18 07:03:46', '2024-12-18 07:03:46', 0),
(10, 'http://localhost/mpgstoneuk/product-categories/cobbles/', '55:e7afdb4c53a0eb3a88c07313736c3b92', 7, 'term', 'product_category', NULL, NULL, NULL, NULL, 'Cobbles', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-13 04:55:23', '2024-12-12 08:16:02', NULL),
(11, 'http://localhost/mpgstoneuk/product-tags/tg1/', '45:631e7f6ec442859222251fbb092fecca', 9, 'term', 'product_tag', NULL, NULL, NULL, NULL, 'Tg1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-16 10:50:16', '2024-12-12 07:08:31', NULL),
(27, 'http://localhost/mpgstoneuk/?page_id=74', '39:677de7fefaebf5fe8949b68744270ba0', 74, 'post', 'page', 1, 0, NULL, NULL, 'ds', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-18 06:57:07', '2024-12-18 01:38:48', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-12-18 07:08:47', '2024-12-18 06:57:07', 0),
(12, 'http://localhost/mpgstoneuk/product-tags/tag2/', '46:02aa4f9b981ece1949d6a5ca0f3391a9', 10, 'term', 'product_tag', NULL, NULL, NULL, NULL, 'tag2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-16 10:50:16', '2024-12-12 07:08:31', NULL),
(13, 'http://localhost/mpgstoneuk/?page_id=3', '38:04508dd8189cc672916c4afca18713f4', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:38:50', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-12 04:21:39', '2024-12-12 04:21:39', 0),
(14, 'http://localhost/mpgstoneuk/products/', '37:c3480ad59c7f262214d6b69608b48d7f', 22, 'post', 'page', 1, 0, NULL, NULL, 'Products', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:38:50', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-12-18 06:43:30', '2024-12-12 06:12:08', 0),
(15, 'http://localhost/mpgstoneuk/', '28:cb19fe7d323c01d9d7d8615e163103dc', 39, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:34:37', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-16 05:28:19', '2024-12-16 03:46:37', 0),
(16, 'http://localhost/mpgstoneuk/conatct-form/', '41:892a9b37b2c8f17637547b3103f558f1', 56, 'post', 'page', 1, 0, NULL, NULL, 'Conatct Form', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:38:50', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-16 06:46:01', '2024-12-16 06:35:57', 0),
(17, 'http://localhost/mpgstoneuk/?page_id=2', '38:927dd5f2c59ab2a05b37cfb7ebc90e9f', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-12 06:23:08', '2024-12-12 04:21:39', 0),
(18, 'http://localhost/mpgstoneuk/hello-world/', '40:1336a9b1ded8a599a185ba7e406031a8', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-17 06:50:20', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-12 04:21:39', '2024-12-12 04:21:39', 0),
(19, 'http://localhost/mpgstoneuk/products/%product_category%/', '56:c8756914429954b0dad53e66ca96e9df', NULL, 'post-type-archive', 'product', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Products', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-17 06:50:21', '2024-12-18 02:59:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-16 10:50:16', '2024-12-12 07:08:31', NULL),
(20, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-17 06:50:21', '2024-12-18 01:35:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(21, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-17 06:50:21', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(22, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-17 06:50:21', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(23, 'http://localhost/mpgstoneuk/', '28:cb19fe7d323c01d9d7d8615e163103dc', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2024-12-17 06:50:22', '2024-12-18 03:11:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-18 08:41:23', '2024-12-12 04:21:39', NULL),
(24, 'http://localhost/mpgstoneuk/about-us/', '37:2f09c8d937f521c30bbac92c4d384700', 65, 'post', 'page', 1, 0, NULL, NULL, 'About Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-18 03:38:23', '2024-12-18 03:11:24', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-12-18 08:41:23', '2024-12-18 03:38:22', 0),
(25, 'http://localhost/mpgstoneuk/contact-us/', '39:e325a2f879d01b11987136112c8dcf1f', 67, 'post', 'page', 1, 0, NULL, NULL, 'Contact Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-18 03:38:48', '2024-12-18 01:38:50', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-12-18 03:38:47', '2024-12-18 03:38:47', 0),
(26, 'http://localhost/mpgstoneuk/blogs/', '34:44bb7099f618a0aea6eea66de4850059', 69, 'post', 'page', 1, 0, NULL, NULL, 'Blogs', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-12-18 03:42:39', '2024-12-18 01:35:56', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-12-18 03:42:38', '2024-12-18 03:42:38', 0),
(30, 'http://localhost/mpgstoneuk/products/%product_category%/', '56:c8756914429954b0dad53e66ca96e9df', NULL, 'post-type-archive', 'product', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Products', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-18 07:29:49', '2024-12-18 01:59:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-16 10:50:16', '2024-12-12 07:08:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `mpgstoneuk_yoast_indexable_hierarchy`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_yoast_indexable_hierarchy`
--

INSERT INTO `mpgstoneuk_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(2, 0, 0, 1),
(21, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 0, 1),
(27, 0, 0, 1),
(33, 0, 0, 1),
(32, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_yoast_migrations`
--

DROP TABLE IF EXISTS `mpgstoneuk_yoast_migrations`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mpgstoneuk_yoast_migrations_version` (`version`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `mpgstoneuk_yoast_migrations`
--

INSERT INTO `mpgstoneuk_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836'),
(25, '20190715101200'),
(26, '20210827093024');

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_yoast_primary_term`
--

DROP TABLE IF EXISTS `mpgstoneuk_yoast_primary_term`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_yoast_prominent_words`
--

DROP TABLE IF EXISTS `mpgstoneuk_yoast_prominent_words`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_yoast_prominent_words` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stem` varchar(191) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stem` (`stem`),
  KEY `indexable_id` (`indexable_id`),
  KEY `indexable_id_and_stem` (`indexable_id`,`stem`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpgstoneuk_yoast_seo_links`
--

DROP TABLE IF EXISTS `mpgstoneuk_yoast_seo_links`;
CREATE TABLE IF NOT EXISTS `mpgstoneuk_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

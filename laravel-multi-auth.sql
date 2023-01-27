-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 03:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-multi-auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_04_091957_laratrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(2, 'users-read', 'Read Users', 'Read Users', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(3, 'users-update', 'Update Users', 'Update Users', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2022-09-03 22:16:54', '2022-09-03 22:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2022-09-03 22:16:54', '2022-09-03 22:16:54'),
(2, 'library', 'Library', 'Library', '2022-09-03 22:16:55', '2022-09-03 22:16:55'),
(3, 'hostel', 'Hostel', 'Hostel', '2022-09-03 22:16:55', '2022-09-03 22:16:55'),
(4, 'bursar', 'Bursar', 'Bursar', '2022-09-03 22:16:55', '2022-09-03 22:16:55'),
(5, 'faculty', 'Faculty', 'Faculty', '2022-09-03 22:16:55', '2022-09-03 22:16:55'),
(6, 'laboratory', 'Laboratory', 'Laboratory', '2022-09-03 22:16:55', '2022-09-03 22:16:55'),
(7, 'user', 'User', 'User', '2022-09-03 22:16:55', '2022-09-03 22:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 1, 'App\\Models\\User'),
(4, 2, 'App\\Models\\User'),
(6, 3, 'App\\Models\\User'),
(5, 4, 'App\\Models\\User'),
(3, 5, 'App\\Models\\User'),
(7, 6, 'App\\Models\\User'),
(7, 7, 'App\\Models\\User'),
(7, 8, 'App\\Models\\User'),
(7, 9, 'App\\Models\\User'),
(7, 10, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laboratory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `library` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bursar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mat_no`, `is_user`, `laboratory`, `library`, `bursar`, `hostel`, `faculty`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Library', '37', NULL, NULL, NULL, NULL, NULL, NULL, 'library@futa.edu.ng', NULL, '$2y$10$/J.D5.LWeer6/erlhbrKXOW/y1g9CgurlkFIiT.dGrkhll7O3eULW', '4coZlJBSh00XeVD1JluxSWX1nXoRuaVmJSmQPohAi73BTVoBaVVNzm4bY6Zw', '2022-09-03 22:24:19', '2022-09-03 22:24:19'),
(2, 'Selma Cunningham', '47', NULL, NULL, NULL, NULL, NULL, NULL, 'bursar@futa.edu.ng', NULL, '$2y$10$YjjNEgYVIO38KsXU2fviJ.m8aZDiiIz2rWK/xvc2pmzUcQQ8SSlye', NULL, '2022-09-03 22:24:53', '2022-09-03 22:24:53'),
(3, 'Laboratory', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'laboratory@futa.edu.ng', NULL, '$2y$10$e72zgj6RyP2EDkoegWgq8u4ZvjT5YNTsO5BMgXaKTjeFHLJYKaPPC', NULL, '2022-09-03 22:26:12', '2022-09-03 22:26:12'),
(4, 'Emery Jimenez', '69', NULL, NULL, NULL, NULL, NULL, NULL, 'faculty@futa.edu.ng', NULL, '$2y$10$HEY3mHmTGl5rr1W5J31YKON3/l8oIlE1oDDNjl3zahZ4OtZAWyd/G', NULL, '2022-09-03 22:29:09', '2022-09-03 22:29:09'),
(5, 'Sean Cooley', '52', NULL, NULL, NULL, NULL, NULL, NULL, 'hostel@futa.edu.ng', NULL, '$2y$10$qeyfxvOHI/uSoGyRiEUweulbX544GWWDroBTXdflcPgFhqRK2dIaS', NULL, '2022-09-03 22:29:36', '2022-09-03 22:29:36'),
(6, 'Bertha Romero', '57', 'false', 'approved', 'approved', 'approved', 'approved', 'approved', 'user@futa.edu.ng', NULL, '$2y$10$52t16WLD96KZ90x.rwyyu.qcLTqPKSG6rI2hu4govpPo22b379d.C', NULL, '2022-09-03 22:30:38', '2022-09-03 23:26:48'),
(7, 'Ginger Conway', '65', 'false', NULL, NULL, NULL, NULL, NULL, 'gevomiliw@mailinator.com', NULL, '$2y$10$Qy/F5RrxACXAl9sA.4fmUOsHMLvVE9YGKJUoN14pI.rWBWt0IWTAu', NULL, '2022-09-03 23:03:30', '2022-09-03 23:03:30'),
(8, 'Guinevere Frost', '46', 'false', NULL, NULL, NULL, NULL, NULL, 'xeca@mailinator.com', NULL, '$2y$10$QVZnYbMCoZJL0WvlaQwE7uq5U.tuT8dtm8/cLB25J2StIpHivx/bm', NULL, '2022-09-03 23:21:44', '2022-09-03 23:21:44'),
(9, 'Cathleen Aguirre', '30', 'false', NULL, NULL, NULL, NULL, NULL, 'xylupub@mailinator.com', NULL, '$2y$10$5yEsl9knEpiZ3VZl4F9tGuowZw9zSV68Q9zBJdJHXB9VrjP8/yUTe', NULL, '2022-09-03 23:22:40', '2022-09-03 23:22:40'),
(10, 'Bebi rubber', 'ift/16/0156', 'false', NULL, 'approved', NULL, NULL, 'approved', 'bebi@futa.edu.ng', NULL, '$2y$10$I9YQhq32VWgZbiQ0W5k0EeNlalLRlMP2ba/eJVYsyzAdjGWOkoJyu', NULL, '2022-09-04 12:07:02', '2022-09-04 12:13:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

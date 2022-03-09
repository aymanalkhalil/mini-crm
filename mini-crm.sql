-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 09, 2022 at 02:02 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini-crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Alan Bayer Jr.', 'jessie.kemmer@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 11:01:05'),
(2, 'Haskell Pagac', 'rspencer@smith.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(3, 'Sarah Howell III', 'jake.hackett@gmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(4, 'Dr. Helena Wisoky', 'tzemlak@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(5, 'Dr. Forest Kunze MD', 'jordy28@johnson.net', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(6, 'Prof. Salvatore Ruecker III', 'edward16@bradtke.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(7, 'Emmitt Yundt', 'padberg.damien@cronin.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(8, 'Dr. Obie Pagac III', 'tate92@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(9, 'Gustave Beahan', 'dagmar98@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(10, 'Caden Crona', 'adam61@gorczany.info', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(11, 'Kraig Larkin', 'evalyn.okeefe@gmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(12, 'Mrs. Gregoria Corwin Sr.', 'gstark@abernathy.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(13, 'Felicity Johnston', 'ephraim.grady@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(14, 'Nadia Moore', 'oryan@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(15, 'Prof. Hester McDermott Sr.', 'dell13@nikolaus.biz', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(16, 'Leanna Monahan', 'brendan40@yahoo.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(17, 'Brenna Gorczany', 'brittany09@yahoo.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(18, 'Colt Koelpin', 'lowe.carey@crooks.net', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(19, 'Shemar Heidenreich', 'nzieme@osinski.net', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(20, 'Terry Hoeger', 'laurie.mraz@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(21, 'Lois Hammes', 'jakubowski.maude@bartoletti.info', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 10:40:06'),
(22, 'Angel Tromp', 'moen.sabryna@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(23, 'Mr. Baylee Gaylord DDS', 'jevon28@hegmann.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(24, 'Dr. Broderick Wiza', 'alycia.schmeler@yundt.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(25, 'Casimer Cummings', 'volkman.jeff@hotmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(26, 'Kenny Koelpin', 'lowe.ruthe@yahoo.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(27, 'Deanna Howe', 'carroll.reinger@gmail.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(28, 'Elisabeth Wyman PhD', 'nitzsche.wilfred@miller.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(29, 'Breanna Vandervort', 'oswaldo07@yahoo.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53'),
(30, 'Dr. Alessandro Ortiz DVM', 'ariane28@tromp.com', 'istockphoto-1304037325-170667a.jpeg', '2022-03-09 09:38:53', '2022-03-09 09:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'Tremayne', 'Kunze', 4, 'schinner.herminio@pollich.info', '3475405372', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(3, 'Demetrius', 'Lind', 26, 'hyatt.dangelo@yahoo.com', '1751007729', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(4, 'Charlie', 'Upton', 14, 'koepp.elbert@schulist.biz', '9342690367', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(5, 'Brandt', 'Little', 5, 'sbalistreri@schuppe.org', '5678572343', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(6, 'Rosamond', 'Braun', 10, 'lester75@hotmail.com', '2418141260', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(7, 'Caleb', 'Hettinger', 1, 'hoppe.allan@yahoo.com', '1685209073', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(8, 'Nyasia', 'Zboncak', 18, 'bahringer.erick@wolff.com', '0211419685', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(9, 'Lew', 'Anderson', 9, 'delbert.powlowski@yahoo.com', '4062328434', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(10, 'Ozella', 'Barton', 13, 'salvador98@little.com', '3456920800', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(11, 'Lilyan', 'Hoppe', 7, 'trudie.boehm@jenkins.com', '3317897927', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(12, 'Hulda', 'Roberts', 19, 'laurel73@padberg.com', '4991876036', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(13, 'Eveline', 'Kautzer', 14, 'vnader@fahey.com', '4062845981', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(14, 'Edwin', 'Heller', 25, 'sawayn.maude@beier.net', '0322056142', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(15, 'Jeffrey', 'Abbott', 5, 'elmer99@yahoo.com', '0887265319', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(16, 'Forrest', 'Moen', 3, 'franz28@beer.biz', '9396362215', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(17, 'Dorcas', 'King', 14, 'angelo86@yahoo.com', '5654935415', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(18, 'Noemy', 'McDermott', 26, 'abigail.kshlerin@mills.com', '9560059057', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(19, 'Emely', 'D\'Amore', 1, 'gkohler@funk.info', '8653755613', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(20, 'Colleen', 'Durgan', 7, 'teagan.oberbrunner@bauch.com', '8661848910', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(21, 'Meredith', 'Robel', 6, 'johathan90@zboncak.com', '5079518845', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(22, 'Janie', 'Gulgowski', 17, 'marlene24@gmail.com', '0578298698', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(23, 'Timmy', 'Stiedemann', 8, 'stromp@gmail.com', '5376972944', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(24, 'Rosalee', 'Emard', 13, 'orn.alfonso@wunsch.com', '0324334556', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(25, 'Alice', 'Champlin', 28, 'jenifer85@gmail.com', '1512016832', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(26, 'Marco', 'Pollich', 6, 'luettgen.lessie@hotmail.com', '0983795388', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(27, 'Ashlee', 'Kshlerin', 22, 'edubuque@hotmail.com', '3564949258', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(28, 'Thelma', 'Hilpert', 7, 'carroll.luciano@jacobi.com', '2946540864', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(29, 'Darryl', 'Nicolas', 29, 'ebert.pete@hotmail.com', '4538137319', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(30, 'Zaria', 'Nienow', 5, 'ivory61@yahoo.com', '2133334975', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(31, 'Ricky', 'Johnston', 17, 'kreilly@yahoo.com', '8299333202', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(32, 'Henriette', 'Dare', 18, 'alysha50@hotmail.com', '6256250373', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(33, 'Leonie', 'Gleichner', 8, 'wconnelly@osinski.com', '5527473828', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(34, 'Rod', 'Grady', 22, 'jschmidt@swaniawski.com', '8513402663', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(35, 'Demond', 'Rohan', 14, 'bherzog@denesik.com', '4683608305', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(36, 'Stefanie', 'Schinner', 1, 'vwalsh@rath.net', '4366168050', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(37, 'Beth', 'Kassulke', 25, 'ralph.auer@robel.com', '1299677992', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(38, 'Crawford', 'Cummerata', 12, 'lturner@brakus.com', '2598141115', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(39, 'Amber', 'Ortiz', 9, 'tgoodwin@mills.com', '0972633735', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(40, 'Rachel', 'Kemmer', 16, 'schinner.carol@gmail.com', '4279183051', '2022-03-09 10:12:19', '2022-03-09 10:12:19'),
(41, 'Aaliyah', 'Rath', 4, 'hbashirian@hegmann.info', '4117612925', '2022-03-09 10:12:19', '2022-03-09 10:12:19');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(32, '2022_03_09_065759_create_companies_table', 1),
(33, '2022_03_09_065824_create_employees_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$uQF4Tq2vnHKi0XMHgeujpO/hk1FzDmt2N0szQ/SAKkjxw3MAJ1xky', NULL, '2022-03-09 09:39:32', '2022-03-09 09:39:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_last_name_unique` (`last_name`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 03:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_decision`
--

CREATE TABLE `final_decision` (
  `id` int(11) NOT NULL,
  `pre_decision_id` int(11) NOT NULL,
  `proram_id` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` text NOT NULL DEFAULT 'default',
  `pdf` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news`, `image`, `pdf`, `created_at`, `updated_at`) VALUES
(1, 'adsfasfsadfdsfas', '63346499.png', 'Mohamed El-hossin.pdf', '2021-06-30 07:39:51', '2021-06-30 07:39:51'),
(2, 'sdafdsfsad', '63346499.png', 'Network part 1.pdf', '2021-06-30 07:40:44', '2021-06-30 07:40:44'),
(3, 'bvxcbvcxbc', '63346499.png', 'Mohamed El-hossiny.pdf', '2021-06-30 07:41:56', '2021-06-30 07:41:56');

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
-- Table structure for table `pre_decision`
--

CREATE TABLE `pre_decision` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program`, `created_at`, `updated_at`) VALUES
(1, 'اللغات', NULL, NULL),
(2, 'BIS نظم معلومات الاعمال', NULL, NULL),
(3, 'FMI الاسواق والمؤسسات المالية', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` text NOT NULL DEFAULT 'without Answer',
  `student_id` int(11) NOT NULL,
  `public` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `student_id`, `public`, `created_at`, `updated_at`) VALUES
(1, 'how to apply to BIS ?', 'خلاص مثلا انا جوبتك', 1718256, 1, NULL, '2021-06-29 18:06:40'),
(3, 'ازاي اطبع شهاده تخرج', 'تعاله وانا هطبعهالك', 1718256, 0, NULL, '2021-06-29 18:05:05'),
(4, 'اازاي اقدم عندكم', 'التفاصيل هتنزل ع الصفحه', 1718256, 0, NULL, '2021-06-29 07:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `Name_ar` text COLLATE utf8_unicode_ci NOT NULL,
  `Name_eng` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Social_ID` bigint(20) DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Shoaba` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SchoolType` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `SchoolName` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `StudentPhone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FatherPhone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FirstLanguage` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Total` float NOT NULL,
  `eng1` float NOT NULL,
  `FinalTotal` float NOT NULL,
  `reg_date` datetime NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `Name_ar`, `Name_eng`, `Social_ID`, `Gender`, `image`, `Shoaba`, `SchoolType`, `SchoolName`, `StudentPhone`, `address`, `region`, `mail`, `FatherPhone`, `FirstLanguage`, `Total`, `eng1`, `FinalTotal`, `reg_date`, `password`, `created_at`, `updated_at`) VALUES
(1718256, 'احمد محمد ياسير', 'ahmed mohamed yasser', 12345678912345, 'male', 'adsfsdafds', 'لغات', 'لغات', 'elzaher', '01117433885', 'sfdfasdfsadfdsafsd', '', 'ahmed#yahoo.com', '123121321', '2', 1140, 50, 5000, '2021-06-18 18:34:18', 'aaaa', '2021-06-17 02:34:12', '2021-06-08 02:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `student_requirements`
--

CREATE TABLE `student_requirements` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `raghba_1` int(11) NOT NULL,
  `raghba_2` int(11) NOT NULL,
  `raghba_3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `theem`
--

CREATE TABLE `theem` (
  `id` int(11) NOT NULL,
  `them` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theem`
--

INSERT INTO `theem` (`id`, `them`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2021-06-28 18:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theem` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `theem`, `created_at`, `updated_at`) VALUES
(1, 'Toma', 'm.m.m.elhossin@gmail.com', 1, NULL, '$2y$10$H3fxbEUrBGlnBOQBnRDqvuoxGgNHV.tEhnqIoi5.EuR93/vuQx812', NULL, 0, '2021-06-27 07:07:52', '2021-06-29 18:02:33'),
(3, 'AhmedEl hosisny', 'ahmed@gmail.com', 2, NULL, '$2y$10$WyveP4IN3mmdbQJYm9lahOt7AI2v/0y7sJBF0.PCdzcPzTValLkeK', NULL, 0, '2021-06-27 13:50:58', '2021-06-28 19:03:28'),
(5, 'nada Magdy', 'nada@yahoo.com', 2, NULL, '$2y$10$Frl4lDFqBxY2qXspuEcAw.CxGt4kaOykMyKgxhrHt7DAWtzNUSLO6', NULL, 0, '2021-06-28 08:12:16', '2021-06-29 05:56:15'),
(6, 'ahmed', 'laila123@gmail.com', 1, NULL, '$2y$10$8CZUaqM3Myi/Ksh/3RrT4ubl0B.53LrhcVgOyMz04gIfIUmWYlQwa', NULL, 0, '2021-06-29 07:30:47', '2021-06-29 07:30:47'),
(7, 'DR:mohamed Abdelsalam', 'abdelsalam@yahoo.com', 2, NULL, '$2y$10$Vzcj/sMAOWJU/Oo98kvFuutG5ZHW84bN4R9QPjBixH.QhG6xb5Msu', NULL, 0, '2021-06-29 07:31:17', '2021-06-29 18:03:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_decision`
--
ALTER TABLE `final_decision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pre_decision_id` (`pre_decision_id`),
  ADD KEY `proram_id` (`proram_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pre_decision`
--
ALTER TABLE `pre_decision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_requirements`
--
ALTER TABLE `student_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `raghba_1` (`raghba_1`),
  ADD KEY `raghba_2` (`raghba_2`),
  ADD KEY `raghba_3` (`raghba_3`);

--
-- Indexes for table `theem`
--
ALTER TABLE `theem`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `final_decision`
--
ALTER TABLE `final_decision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pre_decision`
--
ALTER TABLE `pre_decision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_requirements`
--
ALTER TABLE `student_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theem`
--
ALTER TABLE `theem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_decision`
--
ALTER TABLE `final_decision`
  ADD CONSTRAINT `final_decision_ibfk_1` FOREIGN KEY (`pre_decision_id`) REFERENCES `pre_decision` (`id`),
  ADD CONSTRAINT `final_decision_ibfk_2` FOREIGN KEY (`proram_id`) REFERENCES `programs` (`program_id`);

--
-- Constraints for table `pre_decision`
--
ALTER TABLE `pre_decision`
  ADD CONSTRAINT `pre_decision_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `student_requirements`
--
ALTER TABLE `student_requirements`
  ADD CONSTRAINT `student_requirements_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_requirements_ibfk_2` FOREIGN KEY (`raghba_1`) REFERENCES `programs` (`program_id`),
  ADD CONSTRAINT `student_requirements_ibfk_3` FOREIGN KEY (`raghba_2`) REFERENCES `programs` (`program_id`),
  ADD CONSTRAINT `student_requirements_ibfk_4` FOREIGN KEY (`raghba_3`) REFERENCES `programs` (`program_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

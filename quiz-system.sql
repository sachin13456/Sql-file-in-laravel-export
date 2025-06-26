-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 09:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Sachin Kumar', 'Sachin@12345', 'admin', '2025-05-31', '2025-05-31'),
(2, 'Anil', 'Anil@12345', 'Creator', '2025-05-31', '2025-05-31'),
(3, 'Amit', 'Amit@12345', 'Creator', '2025-06-08', '2025-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(100) NOT NULL,
  `name` varchar(120) NOT NULL,
  `creator` varchar(20) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `creator`, `updated_at`, `created_at`) VALUES
(1, 'dfdfdf', 'Anil', '2025-06-07', '2025-06-07'),
(3, 'coding', 'Anil', '2025-06-07', '2025-06-07'),
(4, '10 th class', 'Anil', '2025-06-07', '2025-06-07'),
(5, '12ht class', 'Anil', '2025-06-07', '2025-06-07'),
(7, 'management', 'Anil', '2025-06-07', '2025-06-07'),
(8, 'testing', 'Anil', '2025-06-07', '2025-06-07'),
(9, 'IIT', 'Anil', '2025-06-07', '2025-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `mcqs`
--

CREATE TABLE `mcqs` (
  `id` int(100) NOT NULL,
  `question` varchar(350) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `correct_ans` varchar(255) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `quiz_id` int(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mcqs`
--

INSERT INTO `mcqs` (`id`, `question`, `a`, `b`, `c`, `d`, `correct_ans`, `admin_id`, `quiz_id`, `category_id`, `updated_at`, `created_at`) VALUES
(3, 'nfnfj', 'jkjdkjdn', 'jnjds', 'ndj', 'jndjnjdn', 'a', 3, 2, 1, '2025-06-08', '2025-06-08'),
(4, 'nfnfj', 'jkjdkjdn', 'jnjds', 'ndj', 'jndjnjdn', 'a', 3, 2, 1, '2025-06-08', '2025-06-08'),
(5, 'What is java ?', 'Framwork', 'Library', 'Programming Language', 'None of above', 'c', 3, 3, 3, '2025-06-08', '2025-06-08'),
(6, 'What is laravel ?', 'Framwork', 'Library', 'Programming Language', 'None of above', 'a', 3, 3, 3, '2025-06-08', '2025-06-08'),
(7, 'Guess fruit name ?', 'red', 'yellow', 'patato', 'mango', 'd', 3, 4, 4, '2025-06-09', '2025-06-09'),
(8, 'What does HTML stand for?', 'Hyper Text Making Language', 'Hyper Text Markup Language', 'Home Tool Markup Language', 'Hyper Tool Mark Language', 'b', 3, 5, 3, '2025-06-09', '2025-06-09'),
(9, 'What is the correct way to apply an external CSS file to an HTML document?', '<style src=\"style.css\">', '<css href=\"style.css\">', '<link rel=\"stylesheet\" href=\"style.css\">', '<script href=\"style.css\">', 'c', 3, 5, 3, '2025-06-09', '2025-06-09'),
(10, 'Which of the following is the correct syntax to declare a JavaScript variable?', 'v myVar = 10;', 'var myVar = 10;', 'variable myVar = 10;', 'letVar myVar = 10;', 'b', 3, 5, 3, '2025-06-09', '2025-06-09'),
(11, 'Which HTML tag is used to define the main content of a webpage?', '<main>', '<body>', '<content>', '<div>', 'a', 3, 5, 3, '2025-06-09', '2025-06-09'),
(12, 'What will the following code output?', 'Print message in console', 'Show a popup message', 'Redirect the page', 'Nothing happens', 'b', 3, 5, 3, '2025-06-09', '2025-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_records`
--

CREATE TABLE `mcq_records` (
  `id` int(10) NOT NULL,
  `record_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `mcq_id` int(10) NOT NULL,
  `select_answer` varchar(10) NOT NULL,
  `is_correct` int(10) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mcq_records`
--

INSERT INTO `mcq_records` (`id`, `record_id`, `user_id`, `mcq_id`, `select_answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(8, 15, 1, 8, 'b', 1, '2025-06-20', '2025-06-20'),
(9, 15, 1, 9, 'c', 1, '2025-06-20', '2025-06-20'),
(10, 16, 1, 8, 'b', 1, '2025-06-20', '2025-06-20'),
(11, 16, 1, 9, 'c', 1, '2025-06-20', '2025-06-20'),
(12, 16, 1, 10, 'b', 1, '2025-06-20', '2025-06-20'),
(13, 16, 1, 11, 'a', 1, '2025-06-20', '2025-06-20'),
(14, 16, 1, 12, 'c', 0, '2025-06-20', '2025-06-20'),
(15, 17, 1, 8, 'b', 1, '2025-06-20', '2025-06-20'),
(16, 17, 1, 9, 'c', 1, '2025-06-20', '2025-06-20'),
(17, 17, 1, 10, 'b', 1, '2025-06-20', '2025-06-20'),
(18, 17, 1, 11, 'a', 1, '2025-06-20', '2025-06-20'),
(19, 17, 1, 12, 'd', 0, '2025-06-20', '2025-06-20'),
(20, 18, 1, 7, 'b', 0, '2025-06-20', '2025-06-20'),
(21, 19, 1, 7, 'd', 1, '2025-06-20', '2025-06-20'),
(22, 20, 1, 7, 'd', 1, '2025-06-20', '2025-06-20'),
(23, 21, 1, 7, 'c', 0, '2025-06-20', '2025-06-20'),
(24, 22, 1, 7, 'd', 1, '2025-06-20', '2025-06-20'),
(25, 23, 1, 8, 'b', 1, '2025-06-20', '2025-06-20'),
(26, 23, 1, 9, 'c', 1, '2025-06-20', '2025-06-20'),
(27, 23, 1, 10, 'c', 0, '2025-06-20', '2025-06-20'),
(28, 23, 1, 11, 'a', 1, '2025-06-20', '2025-06-20'),
(29, 24, 1, 3, 'b', 0, '2025-06-21', '2025-06-21'),
(30, 24, 1, 4, 'c', 0, '2025-06-21', '2025-06-21'),
(31, 25, 1, 7, 'd', 1, '2025-06-21', '2025-06-21'),
(32, 26, 1, 7, 'd', 1, '2025-06-21', '2025-06-21'),
(33, 27, 1, 7, 'd', 1, '2025-06-21', '2025-06-21'),
(34, 28, 7, 7, 'd', 1, '2025-06-23', '2025-06-23'),
(35, 29, 7, 7, 'd', 1, '2025-06-23', '2025-06-23'),
(36, 30, 1, 7, 'd', 1, '2025-06-23', '2025-06-23'),
(37, 31, 1, 7, 'd', 1, '2025-06-26', '2025-06-26'),
(38, 32, 21, 7, 'd', 1, '2025-06-26', '2025-06-26'),
(39, 33, 21, 7, 'd', 1, '2025-06-26', '2025-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(100) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `category_id`, `updated_at`, `created_at`) VALUES
(1, 'laravel', 3, '2025-06-08', '2025-06-08'),
(2, 'fgdf', 1, '2025-06-08', '2025-06-08'),
(3, '10 UI quiz for fresher', 3, '2025-06-08', '2025-06-08'),
(4, '5 quiz for kids', 4, '2025-06-09', '2025-06-09'),
(5, '5 Web development quiz for fresher', 3, '2025-06-09', '2025-06-09'),
(6, '1 Iit testing questin', 9, '2025-06-26', '2025-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(20) NOT NULL,
  `quiz_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `status` int(20) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `quiz_id`, `user_id`, `status`, `updated_at`, `created_at`) VALUES
(1, 3, 1, 1, '2025-06-19', '2025-06-19'),
(2, 4, 1, 1, '2025-06-19', '2025-06-19'),
(3, 5, 1, 1, '2025-06-19', '2025-06-19'),
(4, 5, 1, 1, '2025-06-19', '2025-06-19'),
(5, 5, 1, 1, '2025-06-19', '2025-06-19'),
(6, 5, 1, 1, '2025-06-19', '2025-06-19'),
(7, 5, 1, 1, '2025-06-19', '2025-06-19'),
(8, 5, 1, 1, '2025-06-19', '2025-06-19'),
(9, 5, 1, 1, '2025-06-19', '2025-06-19'),
(10, 5, 1, 1, '2025-06-20', '2025-06-20'),
(11, 5, 1, 1, '2025-06-20', '2025-06-20'),
(12, 3, 1, 1, '2025-06-20', '2025-06-20'),
(13, 5, 1, 1, '2025-06-20', '2025-06-20'),
(14, 5, 1, 1, '2025-06-20', '2025-06-20'),
(15, 5, 1, 1, '2025-06-20', '2025-06-20'),
(16, 5, 1, 1, '2025-06-20', '2025-06-20'),
(17, 5, 1, 1, '2025-06-20', '2025-06-20'),
(18, 4, 1, 1, '2025-06-20', '2025-06-20'),
(19, 4, 1, 1, '2025-06-20', '2025-06-20'),
(20, 4, 1, 1, '2025-06-20', '2025-06-20'),
(21, 4, 1, 1, '2025-06-20', '2025-06-20'),
(22, 4, 1, 1, '2025-06-20', '2025-06-20'),
(23, 5, 1, 1, '2025-06-20', '2025-06-20'),
(24, 2, 1, 1, '2025-06-21', '2025-06-21'),
(27, 4, 1, 1, '2025-06-21', '2025-06-21'),
(28, 4, 7, 1, '2025-06-23', '2025-06-23'),
(29, 4, 7, 1, '2025-06-23', '2025-06-23'),
(30, 4, 1, 1, '2025-06-23', '2025-06-23'),
(31, 4, 1, 1, '2025-06-26', '2025-06-26'),
(32, 4, 21, 1, '2025-06-26', '2025-06-26'),
(33, 4, 21, 1, '2025-06-26', '2025-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` int(10) NOT NULL DEFAULT 1,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `updated_at`, `created_at`) VALUES
(1, 'Amit', 'amit@test', '$2y$12$FGqhBc5CSdyuUH/RLrr8b.SVOwRhavuGEjyODG9JgHvZoG/4J0jam', 1, '2025-06-17', '2025-06-17'),
(7, 'Anil', 'anil@test', '$2y$12$rUkfRWTlbKKoFr2WZzJ.AeIwjEjC3JuVCHK8psBLeKJoIjAmL.mpq', 1, '2025-06-17', '2025-06-17'),
(8, 'sidhu', 'shidu@gmail.com', '$2y$12$/Gbfo2RLdnEQTUcHUJ0E3u8uc4y5oUcyFtDaNKHPY3tqOShftuI52', 1, '2025-06-17', '2025-06-17'),
(9, 'aaaa', 'aaaa@gmail.com', '$2y$12$ml9u/St2nysJmI1E5xyou.IeKkSOAPOFrRU/EzyKG4rnxyLQuY44m', 1, '2025-06-17', '2025-06-17'),
(10, 'Anil', 'amit@tests', '$2y$12$EnBZF2a.Ysy8vGP77toOf.Ydc0knv7DcN/rK3UUb.chMp7G3cUa8q', 1, '2025-06-17', '2025-06-17'),
(11, 'kjdsnfdh', 'lkdslkdsk@g', '$2y$12$j7cAVRhP0Js4e3q7W8FQaeyi2Gduyo8LQNPkKE6c200.Irdz5zd0m', 1, '2025-06-17', '2025-06-17'),
(12, 'sddsa', 'wdas@d', '$2y$12$OAQ3UbHPeLIBxUHOYpclt.Wbkoc9u7vAjYxwNsfl.GHcDKV0mnnf6', 1, '2025-06-18', '2025-06-18'),
(13, 'edad', 'wee@de', '$2y$12$1g3E8mZLym5M0LwzItEsT.Qi/yT31bcDZwBMGCZp6cvpPQtq4XjNq', 1, '2025-06-18', '2025-06-18'),
(14, 'user11', 'user11@com', '$2y$12$.vNkUoxT5Z3sQ5ZwHObfDuoB2hq6BF1TbESWwm8vYxf/osx.GAtWK', 1, '2025-06-18', '2025-06-18'),
(20, 'vayam', 'funnyxyz29@gmail.com', '$2y$12$FFFsbf8mHES5ZIwmJNHqs.TXBCVKSyNBqoImZDhXqCIGTmGrIW5Bm', 2, '2025-06-21', '2025-06-20'),
(21, 'vayam', 'vayam420@gmail.com', '$2y$12$pBEIzFRjPfhmWfzZaNQBX.x7cMEcMG02Ldxon5LDrNHPsb2q48sU.', 2, '2025-06-20', '2025-06-20'),
(25, 'Saurabh', 'amit@testljj', '$2y$12$DrvGBm14VBTK.qh7IL6I/OuBbgO3sIu0SJNTsa/5UPKS4QpxI2PMO', 1, '2025-06-21', '2025-06-21'),
(26, 'dssf', 'sdsa@f', '$2y$12$3LLVSF.x5rBswWiOJEhfM.Rhk2ZK4Pwxg.SJRjzjg4RT2GR9iRIsS', 1, '2025-06-21', '2025-06-21'),
(27, 'Saurabh', 'hghg@h', '$2y$12$7T1.XkcIbWnFGGHeqAyz5eQsINBCcMFNkVJv2fMkBj65m9/tGMinu', 1, '2025-06-21', '2025-06-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcqs`
--
ALTER TABLE `mcqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_records`
--
ALTER TABLE `mcq_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mcqs`
--
ALTER TABLE `mcqs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mcq_records`
--
ALTER TABLE `mcq_records`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

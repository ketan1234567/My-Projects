-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 12:28 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ashruba`
--

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(5) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `salary` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `f_name`, `l_name`, `address`, `email`, `gender`, `image`, `contact`, `age`, `created_date`, `status`, `password`, `role`, `salary`) VALUES
(1, 'akshay', 'dhuml', 'pune', 'ak@gmail.com', 'male', 'pexels-asad-photo-maldives-3293148.jpg', 'ed', '23', '2022-03-18 00:34:55', '1', '123', 1, '1000'),
(2, 'Maya', 'Bethany', 'Summer', 'myloky@mailinator.com', 'feale', 'pexels-andy-vu-3244513.jpg', 'Vladimir', '66', '2022-03-26 03:37:51', '1', '123', 0, '1050'),
(3, 'Avram', 'Candice', 'Edan', 'goqy@mailinator.com', 'male', 'pexels-eberhard-grossgasteiger-572897.jpg', 'Xandra', '27', '2022-03-26 03:38:05', '1', '123', 0, '200'),
(4, 'Idola', 'Thaddeus', 'Hope', 'wadiz@mailinator.com', 'Other', 'pexels-stein-egil-liland-3408744.jpg', 'Drew', '93', '2022-03-26 03:38:17', '0', '123', 0, '100'),
(5, 'Paula', 'Tana', 'Vincent', 'fuqesive@mailinator.com', 'male', 'pexels-andy-vu-3244513.jpg', 'Mariam', '34', '2022-03-29 22:53:34', '1', '123', 0, '1000'),
(6, 'Moses', 'Gail', 'Kiona', 'sukyzol@mailinator.com', 'Other', 'pexels-arnie-watkins-3156381.jpg', 'Amos', '60', '2022-03-29 22:53:59', '1', '123', 0, '1000'),
(7, 'George', 'Cody', 'Troy', 'nobepovi@mailinator.com', 'feale', 'pexels-alex-conchillos-3941855.jpg', 'Isaac', '61', '2022-03-30 00:25:54', '1', '123', 0, '200'),
(9, 'Cherokee', 'Lisandra', 'Moana', 'muky@mailinator.com', 'feale', '[\"uploads\\/pexels-alex-azabache-5117913.jpg\",\"uploads\\/pexels-alex-conchillos-3941855.jpg\",\"uploads\\/pexels-andy-vu-3244513.jpg\",\"uploads\\/pexels-arnie-watkins-3156381 (1).jpg\",\"uploads\\/pexels-ekrulila-4035587.jpg\"]', 'Wylie', '73', '2022-03-30 00:43:07', '0', '123', 0, '1800'),
(10, 'Charles', 'Dolan', 'Victoria', 'dezuca@mailinator.com', 'male', '[\"uploads\\/pexels-alex-azabache-5117913.jpg\",\"uploads\\/pexels-alex-conchillos-3941855.jpg\",\"uploads\\/pexels-andy-vu-3244513.jpg\",\"uploads\\/pexels-arnie-watkins-3156381 (1).jpg\",\"uploads\\/pexels-arnie-watkins-3156381.jpg\"]', 'Noah', '20', '2022-05-13 02:32:10', '0', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel`
--

CREATE TABLE `laravel` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laravel`
--

INSERT INTO `laravel` (`id`, `email`, `password`, `image`, `status`) VALUES
(1, 'sudi@mailinator.com', '123', 'uploads/pexels-ekrulila-4035587.jpg', 1),
(2, 'calol@mailinator.com', '123', 'uploads/pexels-ekrulila-4035587.jpg', 1),
(3, 'ap@gmail.com', '123', 'uploads/pexels-ekrulila-4035587.jpg', 1),
(4, 'ak@gmail.com', '123', 'uploads/pexels-ekrulila-4035587.jpg', 1),
(5, 'ak@gmail.com', '123', 'uploads/pexels-ekrulila-4035587.jpg', 1),
(6, 'ak@gmail.com', '123', 'uploads/pexels-ekrulila-4035587.jpg', 1),
(7, 'ak@gmail.com', '123', 'uploads/pexels-ekrulila-4035587.jpg', 1),
(8, 'sucydu@mailinator.com', 'Pa$$w0rd!', 'uploads/pexels-ekrulila-4035587.jpg', 1),
(9, 'rijizuhiqe@mailinator.com', '147822', 'uploads/pexels-stein-egil-liland-3408744.jpg', 1),
(10, 'rijizuhiqe@mailinator.com', '147822', 'uploads/pexels-stein-egil-liland-3408744.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `role_number` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `position`, `role_number`, `status`) VALUES
(1, 'college', 'student', 22, '1'),
(2, 'prathamesh', 'teacher', 2254656, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laravel`
--
ALTER TABLE `laravel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laravel`
--
ALTER TABLE `laravel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role` FOREIGN KEY (`id`) REFERENCES `fields` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

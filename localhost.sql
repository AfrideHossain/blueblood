-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2021 at 10:15 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17344399_blueblood`
--
CREATE DATABASE IF NOT EXISTS `id17344399_blueblood` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id17344399_blueblood`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `pass`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `product_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `stock`, `product_img`) VALUES
(2, 'Afride\'s pic', 5000, 20, 'images/afride_cover.jpg'),
(3, 'Flower pot', 400, 30, 'images/wooden flower pot.jpg'),
(4, 'creative table clock', 600, 30, 'images/creative table clock.webp'),
(5, 'wooden pen box', 300, 20, 'images/wooden pen box.jpg'),
(6, 'wooden photoframe', 400, 30, 'images/wooden photoframe.jpg'),
(7, 'creative wall clock', 700, 30, 'images/wooden wall clock.jpg'),
(8, 'horse sculpture', 2000, 10, 'images/horse sculpture.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `prime_phone` varchar(15) NOT NULL,
  `alt_phone` varchar(15) NOT NULL,
  `village` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `profile_pic` varchar(150) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `username`, `email`, `prime_phone`, `alt_phone`, `village`, `area`, `district`, `division`, `country`, `profile_pic`, `pass`, `join_date`) VALUES
(5, 'Afride', 'asafridehossain142@gmail.com', '01704760805', '01704760805', 'Narayanpur', 'pangsha', 'rajbari', 'Dhaka', 'Bangladesh', 'members/uploads/Afride01704760805.jpg', '0cb65a3ea8e0e25bac2fbfe2d66ecd25', '2021-07-17 04:24:11'),
(7, 'Elon Musk', 'elonmusk@dummy.com', '+175759845', '+175759845', 'Pangsha', 'Pangsha', 'Rajbari', 'Dhaka', 'Bangladesh', 'members/uploads/Elon Musk+175759845.jpg', '9e887375eaba77dc7568e4048268520e', '2021-07-27 14:46:57'),
(8, 'Elon Musk', 'elonmusk@dummy.com', '+175759845', '+175759845', 'Pangsha', 'Pangsha', 'Rajbari', 'Dhaka', 'Bangladesh', 'members/uploads/Elon Musk+175759845.jpg', '9e887375eaba77dc7568e4048268520e', '2021-08-01 08:44:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

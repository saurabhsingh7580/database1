-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 06:28 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanjeev`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `adhar_no` varchar(30) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL CHECK (`role` in ('user','admin','owner'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `adhar_no`, `role`) VALUES
(1, 'saurabh', 'saurabh@gmail.com', '1234567890', '$2b$08$tj7CccHVn1g4zrPb3B7dg.FdACFjkPWs3RRc/Ca5kKRtR6hyQu45.', '123456789006', 'admin'),
(2, 'Ayush Singh', 'ayushtech8085@gmail.com', '7654567765', '$2b$08$6luejq2zsJvDIX/Ghi88w.yxmI5Z4EBUf0HP5XITr3GEOscCmF.YK', '3333333333333', 'admin'),
(3, 'saurabh', 'saurabh@gmail.com', '7654567765', '$2b$08$s6BEG0rVF09izLaKfE8.P.a2pqzlYhe9DdxY6RBGJUMmQxkAJVFXG', '54565465756', 'Admin'),
(4, 'Ajay', 'Ajay@gmail.com', '987654321', '$2b$08$uB7kGQUyFodJYQz2zZJyneNUcxcutiyfTvS3nj5FshZA4pL3uUe/6', '54565465756', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

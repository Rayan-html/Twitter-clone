-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2023 at 08:15 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chirpify`
--

-- --------------------------------------------------------

--
-- Table structure for table `gebruiker`
--

CREATE TABLE `gebruiker` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `naam` varchar(64) NOT NULL,
  `wachtwoord` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `profiel` varchar(50) DEFAULT NULL,
  `inhoud` varchar(450) NOT NULL,
  `datum` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reactie` varchar(150) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `profiel`, `inhoud`, `datum`, `reactie`, `likes`, `User_id`) VALUES
(62, 'max', 'nancnjakn', '2023-04-06 20:51:13', NULL, NULL, NULL),
(63, 'Max', 'hoi is ben aan het tweeten', '2023-04-06 21:18:19', NULL, NULL, NULL),
(64, '', '', '2023-04-06 21:32:41', NULL, NULL, NULL),
(65, 'bnbhjhun', 'njnuoin', '2023-04-06 21:34:30', NULL, NULL, NULL),
(66, 'bnbhjhun', 'njnuoin', '2023-04-06 21:35:19', NULL, NULL, NULL),
(67, 'Rayan', 'ik ben max', '2023-04-06 21:35:36', NULL, NULL, NULL),
(68, 'bhaujs', 'njksdnuj', '2023-04-06 21:38:00', NULL, NULL, NULL),
(69, 'ri', 'hallo ', '2023-04-06 21:47:12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'Max', 'Hallensleben'),
(3, 'ta', 'ti'),
(4, 'ri', 'roe'),
(5, 'ra', 'nam'),
(6, 'ni', 'gel'),
(7, 'Maxnhuhuj', 'jijjmki'),
(9, '09wo', 'qwepo'),
(11, 'lo', 'key'),
(12, 'royo', 'ww'),
(14, 'romi', 'ramo'),
(15, 'nieuw', 'accountr'),
(16, 'no', '9ii'),
(17, 'o', 'w'),
(19, '', ''),
(23, 'ui', 'iu'),
(25, 'up', 'iip'),
(27, 'ipo', 'ipoj'),
(28, '90', 'ij'),
(29, 'i7yugi', ';giugu'),
(30, 'rayanni', 'ali'),
(31, 'popo', 'woih08we'),
(32, 'njkSoih', 'jskbnujN '),
(33, 'niuuu', 'eee'),
(34, 'nieuwe', 'acc'),
(35, 'Nigel', 'ri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gebruiker`
--
ALTER TABLE `gebruiker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gebruiker`
--
ALTER TABLE `gebruiker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

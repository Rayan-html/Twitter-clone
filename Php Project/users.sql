-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 05 apr 2023 om 19:33
-- Serverversie: 5.7.24
-- PHP-versie: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'Max', 'Hallensleben'),
(2, 'rayan', 'momi'),
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
(18, 'iiw', 'ww'),
(19, '', ''),
(23, 'ui', 'iu'),
(25, 'up', 'iip'),
(27, 'ipo', 'ipoj'),
(28, '90', 'ij'),
(29, 'i7yugi', ';giugu'),
(30, 'rayanni', 'ali'),
(31, 'popo', 'woih08we');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_unique` (`name`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

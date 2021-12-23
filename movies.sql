-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: localhost:8889
-- Čas generovania: Št 23.Dec 2021, 19:55
-- Verzia serveru: 5.7.34
-- Verzia PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `movies`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `directors`
--

CREATE TABLE `directors` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `directors`
--

INSERT INTO `directors` (`id`, `first_name`, `last_name`, `country`, `birthdate`) VALUES
(1, 'Edgar', 'Wright', 'United Kingdom', '1974-04-18'),
(2, 'Jim', 'Jarmusch', 'United States', '1953-01-22'),
(3, 'Joss', 'Whedon', 'United States', '1964-06-23'),
(4, 'Leos', 'Carax', 'France', '1960-11-22');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `movies`
--

CREATE TABLE `movies` (
  `id` int(11) UNSIGNED NOT NULL,
  `director_id` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `gross` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `movies`
--

INSERT INTO `movies` (`id`, `director_id`, `title`, `year`, `gross`) VALUES
(1, 1, 'Shaun of the Dead', 2004, '13542874.00'),
(2, 1, 'Hot Fuzz', 2007, '23637265.00'),
(3, 1, 'Scott Pilgrim vs. the World', 2010, '31524275.00'),
(4, 1, 'The World\'s End', 2013, '26004851.00'),
(5, 2, 'Dead Man', 1996, '1037847.00'),
(6, 2, 'Coffee and Cigarettes', 2004, '2198924.00'),
(7, 2, 'Broken Flowers', 2005, '13744960.00'),
(8, 2, 'Only Lovers Left Alive', 2014, '1879534.00'),
(9, 3, 'Serenity', 2005, '25514517.00'),
(10, 3, 'Marvel\'s The Avengers', 2012, '623357910.00'),
(11, 3, 'Much Ado About Nothing', 2013, '4328849.00'),
(12, 3, 'Avengers: Age of Ultron', 2015, '455392001.00'),
(13, 4, 'The Lovers on the Bridge', 1999, '29679.00'),
(14, 4, 'Tokyo!', 2009, '351059.00'),
(15, 4, 'Holy Motors', 2012, '641100.00');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `director_id` (`director_id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pre tabuľku `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

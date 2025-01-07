-- phpMyAdmin SQL Dump
-- version 5.2.1deb1+jammy2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2025 at 08:08 PM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `music` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `img`, `name`, `artist`, `music`) VALUES
(1, 'http://localhost/muziki/images/kitabumarhera.jpeg', 'Chike Hera', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Double Double.mp3'),
(2, 'http://localhost/muziki/images/indah.jpg', 'Double Double', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Double Double.mp3'),
(3, 'http://localhost/muziki/images/faded.png', 'Hera Mbese', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Hera Mbese.mp3'),
(4, 'http://localhost/muziki/images/ratherbe.jpg', 'Jared Kwaga', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Jared Kwaga.mp3'),
(5, 'http://localhost/muziki/images/faded.png', 'Jatuka', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Jatuka.mp3'),
(6, 'http://localhost/muziki/images/wechehera.jpeg', 'Kwach Ogole Koke', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Kwach Ogolo Koke.mp3'),
(7, 'http://localhost/muziki/images/indah.jpg', 'Mashabiki', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Mashabiki.mp3'),
(8, 'http://localhost/muziki/images/wechehera.jpeg', 'Nyar Joluo', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Nyar Joluo.mp3'),
(9, 'http://localhost/muziki/images/nyarmigori.jpeg', 'Nyar Migori', 'Prince Indah', 'http://localhost/muziki/music/Prince Indah - Nyar Migori.mp3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

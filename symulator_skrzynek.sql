-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 10, 2026 at 03:09 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symulator_skrzynek`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skiny`
--

CREATE TABLE `skiny` (
  `id` int(11) NOT NULL,
  `id_skrzynki` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skiny`
--

INSERT INTO `skiny` (`id`, `id_skrzynki`, `name`) VALUES
(1, 1, 'Złoty Karabin'),
(2, 1, 'Złoty Nóż'),
(3, 2, 'Srebrny Pistolet'),
(4, 3, 'Diamentowy Snajper'),
(5, 3, 'Diamentowy Miecz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skrzynki`
--

CREATE TABLE `skrzynki` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skrzynki`
--

INSERT INTO `skrzynki` (`id`, `name`) VALUES
(1, 'Złota Skrzynka'),
(2, 'Srebrna Skrzynka'),
(3, 'Diamentowa Skrzynka');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `skiny`
--
ALTER TABLE `skiny`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_case` (`id_skrzynki`);

--
-- Indeksy dla tabeli `skrzynki`
--
ALTER TABLE `skrzynki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skiny`
--
ALTER TABLE `skiny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skrzynki`
--
ALTER TABLE `skrzynki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skiny`
--
ALTER TABLE `skiny`
  ADD CONSTRAINT `fk_case` FOREIGN KEY (`id_skrzynki`) REFERENCES `skrzynki` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 29, 2026 at 01:17 PM
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
-- Database: `szkoly_torun`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkoly`
--

CREATE TABLE `szkoly` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `typ_szkoly` enum('Technikum','Liceum','Branżowa Szkoła') NOT NULL,
  `adres` varchar(255) NOT NULL,
  `link_google_maps` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `szkoly`
--

INSERT INTO `szkoly` (`id`, `nazwa`, `typ_szkoly`, `adres`, `link_google_maps`) VALUES
(1, 'I Liceum Ogólnokształcące im. Mikołaja Kopernika', 'Liceum', 'ul. Zaułek Prosowy 1', 'https://maps.google.com/?q=ul.+Zaułek+Prosowy+1+Toruń'),
(2, 'II Liceum Ogólnokształcące im. Królowej Jadwigi', 'Liceum', 'ul. Kosynierów Kościuszkowskich 6', 'https://maps.google.com/?q=ul.+Kosynierów+Kościuszkowskich+6+Toruń'),
(3, 'III Liceum Ogólnokształcące im. Samuela Bogumiła Lindego', 'Liceum', 'ul. Leona Raszei 1', 'https://maps.google.com/?q=ul.+Leona+Raszei+1+Toruń'),
(4, 'IV Liceum Ogólnokształcące im. Tadeusza Kościuszki', 'Liceum', 'ul. Warszawska 1/5', 'https://maps.google.com/?q=ul.+Warszawska+1/5+Toruń'),
(5, 'V Liceum Ogólnokształcące im. Jana Pawła II', 'Liceum', 'ul. Henryka Sienkiewicza 34', 'https://maps.google.com/?q=ul.+Henryka+Sienkiewicza+34+Toruń'),
(6, 'VI Liceum Ogólnokształcące im. Zesłańców Sybiru', 'Liceum', 'ul. Wojska Polskiego 47A', 'https://maps.google.com/?q=ul.+Wojska+Polskiego+47A+Toruń'),
(7, 'VII Liceum Ogólnokształcące im. Wandy Szuman', 'Liceum', 'ul. Stefana Batorego 39B', 'https://maps.google.com/?q=ul.+Stefana+Batorego+39B+Toruń'),
(8, 'VIII Liceum Ogólnokształcące', 'Liceum', 'ul. Grunwaldzka 33/35', 'https://maps.google.com/?q=ul.+Grunwaldzka+33/35+Toruń'),
(9, 'IX Liceum Ogólnokształcące im. Kazimierza Jagiellończyka', 'Liceum', 'ul. Ludwika Rydygiera 12A', 'https://maps.google.com/?q=ul.+Ludwika+Rydygiera+12A+Toruń'),
(10, 'X Liceum Ogólnokształcące im. Prof. Stefana Banacha', 'Liceum', 'pl. Św. Katarzyny 9', 'https://maps.google.com/?q=pl.+Św.+Katarzyny+9+Toruń'),
(11, 'XIII Liceum Ogólnokształcące Szkoła Mistrzostwa Sportowego', 'Liceum', 'ul. Targowa 36/38', 'https://maps.google.com/?q=ul.+Targowa+36/38+Toruń'),
(12, 'Uniwersyteckie Liceum Ogólnokształcące', 'Liceum', 'ul. Szosa Chełmińska 83', 'https://maps.google.com/?q=ul.+Szosa+Chełmińska+83+Toruń'),
(13, 'Akademickie Liceum Ogólnokształcące', 'Liceum', 'ul. Młodzieżowa 29', 'https://maps.google.com/?q=ul.+Młodzieżowa+29+Toruń'),
(14, 'Franciszkańskie Liceum Ogólnokształcące', 'Liceum', 'ul. Poznańska 49', 'https://maps.google.com/?q=ul.+Poznańska+49+Toruń'),
(15, 'Liceum Jagiellońskie - Katolickie Liceum Akademickie', 'Liceum', 'ul. Prosta 4', 'https://maps.google.com/?q=ul.+Prosta+4+Toruń'),
(16, 'Liceum Ogólnokształcące TEB Edukacja', 'Liceum', 'ul. Joachima Lelewela 33', 'https://maps.google.com/?q=ul.+Joachima+Lelewela+33+Toruń'),
(17, 'Społeczne Ogólnokształcące Liceum Językowe GEM', 'Liceum', 'ul. Żółkiewskiego 46', 'https://maps.google.com/?q=ul.+Żółkiewskiego+46+Toruń'),
(18, 'Liceum Ogólnokształcące \"Liceum w Chmurze\"', 'Liceum', 'ul. Władysława Dziewulskiego 41B', 'https://maps.google.com/?q=ul.+Władysława+Dziewulskiego+41B+Toruń'),
(19, 'Liceum Ogólnokształcące Pryzmaty', 'Liceum', 'ul. Marii Skłodowskiej-Curie 12A', 'https://maps.google.com/?q=ul.+Marii+Skłodowskiej-Curie+12A+Toruń'),
(20, 'Liceum Ogólnokształcące Sokrates', 'Liceum', 'ul. Tadeusza Rejtana 2-4', 'https://maps.google.com/?q=ul.+Tadeusza+Rejtana+2-4+Toruń'),
(21, 'Toruńskie Liceum Ogólnokształcące', 'Liceum', 'ul. Marii Skłodowskiej-Curie 67', 'https://maps.google.com/?q=ul.+Marii+Skłodowskiej-Curie+67+Toruń'),
(22, 'Zespół Szkół Ekonomicznych (Technikum nr 1 im. gen. Elżbiety Zawackiej)', 'Technikum', 'ul. Grunwaldzka 39', 'https://maps.google.com/?q=ul.+Grunwaldzka+39+Toruń'),
(23, 'Zespół Szkół Gastronomiczno-Hotelarskich (Technikum nr 3)', 'Technikum', 'ul. Osikowa 15', 'https://maps.google.com/?q=ul.+Osikowa+15+Toruń'),
(24, 'Zespół Szkół Technicznych (Technikum nr 4)', 'Technikum', 'ul. Legionów 19/25', 'https://maps.google.com/?q=ul.+Legionów+19/25+Toruń'),
(25, 'Zespół Szkół Mechanicznych i Elektronicznych (Technikum nr 5)', 'Technikum', 'ul. św. Józefa 26', 'https://maps.google.com/?q=ul.+św.+Józefa+26+Toruń'),
(26, 'Zespół Szkół Samochodowych (Technikum nr 7)', 'Technikum', 'ul. Grunwaldzka 25B', 'https://maps.google.com/?q=ul.+Grunwaldzka+25B+Toruń'),
(27, 'Zespół Szkół Plastycznych (Technikum nr 8)', 'Technikum', 'ul. Grunwaldzka 33/35', 'https://maps.google.com/?q=ul.+Grunwaldzka+33/35+Toruń'),
(28, 'Zespół Szkół Inżynierii Środowiska (Technikum nr 9)', 'Technikum', 'ul. Stefana Batorego 43/49', 'https://maps.google.com/?q=ul.+Stefana+Batorego+43/49+Toruń'),
(29, 'Zespół Szkół Ochrony i Turystyki (Technikum nr 13)', 'Technikum', 'ul. Targowa 36/38', 'https://maps.google.com/?q=ul.+Targowa+36/38+Toruń'),
(30, 'Zespół Szkół Budowlanych (Technikum Budowlane)', 'Technikum', 'ul. Szosa Chełmińska 65', 'https://maps.google.com/?q=ul.+Szosa+Chełmińska+65+Toruń'),
(31, 'Zespół Szkół Komunikacji i Łączności (Technikum Łączności)', 'Technikum', 'ul. Szosa Chełmińska 113', 'https://maps.google.com/?q=ul.+Szosa+Chełmińska+113+Toruń'),
(32, 'Zespół Szkół Chemicznych (Technikum Chemiczne)', 'Technikum', 'ul. Bema 63', 'https://maps.google.com/?q=ul.+Bema+63+Toruń'),
(33, 'Zespół Szkół Drzewnych (Technikum Drzewne)', 'Technikum', 'ul. Szosa Bydgoska 40', 'https://maps.google.com/?q=ul.+Szosa+Bydgoska+40+Toruń'),
(34, 'Zespół Szkół Odzieżowych (Technikum Odzieżowe)', 'Technikum', 'ul. Krasińskiego 2', 'https://maps.google.com/?q=ul.+Krasińskiego+2+Toruń'),
(35, 'Zespół Szkół Elektronicznych (Technikum Elektroniczne)', 'Technikum', 'ul. Żółkiewskiego 15', 'https://maps.google.com/?q=ul.+Żółkiewskiego+15+Toruń'),
(36, 'Zespół Szkół Mechanicznych (Technikum Mechaniczne)', 'Technikum', 'ul. M. Skłodowskiej-Curie 37', 'https://maps.google.com/?q=ul.+M.+Skłodowskiej-Curie+37+Toruń'),
(37, 'Technikum Renowacji Elementów Architektury', 'Technikum', 'ul. Stefana Batorego 37/41', 'https://maps.google.com/?q=ul.+Stefana+Batorego+37/41+Toruń'),
(38, 'Technikum Menedżerskie', 'Technikum', 'ul. Tadeusza Rejtana 2-4', 'https://maps.google.com/?q=ul.+Tadeusza+Rejtana+2-4+Toruń'),
(39, 'Technikum Mundurowe', 'Technikum', 'ul. Żółkiewskiego 37 lok. 41', 'https://maps.google.com/?q=ul.+Żółkiewskiego+37+Toruń'),
(40, 'Technikum TEB Edukacja', 'Technikum', 'ul. Joachima Lelewela 33', 'https://maps.google.com/?q=ul.+Joachima+Lelewela+33+Toruń'),
(41, 'Technikum Weterynaryjne', 'Technikum', 'ul. Szosa Chełmińska 17', 'https://maps.google.com/?q=ul.+Szosa+Chełmińska+17+Toruń'),
(42, 'Toruńskie Technikum Informatyczne', 'Technikum', 'ul. Szosa Chełmińska 70', 'https://maps.google.com/?q=ul.+Szosa+Chełmińska+70+Toruń'),
(43, 'Branżowa Szkoła I Stopnia nr 1 im. gen. Elżbiety Zawackiej', 'Branżowa Szkoła', 'ul. Grunwaldzka 39', 'https://maps.google.com/?q=ul.+Grunwaldzka+39+Toruń'),
(44, 'Branżowa Szkoła I Stopnia nr 3', 'Branżowa Szkoła', 'ul. Osikowa 15', 'https://maps.google.com/?q=ul.+Osikowa+15+Toruń'),
(45, 'Branżowa Szkoła I Stopnia nr 4', 'Branżowa Szkoła', 'ul. Legionów 19/25', 'https://maps.google.com/?q=ul.+Legionów+19/25+Toruń'),
(46, 'Branżowa Szkoła I Stopnia nr 5', 'Branżowa Szkoła', 'ul. św. Józefa 26', 'https://maps.google.com/?q=ul.+św.+Józefa+26+Toruń'),
(47, 'Branżowa Szkoła I Stopnia nr 7', 'Branżowa Szkoła', 'ul. Grunwaldzka 25B', 'https://maps.google.com/?q=ul.+Grunwaldzka+25B+Toruń'),
(48, 'Branżowa Szkoła I Stopnia nr 9', 'Branżowa Szkoła', 'ul. Stefana Batorego 43/49', 'https://maps.google.com/?q=ul.+Stefana+Batorego+43/49+Toruń'),
(49, 'Branżowa Szkoła I Stopnia \"Blok\"', 'Branżowa Szkoła', 'ul. Stefana Batorego 37/41', 'https://maps.google.com/?q=ul.+Stefana+Batorego+37/41+Toruń'),
(50, 'Branżowa Szkoła I Stopnia Rzemiosła i Przedsiębiorczości przy ZDZ', 'Branżowa Szkoła', 'ul. Żółkiewskiego 37/41', 'https://maps.google.com/?q=ul.+Żółkiewskiego+37/41+Toruń'),
(51, 'Branżowa Szkoła I Stopnia Start', 'Branżowa Szkoła', 'ul. Tadeusza Rejtana 2-4', 'https://maps.google.com/?q=ul.+Tadeusza+Rejtana+2-4+Toruń'),
(52, 'Branżowa Szkoła I Stopnia Specjalna', 'Branżowa Szkoła', 'ul. Żwirki i Wigury 15 i 21', 'https://maps.google.com/?q=ul.+Żwirki+i+Wigury+15+i+21+Toruń'),
(53, 'Szkoła Branżowa I Stopnia', 'Branżowa Szkoła', 'ul. Młodzieżowa 29', 'https://maps.google.com/?q=ul.+Młodzieżowa+29+Toruń');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(64) NOT NULL,
  `haslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nazwa`, `haslo`) VALUES
(1, 'dfgfdg', '$2y$10$u27EeL9Y7GiI/lHhOQhzseAlZEOw3t91wwmZ2bi4ULMJl5hQlKWUW'),
(3, 'sdfsdf', '$2y$10$.pxtDfsVsmHVh6neT2d1JOUVAAfRoY7fykMshiRn0zbc31g3fQwWK'),
(4, 'dfgfdgasdasd', '$2y$10$TkdfjU3M.BS4dVy79jT6YejiSyP9PZxxZciEolzu9eXEN5o/EHYWG');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `szkoly`
--
ALTER TABLE `szkoly`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nazwa` (`nazwa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `szkoly`
--
ALTER TABLE `szkoly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 11, 2026 at 10:17 AM
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
-- Database: `sklep_internetowy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `steam_app_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `developer` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `platform_windows` tinyint(1) DEFAULT 1,
  `platform_mac` tinyint(1) DEFAULT 0,
  `platform_linux` tinyint(1) DEFAULT 0,
  `steamgrid_logo` varchar(500) DEFAULT NULL,
  `steamgrid_grid` varchar(500) DEFAULT NULL,
  `steamgrid_hero` varchar(500) DEFAULT NULL,
  `steamgrid_icon` varchar(500) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `slug`, `description`, `price`, `discount_price`, `steam_app_id`, `category`, `developer`, `publisher`, `release_date`, `platform_windows`, `platform_mac`, `platform_linux`, `steamgrid_logo`, `steamgrid_grid`, `steamgrid_hero`, `steamgrid_icon`, `stock_quantity`, `is_featured`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Cyberpunk 2077', 'cyberpunk-2077', 'Gra RPG akcji z otwartym światem osadzona w Night City.', 199.99, 99.99, 1091500, 'RPG', 'CD Projekt Red', 'CD Projekt', '2020-12-10', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1091500.png', 'https://cdn.steamgriddb.com/grid/1091500.jpg', 'https://cdn.steamgriddb.com/hero/1091500.jpg', 'https://cdn.steamgriddb.com/icon/1091500.png', 100, 1, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(2, 'Wiedźmin 3: Dziki Gon', 'wiedzmin-3-dziki-gon', 'Epicka gra RPG z otwartym światem.', 99.99, 49.99, 292030, 'RPG', 'CD Projekt Red', 'CD Projekt', '2015-05-18', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/292030.png', 'https://cdn.steamgriddb.com/grid/292030.jpg', 'https://cdn.steamgriddb.com/hero/292030.jpg', 'https://cdn.steamgriddb.com/icon/292030.png', 150, 1, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(3, 'Counter-Strike 2', 'counter-strike-2', 'Legendarna strzelanka FPS.', 0.00, NULL, 730, 'FPS', 'Valve', 'Valve', '2023-09-27', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/730.png', 'https://cdn.steamgriddb.com/grid/730.jpg', 'https://cdn.steamgriddb.com/hero/730.jpg', 'https://cdn.steamgriddb.com/icon/730.png', 999, 1, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(4, 'Baldur\'s Gate 3', 'baldurs-gate-3', 'Epicka gra RPG w świecie Dungeons & Dragons.', 249.99, NULL, 1086940, 'RPG', 'Larian Studios', 'Larian Studios', '2023-08-03', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/1086940.png', 'https://cdn.steamgriddb.com/grid/1086940.jpg', 'https://cdn.steamgriddb.com/hero/1086940.jpg', 'https://cdn.steamgriddb.com/icon/1086940.png', 75, 1, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(5, 'Elden Ring', 'elden-ring', 'Mroczne fantasy action RPG.', 249.99, 149.99, 1245620, 'RPG', 'FromSoftware', 'Bandai Namco', '2022-02-25', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1245620.png', 'https://cdn.steamgriddb.com/grid/1245620.jpg', 'https://cdn.steamgriddb.com/hero/1245620.jpg', 'https://cdn.steamgriddb.com/icon/1245620.png', 50, 1, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(6, 'Red Dead Redemption 2', 'red-dead-redemption-2', 'Epicka opowieść o Dzikim Zachodzie.', 249.99, 124.99, 1174180, 'Akcja', 'Rockstar Games', 'Rockstar Games', '2019-12-05', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1174180.png', 'https://cdn.steamgriddb.com/grid/1174180.jpg', 'https://cdn.steamgriddb.com/hero/1174180.jpg', 'https://cdn.steamgriddb.com/icon/1174180.png', 80, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(7, 'Grand Theft Auto V', 'gta-v', 'Otwarty świat Los Santos.', 119.99, 59.99, 271590, 'Akcja', 'Rockstar North', 'Rockstar Games', '2015-04-14', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/271590.png', 'https://cdn.steamgriddb.com/grid/271590.jpg', 'https://cdn.steamgriddb.com/hero/271590.jpg', 'https://cdn.steamgriddb.com/icon/271590.png', 200, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(8, 'DOOM Eternal', 'doom-eternal', 'Intensywna strzelanka FPS.', 199.99, 79.99, 782330, 'FPS', 'id Software', 'Bethesda', '2020-03-20', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/782330.png', 'https://cdn.steamgriddb.com/grid/782330.jpg', 'https://cdn.steamgriddb.com/hero/782330.jpg', 'https://cdn.steamgriddb.com/icon/782330.png', 90, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(9, 'Hogwarts Legacy', 'hogwarts-legacy', 'Otwórz drzwi do świata magii.', 249.99, 124.99, 990080, 'RPG', 'Avalanche Software', 'Warner Bros', '2023-02-10', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/990080.png', 'https://cdn.steamgriddb.com/grid/990080.jpg', 'https://cdn.steamgriddb.com/hero/990080.jpg', 'https://cdn.steamgriddb.com/icon/990080.png', 120, 1, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(10, 'God of War', 'god-of-war', 'Epicka przygoda Kratosa.', 199.99, 99.99, 1593500, 'Akcja', 'Santa Monica Studio', 'PlayStation PC', '2022-01-14', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1593500.png', 'https://cdn.steamgriddb.com/grid/1593500.jpg', 'https://cdn.steamgriddb.com/hero/1593500.jpg', 'https://cdn.steamgriddb.com/icon/1593500.png', 100, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(11, 'Spider-Man Remastered', 'spider-man-remastered', 'Zostań Spider-Manem w Nowym Jorku.', 249.99, 149.99, 1817070, 'Akcja', 'Insomniac Games', 'PlayStation PC', '2022-08-12', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1817070.png', 'https://cdn.steamgriddb.com/grid/1817070.jpg', 'https://cdn.steamgriddb.com/hero/1817070.jpg', 'https://cdn.steamgriddb.com/icon/1817070.png', 85, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(12, 'Horizon Zero Dawn', 'horizon-zero-dawn', 'Postapokaliptyczny świat z mechanicznymi bestiami.', 199.99, 79.99, 1151640, 'RPG', 'Guerrilla Games', 'PlayStation PC', '2020-08-07', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1151640.png', 'https://cdn.steamgriddb.com/grid/1151640.jpg', 'https://cdn.steamgriddb.com/hero/1151640.jpg', 'https://cdn.steamgriddb.com/icon/1151640.png', 110, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(13, 'Death Stranding', 'death-stranding', 'Unikalna gra od Hideo Kojimy.', 199.99, 99.99, 1850570, 'Akcja', 'Kojima Productions', '505 Games', '2020-07-14', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1850570.png', 'https://cdn.steamgriddb.com/grid/1850570.jpg', 'https://cdn.steamgriddb.com/hero/1850570.jpg', 'https://cdn.steamgriddb.com/icon/1850570.png', 70, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(14, 'Resident Evil 4 Remake', 'resident-evil-4-remake', 'Klasyczny horror w nowej odsłonie.', 249.99, 149.99, 2050650, 'Horror', 'Capcom', 'Capcom', '2023-03-24', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/2050650.png', 'https://cdn.steamgriddb.com/grid/2050650.jpg', 'https://cdn.steamgriddb.com/hero/2050650.jpg', 'https://cdn.steamgriddb.com/icon/2050650.png', 95, 1, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(15, 'Starfield', 'starfield', 'Kosmiczna przygoda RPG od Bethesdy.', 299.99, 199.99, 1716740, 'RPG', 'Bethesda Game Studios', 'Bethesda', '2023-09-06', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1716740.png', 'https://cdn.steamgriddb.com/grid/1716740.jpg', 'https://cdn.steamgriddb.com/hero/1716740.jpg', 'https://cdn.steamgriddb.com/icon/1716740.png', 60, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(16, 'Stardew Valley', 'stardew-valley', 'Zbuduj swoje wymarzone gospodarstwo.', 44.99, NULL, 413150, 'Symulator', 'ConcernedApe', 'ConcernedApe', '2016-02-26', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/413150.png', 'https://cdn.steamgriddb.com/grid/413150.jpg', 'https://cdn.steamgriddb.com/hero/413150.jpg', 'https://cdn.steamgriddb.com/icon/413150.png', 500, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(17, 'Hades', 'hades', 'Roguelike z mitologią grecką.', 69.99, 34.99, 1145360, 'Akcja', 'Supergiant Games', 'Supergiant Games', '2020-09-17', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/1145360.png', 'https://cdn.steamgriddb.com/grid/1145360.jpg', 'https://cdn.steamgriddb.com/hero/1145360.jpg', 'https://cdn.steamgriddb.com/icon/1145360.png', 120, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(18, 'Hollow Knight', 'hollow-knight', 'Piękna gra metroidvania.', 49.99, 24.99, 367520, 'Indie', 'Team Cherry', 'Team Cherry', '2017-02-24', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/367520.png', 'https://cdn.steamgriddb.com/grid/367520.jpg', 'https://cdn.steamgriddb.com/hero/367520.jpg', 'https://cdn.steamgriddb.com/icon/367520.png', 200, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(19, 'Among Us', 'among-us', 'Gra multiplayer o zdradzie.', 14.99, NULL, 945360, 'Indie', 'Innersloth', 'Innersloth', '2018-11-16', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/945360.png', 'https://cdn.steamgriddb.com/grid/945360.jpg', 'https://cdn.steamgriddb.com/hero/945360.jpg', 'https://cdn.steamgriddb.com/icon/945360.png', 999, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(20, 'Celeste', 'celeste', 'Platformówka o wspinaczce górskiej.', 39.99, 19.99, 504230, 'Indie', 'Maddy Makes Games', 'Maddy Makes Games', '2018-01-25', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/504230.png', 'https://cdn.steamgriddb.com/grid/504230.jpg', 'https://cdn.steamgriddb.com/hero/504230.jpg', 'https://cdn.steamgriddb.com/icon/504230.png', 180, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(21, 'Dead Cells', 'dead-cells', 'Roguelike metroidvania.', 59.99, 29.99, 588650, 'Indie', 'Motion Twin', 'Motion Twin', '2018-08-07', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/588650.png', 'https://cdn.steamgriddb.com/grid/588650.jpg', 'https://cdn.steamgriddb.com/hero/588650.jpg', 'https://cdn.steamgriddb.com/icon/588650.png', 160, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(22, 'Terraria', 'terraria', 'Sandbox 2D z eksploracją i budowaniem.', 29.99, 14.99, 105600, 'Indie', 'Re-Logic', 'Re-Logic', '2011-05-16', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/105600.png', 'https://cdn.steamgriddb.com/grid/105600.jpg', 'https://cdn.steamgriddb.com/hero/105600.jpg', 'https://cdn.steamgriddb.com/icon/105600.png', 400, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(23, 'Undertale', 'undertale', 'Unikalna gra RPG z nietypową fabułą.', 34.99, NULL, 391540, 'RPG', 'Toby Fox', 'Toby Fox', '2015-09-15', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/391540.png', 'https://cdn.steamgriddb.com/grid/391540.jpg', 'https://cdn.steamgriddb.com/hero/391540.jpg', 'https://cdn.steamgriddb.com/icon/391540.png', 250, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(24, 'Cuphead', 'cuphead', 'Strzelanka w stylu lat 30.', 59.99, 29.99, 268910, 'Indie', 'Studio MDHR', 'Studio MDHR', '2017-09-29', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/268910.png', 'https://cdn.steamgriddb.com/grid/268910.jpg', 'https://cdn.steamgriddb.com/hero/268910.jpg', 'https://cdn.steamgriddb.com/icon/268910.png', 140, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(25, 'Ori and the Blind Forest', 'ori-blind-forest', 'Piękna platformówka przygodowa.', 49.99, 24.99, 261570, 'Indie', 'Moon Studios', 'Microsoft Studios', '2015-03-11', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/261570.png', 'https://cdn.steamgriddb.com/grid/261570.jpg', 'https://cdn.steamgriddb.com/hero/261570.jpg', 'https://cdn.steamgriddb.com/icon/261570.png', 170, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(26, 'Ori and the Will of the Wisps', 'ori-will-wisps', 'Kontynuacja przygód Ori.', 69.99, 34.99, 1057090, 'Indie', 'Moon Studios', 'Xbox Game Studios', '2020-09-17', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/1057090.png', 'https://cdn.steamgriddb.com/grid/1057090.jpg', 'https://cdn.steamgriddb.com/hero/1057090.jpg', 'https://cdn.steamgriddb.com/icon/1057090.png', 130, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(27, 'Civilization VI', 'civilization-vi', 'Buduj imperium, które przetrwa wieki.', 199.99, 49.99, 289070, 'Strategia', 'Firaxis Games', '2K Games', '2016-10-21', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/289070.png', 'https://cdn.steamgriddb.com/grid/289070.jpg', 'https://cdn.steamgriddb.com/hero/289070.jpg', 'https://cdn.steamgriddb.com/icon/289070.png', 100, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(28, 'Cities: Skylines', 'cities-skylines', 'Symulator budowania miast.', 79.99, 39.99, 255710, 'Symulator', 'Colossal Order', 'Paradox Interactive', '2015-03-10', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/255710.png', 'https://cdn.steamgriddb.com/grid/255710.jpg', 'https://cdn.steamgriddb.com/hero/255710.jpg', 'https://cdn.steamgriddb.com/icon/255710.png', 180, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(29, 'Euro Truck Simulator 2', 'euro-truck-simulator-2', 'Symulator kierowcy ciężarówki.', 49.99, 24.99, 227300, 'Symulator', 'SCS Software', 'SCS Software', '2012-10-19', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/227300.png', 'https://cdn.steamgriddb.com/grid/227300.jpg', 'https://cdn.steamgriddb.com/hero/227300.jpg', 'https://cdn.steamgriddb.com/icon/227300.png', 300, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(30, 'The Sims 4', 'the-sims-4', 'Symulator życia.', 0.00, NULL, 1222670, 'Symulator', 'Maxis', 'Electronic Arts', '2022-10-18', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/1222670.png', 'https://cdn.steamgriddb.com/grid/1222670.jpg', 'https://cdn.steamgriddb.com/hero/1222670.jpg', 'https://cdn.steamgriddb.com/icon/1222670.png', 999, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(31, 'Factorio', 'factorio', 'Buduj i automatyzuj fabryki.', 99.99, NULL, 427520, 'Strategia', 'Wube Software', 'Wube Software', '2020-08-14', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/427520.png', 'https://cdn.steamgriddb.com/grid/427520.jpg', 'https://cdn.steamgriddb.com/hero/427520.jpg', 'https://cdn.steamgriddb.com/icon/427520.png', 220, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(32, 'RimWorld', 'rimworld', 'Symulator kolonii kosmicznej.', 79.99, 39.99, 294100, 'Strategia', 'Ludeon Studios', 'Ludeon Studios', '2018-10-17', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/294100.png', 'https://cdn.steamgriddb.com/grid/294100.jpg', 'https://cdn.steamgriddb.com/hero/294100.jpg', 'https://cdn.steamgriddb.com/icon/294100.png', 190, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(33, 'FIFA 23', 'fifa-23', 'Symulator piłki nożnej.', 299.99, 149.99, 1811260, 'Sport', 'EA Sports', 'Electronic Arts', '2022-09-30', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1811260.png', 'https://cdn.steamgriddb.com/grid/1811260.jpg', 'https://cdn.steamgriddb.com/hero/1811260.jpg', 'https://cdn.steamgriddb.com/icon/1811260.png', 150, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(34, 'Forza Horizon 5', 'forza-horizon-5', 'Wyścigi w Meksyku.', 249.99, 124.99, 1551360, 'Wyścigi', 'Playground Games', 'Xbox Game Studios', '2021-11-09', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1551360.png', 'https://cdn.steamgriddb.com/grid/1551360.jpg', 'https://cdn.steamgriddb.com/hero/1551360.jpg', 'https://cdn.steamgriddb.com/icon/1551360.png', 110, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(35, 'Need for Speed Unbound', 'need-for-speed-unbound', 'Uliczne wyścigi.', 249.99, 124.99, 1846380, 'Wyścigi', 'Criterion Games', 'Electronic Arts', '2022-11-29', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1846380.png', 'https://cdn.steamgriddb.com/grid/1846380.jpg', 'https://cdn.steamgriddb.com/hero/1846380.jpg', 'https://cdn.steamgriddb.com/icon/1846380.png', 95, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(36, 'Phasmophobia', 'phasmophobia', 'Kooperacyjny horror o duchach.', 49.99, 24.99, 739630, 'Horror', 'Kinetic Games', 'Kinetic Games', '2020-09-18', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/739630.png', 'https://cdn.steamgriddb.com/grid/739630.jpg', 'https://cdn.steamgriddb.com/hero/739630.jpg', 'https://cdn.steamgriddb.com/icon/739630.png', 250, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(37, 'Left 4 Dead 2', 'left-4-dead-2', 'Kooperacyjna strzelanka z zombie.', 29.99, 14.99, 550, 'Horror', 'Valve', 'Valve', '2009-11-17', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/550.png', 'https://cdn.steamgriddb.com/grid/550.jpg', 'https://cdn.steamgriddb.com/hero/550.jpg', 'https://cdn.steamgriddb.com/icon/550.png', 400, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(38, 'Resident Evil Village', 'resident-evil-village', 'Kontynuacja horroru Capcomu.', 199.99, 99.99, 1196590, 'Horror', 'Capcom', 'Capcom', '2021-05-07', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1196590.png', 'https://cdn.steamgriddb.com/grid/1196590.jpg', 'https://cdn.steamgriddb.com/hero/1196590.jpg', 'https://cdn.steamgriddb.com/icon/1196590.png', 130, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(39, 'The Forest', 'the-forest', 'Survival horror na wyspie.', 59.99, 29.99, 242760, 'Horror', 'Endnight Games', 'Endnight Games', '2018-04-30', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/242760.png', 'https://cdn.steamgriddb.com/grid/242760.jpg', 'https://cdn.steamgriddb.com/hero/242760.jpg', 'https://cdn.steamgriddb.com/icon/242760.png', 175, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(40, 'The Witcher 2: Assassins of Kings', 'wiedzmin-2', 'Kontynuacja przygód Geralta.', 39.99, 9.99, 20920, 'RPG', 'CD Projekt Red', 'CD Projekt', '2011-05-17', 1, 1, 0, 'https://cdn.steamgriddb.com/logo/20920.png', 'https://cdn.steamgriddb.com/grid/20920.jpg', 'https://cdn.steamgriddb.com/hero/20920.jpg', 'https://cdn.steamgriddb.com/icon/20920.png', 100, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(41, 'Life is Strange', 'life-is-strange', 'Przygodówka z wyborem konsekwencji.', 49.99, 24.99, 319630, 'Przygodowa', 'Dontnod Entertainment', 'Square Enix', '2015-01-29', 1, 1, 1, 'https://cdn.steamgriddb.com/logo/319630.png', 'https://cdn.steamgriddb.com/grid/319630.jpg', 'https://cdn.steamgriddb.com/hero/319630.jpg', 'https://cdn.steamgriddb.com/icon/319630.png', 160, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(42, 'Detroit: Become Human', 'detroit-become-human', 'Interaktywna drama o androidach.', 149.99, 74.99, 1222140, 'Przygodowa', 'Quantic Dream', 'Sony Interactive', '2020-06-18', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1222140.png', 'https://cdn.steamgriddb.com/grid/1222140.jpg', 'https://cdn.steamgriddb.com/hero/1222140.jpg', 'https://cdn.steamgriddb.com/icon/1222140.png', 85, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45'),
(43, 'Uncharted: Legacy of Thieves', 'uncharted-legacy-thieves', 'Przygoda Nathana Drake\'a.', 199.99, 99.99, 1659420, 'Przygodowa', 'Naughty Dog', 'PlayStation PC', '2022-10-19', 1, 0, 0, 'https://cdn.steamgriddb.com/logo/1659420.png', 'https://cdn.steamgriddb.com/grid/1659420.jpg', 'https://cdn.steamgriddb.com/hero/1659420.jpg', 'https://cdn.steamgriddb.com/icon/1659420.png', 90, 0, 1, '2026-09-11 08:17:45', '2026-09-11 08:17:45');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_games_category` (`category`),
  ADD KEY `idx_games_price` (`price`),
  ADD KEY `idx_games_featured` (`is_featured`),
  ADD KEY `idx_games_active` (`is_active`),
  ADD KEY `idx_games_steam_app_id` (`steam_app_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

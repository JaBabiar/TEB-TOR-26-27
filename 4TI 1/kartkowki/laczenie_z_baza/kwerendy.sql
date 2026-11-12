CREATE DATABASE IF NOT EXISTS `sklep_internetowy`;
USE `sklep_internetowy`;

CREATE TABLE IF NOT EXISTS `sklep_internetowy`.`produkty` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(100) NOT NULL,
  `opis` TEXT NOT NULL,
  `cena` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO produkty(nazwa, opis, `cena`) VALUES
('Laptop', 'Wysokiej jakości laptop do pracy i gier.', 3500.00),
('Smartfon', 'Nowoczesny smartfon z dużym ekranem.', 1500.00),
('Słuchawki', 'Bezprzewodowe słuchawki z redukcją szumów.', 300.00),
('Monitor', 'Monitor 27 cali o wysokiej rozdzielczości.', 800.00),
('Klawiatura', 'Mechaniczna klawiatura dla graczy.', 250.00),
('Myszka', 'Ergonomiczna myszka do codziennego użytku.', 100.00),
('Drukarka', 'Wielofunkcyjna drukarka do biura.', 600.00),
('Tablet', 'Lekki tablet z dużym ekranem dotykowym.', 1200.00),
('Kamera', 'Kamera sportowa do nagrywania wideo.', 400.00),
('Głośnik Bluetooth', 'Przenośny głośnik z wysoką jakością dźwięku.', 200.00),
('Router Wi-Fi', 'Szybki router Wi-Fi do domu i biura.', 150.00),
('Zestaw słuchawkowy', 'Zestaw słuchawkowy z mikrofonem do gier.', 350.00),
('Powerbank', 'Przenośny powerbank o dużej pojemności.', 80.00),
('Konsola do gier', 'Nowoczesna konsola do gier wideo.', 2500.00),
('Smartwatch', 'Inteligentny zegarek z funkcjami fitness.', 700.00),
('Aparat fotograficzny', 'Profesjonalny aparat fotograficzny z wymiennymi obiektywami.', 4000.00),
('Projektor', 'Projektor do prezentacji i kina domowego.', 1500.00),
('Zestaw głośników', 'Zestaw głośników do komputera lub telewizora.', 600.00),
('Karta pamięci', 'Karta pamięci o dużej pojemności do przechowywania danych.', 100.00),
('Pendrive', 'Przenośny pendrive USB do przechowywania plików.', 50.00),
('Mikrofon', 'Profesjonalny mikrofon do nagrywania dźwięku.', 300.00),
('Słuchawki gamingowe', 'Słuchawki dla graczy z dźwiękiem przestrzennym.', 400.00),
('Kamera internetowa', 'Kamera internetowa do wideokonferencji i streamingu.', 150.00),
('Zestaw do gier VR', 'Zestaw do wirtualnej rzeczywistości z kontrolerami.', 2000.00),
('Smart home hub', 'Centralny hub do zarządzania inteligentnym domem.', 500.00),
('Drukarka 3D', 'Drukarka 3D do tworzenia modeli i prototypów.', 2500.00),
('Gimbal', 'Stabilizator kamery do nagrywania płynnych ujęć.', 800.00),
('Kamera sportowa 4K', 'Kamera sportowa nagrywająca w jakości 4K.', 600.00),
('Zestaw słuchawek bezprzewodowych', 'Zestaw słuchawek bezprzewodowych z etui ładującym.', 350.00),
('Monitor gamingowy', 'Monitor dla graczy z wysoką częstotliwością odświeżania.', 1200.00),
('Myszka gamingowa', 'Myszka dla graczy z programowalnymi przyciskami.', 200.00);

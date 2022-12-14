-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 14. Dez 2022 um 19:42
-- Server-Version: 10.4.25-MariaDB
-- PHP-Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `getraenkeHandel2`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `artikelNummer` int(11) NOT NULL,
  `inhalt` float NOT NULL,
  `preis` float NOT NULL,
  `onStock` varchar(8) NOT NULL,
  `path` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`id`, `name`, `artikelNummer`, `inhalt`, `preis`, `onStock`, `path`) VALUES
(1, 'Coca Cola Original 1l', 1000, 1, 1.5, '0', '../images/coca_cola.png'),
(2, 'Fanta 1l', 1001, 1, 1.5, '10', '../images/fanta.png'),
(3, 'Sprite 1l', 1002, 1, 1.5, '20', '../images/sprite.png'),
(4, 'Mezzo Mix 1l', 1003, 1, 1.5, '14', '../images/mezzo_mix.png'),
(5, 'Red Bull', 1004, 0.25, 1.69, '48', '../images/red_bull.png'),
(6, 'Arizona White Tea', 1005, 0.5, 1.89, '24', '../images/arizona_white_tea.png'),
(7, 'Arizona Pomegranete', 1006, 0.5, 1.89, '18', '../images/arizona_pomegranete.png'),
(8, 'Arizona Fruit Punch', 1007, 0.5, 1.89, '30', '../images/arizona_fruit_punch.png'),
(9, 'Vio Medium 0.5l', 1008, 0.5, 1.09, '48', '../images/vio_mineralwasser.png'),
(10, 'Vio Still 0.5l', 1009, 0.5, 1.09, '48', '../images/vio_still.png');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE `kunde` (
  `id` int(8) NOT NULL,
  `vorname` varchar(64) NOT NULL,
  `nachname` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lastLogin` varchar(64) NOT NULL,
  `online` int(11) NOT NULL,
  `street` varchar(64) NOT NULL,
  `plz` varchar(16) NOT NULL,
  `city` varchar(64) NOT NULL,
  `land` varchar(16) NOT NULL,
  `hasNewPassword` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kunde`
--

INSERT INTO `kunde` (`id`, `vorname`, `nachname`, `email`, `password`, `lastLogin`, `online`, `street`, `plz`, `city`, `land`, `hasNewPassword`) VALUES
(1, 'Marios', 'Tzialidis', 'test@test.de', 'c6ee9e33cf5c6715a1d148fd73f7318884b41adcb916021e2bc0e800a5c5dd97f5142178f6ae88c8fdd98e1afb0ce4c8d2c54b5f37b30b7da1997bb33b0b8a31', 'Wed, 14 Dec 2022 17:24:03 +0100', 0, 'Hausstrasse 12', '72072', 'Tübingen', 'Deutschland', '1'),
(2, 'Kevin', 'Koch', 'kevin@koch.de', 'c84dd703', 'Tue, 15 Nov 2022 13:04:34 +0100', 0, 'Hausstrasse 2', '72074', 'Tübingen', 'Deutschland', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Newsletter`
--

CREATE TABLE `Newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `Newsletter`
--

INSERT INTO `Newsletter` (`id`, `email`, `time`) VALUES
(1, 'test@test.de', 'Wed, 14 Dec 2022 19:15:33 +0100');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artikelNummer` (`artikelNummer`);

--
-- Indizes für die Tabelle `kunde`
--
ALTER TABLE `kunde`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `Newsletter`
--
ALTER TABLE `Newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `kunde`
--
ALTER TABLE `kunde`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `Newsletter`
--
ALTER TABLE `Newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

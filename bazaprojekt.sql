-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Cze 2022, 21:04
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bazaprojekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dyski`
--

CREATE TABLE `dyski` (
  `ID dysku` int(11) NOT NULL,
  `Nazwa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dyski`
--

INSERT INTO `dyski` (`ID dysku`, `Nazwa`) VALUES
(1, 'Crucial 500GB 2,5\\\" SATA SSD MX500'),
(2, 'Samsung 500GB M.2 PCIe NVMe 980'),
(3, 'WD 1TB M.2 PCIe NVMe Blue SN550'),
(4, 'Toshiba P300 1TB 7200obr. 64MB OEM'),
(5, 'WD BLUE 1TB 7200obr. 64MB CMR'),
(6, 'Seagate BARRACUDA 2TB 7200obr. 256MB');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty graficzne`
--

CREATE TABLE `karty graficzne` (
  `ID karty graficznej` int(11) NOT NULL,
  `Nazwa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `karty graficzne`
--

INSERT INTO `karty graficzne` (`ID karty graficznej`, `Nazwa`) VALUES
(1, 'Gigabyte GeForce RTX 3060 Ti '),
(2, 'Gigabyte Radeon RX 6900 XT'),
(3, 'AMD Radeon Pro WX 3100 4GB GDDR5'),
(5, 'AMD Radeon PRO W6600 8GB GDDR6');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pamięć ram`
--

CREATE TABLE `pamięć ram` (
  `ID pamięci RAM` int(11) NOT NULL,
  `Nazwa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pamięć ram`
--

INSERT INTO `pamięć ram` (`ID pamięci RAM`, `Nazwa`) VALUES
(1, 'Crucial 16GB (2x8GB) 3600MHz CL16 Ballistix Black'),
(2, 'GOODRAM 16GB (2x8GB) 3000MHz CL16 IRDM X Black'),
(3, 'G.SKILL 32GB (2x16GB) 3200MHz CL16 Ripjaws V Black');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `procesory`
--

CREATE TABLE `procesory` (
  `ID procesora` int(11) NOT NULL,
  `Nazwa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `procesory`
--

INSERT INTO `procesory` (`ID procesora`, `Nazwa`) VALUES
(1, 'Intel Core i3-10100F'),
(2, 'Intel Core i5-10400F'),
(3, 'Intel Core i7-11700K'),
(4, 'AMD Ryzen 9 3950X'),
(5, 'AMD Ryzen 5 5600G'),
(6, 'AMD Ryzen 7 5800X');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stworzone zestawy`
--

CREATE TABLE `stworzone zestawy` (
  `ID` int(11) NOT NULL,
  `Dysk` text NOT NULL,
  `Karta Graficzna` text NOT NULL,
  `RAM` text NOT NULL,
  `Procesor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dyski`
--
ALTER TABLE `dyski`
  ADD PRIMARY KEY (`ID dysku`);

--
-- Indeksy dla tabeli `karty graficzne`
--
ALTER TABLE `karty graficzne`
  ADD PRIMARY KEY (`ID karty graficznej`);

--
-- Indeksy dla tabeli `pamięć ram`
--
ALTER TABLE `pamięć ram`
  ADD PRIMARY KEY (`ID pamięci RAM`);

--
-- Indeksy dla tabeli `procesory`
--
ALTER TABLE `procesory`
  ADD PRIMARY KEY (`ID procesora`);

--
-- Indeksy dla tabeli `stworzone zestawy`
--
ALTER TABLE `stworzone zestawy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dyski`
--
ALTER TABLE `dyski`
  MODIFY `ID dysku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `karty graficzne`
--
ALTER TABLE `karty graficzne`
  MODIFY `ID karty graficznej` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `pamięć ram`
--
ALTER TABLE `pamięć ram`
  MODIFY `ID pamięci RAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `procesory`
--
ALTER TABLE `procesory`
  MODIFY `ID procesora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `stworzone zestawy`
--
ALTER TABLE `stworzone zestawy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

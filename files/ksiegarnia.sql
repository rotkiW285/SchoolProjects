-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Lis 2020, 11:22
-- Wersja serwera: 10.4.6-MariaDB
-- Wersja PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ksiegarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

DROP TABLE IF EXISTS `autor`;
CREATE TABLE `autor` (
  `id_autora` int(11) NOT NULL,
  `nazwisko` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `imie` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `narodowosc` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `okres_tworzenia` varchar(35) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `jezyk` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `rodzaj_tworczosci` varchar(35) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `osiagniecia` varchar(200) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Tabela Truncate przed wstawieniem `autor`
--

TRUNCATE TABLE `autor`;
--
-- Zrzut danych tabeli `autor`
--

INSERT INTO `autor` (`id_autora`, `nazwisko`, `imie`, `narodowosc`, `okres_tworzenia`, `jezyk`, `rodzaj_tworczosci`, `osiagniecia`) VALUES
(1, 'Niederst Robbins', 'Jennifer', NULL, NULL, NULL, NULL, NULL),
(2, 'Pokorska', 'Jolanta', NULL, NULL, NULL, NULL, NULL),
(3, 'Lobel', 'Leonard', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktura`
--

DROP TABLE IF EXISTS `faktura`;
CREATE TABLE `faktura` (
  `nr_faktury` int(11) NOT NULL,
  `sposob_platnosci` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `data_wystawienia_faktury` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Tabela Truncate przed wstawieniem `faktura`
--

TRUNCATE TABLE `faktura`;
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

DROP TABLE IF EXISTS `klient`;
CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL,
  `nazwisko` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL,
  `imie` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `kod_pocztowy` varchar(6) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `miejscowosc` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT 'Warszawa',
  `ulica` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `nr_domu` varchar(7) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `PESEL` varchar(11) COLLATE utf8mb4_polish_ci NOT NULL,
  `telefon` varchar(12) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `adres_a_mail` varchar(70) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Tabela Truncate przed wstawieniem `klient`
--

TRUNCATE TABLE `klient`;
--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id_klienta`, `nazwisko`, `imie`, `kod_pocztowy`, `miejscowosc`, `ulica`, `nr_domu`, `PESEL`, `telefon`, `adres_a_mail`) VALUES
(1, 'Nowak', 'Andrzej', '87-100', 'Tarnobrzeg', 'Szeroka', '34', '99887766554', NULL, NULL),
(2, 'Kowalski', 'Jan', '05-120', 'Warszawa', 'Mickiewicza', '1', '11223344556', '520258520', NULL),
(3, 'Kowalski', 'Antoni', '87-100', 'Tarnobrzeg', 'Daleka', '34', '55667788994', '987654321', 'k.walski@ko.pl'),
(4, 'Adamska', 'Anna', '87-100', 'Tarnobrzeg', 'Golenia', '7', '', '123456789', 'a.da@an.pl'),
(5, 'Bolecki', 'Miron', '45-404', 'Opole', 'Nowa', '27', '', '234567891', NULL),
(6, 'Kowalski', 'Dawid', '87-100', 'Tarnobrzeg', 'Szeroka', '1', '', '345678912', NULL),
(7, 'Wilk', 'Jan', '45-404', 'Opole', 'Wielka', '45', '', '456789123', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

DROP TABLE IF EXISTS `ksiazki`;
CREATE TABLE `ksiazki` (
  `id_ksiazki` int(11) NOT NULL,
  `tytul` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_autora` int(11) NOT NULL,
  `cena` decimal(10,0) DEFAULT NULL,
  `wydawnictwo` varchar(20) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `temat` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `miejsce_wydania` varchar(28) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `jezyk_ksiazki` varchar(15) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `opis` varchar(100) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `rok_wydania` varchar(4) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Tabela Truncate przed wstawieniem `ksiazki`
--

TRUNCATE TABLE `ksiazki`;
--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `id_autora`, `cena`, `wydawnictwo`, `temat`, `miejsce_wydania`, `jezyk_ksiazki`, `opis`, `rok_wydania`) VALUES
(1, 'Projektowanie stron internetowych', 1, '35', 'Helion', 'Internet', NULL, NULL, NULL, NULL),
(2, 'Aplikacje internetowe', 2, '57', 'Helion', 'Internet', NULL, NULL, NULL, NULL),
(3, 'Programowanie w PHP', 2, '72', 'Helion', 'Internet', NULL, NULL, NULL, NULL),
(4, 'SQL Serwer 2008', 3, '45', 'PWN', 'Bazy danych', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestracja_zamowienia`
--

DROP TABLE IF EXISTS `rejestracja_zamowienia`;
CREATE TABLE `rejestracja_zamowienia` (
  `id_zamowienia` int(11) DEFAULT NULL,
  `id_ksiazki` int(11) DEFAULT NULL,
  `liczba_egz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Tabela Truncate przed wstawieniem `rejestracja_zamowienia`
--

TRUNCATE TABLE `rejestracja_zamowienia`;
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

DROP TABLE IF EXISTS `zamowienie`;
CREATE TABLE `zamowienie` (
  `id_zamowienia` int(11) NOT NULL,
  `data_zlozenia_zamowienia` date DEFAULT NULL,
  `data_wyslania` date DEFAULT NULL,
  `koszt_wysylki` decimal(10,0) DEFAULT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_faktury` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Tabela Truncate przed wstawieniem `zamowienie`
--

TRUNCATE TABLE `zamowienie`;
--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indeksy dla tabeli `faktura`
--
ALTER TABLE `faktura`
  ADD PRIMARY KEY (`nr_faktury`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`),
  ADD UNIQUE KEY `telefon` (`telefon`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `id_autora` (`id_autora`);

--
-- Indeksy dla tabeli `rejestracja_zamowienia`
--
ALTER TABLE `rejestracja_zamowienia`
  ADD KEY `id_ksiazki` (`id_ksiazki`),
  ADD KEY `id_zamowienia` (`id_zamowienia`);

--
-- Indeksy dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_faktury` (`id_faktury`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `faktura`
--
ALTER TABLE `faktura`
  MODIFY `nr_faktury` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`id_autora`) REFERENCES `autor` (`id_autora`);

--
-- Ograniczenia dla tabeli `rejestracja_zamowienia`
--
ALTER TABLE `rejestracja_zamowienia`
  ADD CONSTRAINT `rejestracja_zamowienia_ibfk_1` FOREIGN KEY (`id_ksiazki`) REFERENCES `ksiazki` (`id_ksiazki`),
  ADD CONSTRAINT `rejestracja_zamowienia_ibfk_2` FOREIGN KEY (`id_zamowienia`) REFERENCES `zamowienie` (`id_zamowienia`);

--
-- Ograniczenia dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`id_faktury`) REFERENCES `faktura` (`nr_faktury`),
  ADD CONSTRAINT `zamowienie_ibfk_2` FOREIGN KEY (`id_klienta`) REFERENCES `klient` (`id_klienta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

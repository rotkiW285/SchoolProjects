-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Mar 2023, 13:44
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `oceny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasy`
--

CREATE TABLE `klasy` (
  `id_klasy` int(11) NOT NULL,
  `klasa` varchar(5) DEFAULT NULL,
  `szkola` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klasy`
--

INSERT INTO `klasy` (`id_klasy`, `klasa`, `szkola`) VALUES
(1, '1A LP', 1),
(2, '1B LP', 1),
(3, '1C LP', 1),
(4, '1A T', 2),
(5, '1B T', 2),
(6, '2A T', 2),
(7, '2B T', 2),
(8, '1a Z', 3),
(9, '2a Z', 3),
(10, '3a Z', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id_oceny` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `uczen` int(11) DEFAULT NULL,
  `przedmiot` int(11) DEFAULT NULL,
  `ocena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `oceny`
--

INSERT INTO `oceny` (`id_oceny`, `data`, `uczen`, `przedmiot`, `ocena`) VALUES
(1, '2004-04-12', 2, 3, 5),
(2, '2004-04-12', 38, 5, 3),
(3, '2004-04-12', 31, 6, 2),
(4, '2004-04-12', 8, 2, 4),
(5, '2004-04-12', 59, 2, 1),
(6, '2004-04-12', 22, 2, 1),
(7, '2004-04-12', 27, 5, 4),
(8, '2004-04-12', 4, 5, 1),
(9, '2004-04-12', 71, 5, 1),
(10, '2004-04-12', 28, 5, 1),
(11, '2004-04-12', 2, 1, 4),
(12, '2004-04-12', 38, 3, 4),
(13, '2004-04-12', 79, 4, 6),
(14, '2004-04-12', 24, 2, 6),
(15, '2004-04-12', 55, 3, 3),
(16, '2004-04-12', 75, 4, 6),
(17, '2004-04-13', 40, 5, 5),
(18, '2004-04-13', 83, 6, 3),
(19, '2004-04-13', 10, 3, 5),
(20, '2004-04-13', 63, 1, 1),
(21, '2004-04-13', 24, 3, 2),
(22, '2004-04-13', 31, 2, 3),
(23, '2004-04-13', 5, 5, 1),
(24, '2004-04-13', 59, 5, 4),
(25, '2004-04-13', 4, 8, 4),
(26, '2004-04-13', 75, 2, 2),
(27, '2004-04-13', 4, 7, 5),
(28, '2004-04-13', 26, 8, 3),
(29, '2004-04-13', 79, 2, 4),
(30, '2004-04-13', 40, 2, 2),
(31, '2004-04-13', 30, 2, 1),
(32, '2004-04-13', 35, 1, 1),
(33, '2004-04-15', 32, 5, 2),
(34, '2004-04-15', 20, 6, 5),
(35, '2004-04-15', 46, 6, 6),
(36, '2004-04-15', 10, 4, 2),
(37, '2004-04-15', 2, 5, 2),
(38, '2004-04-15', 43, 7, 2),
(39, '2004-04-15', 3, 5, 3),
(40, '2004-04-15', 14, 4, 6),
(41, '2004-04-15', 4, 2, 2),
(42, '2004-04-15', 26, 8, 2),
(43, '2004-04-15', 67, 5, 4),
(44, '2004-04-15', 12, 5, 1),
(45, '2004-04-15', 20, 3, 3),
(46, '2004-04-15', 39, 1, 4),
(47, '2004-04-15', 2, 2, 2),
(48, '2004-04-16', 2, 7, 4),
(49, '2004-04-16', 12, 8, 5),
(50, '2004-04-16', 39, 7, 1),
(51, '2004-04-16', 18, 5, 2),
(52, '2004-04-16', 44, 4, 4),
(53, '2004-04-16', 8, 6, 1),
(54, '2004-04-16', 18, 2, 2),
(55, '2004-04-16', 1, 6, 3),
(56, '2004-04-16', 30, 2, 1),
(57, '2004-04-16', 2, 5, 3),
(58, '2004-04-16', 24, 7, 1),
(59, '2004-04-16', 63, 2, 5),
(60, '2004-04-16', 10, 3, 1),
(61, '2004-04-16', 35, 1, 5),
(62, '2004-04-16', 87, 2, 3),
(63, '2004-04-19', 5, 1, 3),
(64, '2004-04-19', 10, 3, 4),
(65, '2004-04-19', 35, 4, 1),
(66, '2004-04-19', 16, 2, 1),
(67, '2004-04-19', 42, 7, 3),
(68, '2004-04-19', 83, 4, 4),
(69, '2004-04-19', 55, 1, 5),
(70, '2004-04-19', 28, 5, 1),
(71, '2004-04-19', 87, 7, 4),
(72, '2004-04-19', 22, 2, 1),
(73, '2004-04-19', 59, 2, 4),
(74, '2004-04-19', 8, 3, 2),
(75, '2004-04-19', 31, 1, 6),
(76, '2004-04-19', 6, 7, 1),
(77, '2004-04-20', 30, 3, 4),
(78, '2004-04-20', 8, 2, 4),
(79, '2004-04-20', 75, 5, 1),
(80, '2004-04-20', 59, 8, 2),
(81, '2004-04-20', 87, 3, 1),
(82, '2004-04-20', 43, 7, 3),
(83, '2004-04-20', 22, 2, 4),
(84, '2004-04-20', 42, 2, 3),
(85, '2004-04-20', 24, 5, 1),
(86, '2004-04-20', 39, 4, 3),
(87, '2004-04-20', 12, 2, 5),
(88, '2004-04-20', 20, 7, 3),
(89, '2004-04-20', 75, 8, 4),
(90, '2004-04-20', 30, 8, 1),
(91, '2004-04-20', 63, 2, 3),
(92, '2004-04-20', 14, 7, 5),
(93, '2004-04-21', 67, 8, 4),
(94, '2004-04-21', 43, 7, 4),
(95, '2004-04-21', 26, 2, 2),
(96, '2004-04-21', 32, 2, 1),
(97, '2004-04-21', 79, 2, 3),
(98, '2004-04-21', 14, 1, 4),
(99, '2004-04-21', 1, 7, 6),
(100, '2004-04-21', 44, 7, 3),
(101, '2004-04-21', 32, 7, 5),
(102, '2004-04-21', 22, 7, 3),
(103, '2004-04-21', 79, 2, 2),
(104, '2004-04-21', 16, 6, 4),
(105, '2004-04-21', 63, 2, 3),
(106, '2004-04-21', 24, 3, 3),
(107, '2004-04-21', 2, 3, 1),
(108, '2004-04-21', 47, 6, 3),
(109, '2004-04-22', 2, 6, 3),
(110, '2004-04-22', 4, 2, 2),
(111, '2004-04-22', 83, 6, 3),
(112, '2004-04-22', 26, 8, 3),
(113, '2004-04-22', 51, 1, 2),
(114, '2004-04-22', 18, 8, 3),
(115, '2004-04-22', 46, 6, 2),
(116, '2004-04-22', 34, 6, 4),
(117, '2004-04-22', 20, 3, 3),
(118, '2004-04-22', 16, 2, 3),
(119, '2004-04-22', 24, 2, 2),
(120, '2004-04-22', 83, 7, 2),
(121, '2004-04-22', 34, 7, 2),
(122, '2004-04-22', 71, 2, 5),
(123, '2004-04-22', 67, 7, 4),
(124, '2004-04-22', 47, 7, 3),
(125, '2004-04-23', 51, 6, 2),
(126, '2004-04-23', 48, 1, 3),
(127, '2004-04-23', 20, 5, 2),
(128, '2004-04-23', 55, 5, 2),
(129, '2004-04-23', 27, 4, 2),
(130, '2004-04-23', 67, 1, 2),
(131, '2004-04-23', 71, 6, 5),
(132, '2004-04-23', 6, 5, 3),
(133, '2004-04-23', 87, 4, 3),
(134, '2004-04-23', 36, 6, 3),
(135, '2004-04-23', 75, 8, 4),
(136, '2004-04-23', 22, 8, 4),
(137, '2004-04-23', 36, 1, 6),
(138, '2004-04-23', 87, 2, 4),
(139, '2004-04-23', 26, 1, 2),
(140, '2004-04-23', 3, 1, 2),
(141, '2004-04-26', 6, 4, 3),
(142, '2004-04-26', 35, 3, 2),
(143, '2004-04-26', 26, 8, 3),
(144, '2004-04-26', 67, 1, 3),
(145, '2004-04-26', 12, 7, 4),
(146, '2004-04-26', 39, 6, 1),
(147, '2004-04-26', 42, 3, 1),
(148, '2004-04-26', 63, 2, 5),
(149, '2004-04-26', 79, 3, 3),
(150, '2004-04-26', 83, 2, 3),
(151, '2004-04-26', 32, 5, 2),
(152, '2004-04-26', 6, 5, 6),
(153, '2004-04-26', 42, 2, 4),
(154, '2004-04-26', 87, 1, 3),
(155, '2004-04-26', 28, 2, 2),
(156, '2004-04-26', 6, 3, 2),
(157, '2004-04-27', 39, 8, 3),
(158, '2004-04-27', 30, 2, 1),
(159, '2004-04-27', 2, 5, 4),
(160, '2004-04-27', 44, 5, 3),
(161, '2004-04-27', 8, 5, 5),
(162, '2004-04-27', 34, 2, 3),
(163, '2004-04-27', 83, 8, 4),
(164, '2004-04-27', 7, 8, 3),
(165, '2004-04-27', 20, 2, 4),
(166, '2004-04-27', 71, 2, 5),
(167, '2004-04-27', 14, 4, 3),
(168, '2004-04-27', 43, 7, 2),
(169, '2004-04-27', 87, 4, 3),
(170, '2004-04-27', 44, 3, 2),
(171, '2004-04-27', 8, 2, 3),
(172, '2004-04-27', 67, 3, 4),
(173, '2004-04-28', 10, 3, 4),
(174, '2004-04-28', 8, 2, 4),
(175, '2004-04-28', 32, 5, 1),
(176, '2004-04-28', 46, 2, 3),
(177, '2004-04-28', 36, 3, 4),
(178, '2004-04-28', 87, 2, 6),
(179, '2004-04-28', 71, 7, 6),
(180, '2004-04-28', 46, 3, 3),
(181, '2004-04-28', 22, 7, 6),
(182, '2004-04-28', 75, 8, 4),
(183, '2004-04-28', 16, 2, 3),
(184, '2004-04-28', 47, 2, 3),
(185, '2004-04-28', 10, 4, 2),
(186, '2004-04-28', 2, 4, 4),
(187, '2004-04-28', 43, 2, 4),
(188, '2004-04-28', 4, 2, 3),
(189, '2004-04-29', 75, 2, 3),
(190, '2004-04-29', 2, 8, 3),
(191, '2004-04-29', 12, 2, 3),
(192, '2004-04-29', 4, 7, 5),
(193, '2004-04-29', 34, 2, 2),
(194, '2004-04-29', 38, 8, 3),
(195, '2004-04-29', 6, 5, 2),
(196, '2004-04-29', 12, 6, 2),
(197, '2004-04-29', 24, 6, 3),
(198, '2004-04-29', 79, 3, 3),
(199, '2004-04-29', 18, 6, 2),
(200, '2004-04-29', 51, 4, 2),
(201, '2004-04-29', 4, 8, 6),
(202, '2004-04-29', 48, 3, 4),
(203, '2004-04-29', 48, 3, 2),
(204, '2004-04-29', 47, 8, 5),
(205, '2004-04-30', 31, 7, 4),
(206, '2004-04-30', 27, 2, 5),
(207, '2004-04-30', 15, 3, 4),
(208, '2004-04-30', 19, 8, 5),
(209, '2004-04-30', 35, 8, 3),
(210, '2004-04-30', 7, 2, 2),
(211, '2004-04-30', 59, 2, 6),
(212, '2004-04-30', 11, 2, 3),
(213, '2004-04-30', 39, 1, 2),
(214, '2004-04-30', 43, 5, 1),
(215, '2004-04-30', 47, 5, 2),
(216, '2004-04-30', 55, 8, 4),
(217, '2004-04-30', 63, 7, 3),
(218, '2004-04-30', 67, 5, 2),
(219, '2004-04-30', 71, 1, 1),
(220, '2004-04-30', 3, 7, 3),
(221, '2004-04-30', 51, 3, 3),
(222, '2004-04-30', 83, 1, 3),
(223, '2004-04-30', 2, 1, 4),
(224, '2004-04-30', 14, 1, 1),
(225, '2004-04-30', 27, 2, 5),
(226, '2004-04-30', 6, 3, 3),
(227, '2004-04-30', 20, 5, 2),
(228, '2004-04-30', 26, 1, 2),
(229, '2004-04-30', 51, 4, 6),
(230, '2004-04-30', 2, 6, 4),
(231, '2004-04-30', 23, 4, 6),
(232, '2004-04-30', 55, 8, 3),
(233, '2004-04-30', 8, 2, 3),
(234, '2004-04-30', 79, 8, 3),
(235, '2004-04-30', 27, 7, 2),
(236, '2004-04-30', 14, 4, 2),
(237, '2004-04-30', 40, 4, 2),
(238, '2004-04-30', 4, 4, 2),
(239, '2004-04-30', 6, 2, 3),
(240, '2004-05-04', 3, 5, 2),
(241, '2004-05-04', 43, 1, 3),
(242, '2004-05-04', 16, 2, 5),
(243, '2004-05-04', 47, 3, 3),
(244, '2004-05-04', 22, 1, 4),
(245, '2004-05-04', 48, 1, 4),
(246, '2004-05-04', 12, 5, 3),
(247, '2004-05-04', 4, 2, 3),
(248, '2004-05-04', 22, 2, 4),
(249, '2004-05-04', 34, 2, 3),
(250, '2004-05-04', 6, 2, 3),
(251, '2004-05-04', 27, 2, 3),
(252, '2004-05-04', 14, 5, 2),
(253, '2004-05-04', 4, 2, 2),
(254, '2004-05-04', 16, 5, 1),
(255, '2004-05-04', 71, 3, 3),
(256, '2004-05-05', 18, 5, 4),
(257, '2004-05-05', 6, 3, 4),
(258, '2004-05-05', 14, 2, 4),
(259, '2004-05-05', 27, 2, 6),
(260, '2004-05-05', 51, 1, 4),
(261, '2004-05-05', 31, 8, 4),
(262, '2004-05-05', 4, 2, 1),
(263, '2004-05-05', 24, 2, 6),
(264, '2004-05-05', 8, 8, 4),
(265, '2004-05-05', 75, 8, 3),
(266, '2004-05-05', 16, 2, 3),
(267, '2004-05-05', 47, 1, 2),
(268, '2004-05-05', 24, 5, 3),
(269, '2004-05-05', 36, 2, 4),
(270, '2004-05-05', 5, 3, 1),
(271, '2004-05-06', 16, 3, 5),
(272, '2004-05-06', 20, 6, 3),
(273, '2004-05-06', 55, 2, 3),
(274, '2004-05-06', 67, 2, 3),
(275, '2004-05-06', 8, 8, 5),
(276, '2004-05-06', 5, 3, 1),
(277, '2004-05-06', 6, 8, 2),
(278, '2004-05-06', 10, 4, 5),
(279, '2004-05-06', 35, 4, 5),
(280, '2004-05-06', 79, 3, 2),
(281, '2004-05-06', 18, 1, 4),
(282, '2004-05-06', 51, 2, 1),
(283, '2004-05-06', 26, 8, 2),
(284, '2004-05-06', 38, 8, 5),
(285, '2004-05-06', 26, 2, 3),
(286, '2004-05-07', 20, 1, 5),
(287, '2004-05-07', 59, 2, 2),
(288, '2004-05-07', 28, 3, 2),
(289, '2004-05-07', 71, 3, 3),
(290, '2004-05-07', 18, 8, 5),
(291, '2004-05-07', 10, 2, 6),
(292, '2004-05-07', 35, 4, 2),
(293, '2004-05-07', 7, 4, 3),
(294, '2004-05-07', 40, 4, 4),
(295, '2004-05-07', 12, 2, 6),
(296, '2004-05-07', 83, 6, 2),
(297, '2004-05-07', 55, 2, 1),
(298, '2004-05-07', 28, 4, 3),
(299, '2004-05-07', 22, 1, 2),
(300, '2004-05-07', 39, 2, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

CREATE TABLE `przedmioty` (
  `id_przedmiotu` int(11) NOT NULL,
  `przedmiot` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `przedmioty`
--

INSERT INTO `przedmioty` (`id_przedmiotu`, `przedmiot`) VALUES
(1, 'J. polski'),
(2, 'J. angielski'),
(3, 'J. niemiecki'),
(4, 'Matematyka'),
(5, 'Historia'),
(6, 'Geografia'),
(7, 'Biologia'),
(8, 'Fizyka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkoly`
--

CREATE TABLE `szkoly` (
  `id_szkoly` int(11) NOT NULL,
  `szkola` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `szkoly`
--

INSERT INTO `szkoly` (`id_szkoly`, `szkola`) VALUES
(1, 'Liceum Profilowane'),
(2, 'Technikum Samochodowe'),
(3, 'Zasadnicza Szkoła Zawodowa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE `uczen` (
  `id_ucznia` int(11) NOT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `imie` varchar(30) DEFAULT NULL,
  `klasa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uczen`
--

INSERT INTO `uczen` (`id_ucznia`, `nazwisko`, `imie`, `klasa`) VALUES
(1, 'Kowalski', 'Jan', 1),
(2, 'Ryksza', 'Janusz', 1),
(3, 'Ruta', 'Dariusz', 2),
(4, 'Sowa', 'Witold', 2),
(5, 'Ryksza', 'Weronika', 1),
(6, 'Kowalski', 'Dariusz', 7),
(7, 'Ruta', 'Jan', 3),
(8, 'Ruta', 'Dariusz', 2),
(9, 'Lisek', 'Rita', 3),
(10, 'Kula', 'Franciszek', 3),
(11, 'Serak', 'Daniel', 4),
(12, 'Adams', 'Tomek', 4),
(13, 'Kilka', 'Ewa', 5),
(14, 'Cichy', 'Leon', 6),
(15, 'Cichy', 'Leokadia', 8),
(16, 'Lech', 'Adam', 7),
(17, 'Kossa', 'Edwald', 2),
(18, 'Kosa', 'Wiktor', 3),
(19, 'Rysa', 'Ewa', 3),
(20, 'Kosa', 'Ruta', 4),
(21, 'Kula', 'Ewa', 4),
(22, 'Sylek', 'Sylwia', 4),
(23, 'Kosa', 'Ewa', 5),
(24, 'Kula', 'Adam', 5),
(25, 'Kowalski', 'Ewa', 5),
(26, 'Adams', 'Tadeusz', 5),
(27, 'Kula', 'Sylwia', 6),
(28, 'Kosa', 'Ewa', 6),
(29, 'Adams', 'Renata', 6),
(30, 'Kosa', 'Adam', 6),
(31, 'Kosa', 'Adam', 7),
(32, 'Kula', 'Ewa', 7),
(33, 'Cichy', 'Adam', 7),
(34, 'Kula', 'Adam', 8),
(35, 'Cichy', 'Ewa', 8),
(36, 'Kula', 'Ewa', 8),
(37, 'Kosa', 'Adam', 8),
(38, 'Kosa', 'Leokadia', 9),
(39, 'Cichy', 'Ewa', 9),
(40, 'Kowalski', 'Adam', 9),
(41, 'Kosa', 'Ewa', 9),
(42, 'Kula', 'Adam', 9),
(43, 'Gabriel', 'Adam', 9),
(44, 'Brania', 'Dariusz', 9),
(45, 'Anc ', 'Jacek', 9),
(46, 'Dokurno', 'Łukasz', 9),
(47, 'Krzykowski', 'Tomasz', 9),
(48, 'Krubner', 'Adam', 8),
(49, 'Pawlak', 'Aleksander', 8),
(50, 'Seif ', 'Artur', 8),
(51, 'Wójcik', 'Fabian', 7),
(52, 'Król', 'Grzegorz', 7),
(53, 'Bigielmajer', 'Grzegorz', 7),
(54, 'Szoblik', 'Jacek', 7),
(55, 'Mincer', 'Łukasz', 6),
(56, 'Moś', 'Łukasz', 6),
(57, 'Rutkowski', 'Marcin', 6),
(58, 'Mamzerowski', 'Michał', 6),
(59, 'Bartnik', 'Michał', 5),
(60, 'Nowak', 'Paweł', 5),
(61, 'Skiba', 'Piotr', 5),
(62, 'Szudok', 'Sebastian', 4),
(63, 'Binkowski', 'Sławomir', 4),
(64, 'Pająk', 'Adam', 4),
(65, 'Zaremba', 'Adam', 3),
(66, 'Rurański', 'Adrian', 3),
(67, 'Delegiewicz', 'Adrian', 3),
(68, 'Salbert', 'Arkadiusz', 2),
(69, 'Kosakowski', 'Artur', 2),
(70, 'Matusik ', 'Artur', 2),
(71, 'Nowotnik', 'Artur', 2),
(72, 'Owsiany', 'Artur', 1),
(73, 'Kokot', 'Damian', 1),
(74, 'Cabaj', 'Damian', 1),
(75, 'Wołos', 'Damian', 1),
(76, 'Chojnacki', 'Dariusz', 1),
(77, 'Piela', 'Grzegorz', 2),
(78, 'Różycki', 'Kajetan', 2),
(79, 'Dudarew', 'Krystian', 3),
(80, 'Labus', 'Krystian', 4),
(81, 'Wojciechowski', 'Krzysztof', 3),
(82, 'Musik', 'Lukasz', 4),
(83, 'Więzik', 'Łukasz', 4),
(84, 'Magdziarek', 'Łukasz', 5),
(85, 'Bartos', 'Marcin', 5),
(86, 'Mikołajczyk', 'Marcin', 5),
(87, 'Bibel', 'Marcin', 5),
(88, 'Czajka', 'Mariusz', 6),
(89, 'Dudek', 'Mariusz', 6),
(90, 'Kubowicz', 'Mariusz', 6),
(91, 'Urban', 'Mariusz', 6),
(92, 'Krasa', 'Michał', 7),
(93, 'Kurzawski', 'Rafał', 8),
(94, 'Wójcik', 'Rafał', 9),
(95, 'Brauer', 'Robert', 8),
(96, 'Majewski', 'Tomek', 7),
(97, 'Stępień', 'Robert', 6),
(98, 'Barsta', 'Renata', 5),
(99, 'Walczak', 'Tomek', 4),
(100, 'Pawliczak', 'Tomek', 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`id_klasy`),
  ADD KEY `szkola` (`szkola`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id_oceny`),
  ADD KEY `uczen` (`uczen`),
  ADD KEY `przedmiot` (`przedmiot`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id_przedmiotu`);

--
-- Indeksy dla tabeli `szkoly`
--
ALTER TABLE `szkoly`
  ADD PRIMARY KEY (`id_szkoly`);

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id_ucznia`),
  ADD KEY `klasa` (`klasa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klasy`
--
ALTER TABLE `klasy`
  MODIFY `id_klasy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id_oceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `id_przedmiotu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `szkoly`
--
ALTER TABLE `szkoly`
  MODIFY `id_szkoly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `uczen`
--
ALTER TABLE `uczen`
  MODIFY `id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD CONSTRAINT `klasy_ibfk_1` FOREIGN KEY (`szkola`) REFERENCES `szkoly` (`id_szkoly`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`uczen`) REFERENCES `uczen` (`id_ucznia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`przedmiot`) REFERENCES `przedmioty` (`id_przedmiotu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD CONSTRAINT `uczen_ibfk_1` FOREIGN KEY (`klasa`) REFERENCES `klasy` (`id_klasy`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

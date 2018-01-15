-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Gen 15, 2018 alle 17:36
-- Versione del server: 5.6.35
-- Versione PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `resources`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `hired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `resource`
--

INSERT INTO `resource` (`id`, `surname`, `name`, `type`, `hired`) VALUES
(2, 'Boi', 'Luca', 'Cyber Security', NULL),
(3, 'Boi', 'Luca', 'Cyber Security', NULL),
(4, 'Boi', 'Luca', 'Cyber Security', NULL),
(5, 'Boi', 'Luca', 'Cyber Security', NULL),
(6, 'caredda', 'mauro', 'junior', NULL),
(7, 'Artizu', 'Marco', 'junior', NULL),
(8, 'arzu', 'lucia', 'Senior', NULL),
(9, 'Orru', 'Marco', 'Senior', NULL),
(10, 'Orru', 'Marco', 'Senior', NULL),
(11, 'caredda', 'mauro', 'senior', NULL),
(12, 'Sesselego', 'Matteo', 'CyberBoy', NULL),
(13, 'Lobina', 'Jessica', 'Senior master girl ass', NULL),
(14, 'Lobina', 'Jessica', 'Senior', NULL),
(15, 'caredda', 'mauro', 'junior', NULL),
(16, 'Boi', 'Luca', 'Cyber Security', NULL),
(17, 'Boi', 'Mauro', 'dev', NULL),
(18, 'Boi', 'Mauro', 'dev', NULL),
(19, 'Boi', 'Mauro', 'dev', NULL),
(20, 'Boi', 'Mauro', 'dev', NULL),
(21, 'Boi', 'Mauro', 'dev', NULL),
(22, 'Boi', 'Mauro', 'dev', NULL),
(23, 'Boi', 'Mauro', 'dev', NULL),
(24, 'Boi', 'Mauro', 'dev', NULL),
(25, 'Boi', 'Mauro', 'dev', NULL),
(26, 'Boi', 'Mauro', 'dev', NULL),
(27, 'Boi', 'Mauro', 'dev', '1973-11-26'),
(28, 'Cabras', 'Matteo', 'junior', '2018-01-12'),
(30, 'Scalas', 'Simone', 'Senior', '2018-01-08'),
(32, 'rererereerer', 'wqqwwqqw', 'junior', '3225-08-31'),
(36, 'Lisci', 'nicola', 'senior', '3234-08-31');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
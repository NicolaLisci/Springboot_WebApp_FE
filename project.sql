-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Gen 15, 2018 alle 17:44
-- Versione del server: 5.6.35
-- Versione PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `resources`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `employement`
--

CREATE TABLE `employement` (
  `id_r` int(11) NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name_project` varchar(45) DEFAULT NULL,
  `start_project` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `nsenior` int(3) DEFAULT NULL,
  `njunior` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `project`
--

INSERT INTO `project` (`id`, `name_project`, `start_project`, `deadline`, `status`, `nsenior`, `njunior`) VALUES
(1, 'Prova', '2018-01-01', '2018-01-15', 'Delivery', 3, 3),
(6, 'prova 4', '3005-07-03', '3005-07-03', 'Evaluation', 4, 5),
(7, 'prova10', '0000-00-00', '2122-09-20', 'Design', 8, 8),
(8, 'a me funziona', '0000-00-00', '3234-08-31', 'Design', 2, 5);

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
-- Indici per le tabelle `employement`
--
ALTER TABLE `employement`
  ADD PRIMARY KEY (`id_r`,`id_p`),
  ADD KEY `id_idx` (`id_p`);

--
-- Indici per le tabelle `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT per la tabella `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `employement`
--
ALTER TABLE `employement`
  ADD CONSTRAINT `id` FOREIGN KEY (`id_p`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

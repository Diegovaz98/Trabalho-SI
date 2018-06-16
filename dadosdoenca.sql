-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 16-Jun-2018 às 00:09
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdnoticias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadosdoenca`
--

DROP TABLE IF EXISTS `dadosdoenca`;
CREATE TABLE IF NOT EXISTS `dadosdoenca` (
  `iddadosDoenca` int(11) NOT NULL AUTO_INCREMENT,
  `periodoReferenciaInicio` date DEFAULT NULL,
  `periodoReferenciaFinal` date DEFAULT NULL,
  `dadosQuantitativos` varchar(4) DEFAULT NULL,
  `informacoesQualitativas` text,
  `nCasosSuspeitos` int(11) DEFAULT NULL,
  `nCasosConfirmados` int(11) DEFAULT NULL,
  `nCasosProvaveis` int(11) DEFAULT NULL,
  `nObitos` int(11) DEFAULT NULL,
  `outrosDados` text,
  `noticias_idNoticias` int(11) NOT NULL,
  `doencas_idDoenca` int(11) NOT NULL,
  PRIMARY KEY (`iddadosDoenca`),
  KEY `fk_dadosDoenca_noticias1_idx` (`noticias_idNoticias`),
  KEY `fk_dadosDoenca_doencas1_idx` (`doencas_idDoenca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `dadosdoenca`
--
ALTER TABLE `dadosdoenca`
  ADD CONSTRAINT `fk_dadosDoenca_doencas1` FOREIGN KEY (`doencas_idDoenca`) REFERENCES `doencas` (`idDoenca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dadosDoenca_noticias1` FOREIGN KEY (`noticias_idNoticias`) REFERENCES `noticias` (`idNoticias`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

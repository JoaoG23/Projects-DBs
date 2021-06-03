-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 02-Jun-2021 às 12:52
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `empresa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bancos`
--

DROP TABLE IF EXISTS `bancos`;
CREATE TABLE IF NOT EXISTS `bancos` (
  `dig_banc` int(11) NOT NULL AUTO_INCREMENT,
  `agencia_banc` varchar(30) NOT NULL,
  `num_banc` varchar(30) NOT NULL,
  `end_banc` int(11) NOT NULL,
  `tel_bancbancos` int(11) DEFAULT NULL,
  PRIMARY KEY (`dig_banc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cli` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cli` varchar(70) NOT NULL,
  `CPF_cli` varchar(30) NOT NULL,
  `tel_cli` bigint(20) NOT NULL,
  `idade_cli` date NOT NULL,
  `endereco_cli` varchar(60) NOT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

DROP TABLE IF EXISTS `contas`;
CREATE TABLE IF NOT EXISTS `contas` (
  `codigo_cont` int(11) NOT NULL AUTO_INCREMENT,
  `agencia_cont` varchar(40) NOT NULL,
  `num_cont` varchar(30) NOT NULL,
  `senha_cont` int(11) NOT NULL,
  `valores_cont` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_cont`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacao`
--

DROP TABLE IF EXISTS `movimentacao`;
CREATE TABLE IF NOT EXISTS `movimentacao` (
  `protocolo` int(11) NOT NULL AUTO_INCREMENT,
  `valor_mov` decimal(12,2) DEFAULT NULL,
  `data_mov` datetime DEFAULT NULL,
  `client_destinatario` varchar(30) NOT NULL,
  `client_emissor` varchar(30) NOT NULL,
  PRIMARY KEY (`protocolo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `movimentacao`
--

INSERT INTO `movimentacao` (`protocolo`, `valor_mov`, `data_mov`, `client_destinatario`, `client_emissor`) VALUES
(2, '601.50', '2020-08-21 17:50:00', 'Santana do Riacho', 'José alcontra');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

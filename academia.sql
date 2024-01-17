-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/12/2023 às 11:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `CPF` varchar(15) NOT NULL,
  `Nome` text NOT NULL,
  `Telefone` varchar(11) NOT NULL,
  `Idade` int(11) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Plano` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`CPF`, `Nome`, `Telefone`, `Idade`, `Sexo`, `Plano`) VALUES
('12345678900', 'fff', '12345689', 48, 'M', 'anual'),
('12345678910', 'geo', '12345678', 20, 'M', 'mensal'),
('12345678977', 'ffafa', '12345678', 42, 'M', 'Mensal'),
('12345678999', 'rrrr', '12345678', 66, 'M', 'Mensal'),
('54321678900', 'ddaddf', '12345678', 56, 'M', 'Mensal');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `CPF` varchar(15) NOT NULL,
  `Nome` text NOT NULL,
  `Telefone` varchar(11) NOT NULL,
  `Idade` int(11) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `cargo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`CPF`, `Nome`, `Telefone`, `Idade`, `Sexo`, `cargo`) VALUES
('09876543219', 'gaga', '12345678', 44, 'M', 'Instrutor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtonp`
--

CREATE TABLE `produtonp` (
  `ID` int(11) NOT NULL,
  `Nome` text NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` double NOT NULL,
  `descrição` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtonp`
--

INSERT INTO `produtonp` (`ID`, `Nome`, `quantidade`, `valor`, `descrição`) VALUES
(1, 'faffa', 5, 5, 'faffa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtop`
--

CREATE TABLE `produtop` (
  `ID` int(11) NOT NULL,
  `Nome` text NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` double NOT NULL,
  `peso` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtop`
--

INSERT INTO `produtop` (`ID`, `Nome`, `quantidade`, `valor`, `peso`) VALUES
(1, 'fff', 4, 4, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CPF`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`CPF`);

--
-- Índices de tabela `produtonp`
--
ALTER TABLE `produtonp`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `produtop`
--
ALTER TABLE `produtop`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtonp`
--
ALTER TABLE `produtonp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `produtop`
--
ALTER TABLE `produtop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Set-2022 às 03:20
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livrariamalu`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `codigo_editora` int(11) DEFAULT NULL,
  `nome_da_editora` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`codigo_editora`, `nome_da_editora`) VALUES
(2, 'Leia bem'),
(3, 'Leiba bem');
COMMIT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `codigogenero` int(11) DEFAULT NULL,
  `nome_do_genero` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`codigogenero`, `nome_do_genero`) VALUES
(1, 'Biografias'),
(2, 'Literatura'),
(3, 'Autoajuda'),
(4, 'Didático'),
(5, 'Quadrinhos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `codigo_livro` int(11) NOT NULL,
  `titulo_livro` varchar(120) DEFAULT NULL,
  `autor_livro` varchar(120) DEFAULT NULL,
  `cod_editora` int(11) DEFAULT NULL,
  `cod_genero` int(11) DEFAULT NULL,
  `cod_subgenero` int(11) DEFAULT NULL,
  `resumo` text DEFAULT NULL,
  `preco` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subgeneros`
--

CREATE TABLE `subgeneros` (
  `codigo_subgenero` int(11) DEFAULT NULL,
  `nome_do_subgenero` varchar(120) DEFAULT NULL,
  `codigogenero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`codigo_livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `codigo_livro` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

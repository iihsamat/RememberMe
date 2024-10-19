-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19-Out-2024 às 03:04
-- Versão do servidor: 8.0.27
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bancophp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cuidador`
--

CREATE TABLE `tb_cuidador` (
  `cpf_cuidador` char(11) NOT NULL,
  `nm_cuidador` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dt_nascimento` date NOT NULL,
  `nm_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coren` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_telefone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nm_endereco` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_endereco` int NOT NULL,
  `nm_bairro` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nm_cidade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ds_complemento` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_cep` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `senha` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `confirmar_senha` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `tb_cuidador`
--

INSERT INTO `tb_cuidador` (`cpf_cuidador`, `nm_cuidador`, `dt_nascimento`, `nm_email`, `coren`, `nr_telefone`, `nm_endereco`, `nr_endereco`, `nm_bairro`, `nm_cidade`, `ds_complemento`, `nr_cep`, `senha`, `confirmar_senha`) VALUES
('00000000000', 'aaaaaaaaaaa', '5555-05-05', 'wdada@gmail.com', '132123', '00000000000', 'rua tamagnini', 44, 'vera cruz', 'mongaguá', 'casa', '00000000', '000', '000'),
('10987654321', 'aaaaaaaaaaa', '2003-10-10', 'wdada@hotmail.com', '4141441', '12345678901', 'rua tamagnini', 121, 'vera cruz', 'mongaguá', 'casa', '11111111', '56789', '56789'),
('11111111111', 'aaaaaaaaaaa', '1111-11-11', 'wdada@gmail.com', '4141441', '1111111', 'rua tamagnini', 111, 'vera cruz', 'mongaguá', 'casa', '11111111', '1111111', '1111111'),
('12345678910', 'aaaaaaaaaaa', '2003-10-10', 'wdada@gmail.com', '132123', '12345678910', 'rua tamagnini', 123, 'vera cruz', 'mongaguá', 'casa', '11730000', '123456', '123456'),
('22222222222', 'aaaaaaaaaaa', '2222-02-22', 'wdada@gmail.com', '132123', '2222', 'rua tamagnini', 222, 'vera cruz', 'mongaguá', 'casa', '22222222', '222222', '222222'),
('33333333333', 'aaaaaaaaaaa', '3333-03-31', 'wdada@gmail.com', '132123', '333333', 'rua tamagnini', 333, 'vera cruz', 'mongaguá', 'casa', '33333333', '33333', '33333');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_paciente`
--

CREATE TABLE `tb_paciente` (
  `cpf_paciente` char(11) NOT NULL,
  `nm_paciente` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_sus` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dt_nascimento` date NOT NULL,
  `nr_telefone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nm_endereco` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_endereco` int NOT NULL,
  `nm_bairro` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nm_cidade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ds_complemento` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_cep` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_cuidador`
--
ALTER TABLE `tb_cuidador`
  ADD PRIMARY KEY (`cpf_cuidador`);

--
-- Índices para tabela `tb_paciente`
--
ALTER TABLE `tb_paciente`
  ADD PRIMARY KEY (`cpf_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

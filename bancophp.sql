-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 24-Out-2024 às 23:55
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
-- Estrutura da tabela `tb_alimentacao`
--

CREATE TABLE `tb_alimentacao` (
  `cd_alimentacao` int NOT NULL,
  `alimentou_hoje` bit(1) DEFAULT NULL,
  `engasgou_alimentacao` bit(1) DEFAULT NULL,
  `bebeu_liquido` bit(1) DEFAULT NULL,
  `engasgou_liquido` bit(1) DEFAULT NULL,
  `ingeriu_acucar` bit(1) DEFAULT NULL,
  `observacoes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `tb_alimentacao`
--

INSERT INTO `tb_alimentacao` (`cd_alimentacao`, `alimentou_hoje`, `engasgou_alimentacao`, `bebeu_liquido`, `engasgou_liquido`, `ingeriu_acucar`, `observacoes`) VALUES
(1, b'1', b'1', b'1', b'1', b'1', ''),
(2, b'1', b'1', b'1', b'1', b'1', 'dwadawdda'),
(3, b'1', b'0', b'1', b'0', b'1', 'dwadwdwa');

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
  `senha` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `tb_cuidador`
--

INSERT INTO `tb_cuidador` (`cpf_cuidador`, `nm_cuidador`, `dt_nascimento`, `nm_email`, `coren`, `nr_telefone`, `nm_endereco`, `nr_endereco`, `nm_bairro`, `nm_cidade`, `ds_complemento`, `nr_cep`, `senha`) VALUES
('00000000000', 'aaaaaaaaaaa', '5555-05-05', 'wdada@gmail.com', '132123', '00000000000', 'rua tamagnini', 44, 'vera cruz', 'mongaguá', 'casa', '00000000', '000'),
('10987654321', 'aaaaaaaaaaa', '2003-10-10', 'wdada@hotmail.com', '4141441', '12345678901', 'rua tamagnini', 121, 'vera cruz', 'mongaguá', 'casa', '11111111', '56789'),
('11111111111', 'aaaaaaaaaaa', '1111-11-11', 'wdada@gmail.com', '4141441', '1111111', 'rua tamagnini', 111, 'vera cruz', 'mongaguá', 'casa', '11111111', '1111111'),
('12345678910', 'aaaaaaaaaaa', '2003-10-10', 'wdada@gmail.com', '132123', '12345678910', 'rua tamagnini', 123, 'vera cruz', 'mongaguá', 'casa', '11730000', '123456'),
('22222222222', 'aaaaaaaaaaa', '2222-02-22', 'wdada@gmail.com', '132123', '2222', 'rua tamagnini', 222, 'vera cruz', 'mongaguá', 'casa', '22222222', '222222'),
('33333333333', 'aaaaaaaaaaa', '3333-03-31', 'wdada@gmail.com', '132123', '333333', 'rua tamagnini', 333, 'vera cruz', 'mongaguá', 'casa', '33333333', '33333'),
('77777777777', 'dwad', '2003-09-10', 'dwada@gmail.com', '777777777777', '77777777777', 'dwadwd', 777, 'dwadw', 'dwada', 'ddaddaw', '77777777', '$2y$10$dud6xxE3Uxobf4r70N5wGuySfSEYvijvztBA72JJvWq1Larrzm6Gi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_paciente`
--

CREATE TABLE `tb_paciente` (
  `cpf_paciente` char(11) NOT NULL,
  `nm_paciente` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_sus` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dt_nascimento` date NOT NULL,
  `nr_telefone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nm_endereco` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_endereco` int NOT NULL,
  `nm_bairro` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nm_cidade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ds_complemento` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nr_cep` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `tb_paciente`
--

INSERT INTO `tb_paciente` (`cpf_paciente`, `nm_paciente`, `nr_sus`, `dt_nascimento`, `nr_telefone`, `nm_endereco`, `nr_endereco`, `nm_bairro`, `nm_cidade`, `ds_complemento`, `nr_cep`) VALUES
('77777777777', 'dwadw', '777777777777777', '2003-10-10', NULL, 'dadawd', 777, 'dwadwd', 'dwadawd', 'dwadawd', '77777777');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_alimentacao`
--
ALTER TABLE `tb_alimentacao`
  ADD PRIMARY KEY (`cd_alimentacao`);

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

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_alimentacao`
--
ALTER TABLE `tb_alimentacao`
  MODIFY `cd_alimentacao` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

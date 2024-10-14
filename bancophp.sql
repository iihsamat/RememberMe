-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/10/2024 às 02:14
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

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
-- Estrutura para tabela `tb_cuidador`
--

CREATE TABLE `tb_cuidador` (
  `cpf_cuidador` char(11) NOT NULL,
  `nome_cuidador` varchar(50) NOT NULL,
  `dataNascimento_cuidador` date NOT NULL,
  `email_cuidador` varchar(50) NOT NULL,
  `COREN_cuidador` varchar(20) NOT NULL,
  `telefone_cuidador` char(11) NOT NULL,
  `endereco_cuidador` varchar(100) NOT NULL,
  `numeroEndereco_cuidador` int(11) NOT NULL,
  `bairro_cuidador` varchar(50) NOT NULL,
  `cidade_cuidador` varchar(50) NOT NULL,
  `complemento_cuidador` varchar(50) NOT NULL,
  `CEP_cuidador` char(8) NOT NULL,
  `senha_cuidador` varchar(50) NOT NULL,
  `confirmar_senha_cuidador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_cuidador`
--

INSERT INTO `tb_cuidador` (`cpf_cuidador`, `nome_cuidador`, `dataNascimento_cuidador`, `email_cuidador`, `COREN_cuidador`, `telefone_cuidador`, `endereco_cuidador`, `numeroEndereco_cuidador`, `bairro_cuidador`, `cidade_cuidador`, `complemento_cuidador`, `CEP_cuidador`, `senha_cuidador`, `confirmar_senha_cuidador`) VALUES
('00000000000', 'aaaaaaaaaaa', '5555-05-05', 'wdada@gmail.com', '132123', '00000000000', 'rua tamagnini', 44, 'vera cruz', 'mongaguá', 'casa', '00000000', '000', '000'),
('10987654321', 'aaaaaaaaaaa', '2003-10-10', 'wdada@hotmail.com', '4141441', '12345678901', 'rua tamagnini', 121, 'vera cruz', 'mongaguá', 'casa', '11111111', '56789', '56789'),
('11111111111', 'aaaaaaaaaaa', '1111-11-11', 'wdada@gmail.com', '4141441', '1111111', 'rua tamagnini', 111, 'vera cruz', 'mongaguá', 'casa', '11111111', '1111111', '1111111'),
('12345678910', 'aaaaaaaaaaa', '2003-10-10', 'wdada@gmail.com', '132123', '12345678910', 'rua tamagnini', 123, 'vera cruz', 'mongaguá', 'casa', '11730000', '123456', '123456'),
('22222222222', 'aaaaaaaaaaa', '2222-02-22', 'wdada@gmail.com', '132123', '2222', 'rua tamagnini', 222, 'vera cruz', 'mongaguá', 'casa', '22222222', '222222', '222222'),
('33333333333', 'aaaaaaaaaaa', '3333-03-31', 'wdada@gmail.com', '132123', '333333', 'rua tamagnini', 333, 'vera cruz', 'mongaguá', 'casa', '33333333', '33333', '33333'),
('44444444444', 'aaaaaaaaaaa', '4444-04-04', 'wdada@gmail.com', '132123', '444444', 'rua tamagnini', 44, 'vera cruz', 'mongaguá', 'casa', '44444444', '4444', '4444'),
('55555555555', 'aaaaaaaaaaa', '5555-05-05', 'wdada@gmail.com', '132123', '55555', 'rua tamagnini', 1, 'vera cruz', 'mongaguá', 'casa', '55555555', '5', '5'),
('66666666666', 'aaaaaaaaaaa', '6666-06-06', 'wdada@hotmail.com', '4141441', '66', 'rua tamagnini', 66, 'vera cruz', 'mongaguá', 'casa', '66666666', '66', '66'),
('77777777777', 'aaaaaaaaaaa', '7777-07-07', 'wdada@gmail.com', '132123', '7777777', 'rua tamagnini', 777, 'vera cruz', 'mongaguá', 'casa', '77777777', '7777', '7777'),
('88888888888', 'aaaaaaaaaaa', '8888-08-08', 'wdada@gmail.com', '132123', '888888', 'rua tamagnini', 888, 'vera cruz', 'mongaguá', 'casa', '88888888', '88', '88'),
('99999999999', 'aaaaaaaaaaa', '9999-09-09', 'wdada@gmail.com', '132123', '999999', 'rua tamagnini', 99, 'vera cruz', 'mongaguá', 'casa', '99999999', '9', '9');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_paciente`
--

CREATE TABLE `tb_paciente` (
  `cpf_paciente` char(11) NOT NULL,
  `nome_paciente` varchar(50) NOT NULL,
  `SUS_paciente` char(15) NOT NULL,
  `dataNascimento_paciente` date NOT NULL,
  `telefone_paciente` varchar(11) NOT NULL,
  `endereco_paciente` varchar(50) NOT NULL,
  `numeroEndereco_paciente` int(11) NOT NULL,
  `bairro_paciente` varchar(50) NOT NULL,
  `cidade_paciente` varchar(50) NOT NULL,
  `complemento_paciente` varchar(50) NOT NULL,
  `CEP_paciente` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_cuidador`
--
ALTER TABLE `tb_cuidador`
  ADD PRIMARY KEY (`cpf_cuidador`);

--
-- Índices de tabela `tb_paciente`
--
ALTER TABLE `tb_paciente`
  ADD PRIMARY KEY (`cpf_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/10/2024 às 20:49
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

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
-- Estrutura para tabela `tb_adicionais`
--

CREATE TABLE `tb_adicionais` (
  `cd_adicionais` int(11) NOT NULL,
  `ano_diagnostico` char(4) NOT NULL,
  `alimenta_sozinho` bit(1) DEFAULT NULL,
  `diabetes` bit(1) DEFAULT NULL,
  `pressao_alta` bit(1) DEFAULT NULL,
  `colesterol` bit(1) DEFAULT NULL,
  `usa_medicacao` bit(1) DEFAULT NULL,
  `controle_pa` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_adicionais`
--

INSERT INTO `tb_adicionais` (`cd_adicionais`, `ano_diagnostico`, `alimenta_sozinho`, `diabetes`, `pressao_alta`, `colesterol`, `usa_medicacao`, `controle_pa`) VALUES
(1, '2015', b'1', NULL, b'1', b'0', b'1', b'0'),
(2, '2016', b'1', b'0', b'1', b'0', b'1', b'0'),
(3, '2010', b'1', b'1', b'1', b'1', b'1', b'1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_alimentacao`
--

CREATE TABLE `tb_alimentacao` (
  `cd_alimentacao` int(11) NOT NULL,
  `alimentou_hoje` bit(1) DEFAULT NULL,
  `engasgou_alimentacao` bit(1) DEFAULT NULL,
  `bebeu_liquido` bit(1) DEFAULT NULL,
  `engasgou_liquido` bit(1) DEFAULT NULL,
  `ingeriu_acucar` bit(1) DEFAULT NULL,
  `observacoes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_alimentacao`
--

INSERT INTO `tb_alimentacao` (`cd_alimentacao`, `alimentou_hoje`, `engasgou_alimentacao`, `bebeu_liquido`, `engasgou_liquido`, `ingeriu_acucar`, `observacoes`) VALUES
(1, b'1', b'1', b'1', b'1', b'1', ''),
(2, b'1', b'1', b'1', b'1', b'1', 'dwadawdda'),
(3, b'1', b'0', b'1', b'0', b'1', 'dwadwdwa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cuidador`
--

CREATE TABLE `tb_cuidador` (
  `cpf_cuidador` char(11) NOT NULL,
  `nm_cuidador` varchar(70) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `nm_email` varchar(100) NOT NULL,
  `coren` varchar(17) NOT NULL,
  `nr_telefone` char(11) NOT NULL,
  `nm_endereco` varchar(60) NOT NULL,
  `nr_endereco` int(11) NOT NULL,
  `nm_bairro` varchar(50) NOT NULL,
  `nm_cidade` varchar(50) NOT NULL,
  `ds_complemento` varchar(100) NOT NULL,
  `nr_cep` char(8) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_cuidador`
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
-- Estrutura para tabela `tb_exames`
--

CREATE TABLE `tb_exames` (
  `cd_pedido` int(11) NOT NULL,
  `dt_entrada` date NOT NULL,
  `dt_impressao` date NOT NULL,
  `nm_medico_solicitante` varchar(70) NOT NULL,
  `nm_laboratorio` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_exames`
--

INSERT INTO `tb_exames` (`cd_pedido`, `dt_entrada`, `dt_impressao`, `nm_medico_solicitante`, `nm_laboratorio`) VALUES
(312, '2003-10-10', '2003-10-10', 'Dr. Emanuel', 'sla cara');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_paciente`
--

CREATE TABLE `tb_paciente` (
  `cpf_paciente` char(11) NOT NULL,
  `nm_paciente` varchar(70) NOT NULL,
  `nr_sus` varchar(15) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `nr_telefone` varchar(11) DEFAULT NULL,
  `nm_endereco` varchar(60) NOT NULL,
  `nr_endereco` int(11) NOT NULL,
  `nm_bairro` varchar(50) NOT NULL,
  `nm_cidade` varchar(50) NOT NULL,
  `ds_complemento` varchar(100) NOT NULL,
  `nr_cep` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_paciente`
--

INSERT INTO `tb_paciente` (`cpf_paciente`, `nm_paciente`, `nr_sus`, `dt_nascimento`, `nr_telefone`, `nm_endereco`, `nr_endereco`, `nm_bairro`, `nm_cidade`, `ds_complemento`, `nr_cep`) VALUES
('77777777777', 'dwadw', '777777777777777', '2003-10-10', NULL, 'dadawd', 777, 'dwadwd', 'dwadawd', 'dwadawd', '77777777');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_adicionais`
--
ALTER TABLE `tb_adicionais`
  ADD PRIMARY KEY (`cd_adicionais`);

--
-- Índices de tabela `tb_alimentacao`
--
ALTER TABLE `tb_alimentacao`
  ADD PRIMARY KEY (`cd_alimentacao`);

--
-- Índices de tabela `tb_cuidador`
--
ALTER TABLE `tb_cuidador`
  ADD PRIMARY KEY (`cpf_cuidador`);

--
-- Índices de tabela `tb_exames`
--
ALTER TABLE `tb_exames`
  ADD PRIMARY KEY (`cd_pedido`);

--
-- Índices de tabela `tb_paciente`
--
ALTER TABLE `tb_paciente`
  ADD PRIMARY KEY (`cpf_paciente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_adicionais`
--
ALTER TABLE `tb_adicionais`
  MODIFY `cd_adicionais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_alimentacao`
--
ALTER TABLE `tb_alimentacao`
  MODIFY `cd_alimentacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_exames`
--
ALTER TABLE `tb_exames`
  MODIFY `cd_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

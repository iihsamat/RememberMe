-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/11/2024 às 18:47
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
  `ano_diagnostico` char(4) DEFAULT NULL,
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
(8, '1985', b'1', b'1', b'0', b'0', b'1', b'0');

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
(1, b'1', b'0', b'1', b'0', b'1', 'zzzz'),
(4, b'1', b'0', b'1', b'0', b'1', 'dawdwadawdaw'),
(5, b'1', b'0', b'1', b'1', b'0', 'aaaaaaaa'),
(6, b'1', b'1', b'0', b'0', b'1', 'bbbbbbbbbbbb'),
(7, b'0', b'0', b'1', b'1', b'0', 'cccccccccccccccc'),
(8, b'1', b'0', b'1', b'0', b'1', 'zzz');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cuidador`
--

CREATE TABLE `tb_cuidador` (
  `cpf_cuidador` char(11) NOT NULL,
  `nm_cuidador` varchar(70) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `nm_email` varchar(100) NOT NULL,
  `coren` varchar(17) DEFAULT NULL,
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
('77777777777', 'Gabriel', '2003-10-10', 'gabriel@gmail.com', '7777777777', '77777777777', 'dwadawda', 777, 'dadwada', 'dwadawd', 'dwaawdwa', '77777777', '$2y$10$2ph/44U84ddeq5KqsSRNvu0Tbeu0hvrd1xZrKwl.DcwnQxS7Y5FGS');

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
(777, '2003-10-10', '2003-10-10', 'Dr. Microondas', 'sla cara');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_fezes`
--

CREATE TABLE `tb_fezes` (
  `cd_fezes` int(11) NOT NULL,
  `odor` varchar(7) DEFAULT NULL,
  `coloracao` varchar(12) DEFAULT NULL,
  `tipo_fezes` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_fezes`
--

INSERT INTO `tb_fezes` (`cd_fezes`, `odor`, `coloracao`, `tipo_fezes`) VALUES
(13, 'Normal', 'Normal', 'Em pedaços esfarrapados'),
(14, 'Forte', 'Vermelho', 'Líquido');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_higiene`
--

CREATE TABLE `tb_higiene` (
  `cd_higiene` int(11) NOT NULL,
  `tomou_banho` bit(1) DEFAULT NULL,
  `escovou_dentes` bit(1) DEFAULT NULL,
  `utilizou_fralda` bit(1) DEFAULT NULL,
  `observacoes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_higiene`
--

INSERT INTO `tb_higiene` (`cd_higiene`, `tomou_banho`, `escovou_dentes`, `utilizou_fralda`, `observacoes`) VALUES
(13, b'1', b'1', b'0', 'dwadadd'),
(14, b'0', b'0', b'1', 'b');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_internacoes`
--

CREATE TABLE `tb_internacoes` (
  `cd_internacoes` int(11) NOT NULL,
  `dt_entrada` date NOT NULL,
  `dt_saida` date NOT NULL,
  `nm_medico_solicitante` varchar(70) NOT NULL,
  `nm_unidade` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_internacoes`
--

INSERT INTO `tb_internacoes` (`cd_internacoes`, `dt_entrada`, `dt_saida`, `nm_medico_solicitante`, `nm_unidade`) VALUES
(777, '2003-10-10', '2004-10-10', 'dwada', 'dadadada');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_ocorrencia`
--

CREATE TABLE `tb_ocorrencia` (
  `cd_ocorrencia` int(11) NOT NULL,
  `dt_ocorrencia` date NOT NULL,
  `precisou_samu` bit(1) DEFAULT NULL,
  `precisou_hospital` bit(1) DEFAULT NULL,
  `houve_fratura` bit(1) DEFAULT NULL,
  `engasgou` bit(1) DEFAULT NULL,
  `observacoes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_ocorrencia`
--

INSERT INTO `tb_ocorrencia` (`cd_ocorrencia`, `dt_ocorrencia`, `precisou_samu`, `precisou_hospital`, `houve_fratura`, `engasgou`, `observacoes`) VALUES
(1, '0000-00-00', b'1', b'0', b'1', b'0', 'dadwdawdaw'),
(2, '0000-00-00', b'0', b'1', b'1', b'0', 'sdawdawdaw'),
(3, '0000-00-00', b'1', b'0', b'1', b'0', 'dwadawdada');

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
('77777777777', 'aaaaaa', '77777777777', '2003-10-10', NULL, 'dwadwd', 777, 'wadawdawd', 'dwadadaw', 'dwadawdawd', '77777777');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_urina`
--

CREATE TABLE `tb_urina` (
  `cd_urina` int(11) NOT NULL,
  `coloracao` varchar(22) DEFAULT NULL,
  `odor` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_urina`
--

INSERT INTO `tb_urina` (`cd_urina`, `coloracao`, `odor`) VALUES
(17, 'Amarelo', 'Forte'),
(18, 'Transp', 'Normal');

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
-- Índices de tabela `tb_fezes`
--
ALTER TABLE `tb_fezes`
  ADD PRIMARY KEY (`cd_fezes`);

--
-- Índices de tabela `tb_higiene`
--
ALTER TABLE `tb_higiene`
  ADD PRIMARY KEY (`cd_higiene`);

--
-- Índices de tabela `tb_internacoes`
--
ALTER TABLE `tb_internacoes`
  ADD PRIMARY KEY (`cd_internacoes`);

--
-- Índices de tabela `tb_ocorrencia`
--
ALTER TABLE `tb_ocorrencia`
  ADD PRIMARY KEY (`cd_ocorrencia`);

--
-- Índices de tabela `tb_paciente`
--
ALTER TABLE `tb_paciente`
  ADD PRIMARY KEY (`cpf_paciente`);

--
-- Índices de tabela `tb_urina`
--
ALTER TABLE `tb_urina`
  ADD PRIMARY KEY (`cd_urina`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_adicionais`
--
ALTER TABLE `tb_adicionais`
  MODIFY `cd_adicionais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_alimentacao`
--
ALTER TABLE `tb_alimentacao`
  MODIFY `cd_alimentacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_exames`
--
ALTER TABLE `tb_exames`
  MODIFY `cd_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;

--
-- AUTO_INCREMENT de tabela `tb_fezes`
--
ALTER TABLE `tb_fezes`
  MODIFY `cd_fezes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tb_higiene`
--
ALTER TABLE `tb_higiene`
  MODIFY `cd_higiene` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tb_internacoes`
--
ALTER TABLE `tb_internacoes`
  MODIFY `cd_internacoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;

--
-- AUTO_INCREMENT de tabela `tb_ocorrencia`
--
ALTER TABLE `tb_ocorrencia`
  MODIFY `cd_ocorrencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_urina`
--
ALTER TABLE `tb_urina`
  MODIFY `cd_urina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

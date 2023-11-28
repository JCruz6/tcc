-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Out-2022 às 03:49
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `chave` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `acessos`
--

INSERT INTO `acessos` (`id`, `nome`, `chave`, `grupo`) VALUES
(1, 'Home', 'home', 0),
(2, 'Clientes', 'clientes', 2),
(3, 'Usuários', 'usuarios', 2),
(4, 'Funcionários', 'funcionarios', 2),
(5, 'Fornecedores', 'fornecedores', 2),
(6, 'Cargos', 'cargos', 3),
(7, 'Frequências', 'frequencias', 3),
(8, 'Caixas', 'caixas', 3),
(9, 'Formas Pgto', 'formas_pgto', 3),
(10, 'Categorias', 'categorias', 4),
(11, 'Produtos', 'produtos', 4),
(12, 'Entradas', 'entradas', 4),
(13, 'Saídas', 'saidas', 4),
(14, 'Estoque', 'estoque', 4),
(15, 'Trocas', 'trocas', 4),
(16, 'Contas à Receber', 'receber', 5),
(17, 'Despesas', 'pagar', 5),
(18, 'Compras', 'compras', 5),
(19, 'Vendas', 'vendas', 5),
(20, 'Fluxo de Caixa', 'fluxo', 5),
(21, 'Comissões', 'comissoes', 5),
(22, 'Relatório de Vendas', 'rel_vendas', 6),
(23, 'Relatório de Clientes', 'rel_clientes', 6),
(24, 'Relatório de Recebimentos', 'rel_recebimentos', 6),
(25, 'Relatório de Despesas', 'rel_despesas', 6),
(26, 'Relatório de Lucro', 'rel_lucro', 6),
(27, 'Relatório de Produtos', 'rel_produtos', 6),
(28, 'Relatório de Estoque', 'rel_estoque', 6),
(29, 'Relatório de Entrada/Saída', 'rel_entradas_saidas', 6),
(30, 'Relatório de Caixas', 'rel_caixas', 6),
(31, 'Relatório de Comissões', 'rel_comissoes', 6),
(32, 'Caixa PDV', 'abertura', 0),
(33, 'Minhas Comissões', 'minhas_comissoes', 0),
(34, 'Configurações', 'config', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo` varchar(25) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data_cad` date NOT NULL,
  `data_validade` date DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `id_ref` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `empresa`, `nome`, `tipo`, `usuario`, `data_cad`, `data_validade`, `foto`, `id_ref`) VALUES
(2, 0, 'Contrato', 'Empresa', 3, '2022-09-13', '2022-11-15', '13-09-2022-19-38-38-08-02-2022-14-52-38-Contrato-de-Compra-e-Venda-Teste.docx', 5),
(3, 0, 'PDF Contrato', 'Empresa', 3, '2022-09-13', '2022-11-15', '13-09-2022-19-39-23-02-03-2022-12-23-08-reciboConta.pdf', 5),
(7, 0, 'Contrato Sistema', 'Empresa', 3, '2022-09-13', '2022-09-23', '13-09-2022-20-09-49-08-02-2022-15-19-17-Contrato-de-Compra-e-Venda-Teste.docx', 4),
(8, 0, 'Contrato 2019', 'Empresa', 3, '2022-09-13', '2021-11-26', '13-09-2022-20-16-24-08-02-2022-15-19-17-Contrato-de-Compra-e-Venda-Teste.docx', 5),
(9, 0, 'PDF do Contrato 2020', 'Empresa', 3, '2022-09-13', '2022-05-31', '13-09-2022-20-17-12-02-03-2022-15-52-46-contratoLocacao.pdf', 4),
(10, 0, 'Arquivo Teste', 'Empresa', 3, '2022-09-13', '2022-09-08', '13-09-2022-20-19-31-02-03-2022-15-48-47-contratoVenda.pdf', 3),
(12, 0, 'fdsfasdfas', 'Empresa', 3, '2022-09-13', '0000-00-00', '13-09-2022-20-20-30-02-03-2022-17-41-43-reciboConta.pdf', 3),
(13, 0, 'Nota Fiscal', 'Receber', 3, '2022-09-14', '0000-00-00', '14-09-2022-14-02-16-02-03-2022-17-41-43-reciboConta.pdf', 10),
(14, 0, 'Teste', 'Receber', 3, '2022-09-14', '2022-09-12', '14-09-2022-14-03-40-08-02-2022-15-09-54-02-FUNDO-ESCURO.rar', 10),
(16, 0, 'Contrato Locação', 'Pagar', 3, '2022-09-19', '2022-09-30', '19-09-2022-10-49-11-09-11-2021-13-08-20-arquivoteste.docx', 2),
(18, 0, 'sfdaa', 'Empresa', 0, '2022-09-19', '0000-00-00', 'sem-foto.png', 0),
(19, 0, '', 'Empresa', 0, '2022-09-19', '0000-00-00', 'sem-foto.png', 0),
(20, 0, 'Arquivo teste', 'Receber', 5, '2022-09-20', '0000-00-00', '20-09-2022-14-46-48-09-11-2021-12-04-29-pdfteste.zip', 37),
(21, 0, 'Arquivo PDF', 'Receber', 5, '2022-09-20', '0000-00-00', '20-09-2022-14-57-05-09-11-2021-13-07-43-pdfteste.pdf', 45),
(23, 3, 'PDF', 'Receber', 5, '2022-09-20', '0000-00-00', '20-09-2022-15-22-44-09-11-2021-10-17-10-pdfteste.pdf', 12),
(24, 0, 'Teste', 'Empresa', 5, '2022-09-20', '0000-00-00', '20-09-2022-18-14-41-09-11-2021-10-17-10-pdfteste.pdf', 3),
(25, 3, 'Teste2', 'Cliente', 5, '2022-09-20', '0000-00-00', '20-09-2022-18-23-30-09-11-2021-12-04-29-pdfteste.zip', 3),
(26, 3, 'PDF', 'Cliente', 5, '2022-09-20', '0000-00-00', '20-09-2022-18-23-51-09-11-2021-10-17-10-pdfteste.pdf', 3),
(28, 3, 'estes', 'Cliente', 5, '2022-09-20', '0000-00-00', '20-09-2022-18-24-11-09-11-2021-12-04-29-pdfteste.zip', 1),
(29, 4, 'Teste', 'Receber', 6, '2022-09-26', '0000-00-00', '26-09-2022-19-15-31-00.pdf', 40),
(30, 3, 'teste', 'Receber', 5, '2022-10-05', '0000-00-00', '05-10-2022-09-25-25-bermuda.jpg', 85);

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixa`
--

CREATE TABLE `caixa` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `data_ab` date NOT NULL,
  `hora_ab` time NOT NULL,
  `valor_ab` decimal(8,2) NOT NULL,
  `gerente_ab` int(11) NOT NULL,
  `data_fec` date DEFAULT NULL,
  `hora_fec` time DEFAULT NULL,
  `valor_fec` decimal(8,2) DEFAULT NULL,
  `valor_vendido` decimal(8,2) DEFAULT NULL,
  `valor_quebra` decimal(8,2) DEFAULT NULL,
  `gerente_fec` int(11) DEFAULT NULL,
  `caixa` int(11) NOT NULL,
  `operador` int(11) DEFAULT NULL,
  `status` varchar(35) DEFAULT NULL,
  `valor_sangrias` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `caixa`
--

INSERT INTO `caixa` (`id`, `empresa`, `data_ab`, `hora_ab`, `valor_ab`, `gerente_ab`, `data_fec`, `hora_fec`, `valor_fec`, `valor_vendido`, `valor_quebra`, `gerente_fec`, `caixa`, `operador`, `status`, `valor_sangrias`) VALUES
(2, 4, '2022-09-28', '10:10:24', '100.00', 6, '2022-10-03', '10:04:21', '300.00', '480.00', '-100.00', 6, 1, 6, 'Fechado', '180.00'),
(7, 4, '2022-10-03', '10:10:28', '100.00', 6, '2022-10-03', '10:12:39', '100.00', '0.00', '0.00', 6, 2, 6, 'Fechado', '0.00'),
(8, 4, '2022-10-03', '10:13:03', '150.00', 6, '2022-10-03', '10:13:17', '100.00', '0.00', '-50.00', 6, 4, 6, 'Fechado', '0.00'),
(9, 4, '2022-10-03', '10:38:12', '150.00', 20, '2022-10-03', '10:38:29', '130.00', '0.00', '-20.00', 20, 5, 19, 'Fechado', '0.00'),
(10, 4, '2022-10-03', '10:53:07', '100.00', 20, '2022-10-03', '14:37:18', '120.00', '0.00', '20.00', 6, 1, 6, 'Fechado', '0.00'),
(11, 4, '2022-10-03', '14:39:42', '100.00', 20, '2022-10-03', '14:40:15', '200.00', '0.00', '100.00', 6, 1, 6, 'Fechado', '0.00'),
(12, 4, '2022-10-03', '15:03:48', '100.00', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, 'Aberto', NULL),
(13, 3, '2022-10-03', '23:06:02', '150.00', 18, '2022-10-04', '18:28:01', '3000.00', '2552.82', '297.18', 5, 6, 21, 'Fechado', '0.00'),
(14, 3, '2022-10-04', '18:36:30', '150.00', 18, '2022-10-04', '18:37:37', '300.00', '105.00', '45.00', 5, 7, 5, 'Fechado', '0.00'),
(15, 3, '2022-10-04', '18:52:28', '100.00', 5, '2022-10-04', '19:14:30', '300.00', '426.15', '-226.15', 5, 6, 5, 'Fechado', '0.00'),
(16, 3, '2022-10-04', '20:24:53', '100.00', 18, '2022-10-04', '20:27:47', '140.00', '82.50', '7.50', 5, 6, 5, 'Fechado', '50.00'),
(17, 3, '2022-10-04', '20:41:03', '100.00', 5, '2022-10-04', '21:10:51', '170.00', '203.34', '0.66', 5, 6, 5, 'Fechado', '134.00'),
(18, 3, '2022-10-04', '21:17:14', '100.00', 5, NULL, NULL, NULL, NULL, NULL, NULL, 6, 5, 'Aberto', NULL),
(19, 3, '2022-10-05', '16:06:46', '150.00', 5, NULL, NULL, NULL, NULL, NULL, NULL, 7, 21, 'Aberto', NULL),
(20, 4, '2022-10-05', '19:38:53', '100.00', 20, '2022-10-05', '19:39:57', '231.00', '131.67', '-0.67', 6, 2, 19, 'Fechado', '0.00'),
(21, 4, '2022-10-05', '19:40:58', '120.00', 6, '2022-10-05', '19:47:27', '356.67', '236.67', '0.00', 6, 2, 19, 'Fechado', '0.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixas`
--

CREATE TABLE `caixas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `empresa` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `caixas`
--

INSERT INTO `caixas` (`id`, `nome`, `empresa`, `status`, `usuario`) VALUES
(1, 'Caixa A', 4, 'Aberto', 6),
(2, 'Caixa B', 4, 'Fechado', 19),
(4, 'Caixa C', 4, 'Fechado', 6),
(5, 'Caixa D', 4, 'Fechado', 19),
(6, 'Caixa 1', 3, 'Aberto', 5),
(7, 'Caixa 2', 3, 'Aberto', 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `empresa`, `nome`) VALUES
(1, 3, 'Administrador'),
(2, 3, 'Operador'),
(3, 3, 'Vendedor'),
(4, 3, 'Gerente'),
(6, 4, 'Administrador'),
(8, 0, 'Administrador'),
(9, 4, 'Operador'),
(10, 4, 'Vendedor'),
(11, 4, 'Gerente'),
(12, 9, 'Administrador'),
(13, 9, 'Gerente'),
(14, 9, 'Vendedor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `ativo`, `empresa`) VALUES
(1, 'Vestidos', 'Sim', 4),
(2, 'Sapatos', 'Sim', 4),
(3, 'Chinelos', 'Sim', 4),
(4, 'Camisas', 'Sim', 4),
(5, 'Bermudas', 'Sim', 4),
(6, 'Shorts', 'Sim', 4),
(7, 'Saias', 'Sim', 4),
(9, 'Saias', 'Sim', 3),
(10, 'Bermudas', 'Sim', 3),
(11, 'Vestidos', 'Sim', 3),
(12, 'Sapatos', 'Sim', 3),
(13, 'Bonés e Chapéus', 'Sim', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cat_grade`
--

CREATE TABLE `cat_grade` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cat_grade`
--

INSERT INTO `cat_grade` (`id`, `empresa`, `produto`, `nome`) VALUES
(1, 4, 5, 'Cor'),
(2, 4, 5, 'Tamanho'),
(8, 4, 1, 'Cor'),
(9, 4, 1, 'Tamanho'),
(12, 4, 9, 'Cor'),
(13, 4, 9, 'Numeração'),
(14, 4, 10, 'Cor'),
(15, 4, 10, 'Tamanho'),
(16, 4, 11, 'Cor'),
(17, 4, 12, 'Cor'),
(18, 4, 12, 'Tamanho'),
(20, 3, 17, 'Numeração'),
(21, 3, 16, 'Cor'),
(22, 3, 16, 'Tamanho'),
(23, 3, 15, 'Cor'),
(24, 3, 14, 'Tamanho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `empresa`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `data`) VALUES
(1, 3, 'Cliente 1', '455.555.555-55', '(45) 55555-5555', 'cliente1@hotmail.com', 'Rua C', '2022-09-20'),
(3, 3, 'Cliente 2', '010.000.000-00', '(01) 22222-2222', 'cliente2@hotmail.com', 'Rua C', '2022-09-20'),
(4, 4, 'Cliente Teste', '444.444.444-44', '(44) 44444-4444', 'clienteteste@hotmail.com', 'AAA', '2022-09-20'),
(5, 4, 'fdsadfsa', '454.54', '(15) 4545', 'aafdfda@hotmail.com', '5afa', '2022-09-20'),
(8, 4, 'Cliente Dois', '222.222.222-22', NULL, NULL, NULL, '2022-10-03'),
(9, 4, 'Cliente Nulo', '011.111.111-11', NULL, NULL, NULL, '2022-10-03'),
(10, 4, 'Cliente Novo', '999.999.999-99', NULL, NULL, NULL, '2022-10-03'),
(11, 4, 'Cliente de Teste', '777.777.777-77', NULL, NULL, NULL, '2022-10-03'),
(22, 3, 'Cliente 3', '555.555.555-55', '(55) 55555-5555', 'cliente3@hotmail.com', 'Rua C', '2022-10-04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comissoes`
--

CREATE TABLE `comissoes` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_lanc` date NOT NULL,
  `data_pgto` date DEFAULT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `id_ref` int(11) NOT NULL,
  `vendedor` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comissoes`
--

INSERT INTO `comissoes` (`id`, `empresa`, `descricao`, `valor`, `data_lanc`, `data_pgto`, `usuario_lanc`, `usuario_pgto`, `id_ref`, `vendedor`, `pago`) VALUES
(1, 3, 'Comissão: Vendedor', '30.00', '2022-10-04', NULL, 21, NULL, 58, 14, 'Sim'),
(2, 3, 'Comissão: Vendedor', '10.14', '2022-10-04', NULL, 21, NULL, 60, 14, 'Não'),
(3, 3, 'Comissão: Vendedor', '2.39', '2022-10-04', NULL, 21, NULL, 61, 14, 'Não'),
(4, 3, 'Comissão: Vendedor', '3.00', '2022-10-04', NULL, 21, NULL, 62, 14, 'Não'),
(5, 3, 'Comissão: Vendedor', '59.25', '2022-10-04', NULL, 21, NULL, 63, 14, 'Não'),
(6, 3, 'Comissão: Vendedor', '8.78', '2022-10-04', NULL, 21, NULL, 68, 14, 'Não'),
(7, 3, 'Comissão: Vendedor', '14.96', '2022-10-04', NULL, 21, NULL, 69, 14, 'Não'),
(8, 3, 'Comissão: Vendedor', '10.50', '2022-10-04', NULL, 21, NULL, 71, 14, 'Não'),
(9, 3, 'Comissão: Vendedor', '16.25', '2022-10-04', NULL, 21, NULL, 72, 14, 'Não'),
(10, 3, 'Comissão: Vendedor', '11.75', '2022-10-04', NULL, 21, NULL, 73, 14, 'Não'),
(11, 3, 'Comissão: Vendedor', '12.15', '2022-10-04', NULL, 21, NULL, 74, 14, 'Não'),
(12, 3, 'Comissão: Vendedor', '30.38', '2022-10-04', NULL, 21, NULL, 75, 14, 'Não'),
(13, 3, 'Comissão: Vendedor', '10.80', '2022-10-04', NULL, 21, NULL, 76, 14, 'Não'),
(14, 3, 'Comissão: Vendedor', '15.75', '2022-10-04', NULL, 21, NULL, 77, 14, 'Não'),
(15, 3, 'Comissão: Vendedor', '37.05', '2022-10-04', NULL, 5, NULL, 80, 14, 'Não'),
(16, 3, 'Comissão: Vendedor', '5.25', '2022-10-04', NULL, 5, NULL, 81, 14, 'Sim'),
(17, 3, 'Comissão: Vendedor', '8.25', '2022-10-04', NULL, 5, NULL, 82, 14, 'Não'),
(18, 3, 'Comissão: Vendedor', '3.00', '2022-10-04', NULL, 5, NULL, 84, 14, 'Não'),
(19, 3, 'Comissão: Vendedor', '6.00', '2022-10-04', NULL, 5, NULL, 85, 14, 'Não'),
(20, 3, 'Comissão: Vendedor', '15.75', '2022-10-04', NULL, 5, NULL, 86, 14, 'Não'),
(21, 3, 'Comissão: Vendedor', '3.00', '2022-10-04', NULL, 5, NULL, 87, 14, 'Não'),
(24, 3, 'Comissão: Vendedor', '3.00', '2022-10-05', '2022-10-05', 5, 0, 92, 14, 'Sim'),
(25, 3, 'Comissão: Vendedor', '3.00', '2022-10-05', '2022-10-05', 5, 5, 93, 14, 'Sim'),
(26, 3, 'Comissão: Vendedor', '2.25', '2022-10-05', '2022-10-05', 5, 5, 94, 14, 'Sim'),
(27, 3, 'Comissão: Vendedor', '3.50', '2022-10-05', '2022-10-05', 5, 5, 97, 14, 'Sim'),
(30, 3, 'Comissão: Paulo Vendedor', '3.50', '2022-10-05', '2022-10-05', 5, 5, 100, 22, 'Sim'),
(31, 3, 'Comissão: Paulo Vendedor', '6.17', '2022-10-05', '2022-10-05', 5, 5, 101, 22, 'Sim'),
(32, 3, 'Comissão: Paulo Vendedor', '3.50', '2022-10-05', '2022-10-05', 5, 5, 102, 22, 'Sim'),
(33, 3, 'Comissão: Vendedor', '3.50', '2022-10-05', '2022-10-05', 5, 5, 103, 14, 'Sim'),
(34, 3, 'Comissão: Vendedor', '3.50', '2022-10-05', '2022-10-05', 5, 5, 104, 14, 'Sim'),
(35, 3, 'Comissão: Vendedor', '3.50', '2022-10-05', NULL, 5, NULL, 105, 14, 'Não'),
(36, 3, 'Comissão: Vendedor', '23.42', '2022-10-05', NULL, 21, NULL, 106, 14, 'Não'),
(37, 4, 'Comissão: Vendedor', '0.00', '2022-10-05', NULL, 19, NULL, 107, 14, 'Não'),
(38, 4, 'Comissão: Vendedor', '0.00', '2022-10-05', NULL, 19, NULL, 108, 14, 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `nome_sistema` varchar(50) NOT NULL,
  `telefone_sistema` varchar(20) DEFAULT NULL,
  `email_sistema` varchar(50) DEFAULT NULL,
  `tipo_rel` varchar(5) NOT NULL,
  `dias_bloqueio` int(11) NOT NULL,
  `msg_bloqueio` varchar(255) DEFAULT NULL,
  `foto_rel` varchar(100) DEFAULT NULL,
  `tipo_desconto` varchar(20) DEFAULT NULL,
  `comissao` int(11) NOT NULL,
  `endereco_sistema` varchar(100) DEFAULT NULL,
  `cnpj_sistema` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `empresa`, `nome_sistema`, `telefone_sistema`, `email_sistema`, `tipo_rel`, `dias_bloqueio`, `msg_bloqueio`, `foto_rel`, `tipo_desconto`, `comissao`, `endereco_sistema`, `cnpj_sistema`) VALUES
(1, 0, 'Sistema de Vendas', '(00) 00000-0000', 'contato@hugocursos.com.br', 'PDF', 3, 'Prezado Cliente, não identificamos o pagamento de sua última mensalidade, entre em contato conosco o mais rápido possivel para regularizar o pagamento, caso contário seu acesso ao sistema será desativado.', NULL, NULL, 0, NULL, NULL),
(2, 3, 'Loja Freitas', '(48) 48574-5454', 'lojafreitas@hotmail.com', 'PDF', 0, NULL, '20-09-2022-18-52-04-logo.jpg', '%', 10, 'Rua X Número 150 - Bairro Centro Belo Horizonte - MG', '44.444.444/4444-44'),
(3, 4, 'Empresa 2', '(45) 45454-5454', 'contato2@hugocursos.com.br', 'PDF', 0, NULL, '20-09-2022-11-00-08-20-09-2022-10-59-25-logo-rel.jpg', '%', 0, NULL, NULL),
(4, 9, 'Sistema de Vendas', NULL, NULL, 'PDF', 0, NULL, 'logo-rel.jpg', '%', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contratos`
--

CREATE TABLE `contratos` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `texto` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contratos`
--

INSERT INTO `contratos` (`id`, `empresa`, `texto`, `data`) VALUES
(3, 5, '<h4>CONTRATO PARTICULAR DE LOCAÇÃO DE SOFTWARE</h4>\r\n<br>\r\n<p>\r\nPor este instrumento particular, a saber de um lado <b>Empresa 33</b>, localizado em Rua 55, inscrita no CNPJ 33.333.333/3333-44, por seu representante legal ao final assinado, ora denominada de contratante e de outro lado a empresa Sistema de Vendas, com sede na cidade de Belo Horizonte, Rua A, Número 50, Bairro Centro, por seu representante legal, ora denominada de contratada, tem entre si, justo e contratado o seguinte:\r\n</p>\r\n<br>\r\n<p>\r\n<b>CLÁUSULA 1º </b>- A contratante nesta oportunidade contrata os serviços da contratada, para a locação, instalação e manutenção de software composto de (Sistema Gerenciamento de Vendas), da qual a mesma é detentora dos direitos autorais.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 2º </b>- O período de uso será de vinte e quatro (24) horas por dia, exceto quando ocorrer interrupções por falta de energia, manutenção, casos fortuitos ou ação de terceiros sobre o software.\r\n<br><br>\r\n<b>CLÁUSULA 3º </b>- Que o uso do software é para a empresa contratante, não podendo essa ceder ou transferir para outrem sua utilização.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 4º </b>- Que a contratada se responsabiliza pela legalidade do produto alugado, ficando responsável pelo fornecimento de atualizações quando essas forem realizadas, sem qualquer custo adicional.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 5º </b>- Que a manutenção do software objeto do presente contrato só poderá ser realizado pela contratada, ficando essa responsável pelo fornecimento gratuito de suporte técnico no horário comercial, via telefone ou e-mail, de modo a resolver problemas operacionais.\r\n</p><p>\r\n<br>\r\n<b>CLÁUSULA 6º </b>- Que a contratada tendo ciência de informações tidas como confidenciais da contratante, obriga-se a manter sigilo sobre as mesmas.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 7º </b>- Que a contratante se obriga a não efetuar alterações no software, sem autorização por escrito da contratada.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 8º </b>- Que combinam o aluguel do software da ordem de <b>R$ 270,00</b> (REAIS) por mês, a ser pago todo dia 01, mediante pagamento Pix, ficando estabelecido que após o vencimento incidirão juros moratórios à razão de TAL e multa de 2% sobre o aluguel mensal.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 9º </b>- Que no caso de inadimplemento de três meses de aluguel, o presente será rescindido de pleno direito, ficando suspenso o serviço objeto deste contrato, com a cobrança dos valores e acréscimos ora estabelecidos.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 10º </b>- Que o presente contrato é feito pelo prazo de <b>vinte e quatro (24) meses</b>, a iniciar-se em data 19/09/2022 e a findar-se em data 19/09/2024, cujo prazo poderá ser prorrogado de comum acordo, desde que haja comunicação prévia entre as partes com o mínimo de trinta (30) dias antes do vencimento.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 11º </b>- Que no caso de inadimplemento de 3 dias, o contratante poderá retirar o acesso dos usuários da contratada deixando assim inativo até que o pagamento de todas as parcelas inadimplentes sejam quitadas.\r\n<br><br>\r\n</p><p>\r\n\r\n\r\n<b>CLÁUSULA 12º </b>- Este contrato não obriga o contratante a efetuar implementações no sistema, toda e qualquer implementação desejada pelo contratado deverá ser acordada como um serviço externo ao que foi definido neste contrato, podendo gerar assim custos ao contratado.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 13º </b>- O contratado confirma ter acompanhado a apresentação do sistema e ter entendido todos os recursos e funcionalidades do mesmo, sendo assim está de acordo com o que foi proposto pelo software e confirma a utilização do mesmo nos moldes apresentados.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 14º </b>- Elegem o foro da Comarca de Belo Horizonte MG para dirimirem eventuais dúvidas oriundas do presente contrato.\r\n\r\n<br><br>\r\n</p><p>\r\nE por estarem assim, justas e contratadas assinam o presente em duas (2) vias de igual teor e forma na presença de duas testemunhas, para que surta seus efeitos de direito.\r\n<br><br><br>\r\n</p><p>\r\n</p><div align=\"center\">\r\nBelo Horizonte, segunda-feira, 19 de setembro de 2022\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nCONTRATANTE\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nCONTRATADA\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nTESTEMUNHA\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nTESTEMUNHA\r\n</div>', '2022-09-19'),
(4, 4, '<h4>CONTRATO PARTICULAR DE LOCAÇÃO DE SOFTWARE2</h4>\r\n<br>\r\n<p>\r\nPor este instrumento particular, a saber de um lado <b>Empresa 2</b>, localizado em Rua 6, inscrita no CNPJ 77.777.777/7777-77, por seu representante legal ao final assinado, ora denominada de contratante e de outro lado a empresa Sistema de Vendas, com sede na cidade de Belo Horizonte, Rua A, Número 50, Bairro Centro, por seu representante legal, ora denominada de contratada, tem entre si, justo e contratado o seguinte:\r\n</p>\r\n<br>\r\n<p>\r\n<b>CLÁUSULA 1º </b>- A contratante nesta oportunidade contrata os serviços da contratada, para a locação, instalação e manutenção de software composto de (Sistema Gerenciamento de Vendas), da qual a mesma é detentora dos direitos autorais.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 2º </b>- O período de uso será de vinte e quatro (24) horas por dia, exceto quando ocorrer interrupções por falta de energia, manutenção, casos fortuitos ou ação de terceiros sobre o software.\r\n<br><br>\r\n<b>CLÁUSULA 3º </b>- Que o uso do software é para a empresa contratante, não podendo essa ceder ou transferir para outrem sua utilização.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 4º </b>- Que a contratada se responsabiliza pela legalidade do produto alugado, ficando responsável pelo fornecimento de atualizações quando essas forem realizadas, sem qualquer custo adicional.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 5º </b>- Que a manutenção do software objeto do presente contrato só poderá ser realizado pela contratada, ficando essa responsável pelo fornecimento gratuito de suporte técnico no horário comercial, via telefone ou e-mail, de modo a resolver problemas operacionais.\r\n</p><p>\r\n<br>\r\n<b>CLÁUSULA 6º </b>- Que a contratada tendo ciência de informações tidas como confidenciais da contratante, obriga-se a manter sigilo sobre as mesmas.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 7º </b>- Que a contratante se obriga a não efetuar alterações no software, sem autorização por escrito da contratada.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 8º </b>- Que combinam o aluguel do software da ordem de <b>R$ 250,00</b> (REAIS) por mês, a ser pago todo dia 01, mediante pagamento Pix, ficando estabelecido que após o vencimento incidirão juros moratórios à razão de TAL e multa de 2% sobre o aluguel mensal.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 9º </b>- Que no caso de inadimplemento de três meses de aluguel, o presente será rescindido de pleno direito, ficando suspenso o serviço objeto deste contrato, com a cobrança dos valores e acréscimos ora estabelecidos.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 10º </b>- Que o presente contrato é feito pelo prazo de <b>vinte e quatro (24) meses</b>, a iniciar-se em data 19/09/2022 e a findar-se em data 19/09/2024, cujo prazo poderá ser prorrogado de comum acordo, desde que haja comunicação prévia entre as partes com o mínimo de trinta (30) dias antes do vencimento.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 11º </b>- Que no caso de inadimplemento de 3 dias, o contratante poderá retirar o acesso dos usuários da contratada deixando assim inativo até que o pagamento de todas as parcelas inadimplentes sejam quitadas.\r\n<br><br>\r\n</p><p>\r\n\r\n\r\n<b>CLÁUSULA 12º </b>- Este contrato não obriga o contratante a efetuar implementações no sistema, toda e qualquer implementação desejada pelo contratado deverá ser acordada como um serviço externo ao que foi definido neste contrato, podendo gerar assim custos ao contratado.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 13º </b>- O contratado confirma ter acompanhado a apresentação do sistema e ter entendido todos os recursos e funcionalidades do mesmo, sendo assim está de acordo com o que foi proposto pelo software e confirma a utilização do mesmo nos moldes apresentados.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 14º </b>- Elegem o foro da Comarca de Belo Horizonte MG para dirimirem eventuais dúvidas oriundas do presente contrato.\r\n\r\n<br><br>\r\n</p><p>\r\nE por estarem assim, justas e contratadas assinam o presente em duas (2) vias de igual teor e forma na presença de duas testemunhas, para que surta seus efeitos de direito.\r\n<br><br><br>\r\n</p><p>\r\n</p><div align=\"center\">\r\nBelo Horizonte, segunda-feira, 19 de setembro de 2022\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nCONTRATANTE\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nCONTRATADA\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nTESTEMUNHA\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nTESTEMUNHA\r\n</div>', '2022-09-19'),
(6, 3, '<div align=\"center\"><br><h4>CONTRATO PARTICULAR DE LOCAÇÃO DE SOFTWARE</h4></div>\r\n<br>\r\n<p>\r\nPor este instrumento particular, a saber de um lado <b>Empresa 1</b>, localizado em Rua 6, inscrita no CNPJ 22.222.222/2222-22, por seu representante legal ao final assinado, ora denominada de contratante e de outro lado a empresa Sistema de Vendas, com sede na cidade de Belo Horizonte, Rua A, Número 50, Bairro Centro, por seu representante legal, ora denominada de contratada, tem entre si, justo e contratado o seguinte:\r\n</p>\r\n<br>\r\n<p>\r\n<b>CLÁUSULA 1º </b>- A contratante nesta oportunidade contrata os serviços da contratada, para a locação, instalação e manutenção de software composto de (Sistema Gerenciamento de Vendas), da qual a mesma é detentora dos direitos autorais.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 2º </b>- O período de uso será de vinte e quatro (24) horas por dia, exceto quando ocorrer interrupções por falta de energia, manutenção, casos fortuitos ou ação de terceiros sobre o software.\r\n<br><br>\r\n<b>CLÁUSULA 3º </b>- Que o uso do software é para a empresa contratante, não podendo essa ceder ou transferir para outrem sua utilização.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 4º </b>- Que a contratada se responsabiliza pela legalidade do produto alugado, ficando responsável pelo fornecimento de atualizações quando essas forem realizadas, sem qualquer custo adicional.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 5º </b>- Que a manutenção do software objeto do presente contrato só poderá ser realizado pela contratada, ficando essa responsável pelo fornecimento gratuito de suporte técnico no horário comercial, via telefone ou e-mail, de modo a resolver problemas operacionais.\r\n</p><p>\r\n<br>\r\n<b>CLÁUSULA 6º </b>- Que a contratada tendo ciência de informações tidas como confidenciais da contratante, obriga-se a manter sigilo sobre as mesmas.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 7º </b>- Que a contratante se obriga a não efetuar alterações no software, sem autorização por escrito da contratada.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 8º </b>- Que combinam o aluguel do software da ordem de <b>R$ 250,00</b> (REAIS) por mês, a ser pago todo dia 05, mediante pagamento Pix, ficando estabelecido que após o vencimento incidirão juros moratórios à razão de TAL e multa de 2% sobre o aluguel mensal.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 9º </b>- Que no caso de inadimplemento de três meses de aluguel, o presente será rescindido de pleno direito, ficando suspenso o serviço objeto deste contrato, com a cobrança dos valores e acréscimos ora estabelecidos.\r\n<br><br>\r\n</p><p>\r\n<b>CLÁUSULA 10º </b>- Que o presente contrato é feito pelo prazo de <b>vinte e quatro (24) meses</b>, a iniciar-se em data 19/09/2022 e a findar-se em data 19/09/2024, cujo prazo poderá ser prorrogado de comum acordo, desde que haja comunicação prévia entre as partes com o mínimo de trinta (30) dias antes do vencimento.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 11º </b>- Que no caso de inadimplemento de 3 dias, o contratante poderá retirar o acesso dos usuários da contratada deixando assim inativo até que o pagamento de todas as parcelas inadimplentes sejam quitadas.\r\n<br><br>\r\n</p><p>\r\n\r\n\r\n<b>CLÁUSULA 12º </b>- Este contrato não obriga o contratante a efetuar implementações no sistema, toda e qualquer implementação desejada pelo contratado deverá ser acordada como um serviço externo ao que foi definido neste contrato, podendo gerar assim custos ao contratado.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 13º </b>- O contratado confirma ter acompanhado a apresentação do sistema e ter entendido todos os recursos e funcionalidades do mesmo, sendo assim está de acordo com o que foi proposto pelo software e confirma a utilização do mesmo nos moldes apresentados.\r\n<br><br>\r\n</p><p>\r\n\r\n<b>CLÁUSULA 14º </b>- Elegem o foro da Comarca de Belo Horizonte MG para dirimirem eventuais dúvidas oriundas do presente contrato.\r\n\r\n<br><br>\r\n</p><p>\r\nE por estarem assim, justas e contratadas assinam o presente em duas (2) vias de igual teor e forma na presença de duas testemunhas, para que surta seus efeitos de direito.\r\n<br><br><br>\r\n</p><p>\r\n</p><div align=\"center\">\r\nBelo Horizonte, segunda-feira, 19 de setembro de 2022\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nCONTRATANTE\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nCONTRATADA\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nTESTEMUNHA\r\n</div>\r\n<br><br>\r\n\r\n<div align=\"center\">\r\n____________________________________________________________________________<br>\r\nTESTEMUNHA\r\n</div>', '2022-09-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `detalhes_grade`
--

CREATE TABLE `detalhes_grade` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `id_ref` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `cat_grade` int(11) DEFAULT NULL,
  `itens_grade` int(11) DEFAULT NULL,
  `cat_grade2` int(11) DEFAULT NULL,
  `itens_grade2` int(11) DEFAULT NULL,
  `tipo` varchar(20) NOT NULL,
  `empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `detalhes_grade`
--

INSERT INTO `detalhes_grade` (`id`, `produto`, `id_ref`, `quantidade`, `cat_grade`, `itens_grade`, `cat_grade2`, `itens_grade2`, `tipo`, `empresa`) VALUES
(6, 11, 42, 6, 16, 36, 0, 0, 'Compra', 4),
(7, 11, 43, 6, 16, 35, 0, 0, 'Compra', 4),
(8, 10, 44, 6, 14, 33, 15, 29, 'Compra', 4),
(10, 10, 46, 5, 0, 0, 0, 0, 'Compra', 4),
(11, 12, 47, 10, 0, 0, 0, 0, 'Compra', 4),
(12, 12, 48, 3, 17, 40, 18, 38, 'Compra', 4),
(15, 12, 53, 3, 17, 40, 18, 37, 'Compra', 4),
(16, 12, 54, 2, 0, 0, 0, 0, 'Compra', 4),
(17, 1, 55, 2, 0, 0, 0, 0, 'Compra', 4),
(18, 1, 1, 1, 8, 18, 9, 14, 'Troca Entrada', 4),
(19, 1, 1, 1, 8, 17, 9, 15, 'Troca Saída', 4),
(20, 5, 2, 1, 1, 5, 2, 4, 'Troca Entrada', 4),
(21, 1, 2, 1, 8, 16, 9, 14, 'Troca Saída', 4),
(22, 11, 3, 1, 16, 35, 0, 0, 'Troca Entrada', 4),
(23, 9, 3, 1, 12, 28, 13, 24, 'Troca Saída', 4),
(30, 13, 56, 5, 0, 0, 0, 0, 'Compra', 4),
(31, 13, 57, 4, 0, 0, 0, 0, 'Compra', 4),
(32, 11, 58, 300, 0, 0, 0, 0, 'Compra', 4),
(33, 13, 59, 100, 0, 0, 0, 0, 'Compra', 4),
(34, 12, 64, 1, 17, 40, 18, 38, 'Venda', 4),
(35, 12, 64, 1, 17, 40, 18, 38, 'Venda', 4),
(36, 12, 64, 1, 17, 40, 18, 38, 'Venda', 4),
(37, 12, 65, 1, 17, 40, 18, 38, 'Venda', 4),
(39, 12, 67, 1, 17, 40, 18, 38, 'Venda', 4),
(45, 18, 60, 50, 0, 0, 0, 0, 'Compra', 3),
(46, 17, 61, 5, 20, 43, 0, 0, 'Compra', 3),
(47, 17, 62, 4, 20, 45, 0, 0, 'Compra', 3),
(48, 16, 63, 30, 21, 47, 22, 51, 'Compra', 3),
(49, 16, 64, 50, 21, 46, 22, 50, 'Compra', 3),
(50, 15, 65, 30, 23, 54, 0, 0, 'Compra', 3),
(51, 15, 66, 30, 23, 53, 0, 0, 'Compra', 3),
(52, 15, 67, 30, 23, 52, 0, 0, 'Compra', 3),
(53, 14, 68, 20, 24, 57, 0, 0, 'Compra', 3),
(54, 14, 69, 20, 24, 56, 0, 0, 'Compra', 3),
(55, 14, 70, 20, 24, 55, 0, 0, 'Compra', 3),
(60, 14, 81, 1, 24, 57, 0, 0, 'Venda', 3),
(61, 17, 82, 1, 20, 45, 0, 0, 'Venda', 3),
(62, 17, 83, 1, 20, 43, 0, 0, 'Venda', 3),
(63, 17, 71, 5, 20, 44, 0, 0, 'Compra', 3),
(64, 17, 84, 1, 20, 43, 0, 0, 'Venda', 3),
(65, 17, 85, 10, 20, 45, 0, 0, 'Venda', 3),
(67, 17, 89, 1, 20, 43, 0, 0, 'Venda', 3),
(68, 14, 94, 1, 24, 57, 0, 0, 'Venda', 3),
(69, 14, 96, 1, 24, 56, 0, 0, 'Venda', 3),
(70, 15, 97, 1, 23, 53, 0, 0, 'Venda', 3),
(71, 14, 100, 1, 24, 56, 0, 0, 'Venda', 3),
(72, 14, 102, 1, 24, 57, 0, 0, 'Venda', 3),
(73, 16, 103, 1, 21, 47, 0, 0, 'Venda', 3),
(74, 14, 104, 1, 24, 56, 0, 0, 'Venda', 3),
(75, 14, 106, 1, 24, 56, 0, 0, 'Venda', 3),
(76, 16, 111, 1, 21, 47, 22, 51, 'Venda', 3),
(77, 16, 112, 1, 21, 47, 22, 51, 'Venda', 3),
(78, 14, 113, 1, 24, 57, 0, 0, 'Venda', 3),
(79, 16, 114, 1, 21, 46, 22, 51, 'Venda', 3),
(80, 14, 115, 1, 24, 56, 0, 0, 'Venda', 3),
(81, 16, 116, 1, 21, 46, 22, 50, 'Venda', 3),
(82, 14, 118, 4, 24, 57, 0, 0, 'Venda', 3),
(83, 14, 122, 1, 24, 57, 0, 0, 'Venda', 3),
(84, 16, 123, 1, 21, 47, 22, 51, 'Venda', 3),
(85, 14, 124, 1, 24, 56, 0, 0, 'Venda', 3),
(86, 16, 125, 3, 21, 47, 22, 50, 'Venda', 3),
(87, 16, 127, 1, 21, 47, 22, 51, 'Venda', 3),
(88, 14, 130, 3, 24, 56, 0, 0, 'Venda', 3),
(89, 16, 131, 1, 21, 47, 22, 51, 'Venda', 3),
(90, 14, 133, 3, 24, 57, 0, 0, 'Venda', 3),
(91, 14, 134, 2, 24, 56, 0, 0, 'Venda', 3),
(92, 16, 135, 2, 21, 47, 22, 51, 'Venda', 3),
(93, 14, 137, 1, 24, 56, 0, 0, 'Venda', 3),
(94, 15, 138, 1, 23, 54, 0, 0, 'Venda', 3),
(95, 16, 139, 3, 21, 47, 22, 51, 'Venda', 3),
(96, 16, 141, 2, 22, 50, 21, 47, 'Venda', 3),
(97, 14, 144, 1, 24, 57, 0, 0, 'Venda', 3),
(98, 16, 145, 1, 21, 47, 22, 51, 'Venda', 3),
(99, 14, 147, 1, 24, 56, 0, 0, 'Venda', 3),
(100, 14, 148, 1, 24, 55, 0, 0, 'Venda', 3),
(101, 14, 152, 1, 24, 57, 0, 0, 'Venda', 3),
(102, 14, 153, 1, 24, 56, 0, 0, 'Venda', 3),
(103, 15, 154, 1, 23, 52, 0, 0, 'Venda', 3),
(104, 16, 155, 1, 21, 46, 22, 51, 'Venda', 3),
(105, 14, 157, 1, 24, 57, 0, 0, 'Venda', 3),
(106, 17, 72, 15, 0, 0, 0, 0, 'Compra', 3),
(107, 19, 73, 3, 0, 0, 0, 0, 'Compra', 3),
(108, 14, 160, 1, 24, 56, 0, 0, 'Venda', 3),
(109, 17, 161, 1, 20, 43, 0, 0, 'Venda', 3),
(110, 17, 163, 1, 20, 43, 0, 0, 'Venda', 3),
(111, 14, 170, 3, 24, 56, 0, 0, 'Venda', 3),
(112, 14, 173, 1, 24, 57, 0, 0, 'Venda', 3),
(113, 14, 174, 1, 24, 56, 0, 0, 'Venda', 3),
(114, 14, 181, 1, 24, 55, 0, 0, 'Venda', 3),
(115, 14, 182, 1, 24, 55, 0, 0, 'Venda', 3),
(116, 18, 74, 150, 0, 0, 0, 0, 'Compra', 3),
(117, 17, 193, 1, 20, 41, 0, 0, 'Venda', 3),
(118, 17, 198, 1, 20, 41, 0, 0, 'Venda', 3),
(119, 14, 200, 3, 24, 57, 0, 0, 'Venda', 3),
(120, 17, 201, 1, 20, 41, 0, 0, 'Venda', 4),
(121, 17, 203, 1, 20, 41, 0, 0, 'Venda', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `ativo` varchar(5) NOT NULL,
  `data_cad` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `telefone`, `email`, `cpf`, `cnpj`, `ativo`, `data_cad`, `data_pgto`, `valor`, `endereco`) VALUES
(1, 'Empresa Teste', '(00)00000-0000', 'teste@hotmail.com', NULL, NULL, 'Sim', '2022-09-13', NULL, NULL, NULL),
(3, 'Empresa 1', '(22) 22222-2222', 'empresa1@hotmail.com', '222.222.222-22', '22.222.222/2222-22', 'Sim', '2022-09-13', '2022-09-05', '250.00', 'Rua 6'),
(4, 'Empresa 2', '(77) 77777-7777', 'empresa2@hotmail.com', '777.777.777-77', '77.777.777/7777-77', 'Sim', '2022-09-13', '2022-09-01', '250.00', 'Rua 6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `entradas`
--

INSERT INTO `entradas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`, `empresa`) VALUES
(3, 5, 4, 'Produto Encontrado no estoque da loja abaixo das prateleiras por', 6, '2022-09-27', 4),
(4, 9, 2, 'Compra', 6, '2022-09-27', 4),
(5, 9, 10, 'Compra', 6, '2022-09-27', 4),
(6, 9, 10, 'Compra', 6, '2022-09-27', 4),
(7, 9, 4, 'Compra', 6, '2022-09-27', 4),
(8, 9, 4, 'Esqueci de Lançar na Compra', 6, '2022-09-27', 4),
(9, 9, 4, 'Esqueci de Lançar na Compra', 6, '2022-09-27', 4),
(10, 1, 3, 'Compra', 6, '2022-09-27', 4),
(11, 10, 1, 'Produto Encontrado', 6, '2022-09-27', 4),
(12, 10, 2, 'Lançamento de Compra', 6, '2022-09-27', 4),
(13, 10, 3, 'Lançamento de Compra', 6, '2022-09-27', 4),
(14, 10, 2, 'Teste', 6, '2022-09-27', 4),
(15, 12, 5, 'Lançamento de Compra', 6, '2022-09-27', 4),
(16, 12, 5, 'Lançamento de Compra', 6, '2022-09-27', 4),
(17, 12, 5, 'Lançamento de Compra', 6, '2022-09-27', 4),
(18, 12, 2, 'Lançamento de Compra', 6, '2022-09-27', 4),
(19, 12, 1, 'Lançamento de Compra', 6, '2022-09-27', 4),
(20, 12, 1, 'Lançamento de Compra', 6, '2022-09-27', 4),
(21, 12, 1, 'Lançamento de Compra', 6, '2022-09-27', 4),
(22, 12, 2, '2', 6, '2022-09-27', 4),
(23, 1, 10, 'Teste', 6, '2022-10-03', 4),
(24, 18, 5, 'Encontrados', 5, '2022-10-04', 3),
(25, 17, 15, 'Compra', 5, '2022-10-04', 3),
(26, 14, 3, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(27, 18, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(28, 16, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(29, 18, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(30, 14, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(31, 15, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(32, 16, 3, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(33, 18, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(34, 18, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(35, 18, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3),
(36, 18, 1, 'Cancelamento da Venda', 5, '2022-10-05', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pgtos`
--

CREATE TABLE `forma_pgtos` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `acrescimo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `forma_pgtos`
--

INSERT INTO `forma_pgtos` (`id`, `empresa`, `nome`, `acrescimo`) VALUES
(1, 3, 'Dinheiro', 0),
(2, 3, 'Pix', 0),
(3, 3, 'Fiado', 0),
(4, 3, 'Cartão de Débito', 0),
(5, 3, 'Cartão de Crédito 1X', 0),
(6, 3, 'Cartão de Crédito 2X', 2),
(7, 3, 'Cartão de Crédito  4X', 4),
(8, 3, 'Cartão de Crédito  6X', 6),
(10, 4, 'Pix', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  `pessoa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `empresa`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `data`, `pessoa`) VALUES
(1, 3, 'Fornecedor', '000.000.000-01', '(01) 11111-1111', 'fornecedor@hotmail.com', 'Rua C', '2022-09-20', 'Física'),
(2, 3, 'Fornecedor 2', '65.555.555/5555-55', '(00) 00022-2222', 'fornecedor2@hotmail.com', 'Rua C', '2022-09-20', 'Jurídica'),
(3, 4, 'Fornecedor 2', '111.111.111-11', '(11) 11111-1111', 'fornecedor3@hotmail.com', 'Rua A', '2022-09-26', 'Física'),
(4, 4, 'Fornecedor 1', '111.111.111-12', '(11) 11111-1111', 'fornecedor1@hotmail.com', 'Rua C', '2022-09-26', 'Física');

-- --------------------------------------------------------

--
-- Estrutura da tabela `frequencias`
--

CREATE TABLE `frequencias` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `frequencia` varchar(30) NOT NULL,
  `dias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `frequencias`
--

INSERT INTO `frequencias` (`id`, `empresa`, `frequencia`, `dias`) VALUES
(1, 0, 'Nenhuma', 0),
(2, 0, 'Diária', 1),
(3, 0, 'Semanal', 7),
(4, 0, 'Mensal', 30),
(5, 3, 'Nenhuma', 0),
(6, 3, 'Mensal', 30),
(7, 4, 'Nenhuma', 0),
(8, 4, 'Mensal', 30),
(9, 9, 'Nenhuma', 0),
(10, 9, 'Mensal', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo_acessos`
--

CREATE TABLE `grupo_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `grupo_acessos`
--

INSERT INTO `grupo_acessos` (`id`, `nome`) VALUES
(2, 'Pessoas'),
(3, 'Cadastros'),
(4, 'Produtos'),
(5, 'Financeiro'),
(6, 'Relatórios');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_grade`
--

CREATE TABLE `itens_grade` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `cat_grade` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `estoque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_grade`
--

INSERT INTO `itens_grade` (`id`, `empresa`, `produto`, `cat_grade`, `nome`, `estoque`) VALUES
(1, 4, 5, 2, 'P', 0),
(2, 4, 5, 2, 'M', 4),
(3, 4, 5, 2, 'G', 34),
(4, 4, 5, 2, 'GG', -4),
(5, 4, 5, 1, 'Azul', 29),
(6, 4, 5, 1, 'Verde', 5),
(14, 4, 1, 9, 'M', 15),
(15, 4, 1, 9, 'P', 0),
(16, 4, 1, 8, 'Azul', 7),
(17, 4, 1, 8, 'Verde', 0),
(18, 4, 1, 8, 'Estampada', 8),
(24, 4, 9, 13, '38', 13),
(25, 4, 9, 13, '39', 7),
(26, 4, 9, 13, '40', 10),
(27, 4, 9, 12, 'Preto', 10),
(28, 4, 9, 12, 'Marron', 20),
(29, 4, 10, 15, 'P', 8),
(30, 4, 10, 15, 'M', 2),
(31, 4, 10, 15, 'G', 3),
(32, 4, 10, 14, 'Azul', 4),
(33, 4, 10, 14, 'Branco', 9),
(34, 4, 11, 16, 'Xadrez', 0),
(35, 4, 11, 16, 'Azul', 7),
(36, 4, 11, 16, 'Branca', 0),
(37, 4, 12, 18, 'P', 9),
(38, 4, 12, 18, 'G', 0),
(39, 4, 12, 17, 'Verde', 7),
(40, 4, 12, 17, 'Azul', 2),
(41, 3, 17, 20, '36', 11),
(42, 3, 17, 20, '37', 0),
(43, 3, 17, 20, '38', 0),
(44, 3, 17, 20, '39', 5),
(45, 3, 17, 20, '40', -7),
(46, 3, 16, 21, 'Verde', 47),
(47, 3, 16, 21, 'Azul', 17),
(48, 3, 16, 21, 'Vermelha', 0),
(49, 3, 16, 21, 'Branca', 0),
(50, 3, 16, 22, 'M', 44),
(51, 3, 16, 22, 'G', 21),
(52, 3, 15, 23, 'Vermelho', 29),
(53, 3, 15, 23, 'Branco', 29),
(54, 3, 15, 23, 'Azul', 30),
(55, 3, 14, 24, 'P', 18),
(56, 3, 14, 24, 'M', 0),
(57, 3, 14, 24, 'G', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_venda`
--

CREATE TABLE `itens_venda` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `venda` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_venda`
--

INSERT INTO `itens_venda` (`id`, `empresa`, `produto`, `valor_unitario`, `quantidade`, `usuario`, `venda`, `data`) VALUES
(64, 4, 12, '54.40', 1, 6, 0, '2022-10-03'),
(65, 4, 12, '54.40', 1, 6, 0, '2022-10-03'),
(67, 4, 12, '54.40', 1, 6, 0, '2022-10-03'),
(73, 4, 13, '2.00', 2, 6, 0, '2022-10-03'),
(93, 3, 18, '30.00', 1, 21, 58, '2022-10-04'),
(94, 3, 14, '22.50', 1, 21, 58, '2022-10-04'),
(95, 3, 18, '30.00', 1, 21, 58, '2022-10-04'),
(96, 3, 14, '22.50', 1, 21, 58, '2022-10-04'),
(97, 3, 15, '150.00', 1, 21, 58, '2022-10-04'),
(98, 3, 16, '45.00', 1, 21, 58, '2022-10-04'),
(99, 3, 18, '30.00', 1, 21, 59, '2022-10-04'),
(100, 3, 14, '22.50', 1, 21, 59, '2022-10-04'),
(101, 3, 18, '30.00', 1, 21, 60, '2022-10-04'),
(102, 3, 14, '22.50', 1, 21, 60, '2022-10-04'),
(103, 3, 16, '45.00', 1, 21, 60, '2022-10-04'),
(104, 3, 14, '22.50', 1, 21, 61, '2022-10-04'),
(105, 3, 18, '30.00', 1, 21, 62, '2022-10-04'),
(106, 3, 14, '22.50', 1, 21, 63, '2022-10-04'),
(107, 3, 18, '30.00', 1, 21, 63, '2022-10-04'),
(108, 3, 16, '45.00', 1, 21, 63, '2022-10-04'),
(109, 3, 16, '45.00', 1, 21, 63, '2022-10-04'),
(110, 3, 16, '45.00', 1, 21, 63, '2022-10-04'),
(111, 3, 16, '45.00', 1, 21, 63, '2022-10-04'),
(112, 3, 16, '45.00', 1, 21, 63, '2022-10-04'),
(113, 3, 14, '22.50', 1, 21, 63, '2022-10-04'),
(114, 3, 16, '45.00', 1, 21, 63, '2022-10-04'),
(115, 3, 14, '22.50', 1, 21, 63, '2022-10-04'),
(116, 3, 16, '45.00', 1, 21, 63, '2022-10-04'),
(117, 3, 18, '30.00', 3, 21, 63, '2022-10-04'),
(118, 3, 14, '22.50', 4, 21, 63, '2022-10-04'),
(119, 3, 18, '30.00', 1, 21, 64, '2022-10-04'),
(120, 3, 18, '30.00', 1, 21, 65, '2022-10-04'),
(121, 3, 18, '30.00', 1, 21, 68, '2022-10-04'),
(122, 3, 14, '22.50', 1, 21, 68, '2022-10-04'),
(123, 3, 16, '45.00', 1, 21, 68, '2022-10-04'),
(124, 3, 14, '22.50', 1, 21, 69, '2022-10-04'),
(125, 3, 16, '45.00', 3, 21, 69, '2022-10-04'),
(126, 3, 18, '30.00', 1, 21, 70, '2022-10-04'),
(127, 3, 16, '45.00', 1, 21, 71, '2022-10-04'),
(128, 3, 18, '30.00', 2, 21, 71, '2022-10-04'),
(129, 3, 18, '30.00', 2, 21, 72, '2022-10-04'),
(130, 3, 14, '22.50', 3, 21, 72, '2022-10-04'),
(131, 3, 16, '45.00', 1, 21, 72, '2022-10-04'),
(132, 3, 18, '30.00', 2, 21, 73, '2022-10-04'),
(133, 3, 14, '22.50', 3, 21, 73, '2022-10-04'),
(134, 3, 14, '22.50', 2, 21, 74, '2022-10-04'),
(135, 3, 16, '45.00', 2, 21, 74, '2022-10-04'),
(136, 3, 18, '30.00', 1, 21, 75, '2022-10-04'),
(137, 3, 14, '22.50', 1, 21, 75, '2022-10-04'),
(138, 3, 15, '150.00', 1, 21, 75, '2022-10-04'),
(139, 3, 16, '45.00', 3, 21, 75, '2022-10-04'),
(140, 3, 18, '30.00', 1, 21, 76, '2022-10-04'),
(141, 3, 16, '45.00', 2, 21, 76, '2022-10-04'),
(142, 3, 18, '30.00', 2, 21, 77, '2022-10-04'),
(143, 3, 18, '30.00', 1, 21, 77, '2022-10-04'),
(144, 3, 14, '22.50', 1, 21, 77, '2022-10-04'),
(145, 3, 16, '45.00', 1, 21, 77, '2022-10-04'),
(146, 3, 18, '30.00', 1, 5, 78, '2022-10-04'),
(147, 3, 14, '22.50', 1, 5, 79, '2022-10-04'),
(148, 3, 14, '22.50', 1, 5, 79, '2022-10-04'),
(149, 3, 18, '30.00', 1, 5, 79, '2022-10-04'),
(150, 3, 18, '30.00', 3, 5, 80, '2022-10-04'),
(151, 3, 18, '30.00', 2, 5, 80, '2022-10-04'),
(152, 3, 14, '22.50', 1, 5, 80, '2022-10-04'),
(153, 3, 14, '22.50', 1, 5, 80, '2022-10-04'),
(154, 3, 15, '150.00', 1, 5, 80, '2022-10-04'),
(155, 3, 16, '45.00', 1, 5, 80, '2022-10-04'),
(156, 3, 18, '30.00', 1, 5, 81, '2022-10-04'),
(157, 3, 14, '22.50', 1, 5, 81, '2022-10-04'),
(158, 3, 18, '30.00', 1, 5, 82, '2022-10-04'),
(159, 3, 18, '30.00', 1, 5, 82, '2022-10-04'),
(160, 3, 14, '22.50', 1, 5, 82, '2022-10-04'),
(161, 3, 17, '26.67', 1, 5, 83, '2022-10-04'),
(162, 3, 18, '30.00', 1, 5, 83, '2022-10-04'),
(163, 3, 17, '26.67', 1, 5, 83, '2022-10-04'),
(164, 3, 18, '30.00', 1, 5, 83, '2022-10-04'),
(166, 3, 18, '30.00', 1, 5, 84, '2022-10-04'),
(167, 3, 18, '30.00', 1, 5, 85, '2022-10-04'),
(168, 3, 18, '30.00', 1, 5, 85, '2022-10-04'),
(169, 3, 18, '30.00', 3, 5, 86, '2022-10-04'),
(170, 3, 14, '22.50', 3, 5, 86, '2022-10-04'),
(171, 3, 18, '30.00', 1, 5, 87, '2022-10-04'),
(172, 3, 18, '30.00', 1, 5, 88, '2022-10-05'),
(173, 3, 14, '22.50', 1, 5, 88, '2022-10-05'),
(174, 3, 14, '22.50', 1, 5, 89, '2022-10-05'),
(175, 3, 18, '30.00', 1, 5, 89, '2022-10-05'),
(176, 3, 18, '30.00', 1, 5, 89, '2022-10-05'),
(177, 3, 18, '30.00', 1, 5, 90, '2022-10-05'),
(178, 3, 18, '30.00', 1, 5, 91, '2022-10-05'),
(179, 3, 18, '30.00', 1, 5, 92, '2022-10-05'),
(180, 3, 18, '30.00', 1, 5, 93, '2022-10-05'),
(181, 3, 14, '22.50', 1, 5, 94, '2022-10-05'),
(182, 3, 14, '22.50', 1, 5, 95, '2022-10-05'),
(183, 3, 18, '35.00', 1, 5, 96, '2022-10-05'),
(184, 3, 18, '35.00', 1, 5, 96, '2022-10-05'),
(185, 3, 18, '35.00', 1, 5, 97, '2022-10-05'),
(186, 3, 18, '35.00', 1, 5, 98, '2022-10-05'),
(187, 3, 18, '35.00', 1, 5, 98, '2022-10-05'),
(188, 3, 18, '35.00', 1, 5, 98, '2022-10-05'),
(189, 3, 18, '35.00', 1, 5, 98, '2022-10-05'),
(190, 3, 18, '35.00', 1, 5, 99, '2022-10-05'),
(191, 3, 18, '35.00', 1, 5, 100, '2022-10-05'),
(192, 3, 18, '35.00', 1, 5, 101, '2022-10-05'),
(193, 3, 17, '26.67', 1, 5, 101, '2022-10-05'),
(194, 3, 18, '35.00', 1, 5, 102, '2022-10-05'),
(195, 3, 18, '35.00', 1, 5, 103, '2022-10-05'),
(196, 3, 18, '35.00', 1, 5, 104, '2022-10-05'),
(197, 3, 18, '35.00', 1, 5, 105, '2022-10-05'),
(198, 3, 17, '26.67', 1, 21, 106, '2022-10-05'),
(199, 3, 18, '35.00', 4, 21, 106, '2022-10-05'),
(200, 3, 14, '22.50', 3, 21, 106, '2022-10-05'),
(201, 4, 17, '26.67', 1, 19, 107, '2022-10-05'),
(202, 4, 18, '35.00', 3, 19, 107, '2022-10-05'),
(203, 4, 17, '26.67', 1, 19, 108, '2022-10-05'),
(204, 4, 18, '35.00', 6, 19, 108, '2022-10-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagar`
--

CREATE TABLE `pagar` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `pessoa` int(11) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_lanc` date NOT NULL,
  `data_venc` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `frequencia` int(11) NOT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `arquivo` varchar(100) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `id_ref` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pagar`
--

INSERT INTO `pagar` (`id`, `empresa`, `tipo`, `descricao`, `pessoa`, `valor`, `data_lanc`, `data_venc`, `data_pgto`, `usuario_lanc`, `usuario_pgto`, `frequencia`, `saida`, `arquivo`, `pago`, `id_ref`) VALUES
(1, 0, 'Empresa', 'Conta de Luz', 0, '750.00', '2022-09-19', '2022-09-19', '2022-09-19', 3, 3, 0, NULL, '19-09-2022-10-47-25-09-11-2021-09-21-26-conta3.jpg', 'Sim', NULL),
(2, 0, 'Empresa', 'Aluguél Escritório', 0, '1250.00', '2022-09-19', '2022-09-19', '2022-07-19', 0, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL),
(4, 0, 'Empresa', 'Aluguél Escritório', 0, '1250.00', '2022-09-19', '2022-10-19', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL),
(7, 0, 'Empresa', 'Conta Telefone', 0, '260.00', '2022-09-19', '2022-09-19', '2022-08-19', 3, 3, 0, NULL, 'sem-foto.png', 'Sim', NULL),
(8, 3, 'Compra', 'Cliente 1', 1, '50.00', '2022-09-20', '2022-09-20', NULL, 5, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL),
(10, 3, 'Compra', 'Fornecedor 2', 2, '65.00', '2022-09-20', '2022-09-20', '2022-09-20', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', NULL),
(11, 3, 'Pagamento', 'Vendedor', 14, '90.00', '2022-09-20', '2022-09-20', '2022-09-20', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', NULL),
(12, 3, 'Conta', 'Pgto Mensal', 0, '50.00', '2022-09-20', '2022-09-20', '2022-08-20', 5, 5, 30, NULL, 'sem-foto.png', 'Sim', NULL),
(13, 3, 'Conta', 'Pgto Mensal', 0, '50.00', '2022-09-20', '2022-10-20', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL),
(14, 3, 'Conta', 'Conta de Luz', 0, '600.00', '2022-09-20', '2022-09-20', NULL, 5, NULL, 0, NULL, '20-09-2022-15-28-31-09-11-2021-09-21-26-conta3.jpg', 'Não', NULL),
(15, 3, 'Conta', 'Conta de Telefone', 0, '600.00', '2022-09-20', '2022-09-13', NULL, 5, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL),
(16, 3, 'Conta', 'Aluguél', 0, '1100.00', '2022-09-20', '2022-09-19', '2022-09-19', 5, 5, 30, NULL, 'sem-foto.png', 'Sim', NULL),
(17, 3, 'Conta', 'Aluguél', 0, '1100.00', '2022-09-20', '2022-10-19', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL),
(18, 4, 'Conta', 'Conta Telefone', 0, '800.00', '2022-09-20', '2022-09-20', '2022-09-20', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', NULL),
(20, 4, 'Compra', 'Compra Camisa Polo', 4, '80.00', '0000-00-00', '2022-09-26', '2022-09-26', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 5),
(21, 4, 'Compra', 'Compra Bermuda', 4, '100.00', '2022-09-26', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 1),
(22, 4, 'Compra', 'Compra Camisa Polo', 4, '250.00', '2022-09-26', '2022-09-26', '2022-09-26', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 5),
(23, 4, 'Compra', 'Compra Camisa Polo', 4, '100.00', '2022-09-26', '2022-09-26', '2022-09-26', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 5),
(24, 4, 'Compra', 'Compra Camisa Polo', 4, '100.00', '2022-09-26', '2022-09-26', '2022-09-26', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 5),
(25, 4, 'Compra', 'Compra Camisa Polo', 3, '50.00', '2022-09-26', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 5),
(26, 4, 'Compra', 'Compra Bermuda', 4, '100.00', '2022-09-26', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 1),
(27, 4, 'Compra', 'Compra Bermuda', 3, '140.00', '2022-09-26', '2022-09-29', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 1),
(28, 4, 'Compra', 'Compra Camisa Polo', 4, '100.00', '2022-09-26', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 5),
(29, 4, 'Compra', 'Compra Bermuda', 4, '150.00', '2022-09-26', '2022-09-22', '2022-09-26', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 1),
(30, 4, 'Compra', 'Compra Camisa Polo', 4, '300.00', '2022-09-26', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 5),
(31, 4, 'Compra', 'Compra Produto Teste', 4, '150.00', '2022-09-26', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 8),
(32, 4, 'Compra', 'Compra Produto Teste', 3, '150.00', '2022-09-26', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 8),
(33, 4, 'Compra', 'Compra Camisa Polo', 3, '150.00', '2022-09-27', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 5),
(34, 4, 'Compra', 'Compra Sapato Social', 3, '800.00', '2022-09-27', '2022-09-29', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 9),
(35, 4, 'Compra', 'Compra Sapato Social', 4, '450.00', '2022-09-27', '2022-09-27', '2022-09-27', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 9),
(36, 4, 'Compra', 'Compra Bermuda', 4, '200.00', '2022-09-27', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 1),
(43, 4, 'Compra', 'Compra Saia', 4, '160.00', '2022-09-27', '2022-09-27', '2022-09-27', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 11),
(44, 4, 'Compra', 'Compra Vestido Longo', 4, '600.00', '2022-09-27', '2022-09-27', '2022-09-27', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 10),
(46, 4, 'Compra', 'Compra Vestido Longo', 3, '300.00', '2022-09-27', '2022-09-27', '2022-09-27', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 10),
(47, 4, 'Compra', 'Compra Produto Teste', 3, '100.00', '2022-09-27', '2022-09-30', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 12),
(48, 4, 'Compra', 'Compra Produto Teste', 4, '90.00', '2022-09-27', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 12),
(49, 4, 'Compra', 'Compra Produto Teste', 0, '65.00', '2022-09-27', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 12),
(51, 4, 'Compra', 'Compra Produto Teste', 3, '50.00', '2022-09-27', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 12),
(54, 4, 'Compra', 'Compra Produto Teste', 4, '68.00', '2022-09-27', '2022-09-28', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 12),
(55, 4, 'Compra', 'Compra Bermuda', 4, '25.00', '2022-10-03', '2022-10-03', '2022-10-03', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', 1),
(56, 4, 'Compra', 'Compra Teste', 0, '150.00', '2022-10-03', '2022-10-04', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 13),
(57, 4, 'Compra', 'Compra Teste', 0, '60.00', '2022-10-03', '2022-10-04', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 13),
(58, 4, 'Compra', 'Compra Saia', 0, '1000.00', '2022-10-03', '2022-10-05', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 11),
(59, 4, 'Compra', 'Compra Teste', 0, '200.00', '2022-10-03', '2022-10-06', '0000-00-00', 6, 0, 0, NULL, 'sem-foto.png', 'Não', 13),
(60, 3, 'Compra', 'Compra Boné', 1, '1000.00', '2022-10-03', '2022-10-05', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 18),
(61, 3, 'Compra', 'Compra Sapato Social', 2, '150.00', '2022-10-03', '2022-10-05', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 17),
(62, 3, 'Compra', 'Compra Sapato Social', 2, '150.00', '2022-10-03', '2022-10-05', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 17),
(63, 3, 'Compra', 'Compra Bermuda', 1, '1000.00', '2022-10-03', '2022-10-05', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 16),
(64, 3, 'Compra', 'Compra Bermuda', 1, '1500.00', '2022-10-03', '2022-10-05', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 16),
(65, 3, 'Compra', 'Compra Vestido Longo', 1, '3000.00', '2022-10-03', '2022-10-04', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 15),
(66, 3, 'Compra', 'Compra Vestido Longo', 1, '3000.00', '2022-10-03', '2022-10-04', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 15),
(67, 3, 'Compra', 'Compra Vestido Longo', 1, '3000.00', '2022-10-03', '2022-10-04', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 15),
(68, 3, 'Compra', 'Compra Saia', 2, '250.00', '2022-10-03', '2022-10-04', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 14),
(69, 3, 'Compra', 'Compra Saia', 2, '250.00', '2022-10-03', '2022-10-04', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 14),
(70, 3, 'Compra', 'Compra Saia', 2, '250.00', '2022-10-03', '2022-10-04', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 14),
(71, 3, 'Compra', 'Compra Sapato Social', 1, '250.00', '2022-10-04', '2022-10-05', '0000-00-00', 21, 0, 0, NULL, 'sem-foto.png', 'Não', 17),
(72, 3, 'Compra', 'Compra Sapato Social', 0, '200.00', '2022-10-04', '2022-10-05', '0000-00-00', 5, 0, 0, NULL, 'sem-foto.png', 'Não', 17),
(73, 3, 'Compra', 'Compra aaaa', 0, '100.00', '2022-10-04', '2022-10-05', '0000-00-00', 5, 0, 0, NULL, 'sem-foto.png', 'Não', 19),
(74, 3, 'Compra', 'Compra Boné', 2, '2000.00', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', 18),
(76, 3, 'Comissão', 'Comissão Paga', 22, '3.50', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', NULL),
(77, 3, 'Comissão', 'Comissão Paga', 22, '9.67', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', NULL),
(79, 3, 'Comissão', 'Comissão Paga', 14, '3.50', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', NULL),
(80, 3, 'Comissão', 'Comissão Paga', 14, '3.50', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `valor_venda` decimal(8,2) DEFAULT NULL,
  `valor_compra` decimal(8,2) DEFAULT NULL,
  `lucro` decimal(8,2) DEFAULT NULL,
  `fornecedor` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `empresa` int(11) NOT NULL,
  `nivel_estoque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `nome`, `descricao`, `estoque`, `valor_venda`, `valor_compra`, `lucro`, `fornecedor`, `categoria`, `foto`, `data`, `ativo`, `empresa`, `nivel_estoque`) VALUES
(1, '12345678', 'Bermuda', NULL, 15, '20.06', '12.50', '60.50', 4, 5, '26-09-2022-12-10-56-bermudas.webp', '2022-09-26', 'Sim', 4, 15),
(5, '123456', 'Camisa Polo', NULL, 19, '45.00', '30.00', '50.00', 3, 4, '26-09-2022-12-10-45-polo.jpg', '2022-09-26', 'Sim', 4, 10),
(9, '1234567890', 'Sapato Social', NULL, 30, '135.00', '90.00', '50.00', 4, 2, '27-09-2022-11-14-01-sapato-social.webp', '2022-09-27', 'Sim', 4, 5),
(10, '01235555858', 'Vestido Longo', NULL, 8, '120.00', '60.00', '100.00', 3, 1, '27-09-2022-12-56-46-vestido.webp', '2022-09-27', 'Sim', 4, 5),
(11, '01245896555', 'Saia', NULL, 274, '5.00', '3.33', '50.00', 0, 7, '27-09-2022-13-59-13-saia.jpg', '2022-09-27', 'Sim', 4, 10),
(12, '01235855154', 'Produto Teste', NULL, 10, '54.40', '34.00', '60.00', 4, 4, 'sem-foto.jpg', '2022-09-27', 'Sim', 4, 20),
(13, '01234', 'Teste', NULL, 97, '2.00', '2.00', '0.00', 0, 5, 'sem-foto.jpg', '2022-10-03', 'Sim', 4, 5),
(14, '7896008930479', 'Saia', NULL, 26, '22.50', '12.50', '80.00', 2, 9, '03-10-2022-23-32-17-saia.png', '2022-10-03', 'Sim', 3, 10),
(15, '7896435328511', 'Vestido Longo', NULL, 88, '150.00', '100.00', '50.00', 1, 11, '03-10-2022-23-26-35-vestido.png', '2022-10-03', 'Sim', 3, 12),
(16, '02285429082', 'Bermuda', NULL, 60, '45.00', '30.00', '50.00', 1, 10, '03-10-2022-23-30-30-bermuda.jpg', '2022-10-03', 'Sim', 3, 5),
(17, '7896548140284', 'Sapato Social', NULL, 9, '26.67', '13.33', '100.00', 0, 12, '03-10-2022-23-28-13-sapato.png', '2022-10-03', 'Sim', 3, 12),
(18, '7892017809010', 'Boné', NULL, 127, '35.00', '13.33', '150.00', 2, 13, '03-10-2022-23-26-29-bone.png', '2022-10-03', 'Sim', 3, 6),
(19, '0125', 'aaaa', NULL, 3, '33.33', '33.33', '0.00', 0, 10, 'sem-foto.jpg', '2022-10-04', 'Sim', 3, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `receber`
--

CREATE TABLE `receber` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `pessoa` int(11) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_lanc` date NOT NULL,
  `data_venc` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `frequencia` int(11) NOT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `arquivo` varchar(100) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `valor_recebido` decimal(8,2) DEFAULT NULL,
  `troco` decimal(8,2) DEFAULT NULL,
  `desconto` decimal(8,2) DEFAULT NULL,
  `acrescimo` int(11) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `receber`
--

INSERT INTO `receber` (`id`, `empresa`, `tipo`, `descricao`, `pessoa`, `valor`, `data_lanc`, `data_venc`, `data_pgto`, `usuario_lanc`, `usuario_pgto`, `frequencia`, `saida`, `arquivo`, `pago`, `id_ref`, `hora`, `valor_recebido`, `troco`, `desconto`, `acrescimo`, `vendedor`) VALUES
(3, 0, 'Empresa', 'Conta Teste', 0, '89.00', '2022-09-14', '2022-09-16', '2022-09-14', 0, 3, 30, NULL, '14-09-2022-12-39-07-02-03-2022-15-52-46-contratoLocacao.pdf', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 'Empresa', 'Conta Teste', 3, '75.00', '2022-09-14', '2022-09-16', '2022-08-19', 0, 3, 0, NULL, '14-09-2022-12-39-32-02-03-2022-15-52-46-contratoLocacao.pdf', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 'Empresa', 'Empresa 2', 4, '60.00', '2022-09-14', '2022-09-16', '2022-09-14', 3, 3, 0, NULL, '14-09-2022-13-01-22-02-03-2022-15-52-46-contratoLocacao.pdf', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, 'Empresa', 'Conta Vencida', 4, '600.00', '2022-09-14', '2022-09-12', '2022-09-19', 3, 3, 0, NULL, '14-09-2022-13-06-33-08-02-2022-14-33-16-02-FUNDO-ESCURO.rar', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 0, 'Empresa', 'Conta Teste', 0, '89.00', '2022-09-14', '2022-10-16', NULL, 0, NULL, 30, NULL, '14-09-2022-12-39-07-02-03-2022-15-52-46-contratoLocacao.pdf', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 0, 'Empresa', 'Empresa 33', 5, '270.00', '2022-09-14', '2022-10-01', '2022-07-19', 3, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 0, 'Empresa', 'Empresa 33', 5, '270.00', '2022-09-19', '2022-11-01', '2022-09-19', 0, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 0, 'Empresa', 'Empresa 33', 5, '270.00', '2022-09-19', '2022-12-01', '2022-09-19', 0, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 0, 'Empresa', 'Empresa 33', 5, '270.00', '2022-09-19', '2023-01-01', '2022-09-19', 0, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 0, 'Empresa', 'Mensalidade', 4, '240.00', '2022-09-19', '2022-09-19', '2022-09-19', 3, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 0, 'Empresa', 'Empresa 33', 5, '270.00', '2022-09-19', '2023-02-01', '2022-09-19', 0, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 0, 'Empresa', 'Empresa 33', 5, '270.00', '2022-09-19', '2023-03-01', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 0, 'Empresa', 'Mensalidade', 4, '900.00', '2022-09-19', '2022-09-16', '2022-09-19', 3, 3, 0, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 0, 'Empresa', 'Empresa 1', 3, '450.00', '2022-09-19', '2022-09-17', NULL, 3, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 0, 'Empresa', 'Empresa 1', 3, '300.00', '2022-09-19', '2022-09-19', '2022-09-19', 3, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 0, 'Empresa', 'Empresa 1', 3, '300.00', '2022-09-19', '2022-10-19', '2022-09-20', 0, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 0, 'Empresa', 'Mensalidade', 4, '240.00', '2022-09-19', '2022-10-19', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 0, 'Empresa', 'Empresa Teste', 1, '280.00', '2022-09-19', '2022-09-06', '2022-09-19', 3, 3, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 0, 'Empresa', 'Empresa Teste', 1, '280.00', '2022-09-19', '2022-10-06', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 3, 'Conta', 'Conta X', 0, '600.00', '2022-09-20', '2022-09-20', '2022-08-20', 5, 5, 0, NULL, '20-09-2022-14-44-38-09-11-2021-09-21-26-conta3.jpg', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 3, 'Conta', 'Cliente 1', 1, '64.00', '2022-09-20', '2022-09-20', '2022-09-20', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 4, 'Conta', 'Conta A', 0, '60.00', '2022-09-20', '2022-09-20', NULL, 6, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 3, 'Conta', 'Cliente 1', 1, '640.00', '2022-09-20', '2022-09-18', '2022-10-03', 5, 5, 0, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 0, 'Conta', 'Pgto Mensal', 3, '80.00', '2022-09-20', '2022-10-20', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 3, 'Conta', 'Cliente 2', 3, '1280.00', '2022-09-20', '2022-09-20', '2022-09-20', 5, 5, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 3, 'Conta', 'Cliente 2', 3, '80.00', '2022-09-20', '2022-10-20', '2022-09-20', 0, 5, 30, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 3, 'Conta', 'Cliente 2', 3, '80.00', '2022-09-20', '2022-11-20', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 4, 'Conta', 'Cliente Teste', 4, '600.00', '2022-09-20', '2022-09-20', '2022-09-20', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 4, 'Conta', 'Conta X', 0, '900.00', '2022-09-20', '2022-09-20', '2022-09-20', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 0, 'Empresa', 'Empresa 1', 3, '300.00', '2022-09-20', '2022-11-19', NULL, 0, NULL, 30, NULL, 'sem-foto.png', 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 4, 'Conta', 'Conta Tesete', 4, '1800.00', '2022-09-27', '2022-09-27', '2022-09-27', 6, 6, 0, NULL, 'sem-foto.png', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 4, 'Venda', 'Venda 10', 4, '160.00', '2022-09-28', '2022-09-28', '2022-09-28', 6, 6, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 2, '11:46:41', NULL, NULL, NULL, NULL, NULL),
(52, 4, 'Venda', 'Venda 20', 4, '320.00', '2022-09-28', '2022-09-29', NULL, 6, NULL, 0, 'Cartão de Crédito', 'sem-foto.png', 'Não', 2, '11:48:52', NULL, NULL, NULL, NULL, NULL),
(58, 3, 'Venda', 'Venda', 19, '270.00', '2022-10-04', '0000-00-00', '2022-10-04', 21, 21, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 13, '15:05:11', '300.00', '30.00', '10.00', NULL, NULL),
(59, 3, 'Venda', 'Venda', 0, '52.50', '2022-10-04', '0000-00-00', '2022-10-04', 21, 21, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 13, '15:08:33', '52.50', '0.00', '0.00', NULL, NULL),
(60, 3, 'Venda', 'Venda', 3, '101.40', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Cartão de Crédito  4X', 'sem-foto.png', 'Sim', 13, '15:17:02', '101.40', '0.00', '0.00', 4, NULL),
(61, 3, 'Venda', 'Venda', 0, '23.85', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Cartão de Crédito  6X', 'sem-foto.png', 'Sim', 13, '15:20:30', '23.85', '0.00', '0.00', 6, NULL),
(62, 3, 'Venda', 'Venda', 0, '31.80', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Cartão de Crédito  6X', 'sem-foto.png', 'Sim', 13, '15:23:42', '31.80', '0.00', '0.00', 6, NULL),
(63, 3, 'Venda', 'Venda', 3, '592.50', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 13, '15:33:33', '592.50', '0.00', '0.00', 0, NULL),
(64, 3, 'Venda', 'Venda', 0, '30.00', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Cartão de Débito', 'sem-foto.png', 'Sim', 13, '15:33:47', '30.00', '0.00', '0.00', 0, NULL),
(65, 3, 'Venda', 'Venda', 0, '30.00', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Pix', 'sem-foto.png', 'Sim', 13, '15:34:11', '30.00', '0.00', '0.00', 0, NULL),
(66, 3, 'Venda', 'Venda', 0, '30.00', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Pix', 'sem-foto.png', 'Sim', 13, '15:50:13', '30.00', '0.00', '0.00', 0, NULL),
(67, 3, 'Venda', 'Venda', 0, '30.00', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Pix', 'sem-foto.png', 'Sim', 13, '15:50:26', '30.00', '0.00', '0.00', 0, NULL),
(68, 3, 'Venda', 'Venda', 3, '87.75', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 13, '16:00:41', '100.00', '12.25', '10.00', 0, NULL),
(69, 3, 'Venda', 'Venda', 3, '158.60', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Cartão de Crédito  6X', 'sem-foto.png', 'Sim', 13, '16:01:31', '158.60', '0.00', '5.00', 6, NULL),
(70, 3, 'Venda', 'Venda', 0, '31.20', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Cartão de Crédito  4X', 'sem-foto.png', 'Sim', 13, '17:28:56', '31.20', '0.00', '0.00', 4, NULL),
(71, 3, 'Venda', 'Venda', 3, '105.00', '2022-10-04', '2022-10-05', '2022-10-05', 21, 5, 0, 'Fiado', 'sem-foto.png', 'Sim', 13, '17:35:50', '105.00', '0.00', '0.00', 0, 14),
(72, 3, 'Venda', 'Venda', 1, '162.50', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 13, '17:42:23', '200.00', '37.50', '0.00', 0, 14),
(73, 3, 'Venda', 'Venda', 3, '117.50', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Cartão de Débito', 'sem-foto.png', 'Sim', 13, '17:52:05', '120.00', '2.50', '10.00', 0, 14),
(74, 3, 'Venda', 'Venda', 3, '121.50', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Pix', 'sem-foto.png', 'Sim', 13, '17:53:19', '121.50', '0.00', '10.00', 0, 14),
(76, 3, 'Venda', 'Venda', 3, '112.32', '2022-10-04', '2022-10-04', '2022-10-04', 21, 21, 0, 'Cartão de Crédito  4X', 'sem-foto.png', 'Sim', 13, '18:07:03', '112.32', '0.00', '10.00', 4, 14),
(78, 3, 'Venda', 'Venda', 0, '30.00', '2022-10-04', '2022-10-04', '2022-10-04', 5, 5, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 14, '18:36:55', '30.00', '0.00', '0.00', 0, 0),
(80, 3, 'Venda', 'Venda', 1, '370.50', '2022-10-04', '2022-10-04', '2022-10-04', 5, 5, 0, 'Pix', 'sem-foto.png', 'Sim', 15, '18:57:15', '400.00', '29.50', '5.00', 0, 14),
(81, 3, 'Venda', 'Venda', 0, '55.65', '2022-10-04', '2022-10-04', '2022-10-04', 5, 5, 0, 'Cartão de Crédito  6X', 'sem-foto.png', 'Sim', 15, '18:58:30', '55.65', '0.00', '0.00', 6, 14),
(82, 3, 'Venda', 'Venda', 3, '82.50', '2022-10-04', '2022-10-04', '2022-10-04', 5, 5, 0, 'Pix', 'sem-foto.png', 'Sim', 16, '20:26:59', '100.00', '17.50', '0.00', 0, 14),
(83, 3, 'Venda', 'Venda', 0, '113.34', '2022-10-04', '2022-10-04', '2022-10-04', 5, 5, 0, 'Pix', 'sem-foto.png', 'Sim', 17, '20:46:01', '113.34', '0.00', '0.00', 0, 0),
(84, 3, 'Venda', 'Venda', 3, '30.00', '2022-10-04', '2022-10-04', '2022-10-04', 5, 5, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 17, '20:47:20', '30.00', '0.00', '0.00', 0, 14),
(85, 3, 'Venda', 'Venda', 0, '60.00', '2022-10-04', '2022-10-04', '2022-10-04', 5, 5, 0, 'Pix', 'sem-foto.png', 'Sim', 17, '21:10:31', '60.00', '0.00', '0.00', 0, 14),
(87, 3, 'Venda', 'Venda', 22, '30.00', '2022-10-04', '2022-10-06', '2022-10-05', 5, 5, 0, 'Fiado', 'sem-foto.png', 'Sim', 18, '21:39:57', '30.00', '0.00', '0.00', 0, 14),
(88, 3, 'Venda', 'Venda', 22, '52.50', '2022-10-05', '2022-10-06', '2022-10-05', 5, 5, 0, 'Fiado', 'sem-foto.png', 'Sim', 18, '09:27:34', '52.50', '0.00', '0.00', 0, 14),
(89, 3, 'Venda', 'Venda', 22, '82.50', '2022-10-05', '2022-10-03', '2022-10-05', 5, 5, 0, 'Fiado', 'sem-foto.png', 'Sim', 18, '09:28:33', '82.50', '0.00', '0.00', 0, 14),
(90, 3, 'Venda', 'Venda', 22, '30.00', '2022-10-05', '2022-10-03', '0000-00-00', 5, 5, 0, 'Fiado', 'sem-foto.png', 'Não', 18, '09:29:40', '30.00', '0.00', '0.00', 0, 0),
(91, 3, 'Venda', 'Venda', 22, '30.00', '2022-10-05', '2022-10-06', '2022-10-05', 5, 5, 0, 'Fiado', 'sem-foto.png', 'Sim', 18, '09:36:06', '30.00', '0.00', '0.00', 0, 0),
(92, 3, 'Venda', 'Venda', 22, '30.00', '2022-10-05', '2022-10-06', '2022-10-05', 5, 5, 0, 'Fiado', 'sem-foto.png', 'Sim', 18, '09:41:03', '30.00', '0.00', '0.00', 0, 14),
(93, 3, 'Venda', 'Venda', 22, '30.00', '2022-10-05', '2022-10-06', '2022-10-05', 5, 5, 0, 'Fiado', 'sem-foto.png', 'Sim', 18, '09:42:25', '30.00', '0.00', '0.00', 0, 14),
(94, 3, 'Venda', 'Venda', 3, '22.50', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 18, '09:57:40', '22.50', '0.00', '0.00', 0, 14),
(95, 3, 'Venda', 'Venda', 22, '22.50', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Cartão de Débito', 'sem-foto.png', 'Sim', 18, '09:58:18', '22.50', '0.00', '0.00', 0, 0),
(96, 3, 'Venda', 'Venda', 1, '70.00', '2022-10-05', '2022-10-06', '0000-00-00', 5, 0, 0, 'Fiado', 'sem-foto.png', 'Não', 18, '10:03:50', '70.00', '0.00', '0.00', 0, 0),
(97, 3, 'Venda', 'Venda', 0, '35.00', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Pix', 'sem-foto.png', 'Sim', 18, '10:04:18', '35.00', '0.00', '0.00', 0, 14),
(99, 3, 'Venda', 'Venda', 22, '35.00', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 18, '11:41:04', '35.00', '0.00', '0.00', 0, 22),
(100, 3, 'Venda', 'Venda', 0, '35.00', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 18, '11:53:06', '35.00', '0.00', '0.00', 0, 22),
(101, 3, 'Venda', 'Venda', 22, '61.67', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Pix', 'sem-foto.png', 'Sim', 18, '12:09:03', '61.67', '0.00', '0.00', 0, 22),
(102, 3, 'Venda', 'Venda', 3, '35.00', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 18, '12:09:15', '35.00', '0.00', '0.00', 0, 22),
(103, 3, 'Venda', 'Venda', 22, '35.00', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Pix', 'sem-foto.png', 'Sim', 18, '12:11:13', '35.00', '0.00', '0.00', 0, 14),
(104, 3, 'Venda', 'Venda', 22, '35.00', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Pix', 'sem-foto.png', 'Sim', 18, '12:12:18', '35.00', '0.00', '0.00', 0, 14),
(105, 3, 'Venda', 'Venda', 0, '35.00', '2022-10-05', '2022-10-05', '2022-10-05', 5, 5, 0, 'Dinheiro', 'sem-foto.png', 'Sim', 18, '13:10:29', '35.00', '0.00', '0.00', 0, 14),
(106, 3, 'Venda', 'Venda', 22, '234.17', '2022-10-05', '2022-10-05', '2022-10-05', 21, 21, 0, 'Cartão de Débito', 'sem-foto.png', 'Sim', 19, '16:07:22', '234.17', '0.00', '0.00', 0, 14),
(107, 4, 'Venda', 'Venda', 8, '131.67', '2022-10-05', '2022-10-05', '2022-10-05', 19, 19, 0, 'Pix', 'sem-foto.png', 'Sim', 20, '19:39:33', '131.67', '0.00', '0.00', 0, 14),
(108, 4, 'Venda', 'Venda', 11, '236.67', '2022-10-05', '2022-10-05', '2022-10-05', 19, 19, 0, 'Pix', 'sem-foto.png', 'Sim', 21, '19:47:06', '236.67', '0.00', '0.00', 0, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `saidas`
--

CREATE TABLE `saidas` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `saidas`
--

INSERT INTO `saidas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`, `empresa`) VALUES
(3, 1, 3, 'Perda ou Furto', 6, '2022-09-27', 4),
(4, 1, 2, 'Perda', 6, '2022-09-27', 4),
(5, 10, 8, 'Cancelamento da Compra', 6, '2022-09-27', 4),
(6, 11, 6, 'Cancelamento da Compra', 6, '2022-09-27', 4),
(7, 11, 5, 'Cancelamento da Compra', 6, '2022-09-27', 4),
(8, 10, 1, 'Perda ', 6, '2022-09-27', 4),
(9, 12, 3, 'Cancelamento da Compra', 6, '2022-09-27', 4),
(10, 12, 2, 'Cancelamento da Compra', 6, '2022-09-27', 4),
(11, 12, 3, 'Cancelamento da Compra', 6, '2022-09-27', 4),
(12, 12, 3, 'Perda ou Furto', 6, '2022-09-27', 4),
(13, 12, 5, 'Perda', 6, '2022-09-27', 4),
(14, 13, 5, 'teste', 6, '2022-10-03', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sangrias`
--

CREATE TABLE `sangrias` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` int(11) NOT NULL,
  `caixa` int(11) NOT NULL,
  `id_caixa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sangrias`
--

INSERT INTO `sangrias` (`id`, `empresa`, `valor`, `data`, `hora`, `usuario`, `caixa`, `id_caixa`) VALUES
(1, 4, '100.00', '2022-09-28', '12:00:13', 6, 1, 2),
(2, 4, '30.00', '2022-09-28', '15:46:38', 6, 1, 2),
(3, 4, '50.00', '2022-09-28', '15:48:18', 20, 1, 2),
(4, 3, '50.00', '2022-10-04', '20:27:19', 5, 6, 16),
(5, 3, '30.00', '2022-10-04', '20:46:32', 5, 6, 17),
(6, 3, '70.00', '2022-10-04', '20:46:45', 5, 6, 17),
(7, 3, '34.00', '2022-10-04', '21:10:08', 5, 6, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `trocas`
--

CREATE TABLE `trocas` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `produto_saida` int(11) NOT NULL,
  `produto_entrada` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `trocas`
--

INSERT INTO `trocas` (`id`, `empresa`, `produto_saida`, `produto_entrada`, `usuario`, `cliente`, `data`) VALUES
(1, 4, 1, 1, 6, 8, '2022-10-03'),
(2, 4, 1, 5, 6, 4, '2022-10-03'),
(3, 4, 9, 11, 6, 9, '2022-10-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(25) NOT NULL,
  `senha_crip` varchar(100) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `ativo` varchar(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `empresa`, `nome`, `telefone`, `cpf`, `email`, `senha`, `senha_crip`, `endereco`, `ativo`, `foto`, `nivel`, `data`) VALUES
(3, 0, 'Administrador SAS', '(44) 44444-5555', '000.000.000-00', 'contato@hugocursos.com.br', '123', '202cb962ac59075b964b07152d234b70', 'Rua 6', 'Sim', '13-09-2022-09-43-36-04-05-2022-14-26-43-eu.jpeg', 'SAS', '2022-09-12'),
(5, 3, 'Empresa 1', '(22) 22222-2222', '222.222.222-22', 'empresa1@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Rua 6', 'Sim', 'sem-foto.jpg', 'Administrador', '2022-09-13'),
(6, 4, 'Hugo Admin', '(77) 77777-7777', '777.777.777-77', 'empresa2@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Rua 6', 'Sim', 'sem-foto.jpg', 'Administrador', '2022-09-13'),
(11, 0, 'Hugo Vasconcelos', '(55) 55555-5555', '555.555.555-55', 'hugovasconcelosf@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Rua AAA', 'Sim', 'sem-foto.jpg', 'SAS', '2022-09-13'),
(14, 3, 'Vendedor', '(12) 22222-2222', '222.222.222-25', 'vendedor@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Rua C', 'Sim', 'sem-foto.jpg', 'Vendedor', '2022-09-20'),
(18, 3, 'Gerente Teste', '(14) 44444-4444', '444.444.444-44', 'gerente@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', '', 'Sim', 'sem-foto.jpg', 'Gerente', '2022-09-20'),
(19, 4, 'Operador Teste', '(44) 44444-7744', '444.444.447-77', 'operador1@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Rua C', 'Sim', 'sem-foto.jpg', 'Operador', '2022-09-27'),
(20, 4, 'Gerente Teste', '(11) 11111-1111', '111.111.111-11', 'gerenteteste@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Rua C', 'Sim', 'sem-foto.jpg', 'Gerente', '2022-09-27'),
(21, 3, 'Operador Caixa', '(11) 11111-1111', '111.111.111-12', 'operador2@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', '', 'Sim', 'sem-foto.jpg', 'Operador', '2022-10-03'),
(22, 3, 'Paulo Vendedor', '(11) 11111-1117', '111.111.111-17', 'vendedor5@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', '', 'Sim', 'sem-foto.jpg', 'Vendedor', '2022-10-05'),
(23, 3, 'Operador de Teste', '(11) 11111-2222', '222.222.221-22', 'operador3@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', '', 'Sim', 'sem-foto.jpg', 'Operador', '2022-10-05'),
(27, 4, 'Nome do Vendedor', '(48) 44444-4444', '484.444.444-44', 'vendedor4@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', '', 'Sim', 'sem-foto.jpg', 'Vendedor', '2022-10-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_permissoes`
--

CREATE TABLE `usuarios_permissoes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios_permissoes`
--

INSERT INTO `usuarios_permissoes` (`id`, `usuario`, `permissao`) VALUES
(70, 22, 33),
(71, 22, 2),
(72, 22, 11),
(73, 21, 32),
(74, 23, 32),
(75, 23, 2),
(78, 14, 2),
(79, 14, 11),
(80, 14, 33),
(88, 20, 1),
(89, 20, 2),
(91, 20, 4),
(92, 20, 5),
(97, 20, 10),
(98, 20, 11),
(99, 20, 12),
(100, 20, 13),
(101, 20, 14),
(102, 20, 15),
(103, 20, 16),
(104, 20, 17),
(105, 20, 18),
(106, 20, 19),
(107, 20, 20),
(108, 20, 21),
(109, 20, 22),
(110, 20, 23),
(111, 20, 24),
(112, 20, 25),
(113, 20, 26),
(114, 20, 27),
(115, 20, 28),
(116, 20, 29),
(117, 20, 30),
(118, 20, 31),
(119, 20, 32),
(120, 20, 33),
(121, 20, 34),
(122, 19, 32);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `caixa`
--
ALTER TABLE `caixa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `caixas`
--
ALTER TABLE `caixas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cat_grade`
--
ALTER TABLE `cat_grade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comissoes`
--
ALTER TABLE `comissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `detalhes_grade`
--
ALTER TABLE `detalhes_grade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `forma_pgtos`
--
ALTER TABLE `forma_pgtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `frequencias`
--
ALTER TABLE `frequencias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `itens_grade`
--
ALTER TABLE `itens_grade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pagar`
--
ALTER TABLE `pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `receber`
--
ALTER TABLE `receber`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `saidas`
--
ALTER TABLE `saidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sangrias`
--
ALTER TABLE `sangrias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `trocas`
--
ALTER TABLE `trocas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `caixa`
--
ALTER TABLE `caixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `caixas`
--
ALTER TABLE `caixas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `cat_grade`
--
ALTER TABLE `cat_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `comissoes`
--
ALTER TABLE `comissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `detalhes_grade`
--
ALTER TABLE `detalhes_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `forma_pgtos`
--
ALTER TABLE `forma_pgtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `frequencias`
--
ALTER TABLE `frequencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `itens_grade`
--
ALTER TABLE `itens_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT de tabela `pagar`
--
ALTER TABLE `pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `receber`
--
ALTER TABLE `receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de tabela `saidas`
--
ALTER TABLE `saidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `sangrias`
--
ALTER TABLE `sangrias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `trocas`
--
ALTER TABLE `trocas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

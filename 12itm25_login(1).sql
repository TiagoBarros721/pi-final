-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Mar-2023 às 19:20
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `12itm25_login`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `fumo` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`id`, `fumo`, `data`) VALUES
(1, 2, '0000-00-00'),
(2, 2, '2023-03-21'),
(3, 3, '2023-03-21'),
(5, 2, '2023-03-16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id` int(11) NOT NULL,
  `cabecalho` varchar(250) DEFAULT NULL,
  `conteudo` longtext DEFAULT NULL,
  `pagina` varchar(250) DEFAULT NULL,
  `tipo` tinyint(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`id`, `cabecalho`, `conteudo`, `pagina`, `tipo`, `link`, `img`) VALUES
(1, 'FROM FUMOS TO FUMOS', 'empresa que explora trabalho de fumos para fabricar mais fumos', 'index', 1, 'https://fumo.website/', 'maxresdefault.jpg'),
(2, 'Companhia de envio de coisas touhou :)', 'Somos especializados no transporte de mercadorias secas. Precificamos por cento ou por skid e entregamos tempos de trânsito líderes do setor de e para os EUA... incluindo o Alasca. Foi assim que nosso negócio começou... e fazemos muito mais! Tornar a', 'Sobre', 1, 'https://nicepage.com/landing-page', 'TH07_PCB_Interface.jpg'),
(3, '', '<h2>Ocean Freight</h2>We treat our customers, employees and business partners with respect and our relationship with them is based on an open dialogue.<h2>Logistics</h2>We treat our customers, employees and business partners with respect and our relationship with them is based on an open dialogue.<h2>Air Freight</h2>We treat our customers, employees and business partners with respect and our relationship with them is based on an open dialogue.', 'Sobre', 2, '', 'NULL'),
(4, '', '<h2>Respeitosos</h2>Tratamos todos os fumos com respeito, e clientes também mas com menos frequencia, os unicos maltratados na empresa são os funcionarios<h2>Independentes</h2>Na verdade não somos independentes e não vendemos literalmente nada<h2>Pessoal</h2>Com energia e entusiasmo(que não tenho) trabalhamos para ter uma boa nota na disciplina de Programação INterNETTT!!<h2>Suspeito</h2>O topico escolhido é demasiadamente suspeito e estranho :D', 'Sobre', 3, '', 'NULL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipa`
--

CREATE TABLE `equipa` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `posicao` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `equipa`
--

INSERT INTO `equipa` (`id`, `nome`, `posicao`, `foto`) VALUES
(1, 'Tiago Simões', 'CEO', '813764172902170624.gif'),
(2, 'Filipa cAMBOLHA', 'patroa 2', '91fa1a22208779cd383b68a3b2d5af1b.jpg'),
(3, 'Reimu Hakurei', 'suporte emocional', 'Novo-projeto-touhou-fumo-fumos-s-rie-plushies-hakurei-reimu-pel-cia-boneca-brinquedos-presente-em.jpg_640x640.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `img` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `galeria`
--

INSERT INTO `galeria` (`id`, `img`) VALUES
(1, 'Novo-projeto-touhou-fumo-fumos-s-rie-plushies-hakurei-reimu-pel-cia-boneca-brinquedos-presente-em.jpg_640x640.jpg'),
(2, '813764172902170624.gif');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `name` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `pass` varchar(250) DEFAULT NULL,
  `ativo` tinyint(4) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`name`, `username`, `pass`, `ativo`, `id`) VALUES
('yes', 'yes@yes.yes', '$2y$10$tFpU2KCPVjQ3fF/C/h6gDe85HlhS/rBhbT1Cs.LOT3fbeA8mA9azq', 1, 1),
('sdaf', 'asdf', '$2y$10$XZN.u2p7BiF7DOnQJtb3xejyLRDs8BgVdpGPYNlFHpDZgWyaUaoHe', NULL, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `data` varchar(250) DEFAULT NULL,
  `hora` varchar(250) DEFAULT NULL,
  `IP` varchar(250) DEFAULT NULL,
  `session` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`id`, `data`, `hora`, `IP`, `session`, `url`) VALUES
(1, '2023-03-18', '18:55:56', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/'),
(2, '2023-03-18', '18:57:40', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/'),
(3, '2023-03-18', '18:58:59', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/'),
(4, '2023-03-18', '18:59:02', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/index.php'),
(5, '2023-03-18', '18:59:04', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/'),
(6, '2023-03-18', '19:06:26', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/index.php'),
(7, '2023-03-18', '19:06:58', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/create.php'),
(8, '2023-03-18', '19:07:49', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/login.php'),
(9, '2023-03-18', '19:07:57', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/login.php'),
(10, '2023-03-18', '19:09:33', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/create.php'),
(11, '2023-03-18', '19:10:25', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/create.php'),
(12, '2023-03-18', '19:10:37', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/create.php'),
(13, '2023-03-18', '19:11:09', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/login.php'),
(14, '2023-03-18', '19:11:15', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/login.php'),
(15, '2023-03-18', '19:12:12', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/create.php'),
(16, '2023-03-18', '19:12:20', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/login.php'),
(17, '2023-03-18', '19:12:20', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/index.php'),
(18, '2023-03-18', '19:13:34', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(19, '2023-03-18', '19:13:54', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(20, '2023-03-18', '19:14:04', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=login'),
(21, '2023-03-18', '19:14:07', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=logs'),
(22, '2023-03-18', '19:14:13', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=menu'),
(23, '2023-03-18', '19:14:36', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=menu&header=*ID.str:Nome.chk:Ativo.str:Pai&create=1'),
(24, '2023-03-18', '19:14:39', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=menu'),
(25, '2023-03-18', '19:15:09', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=logs'),
(26, '2023-03-18', '19:15:10', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=login'),
(27, '2023-03-18', '19:15:21', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/'),
(28, '2023-03-18', '19:15:24', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/'),
(29, '2023-03-18', '19:15:28', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/index.php'),
(30, '2023-03-18', '19:15:39', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(31, '2023-03-18', '19:15:41', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=menu'),
(32, '2023-03-18', '19:15:42', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=menu&header=*ID.str:Nome.chk:Ativo.str:Pai&create=1'),
(33, '2023-03-18', '19:16:01', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=menu&create=1'),
(34, '2023-03-18', '19:16:01', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(35, '2023-03-18', '19:16:03', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=menu'),
(36, '2023-03-18', '19:16:04', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=logs'),
(37, '2023-03-18', '19:16:05', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=login'),
(38, '2023-03-18', '19:16:07', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=logs'),
(39, '2023-03-18', '19:16:07', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=menu'),
(40, '2023-03-18', '19:16:10', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=logs'),
(41, '2023-03-18', '19:16:11', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=login'),
(42, '2023-03-18', '19:16:11', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=logs'),
(43, '2023-03-18', '19:16:12', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=menu'),
(44, '2023-03-18', '19:16:13', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(45, '2023-03-18', '19:16:14', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=menu&header=*ID.str:Nome.chk:Ativo.str:Pai&create=1'),
(46, '2023-03-18', '19:16:14', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=menu'),
(47, '2023-03-18', '19:16:17', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/'),
(48, '2023-03-18', '19:16:19', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(49, '2023-03-18', '19:18:50', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(50, '2023-03-18', '19:19:21', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(51, '2023-03-18', '19:19:35', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(52, '2023-03-18', '19:19:37', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(53, '2023-03-18', '19:19:39', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(54, '2023-03-18', '19:20:46', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(55, '2023-03-18', '19:21:04', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(56, '2023-03-18', '19:21:15', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(57, '2023-03-18', '19:21:22', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(58, '2023-03-18', '19:22:11', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(59, '2023-03-18', '19:22:20', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(60, '2023-03-18', '19:22:25', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(61, '2023-03-18', '19:23:54', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(62, '2023-03-18', '19:25:14', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(63, '2023-03-18', '19:25:23', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(64, '2023-03-18', '19:27:25', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(65, '2023-03-18', '19:31:33', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(66, '2023-03-18', '19:31:52', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(67, '2023-03-18', '19:32:02', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(68, '2023-03-18', '19:32:18', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(69, '2023-03-18', '19:34:04', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(70, '2023-03-18', '19:34:22', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(71, '2023-03-18', '19:35:36', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(72, '2023-03-18', '19:35:57', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(73, '2023-03-18', '19:37:34', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(74, '2023-03-18', '19:37:42', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(75, '2023-03-18', '19:38:35', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(76, '2023-03-18', '19:41:38', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(77, '2023-03-18', '19:41:50', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(78, '2023-03-18', '19:42:04', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(79, '2023-03-18', '19:42:53', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(80, '2023-03-18', '19:43:07', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(81, '2023-03-18', '19:43:53', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(82, '2023-03-18', '19:45:18', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(83, '2023-03-18', '19:45:26', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(84, '2023-03-18', '19:45:34', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(85, '2023-03-18', '19:45:34', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(86, '2023-03-18', '19:45:36', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(87, '2023-03-18', '19:45:46', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&create=1'),
(88, '2023-03-18', '19:46:12', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&create=1'),
(89, '2023-03-18', '19:46:12', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(90, '2023-03-18', '19:46:14', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(91, '2023-03-18', '19:46:18', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&nome=3&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&query=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(92, '2023-03-18', '19:46:25', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&ident=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(93, '2023-03-18', '19:46:25', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(94, '2023-03-18', '19:46:26', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(95, '2023-03-18', '19:47:13', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&nome=3&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&query=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(96, '2023-03-18', '19:47:18', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&ident=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(97, '2023-03-18', '19:47:18', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(98, '2023-03-18', '19:47:20', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(99, '2023-03-18', '19:49:21', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&nome=3&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&query=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(100, '2023-03-18', '19:49:24', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&ident=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(101, '2023-03-18', '19:49:36', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&ident=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(102, '2023-03-18', '19:50:04', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&nome=3&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&query=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(103, '2023-03-18', '19:50:08', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&ident=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(104, '2023-03-18', '19:50:27', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&nome=3&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&query=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(105, '2023-03-18', '19:50:31', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&ident=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(106, '2023-03-18', '19:51:45', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&ident=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(107, '2023-03-18', '19:52:36', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/edit.php?table=produtos&nome=3&header=*ID.str:Nome.str:Descri%C3%A7%C3%A3o.flt:Pre%C3%A7o.img:Imagem1.img:Imagem2.img:Imagem3&query=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(108, '2023-03-18', '19:52:45', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/confirmEdit.php?table=produtos&ident=SELECT%20*%20FROM%20produtos%20WHERE%20id%20=%203'),
(109, '2023-03-18', '19:52:45', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php'),
(110, '2023-03-18', '19:52:46', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(111, '2023-03-18', '19:53:12', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(112, '2023-03-18', '19:54:48', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(113, '2023-03-18', '19:55:02', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(114, '2023-03-18', '19:56:34', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(115, '2023-03-18', '19:56:43', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(116, '2023-03-18', '19:56:50', '127.0.0.1', 'rk5g4f09bc0bt0u2kk1o6bc3do', 'http://localhost/Site1/Produtos.php'),
(117, '2023-03-18', '19:57:12', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(118, '2023-03-18', '19:58:02', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(119, '2023-03-18', '19:58:22', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(120, '2023-03-18', '19:58:39', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(121, '2023-03-18', '19:58:45', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(122, '2023-03-18', '19:59:43', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(123, '2023-03-18', '19:59:59', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(124, '2023-03-18', '20:01:03', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(125, '2023-03-18', '20:02:07', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(126, '2023-03-18', '20:02:31', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(127, '2023-03-18', '20:02:40', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(128, '2023-03-18', '20:03:39', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(129, '2023-03-18', '20:03:53', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(130, '2023-03-18', '20:04:34', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(131, '2023-03-18', '20:04:40', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(132, '2023-03-18', '20:04:51', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(133, '2023-03-18', '20:05:02', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/index.php'),
(134, '2023-03-18', '20:05:04', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(135, '2023-03-18', '20:05:05', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/index.php'),
(136, '2023-03-18', '20:05:12', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(137, '2023-03-18', '20:05:42', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(138, '2023-03-18', '20:06:03', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(139, '2023-03-18', '20:06:15', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(140, '2023-03-18', '20:06:31', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(141, '2023-03-18', '20:06:38', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(142, '2023-03-18', '20:06:50', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(143, '2023-03-18', '20:08:32', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/index.php'),
(144, '2023-03-18', '20:08:35', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(145, '2023-03-18', '20:12:10', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(146, '2023-03-18', '20:14:34', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(147, '2023-03-18', '20:14:55', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(148, '2023-03-18', '20:16:03', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(149, '2023-03-18', '20:16:29', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(150, '2023-03-18', '20:16:54', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(151, '2023-03-18', '20:17:50', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(152, '2023-03-18', '20:18:44', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(153, '2023-03-18', '20:19:11', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(154, '2023-03-18', '20:19:33', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(155, '2023-03-18', '20:20:08', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(156, '2023-03-18', '20:20:24', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(157, '2023-03-18', '20:20:39', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(158, '2023-03-18', '20:20:53', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(159, '2023-03-18', '20:21:58', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(160, '2023-03-18', '20:22:46', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(161, '2023-03-18', '20:23:15', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(162, '2023-03-18', '20:23:31', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(163, '2023-03-18', '20:25:27', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(164, '2023-03-18', '20:25:57', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(165, '2023-03-18', '20:26:22', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(166, '2023-03-18', '20:27:58', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(167, '2023-03-18', '20:28:07', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(168, '2023-03-18', '20:28:34', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(169, '2023-03-18', '20:28:47', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(170, '2023-03-18', '20:30:05', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(171, '2023-03-18', '20:30:35', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(172, '2023-03-18', '20:30:59', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(173, '2023-03-18', '20:31:17', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/Produtos.php'),
(174, '2023-03-18', '21:39:41', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/'),
(175, '2023-03-18', '21:39:50', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/index.php'),
(176, '2023-03-18', '21:40:05', '127.0.0.1', '5a3t4hc63tb3jjujpr2lbkfa7m', 'http://localhost/Site1/admin/index.php'),
(177, '2023-03-19', '16:17:09', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/'),
(178, '2023-03-19', '16:17:11', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/index.php'),
(179, '2023-03-19', '16:17:20', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/login.php'),
(180, '2023-03-19', '16:17:20', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/index.php'),
(181, '2023-03-19', '16:17:38', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php'),
(182, '2023-03-19', '16:17:39', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(183, '2023-03-19', '16:17:45', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(184, '2023-03-19', '16:18:41', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(185, '2023-03-19', '16:19:18', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(186, '2023-03-19', '16:21:42', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(187, '2023-03-19', '16:21:48', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=2'),
(188, '2023-03-19', '16:21:59', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=2'),
(189, '2023-03-19', '16:22:05', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=10'),
(190, '2023-03-19', '16:22:44', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=10'),
(191, '2023-03-19', '16:22:50', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=10'),
(192, '2023-03-19', '16:23:06', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=10'),
(193, '2023-03-19', '16:24:31', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=10'),
(194, '2023-03-19', '16:24:41', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=login'),
(195, '2023-03-19', '16:24:42', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=menu'),
(196, '2023-03-19', '16:24:44', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(197, '2023-03-19', '16:24:52', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(198, '2023-03-19', '16:25:02', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=-1'),
(199, '2023-03-19', '16:25:23', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=-1'),
(200, '2023-03-19', '16:25:28', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(201, '2023-03-19', '16:25:39', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(202, '2023-03-19', '16:25:49', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(203, '2023-03-19', '16:25:57', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(204, '2023-03-19', '16:25:58', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(205, '2023-03-19', '16:26:00', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=19'),
(206, '2023-03-19', '16:26:04', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=379'),
(207, '2023-03-19', '16:26:04', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=7579'),
(208, '2023-03-19', '16:26:42', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=7579'),
(209, '2023-03-19', '16:26:45', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=0'),
(210, '2023-03-19', '16:26:47', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(211, '2023-03-19', '16:26:49', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=21'),
(212, '2023-03-19', '16:26:53', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=419'),
(213, '2023-03-19', '16:27:12', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=21'),
(214, '2023-03-19', '16:27:25', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs'),
(215, '2023-03-19', '16:27:28', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(216, '2023-03-19', '16:27:44', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=19'),
(217, '2023-03-19', '16:30:53', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=19'),
(218, '2023-03-19', '16:30:57', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=0'),
(219, '2023-03-19', '16:30:58', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(220, '2023-03-19', '16:31:00', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=2'),
(221, '2023-03-19', '16:32:39', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=3'),
(222, '2023-03-19', '16:32:40', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=4'),
(223, '2023-03-19', '16:32:41', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=5'),
(224, '2023-03-19', '16:32:41', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=6'),
(225, '2023-03-19', '16:32:42', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=7'),
(226, '2023-03-19', '16:32:43', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=8'),
(227, '2023-03-19', '16:32:44', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=9'),
(228, '2023-03-19', '16:32:45', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=10'),
(229, '2023-03-19', '16:32:45', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(230, '2023-03-19', '16:32:46', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=12'),
(231, '2023-03-19', '16:32:47', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(232, '2023-03-19', '16:32:48', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=12'),
(233, '2023-03-19', '16:32:49', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=13'),
(234, '2023-03-19', '16:32:50', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=12'),
(235, '2023-03-19', '16:32:51', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(236, '2023-03-19', '16:52:19', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/'),
(237, '2023-03-19', '16:52:20', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/Produtos.php'),
(238, '2023-03-19', '16:54:29', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(239, '2023-03-19', '16:54:36', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(240, '2023-03-19', '16:54:45', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(241, '2023-03-19', '16:55:17', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(242, '2023-03-19', '16:56:44', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(243, '2023-03-19', '16:56:48', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=12'),
(244, '2023-03-19', '16:56:50', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=13'),
(245, '2023-03-19', '16:56:51', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=12'),
(246, '2023-03-19', '16:57:09', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=12'),
(247, '2023-03-19', '16:57:19', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=12'),
(248, '2023-03-19', '16:57:20', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(249, '2023-03-19', '16:57:21', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=12'),
(250, '2023-03-19', '16:57:22', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=11'),
(251, '2023-03-19', '16:57:23', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=10'),
(252, '2023-03-19', '16:57:23', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=9'),
(253, '2023-03-19', '16:57:24', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=8'),
(254, '2023-03-19', '16:57:24', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=7'),
(255, '2023-03-19', '16:57:25', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=6'),
(256, '2023-03-19', '16:57:26', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=5'),
(257, '2023-03-19', '16:57:26', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=4'),
(258, '2023-03-19', '16:57:27', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=3'),
(259, '2023-03-19', '16:57:27', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=2'),
(260, '2023-03-19', '16:57:28', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(261, '2023-03-19', '16:57:28', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=0'),
(262, '2023-03-19', '17:05:01', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(263, '2023-03-19', '17:05:03', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=0'),
(264, '2023-03-19', '17:05:04', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(265, '2023-03-19', '17:05:05', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=2'),
(266, '2023-03-19', '17:05:10', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=3'),
(267, '2023-03-19', '17:05:11', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=4'),
(268, '2023-03-19', '17:05:20', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=3'),
(269, '2023-03-19', '17:05:20', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=2'),
(270, '2023-03-19', '17:05:21', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(271, '2023-03-19', '17:05:22', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=0'),
(272, '2023-03-19', '17:05:23', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=1'),
(273, '2023-03-19', '17:05:24', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=0'),
(274, '2023-03-19', '17:15:56', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/index.php'),
(275, '2023-03-19', '17:17:28', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=logs&page=0'),
(276, '2023-03-19', '17:17:29', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(277, '2023-03-19', '17:17:30', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/edit.php?table=equipa&header=*ID.str:Nome.str:Posi%C3%A7%C3%A3o.img:Foto&create=1'),
(278, '2023-03-19', '17:59:48', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/confirmEdit.php?table=equipa&create=1'),
(279, '2023-03-19', '17:59:48', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php'),
(280, '2023-03-19', '17:59:57', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(281, '2023-03-19', '18:02:49', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(282, '2023-03-19', '18:02:52', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/edit.php?table=equipa&header=*ID.str:Nome.str:Posi%C3%A7%C3%A3o.img:Foto&create=1'),
(283, '2023-03-19', '18:05:38', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/confirmEdit.php?table=equipa&create=1'),
(284, '2023-03-19', '18:05:38', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php'),
(285, '2023-03-19', '18:05:39', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(286, '2023-03-19', '18:05:41', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(287, '2023-03-19', '18:05:46', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/edit.php?table=equipa&header=*ID.str:Nome.str:Posi%C3%A7%C3%A3o.img:Foto&create=1'),
(288, '2023-03-19', '18:06:09', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/confirmEdit.php?table=equipa&create=1'),
(289, '2023-03-19', '18:06:09', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php'),
(290, '2023-03-19', '18:06:13', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(291, '2023-03-19', '18:06:15', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/edit.php?table=equipa&header=*ID.str:Nome.str:Posi%C3%A7%C3%A3o.img:Foto&create=1'),
(292, '2023-03-19', '18:08:13', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(293, '2023-03-19', '18:08:23', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=menu'),
(294, '2023-03-19', '18:08:25', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/edit.php?table=menu&header=*ID.str:Nome.chk:Ativo.str:Pai&create=1'),
(295, '2023-03-19', '18:08:32', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/confirmEdit.php?table=menu&create=1'),
(296, '2023-03-19', '18:08:32', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php'),
(297, '2023-03-19', '18:08:34', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=menu'),
(298, '2023-03-19', '18:08:36', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/edit.php?table=menu&nome=4&header=*ID.str:Nome.chk:Ativo.str:Pai&query=SELECT%20*%20FROM%20menu%20WHERE%20id%20=%204'),
(299, '2023-03-19', '18:08:39', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/confirmEdit.php?table=menu&ident=SELECT%20*%20FROM%20menu%20WHERE%20id%20=%204'),
(300, '2023-03-19', '18:08:39', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php'),
(301, '2023-03-19', '18:08:41', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=menu'),
(302, '2023-03-19', '18:08:44', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/edit.php?table=menu&nome=4&header=*ID.str:Nome.chk:Ativo.str:Pai&query=SELECT%20*%20FROM%20menu%20WHERE%20id%20=%204'),
(303, '2023-03-19', '18:08:47', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/confirmEdit.php?table=menu&ident=SELECT%20*%20FROM%20menu%20WHERE%20id%20=%204'),
(304, '2023-03-19', '18:08:47', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php'),
(305, '2023-03-19', '18:08:57', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/index.php'),
(306, '2023-03-19', '18:15:56', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(307, '2023-03-21', '20:39:14', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/'),
(308, '2023-03-21', '20:40:32', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Equipa.php'),
(309, '2023-03-21', '20:41:46', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Equipa.php'),
(310, '2023-03-21', '20:50:28', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php'),
(311, '2023-03-21', '20:54:10', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/login.php'),
(312, '2023-03-21', '20:54:11', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php'),
(313, '2023-03-21', '20:54:14', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(314, '2023-03-21', '21:01:31', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php'),
(315, '2023-03-21', '21:01:36', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Equipa.php'),
(316, '2023-03-21', '21:01:38', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Equipa.php'),
(317, '2023-03-21', '21:01:39', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php'),
(318, '2023-03-21', '21:01:44', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php'),
(319, '2023-03-21', '21:01:47', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php'),
(320, '2023-03-21', '21:03:59', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php'),
(321, '2023-03-21', '21:06:34', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php'),
(322, '2023-03-21', '21:07:17', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php?compra=2'),
(323, '2023-03-21', '21:08:15', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php?compra=2'),
(324, '2023-03-21', '21:08:27', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php'),
(325, '2023-03-21', '21:08:28', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php?compra=2'),
(326, '2023-03-21', '21:08:48', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php?compra=2'),
(327, '2023-03-21', '21:08:51', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php?compra=3'),
(328, '2023-03-21', '21:11:55', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(329, '2023-03-21', '21:12:33', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(330, '2023-03-21', '21:16:18', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(331, '2023-03-21', '21:29:26', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php'),
(332, '2023-03-21', '21:31:12', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php'),
(333, '2023-03-21', '21:31:14', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=menu'),
(334, '2023-03-21', '21:31:21', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=equipa'),
(335, '2023-03-21', '21:38:14', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=equipa'),
(336, '2023-03-21', '21:38:32', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=equipa'),
(337, '2023-03-21', '21:38:58', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=equipa'),
(338, '2023-03-21', '21:39:14', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=equipa'),
(339, '2023-03-21', '21:39:41', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=equipa'),
(340, '2023-03-21', '21:40:36', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(341, '2023-03-21', '21:40:58', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(342, '2023-03-21', '21:41:55', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(343, '2023-03-21', '21:42:09', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(344, '2023-03-21', '21:42:59', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(345, '2023-03-21', '21:43:24', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(346, '2023-03-21', '21:44:34', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(347, '2023-03-21', '21:45:18', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(348, '2023-03-21', '21:48:20', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(349, '2023-03-21', '21:48:56', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(350, '2023-03-21', '21:49:32', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(351, '2023-03-21', '21:49:35', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(352, '2023-03-21', '21:49:49', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=compra'),
(353, '2023-03-21', '21:53:54', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=produtos'),
(354, '2023-03-21', '21:53:56', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php'),
(355, '2023-03-21', '21:54:00', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/'),
(356, '2023-03-21', '21:54:04', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Produtos.php'),
(357, '2023-03-21', '21:54:08', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Equipa.php'),
(358, '2023-03-21', '21:54:59', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php?table=compra'),
(359, '2023-03-21', '21:55:01', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/edit.php?table=compra&header=*ID.str:Id%20do%20produto.dat:Data&create=1'),
(360, '2023-03-21', '21:55:11', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/confirmEdit.php?table=compra&create=1'),
(361, '2023-03-21', '21:55:12', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php'),
(362, '2023-03-21', '21:55:13', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(363, '2023-03-21', '21:55:21', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php?table=compra'),
(364, '2023-03-21', '22:02:16', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php?table=menu'),
(365, '2023-03-21', '22:02:17', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/edit.php?table=menu&header=*ID.str:Nome.chk:Ativo.str:Pai&create=1'),
(366, '2023-03-21', '22:02:29', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/confirmEdit.php?table=menu&create=1'),
(367, '2023-03-21', '22:02:29', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php'),
(368, '2023-03-21', '22:02:31', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Equipa.php'),
(369, '2023-03-21', '22:02:34', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Contato.php'),
(370, '2023-03-21', '22:07:10', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php?table=menu'),
(371, '2023-03-21', '22:07:12', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/edit.php?table=menu&header=*ID.str:Nome.chk:Ativo.str:Pai&create=1'),
(372, '2023-03-21', '22:07:26', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/confirmEdit.php?table=menu&create=1'),
(373, '2023-03-21', '22:07:26', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php'),
(374, '2023-03-21', '22:07:29', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php?table=menu');
INSERT INTO `logs` (`id`, `data`, `hora`, `IP`, `session`, `url`) VALUES
(375, '2023-03-21', '22:07:32', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Contato.php'),
(376, '2023-03-21', '22:07:41', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(377, '2023-03-21', '22:07:43', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Contato.php'),
(378, '2023-03-21', '22:07:44', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(379, '2023-03-21', '22:08:02', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(380, '2023-03-21', '22:13:41', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php?table=menu'),
(381, '2023-03-21', '22:13:42', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php?table=galeria'),
(382, '2023-03-21', '22:13:44', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/edit.php?table=galeria&header=*ID.img:Imagem&create=1'),
(383, '2023-03-21', '22:13:53', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/confirmEdit.php?table=galeria&create=1'),
(384, '2023-03-21', '22:13:53', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php'),
(385, '2023-03-21', '22:13:56', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php?table=galeria'),
(386, '2023-03-21', '22:13:58', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/edit.php?table=galeria&header=*ID.img:Imagem&create=1'),
(387, '2023-03-21', '22:14:23', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/confirmEdit.php?table=galeria&create=1'),
(388, '2023-03-21', '22:14:23', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/crud.php'),
(389, '2023-03-21', '22:14:27', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(390, '2023-03-21', '22:16:51', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(391, '2023-03-21', '22:17:53', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(392, '2023-03-21', '22:19:00', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(393, '2023-03-21', '22:19:26', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(394, '2023-03-21', '22:19:38', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(395, '2023-03-21', '22:20:32', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(396, '2023-03-21', '22:20:53', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(397, '2023-03-21', '22:21:44', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(398, '2023-03-21', '22:21:51', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/index.php'),
(399, '2023-03-21', '22:21:53', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/admin/index.php'),
(400, '2023-03-21', '22:21:55', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/index.php'),
(401, '2023-03-21', '22:21:56', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(402, '2023-03-21', '22:23:15', '127.0.0.1', 'r2jcm1c4v28mi7po0e3ulao4n1', 'http://localhost/Site1/Galeria-de-imagens.php'),
(403, '2023-03-25', '11:52:45', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(404, '2023-03-25', '11:54:41', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(405, '2023-03-25', '11:54:46', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(406, '2023-03-25', '11:54:48', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(407, '2023-03-25', '11:54:49', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(408, '2023-03-25', '11:54:54', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Equipa.php'),
(409, '2023-03-25', '11:54:57', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(410, '2023-03-25', '11:55:02', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(411, '2023-03-25', '11:55:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(412, '2023-03-25', '11:55:21', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/'),
(413, '2023-03-25', '11:55:32', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/login.php'),
(414, '2023-03-25', '11:55:32', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(415, '2023-03-25', '11:55:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=compra'),
(416, '2023-03-25', '11:55:41', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=produtos'),
(417, '2023-03-25', '11:55:49', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=compra'),
(418, '2023-03-25', '11:55:53', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(419, '2023-03-25', '11:55:55', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(420, '2023-03-25', '11:59:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(421, '2023-03-25', '12:00:37', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=menu'),
(422, '2023-03-25', '12:00:39', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=menu&header=*ID.str:Nome.chk:Ativo.str:Pai&create=1'),
(423, '2023-03-25', '12:00:56', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=menu&create=1'),
(424, '2023-03-25', '12:00:56', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php'),
(425, '2023-03-25', '12:01:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(426, '2023-03-25', '12:01:01', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(427, '2023-03-25', '12:01:28', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(428, '2023-03-25', '12:01:33', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(429, '2023-03-25', '12:07:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(430, '2023-03-25', '12:07:09', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=equipa&nome=1&header=*ID.str:Nome.str:Posi%C3%A7%C3%A3o.img:Foto&query=SELECT%20*%20FROM%20equipa%20WHERE%20id%20=%201'),
(431, '2023-03-25', '12:07:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(432, '2023-03-25', '12:07:12', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=equipa&header=*ID.str:Nome.str:Posi%C3%A7%C3%A3o.img:Foto&create=1'),
(433, '2023-03-25', '12:07:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(434, '2023-03-25', '12:07:16', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=equipa&nome=1&header=*ID.str:Nome.str:Posi%C3%A7%C3%A3o.img:Foto&query=SELECT%20*%20FROM%20equipa%20WHERE%20id%20=%201'),
(435, '2023-03-25', '12:08:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=equipa&nome=1&header=*ID.str:Nome.str:Posi%C3%A7%C3%A3o.img:Foto&query=SELECT%20*%20FROM%20equipa%20WHERE%20id%20=%201'),
(436, '2023-03-25', '12:08:24', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=equipa'),
(437, '2023-03-25', '12:10:16', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=login'),
(438, '2023-03-25', '12:10:20', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=login&header=str:Nome.str:Username._Password.chk:Ativo.*ID&create=1'),
(439, '2023-03-25', '12:11:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=login&create=1'),
(440, '2023-03-25', '12:11:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php'),
(441, '2023-03-25', '12:12:10', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php'),
(442, '2023-03-25', '12:12:13', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=produtos'),
(443, '2023-03-25', '12:12:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=login'),
(444, '2023-03-25', '12:12:18', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=login&nome=2&header=str:Nome.str:Username._Password.chk:Ativo.*ID&query=SELECT%20*%20FROM%20login%20WHERE%20id%20=%202'),
(445, '2023-03-25', '12:12:22', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=login'),
(446, '2023-03-25', '12:12:24', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/delete.php?table=login&nome=2&ident=id'),
(447, '2023-03-25', '12:12:25', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=login'),
(448, '2023-03-25', '12:12:27', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=login&header=str:Nome.str:Username._Password.chk:Ativo.*ID&create=1'),
(449, '2023-03-25', '12:12:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=login'),
(450, '2023-03-25', '12:14:02', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=login&header=str:Nome.str:Username._Password.chk:Ativo.*ID&create=1'),
(451, '2023-03-25', '12:17:39', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=login&create=1'),
(452, '2023-03-25', '12:18:34', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=login&header=str:Nome.str:Username._Password.chk:Ativo.*ID&create=1'),
(453, '2023-03-25', '12:18:39', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=login&create=1&header=str:Nome.str:Username._Password.chk:Ativo.*ID'),
(454, '2023-03-25', '12:22:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=login&header=str:Nome.str:Username._Password.chk:Ativo.*ID&create=1'),
(455, '2023-03-25', '12:22:16', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=login&create=1'),
(456, '2023-03-25', '12:23:17', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=login&create=1'),
(457, '2023-03-25', '12:23:31', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=login&create=1'),
(458, '2023-03-25', '12:24:53', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=login&create=1'),
(459, '2023-03-25', '12:25:03', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=login&create=1'),
(460, '2023-03-25', '12:25:04', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php'),
(461, '2023-03-25', '12:25:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=login'),
(462, '2023-03-25', '13:24:52', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(463, '2023-03-25', '13:33:53', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=login'),
(464, '2023-03-25', '13:34:19', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(465, '2023-03-25', '13:36:30', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(466, '2023-03-25', '13:36:55', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=login'),
(467, '2023-03-25', '13:36:56', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=conteudo'),
(468, '2023-03-25', '13:36:57', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php?table=conteudo'),
(469, '2023-03-25', '13:36:58', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=conteudo&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imagem&create=1'),
(470, '2023-03-25', '13:39:47', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&create=1'),
(471, '2023-03-25', '13:39:48', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(472, '2023-03-25', '13:39:54', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(473, '2023-03-25', '13:40:03', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(474, '2023-03-25', '13:40:14', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(475, '2023-03-25', '13:40:23', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(476, '2023-03-25', '13:48:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(477, '2023-03-25', '13:48:22', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(478, '2023-03-25', '13:48:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(479, '2023-03-25', '13:48:51', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(480, '2023-03-25', '13:50:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(481, '2023-03-25', '13:50:31', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(482, '2023-03-25', '13:50:38', '127.0.0.1', 'efqm2ro5g0f1937s2pmn4c8725', 'http://localhost/Site1/index.php'),
(483, '2023-03-25', '13:50:47', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(484, '2023-03-25', '13:53:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(485, '2023-03-25', '13:53:09', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(486, '2023-03-25', '13:54:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(487, '2023-03-25', '13:54:30', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(488, '2023-03-25', '13:55:55', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(489, '2023-03-25', '13:56:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(490, '2023-03-25', '14:00:45', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(491, '2023-03-25', '14:00:55', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(492, '2023-03-25', '14:02:43', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(493, '2023-03-25', '14:02:45', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(494, '2023-03-25', '14:04:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(495, '2023-03-25', '14:06:29', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(496, '2023-03-25', '14:06:57', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(497, '2023-03-25', '14:07:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(498, '2023-03-25', '14:07:10', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(499, '2023-03-25', '14:07:23', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(500, '2023-03-25', '14:07:58', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(501, '2023-03-25', '14:08:44', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(502, '2023-03-25', '14:08:54', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(503, '2023-03-25', '14:09:08', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(504, '2023-03-25', '14:09:22', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(505, '2023-03-25', '14:09:28', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(506, '2023-03-25', '14:09:55', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(507, '2023-03-25', '14:10:17', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(508, '2023-03-25', '14:10:36', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(509, '2023-03-25', '14:10:45', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(510, '2023-03-25', '14:10:55', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(511, '2023-03-25', '14:11:34', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(512, '2023-03-25', '14:11:44', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(513, '2023-03-25', '14:11:54', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(514, '2023-03-25', '14:12:22', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(515, '2023-03-25', '14:12:36', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(516, '2023-03-25', '15:48:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(517, '2023-03-25', '15:48:25', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(518, '2023-03-25', '15:48:31', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(519, '2023-03-25', '15:48:37', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(520, '2023-03-25', '15:49:10', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(521, '2023-03-25', '15:49:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(522, '2023-03-25', '15:50:12', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(523, '2023-03-25', '15:50:49', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(524, '2023-03-25', '15:51:05', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(525, '2023-03-25', '15:51:13', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(526, '2023-03-25', '15:51:21', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(527, '2023-03-25', '15:52:02', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(528, '2023-03-25', '15:52:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(529, '2023-03-25', '15:52:22', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(530, '2023-03-25', '15:53:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(531, '2023-03-25', '15:53:18', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(532, '2023-03-25', '15:53:30', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(533, '2023-03-25', '15:53:44', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(534, '2023-03-25', '15:54:20', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(535, '2023-03-25', '15:55:14', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(536, '2023-03-25', '15:55:54', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(537, '2023-03-25', '15:56:46', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(538, '2023-03-25', '15:57:20', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(539, '2023-03-25', '15:57:55', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(540, '2023-03-25', '15:57:59', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(541, '2023-03-25', '15:58:03', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(542, '2023-03-25', '15:58:08', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(543, '2023-03-25', '15:58:25', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(544, '2023-03-25', '15:58:32', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(545, '2023-03-25', '16:01:02', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(546, '2023-03-25', '16:01:12', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(547, '2023-03-25', '16:01:32', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(548, '2023-03-25', '16:04:40', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(549, '2023-03-25', '16:09:07', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(550, '2023-03-25', '16:09:12', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=parceria'),
(551, '2023-03-25', '16:09:14', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=parceria&header=*ID.str:Nome.img:Imagem&create=1'),
(552, '2023-03-25', '16:09:22', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=parceria&create=1'),
(553, '2023-03-25', '16:09:22', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=parceria'),
(554, '2023-03-25', '16:09:24', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=parceria&header=*ID.str:Nome.img:Imagem&create=1'),
(555, '2023-03-25', '16:09:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=parceria&create=1'),
(556, '2023-03-25', '16:09:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php'),
(557, '2023-03-25', '16:12:21', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/crud.php'),
(558, '2023-03-25', '16:12:23', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=parceria&header=*ID.str:Nome.img:Imagem&create=1'),
(559, '2023-03-25', '16:12:25', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=parceria'),
(560, '2023-03-25', '16:12:28', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=parceria&header=*ID.str:Nome.img:Imagem&create=1'),
(561, '2023-03-25', '16:12:41', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=parceria&create=1'),
(562, '2023-03-25', '16:12:41', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=parceria'),
(563, '2023-03-25', '16:15:54', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(564, '2023-03-25', '16:16:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(565, '2023-03-25', '16:16:21', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(566, '2023-03-25', '16:16:31', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(567, '2023-03-25', '16:16:47', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(568, '2023-03-25', '16:17:53', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/edit.php?table=parceria&header=*ID.str:Nome.img:Imagem&create=1'),
(569, '2023-03-25', '16:18:05', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/confirmEdit.php?table=parceria&create=1'),
(570, '2023-03-25', '16:18:05', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php?table=parceria'),
(571, '2023-03-25', '16:18:08', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(572, '2023-03-25', '16:19:08', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(573, '2023-03-25', '16:19:17', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(574, '2023-03-25', '16:23:04', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(575, '2023-03-25', '16:23:10', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/'),
(576, '2023-03-25', '16:27:13', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(577, '2023-03-25', '16:27:14', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(578, '2023-03-25', '16:27:57', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(579, '2023-03-25', '16:27:59', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(580, '2023-03-25', '16:27:59', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(581, '2023-03-25', '16:27:59', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(582, '2023-03-25', '16:28:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(583, '2023-03-25', '16:28:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(584, '2023-03-25', '16:28:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(585, '2023-03-25', '16:28:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(586, '2023-03-25', '16:28:05', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(587, '2023-03-25', '16:28:05', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(588, '2023-03-25', '16:28:17', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(589, '2023-03-25', '16:28:59', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(590, '2023-03-25', '16:29:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(591, '2023-03-25', '16:29:01', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(592, '2023-03-25', '16:29:01', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(593, '2023-03-25', '16:29:01', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(594, '2023-03-25', '16:29:09', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(595, '2023-03-25', '16:29:47', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(596, '2023-03-25', '16:29:51', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(597, '2023-03-25', '16:30:01', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(598, '2023-03-25', '16:30:09', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(599, '2023-03-25', '16:31:02', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(600, '2023-03-25', '16:31:40', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(601, '2023-03-25', '16:31:50', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(602, '2023-03-25', '16:31:51', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(603, '2023-03-25', '16:31:52', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Equipa.php'),
(604, '2023-03-25', '16:31:54', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(605, '2023-03-25', '16:31:55', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(606, '2023-03-25', '16:32:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(607, '2023-03-25', '16:32:12', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(608, '2023-03-25', '16:32:12', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(609, '2023-03-25', '16:32:25', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(610, '2023-03-25', '16:33:03', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(611, '2023-03-25', '16:33:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/'),
(612, '2023-03-25', '16:33:10', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(613, '2023-03-25', '16:33:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(614, '2023-03-25', '16:33:13', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(615, '2023-03-25', '16:33:30', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(616, '2023-03-25', '16:33:35', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(617, '2023-03-25', '16:33:37', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(618, '2023-03-25', '16:33:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(619, '2023-03-25', '16:34:07', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(620, '2023-03-25', '16:34:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(621, '2023-03-25', '16:34:12', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(622, '2023-03-25', '16:34:14', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(623, '2023-03-25', '16:34:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Equipa.php'),
(624, '2023-03-25', '16:34:17', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(625, '2023-03-25', '16:34:18', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(626, '2023-03-25', '16:34:19', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(627, '2023-03-25', '16:34:47', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(628, '2023-03-25', '16:34:56', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(629, '2023-03-25', '16:35:47', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(630, '2023-03-25', '16:35:52', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(631, '2023-03-25', '16:35:54', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(632, '2023-03-25', '16:35:56', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(633, '2023-03-25', '16:35:57', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(634, '2023-03-25', '16:35:59', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(635, '2023-03-25', '16:36:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(636, '2023-03-25', '16:36:09', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(637, '2023-03-25', '16:36:27', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(638, '2023-03-25', '16:36:52', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(639, '2023-03-25', '16:36:57', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(640, '2023-03-25', '16:36:58', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(641, '2023-03-25', '16:37:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Equipa.php'),
(642, '2023-03-25', '17:33:51', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(643, '2023-03-25', '17:34:10', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(644, '2023-03-25', '17:34:19', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(645, '2023-03-25', '17:34:45', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(646, '2023-03-25', '17:34:47', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(647, '2023-03-25', '17:34:49', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(648, '2023-03-25', '17:36:01', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(649, '2023-03-25', '17:36:06', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(650, '2023-03-25', '17:36:14', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(651, '2023-03-25', '17:36:52', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(652, '2023-03-25', '17:37:58', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(653, '2023-03-25', '17:38:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(654, '2023-03-25', '17:38:17', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(655, '2023-03-25', '17:38:59', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(656, '2023-03-25', '17:40:00', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(657, '2023-03-25', '17:40:14', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(658, '2023-03-25', '17:40:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(659, '2023-03-25', '17:40:18', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(660, '2023-03-25', '17:40:19', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(661, '2023-03-25', '17:40:27', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(662, '2023-03-25', '17:40:49', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(663, '2023-03-25', '17:40:50', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(664, '2023-03-25', '17:40:50', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(665, '2023-03-25', '17:40:51', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(666, '2023-03-25', '17:41:40', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(667, '2023-03-25', '17:41:43', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(668, '2023-03-25', '17:42:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(669, '2023-03-25', '17:42:13', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(670, '2023-03-25', '17:42:14', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(671, '2023-03-25', '17:42:15', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(672, '2023-03-25', '17:42:17', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(673, '2023-03-25', '17:42:18', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(674, '2023-03-25', '17:42:21', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(675, '2023-03-25', '17:42:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(676, '2023-03-25', '17:43:02', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/admin/index.php'),
(677, '2023-03-25', '17:43:04', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/index.php'),
(678, '2023-03-25', '17:43:05', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(679, '2023-03-25', '17:43:08', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(680, '2023-03-25', '17:43:10', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Equipa.php'),
(681, '2023-03-25', '17:43:10', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(682, '2023-03-25', '17:43:11', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(683, '2023-03-25', '17:43:13', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(684, '2023-03-25', '17:43:36', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(685, '2023-03-25', '17:43:38', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(686, '2023-03-25', '17:43:39', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Contato.php'),
(687, '2023-03-25', '17:43:40', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Equipa.php'),
(688, '2023-03-25', '17:43:41', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Produtos.php'),
(689, '2023-03-25', '17:43:44', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Equipa.php'),
(690, '2023-03-25', '17:43:52', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(691, '2023-03-25', '17:44:02', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Sobre.php'),
(692, '2023-03-25', '17:44:05', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(693, '2023-03-25', '17:45:30', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(694, '2023-03-25', '17:45:41', '127.0.0.1', 'v1r80tht7aq103h7sms2s29ffd', 'http://localhost/Site1/Galeria-de-imagens.php'),
(695, '2023-03-26', '14:12:25', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/'),
(696, '2023-03-26', '15:34:10', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(697, '2023-03-26', '15:34:21', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php'),
(698, '2023-03-26', '15:37:10', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php'),
(699, '2023-03-26', '15:37:19', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/login.php'),
(700, '2023-03-26', '15:37:19', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php'),
(701, '2023-03-26', '15:37:27', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=login'),
(702, '2023-03-26', '15:37:38', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=login'),
(703, '2023-03-26', '15:38:30', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(704, '2023-03-26', '15:43:30', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(705, '2023-03-26', '15:43:32', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?table=conteudo&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imagem&create=1'),
(706, '2023-03-26', '15:45:32', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&create=1'),
(707, '2023-03-26', '15:45:33', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(708, '2023-03-26', '15:48:05', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(709, '2023-03-26', '15:48:23', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(710, '2023-03-26', '15:50:17', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(711, '2023-03-26', '15:51:01', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(712, '2023-03-26', '15:51:12', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(713, '2023-03-26', '15:52:06', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(714, '2023-03-26', '15:52:22', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(715, '2023-03-26', '15:52:33', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(716, '2023-03-26', '15:52:38', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/index.php'),
(717, '2023-03-26', '15:52:40', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(718, '2023-03-26', '15:53:40', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=2&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(719, '2023-03-26', '15:53:41', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&ident=SELECT%20*%20FROM%20conteudo%20WHERE%20id%20=%202'),
(720, '2023-03-26', '15:54:30', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=2&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(721, '2023-03-26', '15:54:36', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(722, '2023-03-26', '15:54:39', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=2&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(723, '2023-03-26', '15:54:45', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&ident=SELECT%20*%20FROM%20conteudo%20WHERE%20id%20=%202'),
(724, '2023-03-26', '15:54:45', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(725, '2023-03-26', '15:54:49', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(726, '2023-03-26', '15:55:03', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Produtos.php'),
(727, '2023-03-26', '15:55:15', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(728, '2023-03-26', '16:00:52', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Galeria-de-imagens.php'),
(729, '2023-03-26', '16:01:05', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(730, '2023-03-26', '16:04:19', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(731, '2023-03-26', '16:04:48', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(732, '2023-03-26', '16:04:54', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/index.php'),
(733, '2023-03-26', '16:04:56', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(734, '2023-03-26', '16:05:13', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(735, '2023-03-26', '16:05:22', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(736, '2023-03-26', '16:05:55', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(737, '2023-03-26', '16:06:50', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(738, '2023-03-26', '16:06:52', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Galeria-de-imagens.php'),
(739, '2023-03-26', '16:06:53', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Produtos.php'),
(740, '2023-03-26', '16:07:37', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(741, '2023-03-26', '16:08:15', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?table=conteudo&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imagem&create=1'),
(742, '2023-03-26', '16:10:15', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&create=1'),
(743, '2023-03-26', '16:10:15', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(744, '2023-03-26', '16:11:16', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(745, '2023-03-26', '16:11:24', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(746, '2023-03-26', '16:13:59', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(747, '2023-03-26', '16:14:21', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(748, '2023-03-26', '16:14:36', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(749, '2023-03-26', '16:14:49', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(750, '2023-03-26', '16:15:18', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(751, '2023-03-26', '16:15:27', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(752, '2023-03-26', '16:18:27', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(753, '2023-03-26', '16:19:21', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(754, '2023-03-26', '16:19:30', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(755, '2023-03-26', '16:22:31', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(756, '2023-03-26', '16:22:39', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(757, '2023-03-26', '16:23:19', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(758, '2023-03-26', '16:27:25', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(759, '2023-03-26', '16:28:42', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(760, '2023-03-26', '16:29:14', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(761, '2023-03-26', '16:29:16', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(762, '2023-03-26', '16:29:23', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.str:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(763, '2023-03-26', '16:29:27', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(764, '2023-03-26', '16:29:29', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.txt:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(765, '2023-03-26', '16:30:28', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.txt:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(766, '2023-03-26', '16:31:27', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.txt:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(767, '2023-03-26', '16:32:12', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&ident=SELECT%20*%20FROM%20conteudo%20WHERE%20id%20=%203'),
(768, '2023-03-26', '16:32:12', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo');
INSERT INTO `logs` (`id`, `data`, `hora`, `IP`, `session`, `url`) VALUES
(769, '2023-03-26', '16:32:20', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(770, '2023-03-26', '16:32:25', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.txt:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(771, '2023-03-26', '16:32:31', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&ident=SELECT%20*%20FROM%20conteudo%20WHERE%20id%20=%203'),
(772, '2023-03-26', '16:32:31', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(773, '2023-03-26', '16:32:33', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(774, '2023-03-26', '16:33:03', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(775, '2023-03-26', '16:33:20', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(776, '2023-03-26', '16:33:27', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(777, '2023-03-26', '16:33:44', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(778, '2023-03-26', '16:36:31', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(779, '2023-03-26', '16:36:40', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(780, '2023-03-26', '16:36:46', '127.0.0.1', '4lg7tq1her0lutmnd9ihramns0', 'http://localhost/Site1/Sobre.php'),
(781, '2023-03-26', '16:37:06', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(782, '2023-03-26', '16:37:34', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(783, '2023-03-26', '16:37:41', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(784, '2023-03-26', '16:37:57', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(785, '2023-03-26', '16:38:19', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(786, '2023-03-26', '16:38:25', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(787, '2023-03-26', '16:53:16', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(788, '2023-03-26', '16:53:20', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(789, '2023-03-26', '16:54:05', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(790, '2023-03-26', '16:54:36', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(791, '2023-03-26', '16:54:47', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(792, '2023-03-26', '16:55:48', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(793, '2023-03-26', '16:57:29', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(794, '2023-03-26', '16:58:29', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(795, '2023-03-26', '16:58:45', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(796, '2023-03-26', '16:58:56', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(797, '2023-03-26', '16:59:39', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(798, '2023-03-26', '16:59:44', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(799, '2023-03-26', '16:59:58', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(800, '2023-03-26', '17:00:18', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(801, '2023-03-26', '17:01:02', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(802, '2023-03-26', '17:01:30', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(803, '2023-03-26', '17:01:36', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(804, '2023-03-26', '17:27:40', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(805, '2023-03-26', '17:28:10', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(806, '2023-03-26', '17:28:35', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(807, '2023-03-26', '17:29:16', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(808, '2023-03-26', '17:29:26', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(809, '2023-03-26', '17:29:44', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(810, '2023-03-26', '17:30:09', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(811, '2023-03-26', '17:30:15', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(812, '2023-03-26', '17:30:41', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(813, '2023-03-26', '17:30:56', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(814, '2023-03-26', '17:31:02', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(815, '2023-03-26', '17:31:13', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(816, '2023-03-26', '17:31:16', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(817, '2023-03-26', '17:31:24', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(818, '2023-03-26', '17:31:51', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(819, '2023-03-26', '17:33:01', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(820, '2023-03-26', '17:33:29', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(821, '2023-03-26', '17:33:31', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(822, '2023-03-26', '17:34:01', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(823, '2023-03-26', '17:52:11', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(824, '2023-03-26', '17:58:01', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(825, '2023-03-26', '17:58:06', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(826, '2023-03-26', '17:58:30', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(827, '2023-03-26', '17:58:56', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(828, '2023-03-26', '17:59:44', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(829, '2023-03-26', '17:59:49', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(830, '2023-03-26', '18:11:02', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php'),
(831, '2023-03-26', '18:13:31', '127.0.0.1', 'b2rtleit032v6hucbumcemnpdl', 'http://localhost/Site1/admin/index.php'),
(832, '2023-03-26', '18:13:36', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php'),
(833, '2023-03-26', '18:16:47', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(834, '2023-03-26', '18:31:59', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?table=conteudo&header=*ID.str:Cabe%C3%A7alho.txt:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imagem&create=1'),
(835, '2023-03-26', '18:35:32', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&create=1'),
(836, '2023-03-26', '18:35:32', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(837, '2023-03-26', '18:35:52', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(838, '2023-03-26', '18:40:39', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(839, '2023-03-26', '18:41:37', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(840, '2023-03-26', '18:46:12', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(841, '2023-03-26', '18:48:51', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(842, '2023-03-26', '18:50:11', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(843, '2023-03-26', '18:51:04', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(844, '2023-03-26', '18:51:21', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(845, '2023-03-26', '18:52:09', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(846, '2023-03-26', '18:52:35', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(847, '2023-03-26', '18:54:08', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(848, '2023-03-26', '18:55:40', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(849, '2023-03-26', '18:55:51', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(850, '2023-03-26', '18:56:44', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(851, '2023-03-26', '18:57:26', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(852, '2023-03-26', '18:57:58', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(853, '2023-03-26', '18:58:38', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(854, '2023-03-26', '18:59:13', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(855, '2023-03-26', '18:59:22', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(856, '2023-03-26', '18:59:28', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(857, '2023-03-26', '18:59:38', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(858, '2023-03-26', '18:59:45', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(859, '2023-03-26', '18:59:53', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(860, '2023-03-26', '19:00:18', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(861, '2023-03-26', '19:01:17', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(862, '2023-03-26', '19:01:36', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(863, '2023-03-26', '19:02:36', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(864, '2023-03-26', '19:02:56', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(865, '2023-03-26', '19:03:06', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(866, '2023-03-26', '19:03:10', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(867, '2023-03-26', '19:03:41', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(868, '2023-03-26', '19:04:20', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(869, '2023-03-26', '19:04:52', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(870, '2023-03-26', '19:05:00', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(871, '2023-03-26', '19:05:06', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(872, '2023-03-26', '19:05:24', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(873, '2023-03-26', '19:05:46', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(874, '2023-03-26', '19:05:52', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(875, '2023-03-26', '19:06:37', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(876, '2023-03-26', '19:06:45', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(877, '2023-03-26', '19:06:47', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(878, '2023-03-26', '19:06:55', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(879, '2023-03-26', '19:07:41', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(880, '2023-03-26', '19:07:49', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(881, '2023-03-26', '19:08:16', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(882, '2023-03-26', '19:08:23', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(883, '2023-03-26', '19:08:28', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(884, '2023-03-26', '19:08:34', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(885, '2023-03-26', '19:08:37', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(886, '2023-03-26', '19:08:42', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(887, '2023-03-26', '19:08:49', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(888, '2023-03-26', '19:08:56', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(889, '2023-03-26', '19:09:11', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(890, '2023-03-26', '19:09:28', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(891, '2023-03-26', '19:14:06', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(892, '2023-03-26', '19:14:34', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(893, '2023-03-26', '19:14:39', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(894, '2023-03-26', '19:16:19', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(895, '2023-03-26', '19:16:46', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(896, '2023-03-26', '19:16:58', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(897, '2023-03-26', '19:17:26', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=4&header=*ID.str:Cabe%C3%A7alho.txt:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(898, '2023-03-26', '19:17:31', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&ident=SELECT%20*%20FROM%20conteudo%20WHERE%20id%20=%204'),
(899, '2023-03-26', '19:17:31', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(900, '2023-03-26', '19:17:33', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(901, '2023-03-26', '19:17:59', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=3&header=*ID.str:Cabe%C3%A7alho.txt:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(902, '2023-03-26', '19:18:02', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(903, '2023-03-26', '19:18:05', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/edit.php?comment=Os%20tipos%20de%20conteudo%20definem%20o%20layout%20em%20que%20este%20ser%C3%A1%20mostrado&table=conteudo&nome=4&header=*ID.str:Cabe%C3%A7alho.txt:Conte%C3%BAdos.str:P%C3%A1gina.num:Tipo.str:Link.img:Imag'),
(904, '2023-03-26', '19:18:20', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/confirmEdit.php?table=conteudo&ident=SELECT%20*%20FROM%20conteudo%20WHERE%20id%20=%204'),
(905, '2023-03-26', '19:18:20', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/admin/index.php?table=conteudo'),
(906, '2023-03-26', '19:18:22', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php'),
(907, '2023-03-26', '19:18:36', '127.0.0.1', '0otp8kgpuvsi3n1n1h49bjq30i', 'http://localhost/Site1/Sobre.php');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `pai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `menu`
--

INSERT INTO `menu` (`id`, `nome`, `ativo`, `pai`) VALUES
(1, 'Página inicial :)', 1, 0),
(2, 'BackOffice', 1, 0),
(3, 'Produtos', 1, 0),
(4, 'Equipa', 0, 0),
(5, 'Contato', 1, 0),
(6, 'Galeria de imagens', 1, 0),
(8, 'Sobre', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `parceria`
--

CREATE TABLE `parceria` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `parceria`
--

INSERT INTO `parceria` (`id`, `nome`, `img`) VALUES
(1, 'osu', 'Osu!_Logo_2016.svg.png'),
(2, 'touhou', 'custom_logos___touhou_project_by_supersonicsponge_da7rax5-fullview.png'),
(3, 'governo japones', '800px-Emblem_of_the_Prime_Minister_of_Japan.svg.png'),
(4, 'partido comunista chines', 'kisspng-communist-youth-league-of-china-18th-national-cong-china-youth-league-badge-5a99978576d952.0778789115200152374868.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `img1` varchar(250) DEFAULT NULL,
  `img2` varchar(250) DEFAULT NULL,
  `img3` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `img1`, `img2`, `img3`) VALUES
(2, 'yes', 'yes', 400, '19904.jpg', '813764172902170624.gif', '_jmFnTvw_400x400.jpg'),
(3, '123', '123', 123, 'a.jpg', 'NULL', 'NULL');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fumo` (`fumo`);

--
-- Índices para tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `equipa`
--
ALTER TABLE `equipa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `parceria`
--
ALTER TABLE `parceria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `equipa`
--
ALTER TABLE `equipa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=908;

--
-- AUTO_INCREMENT de tabela `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `parceria`
--
ALTER TABLE `parceria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`fumo`) REFERENCES `produtos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

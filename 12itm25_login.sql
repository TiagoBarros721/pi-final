-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Mar-2023 às 23:14
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
('yes', 'yes@yes.yes', '$2y$10$tFpU2KCPVjQ3fF/C/h6gDe85HlhS/rBhbT1Cs.LOT3fbeA8mA9azq', 1, 1);

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
(306, '2023-03-19', '18:15:56', '127.0.0.1', 'r1rcj68rqaa9abbik188j8ahu7', 'http://localhost/Site1/admin/crud.php?table=equipa');

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
(4, 'Equipa', 0, 0);

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
-- Índices para tabela `equipa`
--
ALTER TABLE `equipa`
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
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `equipa`
--
ALTER TABLE `equipa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT de tabela `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

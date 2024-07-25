-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/06/2024 às 00:23
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
-- Banco de dados: `bd_lb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_img`
--

CREATE TABLE `tb_img` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `imagem` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_img`
--

INSERT INTO `tb_img` (`id`, `nome`, `imagem`) VALUES
(1, 'a', 'http://localhost/p_i/alfabeto/a.jpg'),
(2, 'b', 'http://localhost/p_i/alfabeto/b.jpg'),
(3, 'c', 'http://localhost/p_i/alfabeto/c.jpg'),
(4, 'd', 'http://localhost/p_i/alfabeto/d.jpg'),
(5, 'e', 'http://localhost/p_i/alfabeto/e.jpg'),
(6, 'f', 'http://localhost/p_i/alfabeto/f.jpg'),
(7, 'g', 'http://localhost/p_i/alfabeto/g.jpg'),
(8, 'h', 'http://localhost/p_i/alfabeto/h.jpg'),
(9, 'i', 'http://localhost/p_i/alfabeto/i.jpg'),
(10, 'j', 'http://localhost/p_i/alfabeto/j.jpg'),
(11, 'k', 'http://localhost/p_i/alfabeto/k.jpg'),
(12, 'l', 'http://localhost/p_i/alfabeto/l.jpg'),
(13, 'm', 'http://localhost/p_i/alfabeto/m.jpg'),
(14, 'n', 'http://localhost/p_i/alfabeto/n.jpg'),
(15, 'o', 'http://localhost/p_i/alfabeto/o.jpg'),
(16, 'p', 'http://localhost/p_i/alfabeto/p.jpg'),
(17, 'q', 'http://localhost/p_i/alfabeto/q.jpg'),
(18, 'r', 'http://localhost/p_i/alfabeto/r.jpg'),
(19, 's', 'http://localhost/p_i/alfabeto/s.jpg'),
(20, 't', 'http://localhost/p_i/alfabeto/t.jpg'),
(21, 'u', 'http://localhost/p_i/alfabeto/u.jpg'),
(22, 'v', 'http://localhost/p_i/alfabeto/v.jpg'),
(23, 'w', 'http://localhost/p_i/alfabeto/w.jpg'),
(24, 'x', 'http://localhost/p_i/alfabeto/x.jpg'),
(25, 'y', 'http://localhost/p_i/alfabeto/y.jpg'),
(26, 'z', 'http://localhost/p_i/alfabeto/z.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `sobrenome` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `nome`, `sobrenome`, `email`, `senha`) VALUES
(1, 'Guilherme', 'Pereira', 'Guilhermemap85@gmail.com', '123456789'),
(2, 'Flinstons', 'Jr', 'fliflin01@gmail.com', '987654321');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_img`
--
ALTER TABLE `tb_img`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_img`
--
ALTER TABLE `tb_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

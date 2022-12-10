-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql113.byetcluster.com
-- Tempo de geração: 09/12/2022 às 19:28
-- Versão do servidor: 10.3.27-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `epiz_31689065_AdoPet`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentario`
--

CREATE TABLE `comentario` (
  `id_coment` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comentario` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `comentario`
--

INSERT INTO `comentario` (`id_coment`, `user_id`, `post_id`, `comentario`) VALUES
(44, 0, 0, ''),
(42, 0, 0, ''),
(40, 67, 45, 'Que legal'),
(39, 65, 48, 'Fofo'),
(38, 63, 42, 'Mto brabo que isso'),
(43, 0, 0, 'ola'),
(36, 60, 42, 'Parece um algodÃ£o doce'),
(35, 60, 45, 'Muito lindo esse vacalo'),
(24, 17, 41, 'que lindo!!'),
(34, 17, 42, 'Cachorro rosa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `interesse`
--

CREATE TABLE `interesse` (
  `id_post` int(11) NOT NULL,
  `email` varchar(999) DEFAULT NULL,
  `nome` varchar(999) DEFAULT NULL,
  `texto` varchar(999) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `interesse`
--

INSERT INTO `interesse` (`id_post`, `email`, `nome`, `texto`) VALUES
(11, 'ivone3749@gmail.com', 'Ivone', 'Para a perfumista Carmita MagalhÃ£es, da casa de fragrÃ¢ncias Firmenich, o lanÃ§amento de Jolie Delicate foi inspirado na jovialidade da menina-mulher que Ã© delicada, mas tambÃ©m divertida e sempre antenada na moda. \"Trabalhei as notas de Topo muito frescas atravÃ©s do LimÃ£o Siciliano e da Pink Grapefruit. No Corpo, adicionei a Pitaya Neon para promover uma tonalidade vibrante e suculenta, unindo-a com o delicado buquÃª floral de PeÃ´nia e do LÃ­rio do Vale, que traz naturalidade e modernidade para a fragrÃ¢ncia. No Fundo, temos um perfil amadeirado, com a sensaÃ§Ã£o de conforto do Musk Branco.\" - ressalta Carmita.'),
(12, 'osvaldo734@gmail.com', 'Osvaldo', 'Uma referÃªncia quando o assunto Ã© democracia Ã© a antiga cidade grega Atenas, onde surgiu essa forma de governo com a participaÃ§Ã£o popular na polÃ­tica e a valorizaÃ§Ã£o da cidadania, a qual, contudo, era bastante restrita, visto que excluÃ­a mulheres, estrangeiros e escravos. Nesse sentido, Ã© possÃ­vel observar que o Brasil atual vive uma situaÃ§Ã£o anÃ¡loga Ã  ateniense, dado que, mesmo sendo uma democracia - neste caso, indireta - quase 3 milhÃµes de brasileiros, segundo projeÃ§Ã£o do IBGE, nÃ£o possuem registro civil, nÃ£o sendo por isso, reconhecidos como cidadÃ£os. Assim, torna-se imprescindÃ­vel discutir essa situaÃ§Ã£o, pois ela repete erros antigos ao privar grupos sociais da participaÃ§Ã£o democrÃ¡tica e se perpetua por conta da morosidade do Estado que afeta direitos constitucionais.'),
(9, 'ronaldo861237@gmail.com', 'Ronaldo', 'EstatÃ­sticas mostram que a coleta de lixo Ã© uma das ocupaÃ§Ãµes humanas mais perigosas, sendo algumas vezes mais perigosa atÃ© que a profissÃ£o de policial, embora seja menos perigosa que a pesca comercial e a atividade agrÃ­cola. Os riscos da profissÃ£o incluem vidro quebrado, resÃ­duos hospitalares como seringas, produtos quÃ­micos cÃ¡usticos, queda de objetos de contÃªineres de lixo superlotados, doenÃ§as que podem acompanhar resÃ­duos sÃ³lidos, asbesto, ataque de cÃ£es, poeira, fumaÃ§a, clima adverso, acidente de trÃ¢nsito e odores nauseantes.'),
(14, 'cleiton8372@gmail.com', 'Cleiton', 'Diariamente em artigos, telejornais ou revistas, pode-se ver notÃ­cias a respeito da saÃºde pÃºblica no Brasil. Assim Ã© importante destacar que a busca pelas informaÃ§Ãµes, referentes ao assunto da saÃºde pÃºblica, deve ser feita por parte do aluno que desejar se aprofundar mais no tema e assim, munido de todas as informaÃ§Ãµes sentir-se seguro ao produzir sua dissertaÃ§Ã£o. Inclusive, os textos motivadores que geralmente vem junto com a proposta de redaÃ§Ã£o, servem de muita ajuda aos estudantes para compreender o que eles devem dissertar.'),
(16, 'istefinha@gmail.com', 'Shtefany Cristina', 'gostei desse quero pra mim'),
(17, 'xxx@yyy.com', 'xxx xxx', 'xxxxx'),
(18, 'gsbrave007@gmail.com', 'Gustavo Souza', 'Adoraria adotar esse cavalo, ele parece muito bonito!'),
(19, 'adm@gmail.com', 'Melhor', 'KDSHAKJDHKA'),
(20, '', '', 'a'),
(21, '', 'a', 'a'),
(22, '', '', 'a'),
(23, '', 'a', 'a'),
(24, '', 'a', 'aaaa'),
(25, '', '', ''),
(26, '', 'a', 'abluevaleukkasdlfkjasdlÃ§fj'),
(27, '', 'a', 'memo?'),
(28, '', 'nome', 'texto'),
(29, '', 'Teve bÃ£o', 'gostei'),
(30, '', 'amefnwehfkjqlewfh', 'kjdjkhfakjsfhkjadsh');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `hour` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  `iduser` int(11) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `logs`
--

INSERT INTO `logs` (`id`, `hour`, `ip`, `iduser`, `action`) VALUES
(72, '2022-06-28 02:09:38', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(58, '2022-06-28 01:20:58', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(57, '2022-06-28 12:55:11', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(56, '2022-06-28 12:49:08', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(55, '2022-06-28 12:25:38', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(54, '2022-06-28 12:10:02', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(53, '2022-06-28 12:07:39', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(52, '2022-06-27 08:05:59', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(51, '2022-06-27 08:00:51', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(50, '2022-06-27 07:58:30', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(49, '2022-06-27 07:57:08', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(48, '2022-06-27 07:51:42', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(47, '2022-06-27 07:49:34', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(46, '2022-06-27 07:48:16', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(45, '2022-06-27 07:47:35', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(44, '2022-06-27 07:47:22', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(43, '2022-06-27 07:44:31', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(41, '2022-06-27 03:53:13', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(40, '2022-06-27 03:52:51', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(39, '2022-06-27 03:46:50', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(38, '2022-06-27 03:45:50', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(37, '2022-06-27 03:43:46', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(36, '2022-06-27 03:39:48', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(35, '2022-06-27 03:34:48', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(33, '0000-00-00 00:00:00', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(59, '2022-06-28 01:23:27', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(60, '2022-06-28 01:31:32', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(61, '2022-06-28 01:33:38', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(62, '2022-06-28 01:34:35', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(63, '2022-06-28 01:41:08', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(64, '2022-06-28 01:41:16', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(65, '2022-06-28 01:58:35', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(66, '2022-06-28 02:06:17', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(67, '2022-06-28 02:06:29', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(68, '2022-06-28 02:07:36', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(69, '2022-06-28 02:07:45', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(70, '2022-06-28 02:08:17', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(71, '2022-06-28 02:08:27', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(73, '2022-06-28 09:03:33', '191.7.72.120', 0, 'UsuÃ¡rio fez login'),
(74, '2022-06-28 09:03:48', '191.7.72.120', 0, 'UsuÃ¡rio fez logout'),
(75, '2022-06-30 09:10:08', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(76, '2022-06-30 09:27:22', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(77, '2022-06-30 09:27:50', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(78, '2022-06-30 09:44:37', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(79, '2022-06-30 11:05:46', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(80, '2022-06-30 12:14:01', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(81, '2022-06-30 07:44:54', '131.196.79.64', 0, 'UsuÃ¡rio fez login'),
(82, '2022-06-30 08:10:40', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(83, '2022-06-30 08:12:45', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(84, '2022-06-30 08:14:11', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(85, '2022-06-30 08:15:45', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(86, '2022-06-30 08:16:23', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(87, '2022-06-30 08:18:52', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(88, '2022-06-30 08:19:07', '131.196.79.64', 0, 'UsuÃ¡rio fez login'),
(89, '2022-06-30 08:19:35', '131.196.79.64', 0, 'UsuÃ¡rio fez logout'),
(90, '2022-06-30 08:19:41', '131.196.79.64', 0, 'UsuÃ¡rio fez login'),
(91, '2022-06-30 08:19:51', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(92, '2022-06-30 08:21:05', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(93, '2022-06-30 08:21:08', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(94, '2022-06-30 08:21:25', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(95, '2022-06-30 08:22:23', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(96, '2022-06-30 08:23:06', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(97, '2022-06-30 08:23:11', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(98, '2022-06-30 08:25:10', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(99, '2022-06-30 08:25:27', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(100, '2022-06-30 08:26:00', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(101, '2022-06-30 08:26:35', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(102, '2022-06-30 08:26:47', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(103, '2022-06-30 08:27:08', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(104, '2022-06-30 08:27:53', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(105, '2022-06-30 08:28:55', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(106, '2022-06-30 08:29:33', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(107, '2022-06-30 08:30:01', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(108, '2022-06-30 08:30:20', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(109, '2022-06-30 08:30:38', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(110, '2022-06-30 08:30:50', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(111, '2022-06-30 08:31:57', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(112, '2022-06-30 08:32:16', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(113, '2022-06-30 08:32:35', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(114, '2022-06-30 08:32:59', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(115, '2022-06-30 08:34:19', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(116, '2022-06-30 08:35:02', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(117, '2022-06-30 08:35:49', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(118, '2022-06-30 08:36:22', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(119, '2022-06-30 08:36:31', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(120, '2022-06-30 08:36:56', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(121, '2022-06-30 08:37:09', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(122, '2022-06-30 08:37:16', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(123, '2022-06-30 08:37:49', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(124, '2022-06-30 08:37:56', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(125, '2022-06-30 08:38:19', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(126, '2022-06-30 08:38:56', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(127, '2022-06-30 08:39:03', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(128, '2022-06-30 08:39:42', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(129, '2022-06-30 08:40:45', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(130, '2022-06-30 08:41:00', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(131, '2022-06-30 08:41:48', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(132, '2022-06-30 08:42:12', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(133, '2022-06-30 08:44:28', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(134, '2022-06-30 08:44:47', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(135, '2022-06-30 08:44:56', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(136, '2022-06-30 08:45:37', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(137, '2022-06-30 08:46:15', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(138, '2022-06-30 08:46:32', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(139, '2022-06-30 08:46:46', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(140, '2022-06-30 08:47:10', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(141, '2022-06-30 08:47:15', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(142, '2022-06-30 08:47:53', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(143, '2022-06-30 08:49:15', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(144, '2022-06-30 08:50:02', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(145, '2022-06-30 08:50:30', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(146, '2022-06-30 08:51:03', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(147, '2022-06-30 08:51:23', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(148, '2022-06-30 08:52:14', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(149, '2022-06-30 08:52:38', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(150, '2022-06-30 08:52:43', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(151, '2022-06-30 08:53:53', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(152, '2022-06-30 08:54:10', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(153, '2022-06-30 08:54:28', '131.196.79.64', 0, 'UsuÃ¡rio fez login'),
(154, '2022-06-30 08:54:39', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(155, '2022-06-30 08:56:21', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(156, '2022-06-30 08:56:34', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(157, '2022-06-30 08:56:49', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(158, '2022-06-30 08:58:29', '168.194.93.29', 0, 'UsuÃ¡rio fez logout'),
(159, '2022-06-30 08:59:12', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(160, '2022-06-30 09:04:32', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(161, '2022-06-30 09:06:34', '131.196.79.64', 0, 'UsuÃ¡rio fez logout'),
(162, '2022-06-30 09:08:02', '131.196.79.64', 0, 'UsuÃ¡rio fez login'),
(163, '2022-06-30 09:08:16', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(164, '2022-06-30 09:08:55', '187.86.111.39', 0, 'UsuÃ¡rio fez login'),
(165, '2022-06-30 09:10:29', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(166, '2022-06-30 09:12:48', '131.196.79.64', 0, 'UsuÃ¡rio fez logout'),
(167, '2022-06-30 09:12:57', '131.196.79.64', 0, 'UsuÃ¡rio fez login'),
(168, '2022-06-30 09:13:15', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(169, '2022-06-30 09:15:00', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(170, '2022-06-30 09:16:34', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(171, '2022-06-30 09:17:56', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(172, '2022-06-30 09:18:29', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(173, '2022-06-30 09:19:01', '168.194.93.29', 0, 'UsuÃ¡rio fez login'),
(174, '2022-06-30 09:19:24', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(175, '2022-06-30 09:22:12', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(176, '2022-06-30 09:25:29', '191.7.72.123', 0, 'UsuÃ¡rio fez logout'),
(177, '2022-06-30 09:25:38', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(178, '2022-06-30 09:34:43', '191.7.72.123', 0, 'UsuÃ¡rio fez login'),
(179, '2022-07-01 06:10:14', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(180, '2022-07-01 06:14:33', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(181, '2022-07-01 06:21:19', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(182, '2022-07-01 06:29:27', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(183, '2022-07-01 07:26:02', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(184, '2022-07-01 07:28:38', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(185, '2022-07-01 07:28:38', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(186, '2022-07-01 08:05:28', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(187, '2022-07-01 08:20:29', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(188, '2022-07-17 10:50:27', '168.194.95.11', 0, 'UsuÃ¡rio fez login'),
(189, '2022-07-18 12:59:34', '191.7.72.100', 0, 'UsuÃ¡rio fez login'),
(190, '2022-08-09 06:59:53', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(191, '2022-08-09 07:01:03', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(192, '2022-08-09 07:01:48', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(193, '2022-08-09 07:04:34', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(194, '2022-08-09 07:04:50', '200.131.11.6', 0, 'UsuÃ¡rio fez logout'),
(195, '2022-08-09 07:04:51', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(196, '2022-08-09 07:06:21', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(197, '2022-08-15 08:23:50', '131.196.79.206', 0, 'UsuÃ¡rio fez login'),
(198, '2022-08-15 08:30:45', '131.196.79.206', 0, 'UsuÃ¡rio fez logout'),
(199, '2022-08-15 08:31:29', '131.196.79.206', 0, 'UsuÃ¡rio fez login'),
(200, '2022-08-15 08:34:07', '131.196.79.206', 0, 'UsuÃ¡rio fez logout'),
(201, '2022-08-15 08:37:12', '131.196.79.206', 0, 'UsuÃ¡rio fez login'),
(202, '2022-08-15 08:39:38', '131.196.79.206', 0, 'UsuÃ¡rio fez logout'),
(203, '2022-08-15 08:40:43', '131.196.79.206', 0, 'UsuÃ¡rio fez login'),
(204, '2022-08-15 08:44:12', '131.196.79.206', 0, 'UsuÃ¡rio fez logout'),
(205, '2022-08-15 08:44:53', '131.196.79.206', 0, 'UsuÃ¡rio fez login'),
(206, '2022-08-15 08:48:28', '131.196.79.206', 0, 'UsuÃ¡rio fez logout'),
(207, '2022-08-15 08:49:12', '131.196.79.206', 0, 'UsuÃ¡rio fez login'),
(208, '2022-08-15 08:52:34', '131.196.79.206', 0, 'UsuÃ¡rio fez logout'),
(209, '2022-08-15 08:53:47', '131.196.79.206', 0, 'UsuÃ¡rio fez login'),
(210, '2022-08-15 08:55:26', '131.196.79.206', 0, 'UsuÃ¡rio fez logout'),
(211, '2022-08-15 08:59:42', '131.196.79.206', 0, 'UsuÃ¡rio fez login'),
(212, '2022-08-15 09:03:31', '131.196.79.206', 0, 'UsuÃ¡rio fez logout'),
(213, '2022-08-16 07:26:43', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(214, '2022-08-16 07:33:52', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(215, '2022-08-19 09:11:25', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(216, '2022-09-14 12:56:41', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(217, '2022-10-20 08:35:54', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(218, '2022-11-22 05:19:03', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(219, '2022-11-22 05:19:22', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(220, '2022-11-22 05:20:34', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(221, '2022-11-22 05:32:58', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(222, '2022-11-22 05:33:06', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(223, '2022-11-22 06:36:21', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(224, '2022-11-22 06:38:13', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(225, '2022-11-22 06:38:20', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(226, '2022-11-22 06:38:29', '200.131.11.2', 0, 'UsuÃ¡rio fez logout'),
(227, '2022-11-22 06:43:47', '200.131.11.2', 0, 'UsuÃ¡rio fez login'),
(228, '2022-11-24 11:32:57', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(229, '2022-11-24 11:33:55', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(230, '2022-11-24 11:35:14', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(231, '2022-11-24 11:39:01', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(232, '2022-11-24 11:40:36', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(233, '2022-11-24 11:41:18', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(234, '2022-11-24 11:41:33', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(235, '2022-11-24 11:44:57', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(236, '2022-11-24 11:46:04', '200.131.11.6', 0, 'UsuÃ¡rio fez login'),
(237, '2022-11-25 05:33:25', '200.131.11.6', 0, 'UsuÃ¡rio fez login');

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `titulo` varchar(999) DEFAULT NULL,
  `imagem` varchar(999) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `posts`
--

INSERT INTO `posts` (`id_post`, `id_user`, `titulo`, `imagem`) VALUES
(47, 60, 'Adota meu animalzinho pfv', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk1_kz8NyuBZpOl039fZSWCxHwNBJBdClgTw&usqp=CAU'),
(48, 61, 'Meu animal', 'https://img.olx.com.br/images/70/705915023163940.jpg'),
(45, 17, 'Vacalo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJRfzseXaZLKkmrz7CuCdkpZGccqZmmSKgFZ14tHEFVtuCx2DmCvzOSXgCvNT4cFPIOq0&usqp=CAU'),
(44, 52, 'Cachorro', 'https://www.azpetshop.com.br/blog/wp-content/uploads/2021/03/quantos-anos-vive-um-gato-805x452.jpg'),
(42, 17, 'Resgatado hoje esperando uma familia!', 'https://blogs.correiobraziliense.com.br/nqv/wp-content/uploads/sites/22/2018/08/DjubZ3nXgAAw4e--1280x720.jpg'),
(41, 17, 'Cachorrinho para adoÃ§Ã£o!', 'https://www.petlove.com.br/dicas/wp-content/uploads/2020/10/Cachorro-culpa-Petlove.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `senha` varchar(99) DEFAULT NULL,
  `nickname` varchar(225) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `bio` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `nickname`, `picture`, `bio`) VALUES
(27, 'FlÃ¡vio', 'flaviano@gmail.com', 'GGBFCugvkkVS', 'flavio379', 'https://cdn.acritica.net/upload/dn_arquivo/2021/07/douglas-queiroz-2.jpg', ''),
(26, 'Josiane', '1josy.com@gmail.com', 'sodafod14.5', 'Satomoit', 'https://s2.glbimg.com/x2Hg7IGKSh_CB0svv726-W-bhic=/0x0:1210x540/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2019/6/q/M5UZDRSfuWAbL8a1j9yA/morgana-splash-art.png', 'Jogo de Morgana'),
(24, 'Breno Madeira', 'brenodominicianomadeira@hotmail.com', 'bolsonaro22', 'Breno', 'https://www.petlove.com.br/images/breeds/193223/profile/original/golden_retriever-p.jpg?1532539102', 'Gou de retriver pesquisar'),
(25, 'Laura', 'laurinha213@gmail.com', 'ariGhTinTryn', 'laurinha.win', 'https://www.rbsdirect.com.br/imagesrc/26518400.jpg?w=300', ''),
(20, 'Higor Bachiao', 'higor.7522499@aluno.mg.gov.br', 'higaolindo1010', 'Higuinhouiuiui', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF-v9aSh1UgeLbhWHuBg_41iA3aMfgV-QNCw&usqp=CAU', 'ele/dela'),
(21, 'Kaiky Felipe', 'kaikymalmal@gmail.com', 'sucodemaracuja', 'Kaikyfelipe4', 'https://maringa.cidadecancao.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/m/a/maracuja-azedo-kg-0000000056090.jpg', 'Maracuja'),
(22, 'Victoria', 'victoria213@gmail.com', 'HuQNRi6d%w35', 'vic_silva', 'https://i.pinimg.com/736x/eb/fb/17/ebfb17872c180c57edb924e7ee1d40cc.jpg', ''),
(23, 'Paulo Roberto', 'paulorobertjaco@hotmail.com', 'Ã§621p09', 'IrmÃ£o do JacÃ³', 'https://img.freepik.com/fotos-gratis/retrato-de-um-homem-barbudo_167187-540.jpg?w=2000', 'Foda'),
(19, 'Fernando LuÃ­z', 'nandoluizprimeiro@gmail.com', 'caramuitofoda', 'Luiz Fernando', 'https://pbs.twimg.com/profile_images/1452109729862406146/yAery_f0_400x400.jpg', 'Cara muito foda que estuda no IF'),
(17, 'ADM', 'adm@gmail.com', 'ifsuldeminas', 'Adopet', 'https://i0.wp.com/www.portaldodog.com.br/cachorros/wp-content/uploads/2021/03/visa%CC%83o-do-cachorro-2.jpeg?resize=626%2C626&ssl=1', 'Nesse exato momento, existem milhares de animaizinhos esperando um humano para chamar de seu e nÃ³s da AdoPet procuramos facilitar o seu processo!'),
(18, 'El andro', 'eliandro@gmail.com', 'pretonegro', 'Kira', 'https://nitter.net/pic/media%2FFIVopPtXwAIIA7q.jpg%3Fname%3Dsmall', '...'),
(28, 'Jucemar', 'jucemar.correia@gmail.com', 'jucemarvitorcorreiajunior', 'Cemar', 'https://www.girodoboi.com.br/wp-content/uploads/2017/10/primeira-cria-vacas-cuidados-com-bezerros.jpg', 'NÃ£o tem Nelore ?'),
(29, 'AndrÃ©', 'adrezito3126@gmail.com', 'GGBFCugvkkVS', 'andrÃ©felip', 'https://i.pinimg.com/originals/4a/ba/33/4aba3329827feb244593ac526387ad07.jpg', ''),
(30, 'Mateus Silva Melo', 'mateus42578@gmail.com', 'AyrtonPantaneroPresida2022', 'MateusinhoReiDelas1234', 'https://tvcultura.com.br/upload/tvcultura/programas/20180309200739_logo-pjmasks.jpg', 'Chama no ***** da ****'),
(31, 'Alex', 'alexandro@gmail.com', 'GGBFCugvkkVS', 'alexdograu', 'https://i1.sndcdn.com/avatars-000153109913-nsdxlf-t240x240.jpg', ''),
(32, 'Gabriel', 'gabgab@gmail.com', 'futzinho', 'Biel', 'https://midias.correiobraziliense.com.br/_midias/jpg/2022/04/15/675x450/1_gabriel_luiz-7777527.jpg?20220415134730?20220415134730', ''),
(33, 'Diego', 'dieguinhoaer@gmail.com', 'GGBFCugvkkVS', 'diego.nhau', 'https://pbs.twimg.com/media/DyRcjrRX0AAUI_Z.jpg', ''),
(34, 'Sarah', 'bewjin@gmail.com', 'muac', 'Bew', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTysnmVdScGC9WaJrYKLSa7-LyfcGNZEWn15A&usqp=CAU', ''),
(35, 'Ivone', 'ivonetedasilva@gmail.com', 'GGBFCugvkkVS', 'ivone.nete', 'https://jornaldejales.com.br/wp-content/uploads/2022/05/Nilze-Maria-Fernandes-de-Morais.jpeg', ''),
(37, 'Rodrigo', 'zard@gmail.com', 'vava', 'Zard', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvi29pkwHJQd9G93nQWTjEL_m3eFeI4-t60w&usqp=CAU', ''),
(38, 'Bianca', 'bia221@gmail.com', 'GGBFCugvkkVS', 'bia_azevedo', 'https://i.pinimg.com/280x280_RS/9f/4e/0a/9f4e0a2be061ce9dcb79bf693b02f822.jpg', ''),
(36, 'Caio', 'caiofelipe@gmail.com', 'GGBFCugvkkVS', 'caiojalevanto', 'https://pbs.twimg.com/profile_images/1248041523654131712/UoCfx8w__400x400.jpg', ''),
(39, 'JosÃ© Ulisses Bueno', 'joseulissesbuenoo@gmail.com', 'ednaldopereira', 'Shironzin', 'https://images.uncyc.org/pt/f/f4/SorrisaoaJato.jpg', 'Gatos <3'),
(40, 'Luiz', 'luizinho@gmail.com', 'GGBFCugvkkVS', 'luigli', 'https://production-gameflipusercontent.fingershock.com/us-east-1:38fb37b4-31b1-443b-9481-055277a1ea78/avatar/d908912c-448c-4c69-9823-b457eda403c2/200x200.jpg', 'Em busca de adotar os amores da minha vida. Luaninha e Eliandro, venham pra casa!!! ðŸ›'),
(41, 'Felipe', 'felps@gmail.com', 'GGBFCugvkkVS', 'felipe.peixoto', 'https://felipepeixoto.com.br/wp-content/uploads/2020/09/felipe-2020-1.png', ''),
(42, 'JÃºlia', 'jolia@gmail.com', 'acerola', 'Tia JÃ³lia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR52Xcr1fVa_G9MKwkMdTt30yljZLEgsyhxsg&usqp=CAU', ''),
(43, 'Laura', 'laurinha@gmail.com', 'GGBFCugvkkVS', 'lala.oliveira', 'https://img.estadao.com.br/fotos/colunas/2021/11/173_laurakarpusca.jpg', ''),
(44, 'Ana Maria', 'mariazinha@gmail.com', 'GGBFCugvkkVS', 'bolinha.anam', 'https://glfeventscdn.azureedge.net/wp-content/uploads/sites/2/2021/08/Ana-Maria-Hernandez-Salgar.png', ''),
(45, 'Danilo', 'xeno@gmail.com', 'lol', 'Xeno', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbqSgh0FVXYLBp_Q3oapocc722szhN_LR5Ww&usqp=CAU', ''),
(46, 'Saimon', 'giu@gmail.com', 'paulista', 'Giu', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmmwRvAr7gCnA8X8r212_kC8CdcKlnRAdvJQ&usqp=CAU', ''),
(47, 'Kitharo', 'nohax@gmail.com', 'panguao', 'Nohax', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ElmETUB13YumsEKFkPqYeiSieQ9RtfPm3J-rJ-E09yT8XKL1Ea-I1S2lYY9WJd7fYPs&usqp=CAU', ''),
(48, 'Marjorie', 'cupida@gmail.com', 'neechan', 'Cupida', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShiQFBHrIATf4bp7GxAptOgZfNxapGmFUHqA&usqp=CA', ''),
(49, 'Otavio', 'nine@gmail.com', 'veio', 'Nine', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzRh1hW7af7ryIqW85kYLiGklIUEA4a5nW-w&usqp=CAU', ''),
(50, 'Katyrine', 'kat@gmail.com', 'pato', 'Kat', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcKY4ujMBon1kK_TH19ZvKjVtmfAtLRDwbqw&usqp=CAU', ''),
(51, 'Eloisa', 'rochaeloisa123@gmail.com', '123', 'Eurus', 'https://www.torredevigilancia.com/wp-content/uploads/2017/12/rick-and-morty-capa.jpg', 'Ã‰noizqavoabruxÃ£o'),
(52, 'Eduarda', 'duda@gmail.com', 'raiden', 'Duda', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX4epTliwBZjbkSiaEAAcRPMMzEWWP51I7QQ&usqp=CAU', ''),
(53, 'Gabriel', 'gs@gmail.com', 'academia', 'Gs', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNKB2xyXn9mYUp5qs0KJa1OEBPxiVaj1mgJg&usqp=CAU', ''),
(54, 'Alfredo', 'alfredodasgatinha69@gmail.com', '40028922', 'Alfredo', 'https://extra.globo.com/incoming/23331978-538-dbd/w976h550-PROP/marcosoliveira.jpg', 'DanÃ§a gatinho dansa'),
(55, 'Paulo', 'pauloalvesjaco@gmail.com', 'paidojaco', 'Paulinho', 'https://static.appgeek.com.br/imagens/image-545.jpg', 'Pai do JacÃ³'),
(56, 'Leila Mendes', 'leilamendess@gmail.com', 'mÃ£edojaco', 'Tia Leila', 'https://i0.wp.com/techwek.com/wp-content/uploads/2021/04/imagens-de-bom-dia.jpg?resize=524%2C523&ssl=1', 'MÃ£e do JacÃ³'),
(57, 'SthefanyCristina', 'istefinha@gmail.com', 'sthelaura', 'Cabelin de Fogo', 'https://pbs.twimg.com/media/EsxK8owW8AMM4R6.jpg', 'CAVALO'),
(58, 'pauloprof', 'pauloprof@pauloprof', '123456', NULL, NULL, NULL),
(59, '', '', '', NULL, NULL, NULL),
(60, 'JoÃ£o Victor', 'joaolima.gxp@gmail.com', 'euamopsoo', 'Vitinho inho', 'https://i.pinimg.com/originals/84/4c/b2/844cb2d1bfb080522b276a8ce9c82b2b.jpg', 'Sla cara, sÃ³ o scroll master memo'),
(61, 'Gustavo Souza', 'gsbrave007@gmail.com', 'oliveiragustavo007', 'GustavoOliveira', 'https://s2.glbimg.com/HX9OXm0EP_vrBcIDtiDl5ze5Pfc=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/P/k/MtjVSiTiCA2S2pym9wxw/fortnite.jpg', ''),
(62, 'Neuza Oliveira', 'NeuzaOliveira2016@gmail.com', 'neuzaguaxupe2016', '', 'https://casa.abril.com.br/wp-content/uploads/2022/01/1-flor-de-lotus-conhec%CC%A7a-o-signifcado-e-como-usar-a-planta-para-decorar.jpg?quality=95&strip=info&w=1024', ''),
(63, 'SÃ©rgio Lima', 'LimaSergio.gxp@gmail.com', 'serginhoGuaxupe', 'Serginho', 'https://i.pinimg.com/550x/6a/b8/0d/6ab80dad3c9dbcce4c0a4e02bca7e603.jpg', ''),
(64, 'JosÃ© SilvÃ©rio', 'silverioJose@gmail.com', 'silveriosilveiro', 'ZÃ© SIlvÃ©rio', 'https://pbs.twimg.com/media/CsBQKsTWAAArwng.jpg', 'Um cara qualquer aÃ­'),
(65, 'Bruno', 'BHK07@gmail.com', 'brunoAssisgxp', 'Bruno Henrique careca', 'https://pbs.twimg.com/media/ENr4zTsUcAAxPui.jpg', ''),
(66, 'Ricardo Oliveira', 'RicardoOliveira@gmail.com', 'OliveiraRicardo', 'Ricardo Oliveira', 'https://img.freepik.com/fotos-gratis/paisagem-de-nevoeiro-matinal-e-montanhas-com-baloes-de-ar-quente-ao-nascer-do-sol_335224-794.jpg?w=2000', ''),
(67, 'AndrÃ©', 'andregxp@gmail.com', 'andreifmg', 'AndrÃ©', 'https://sm.ign.com/t/ign_br/screenshot/default/pokemon-pikachu-tatuagem_hwnn.280.jpg', ''),
(68, 'Rosemary Lima', 'RoseLima@gmail.com', 'roseguaxupe202', 'Rosemary Lima Oliveira', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Sunset_in_Manaus.jpg/640px-Sunset_in_Manaus.jpg', ''),
(69, 'JacÃ³', 'jaco@gmail.com', '12345678', NULL, NULL, NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_coment`);

--
-- Índices de tabela `interesse`
--
ALTER TABLE `interesse`
  ADD PRIMARY KEY (`id_post`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_coment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `interesse`
--
ALTER TABLE `interesse`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

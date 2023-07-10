-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jun-2023 às 15:17
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` bigint(20) NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `ra` int(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `curso` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `cidade`, `endereco`, `nome`, `ra`, `telefone`, `uf`, `curso`) VALUES
(1, 'Iporã', 'Av. Presidente Castelo Branco', 'Thales', 12900, '44997266389', '87560000', 2),
(2, 'Iporã', 'Estrada do Iveram', 'Maria', 18711, '44998176320', '87560000', 5),
(3, 'Iporã', 'Rua Machado de Assis', 'Sabrine', 62308, '4498514762', '87560000', 4),
(4, 'Iporã', 'Av. Presidente Castelo Azul', 'Gabriel', 92140, '44998676389', '87560000', 6),
(5, 'Iporã', 'Rua Natural', 'Amanda', 96350, '44999589662', '87560000', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` bigint(20) NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `uf` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id`, `cidade`, `endereco`, `nome`, `telefone`, `uf`) VALUES
(3, 'Tokyo', 'Av. Otaku', 'Eiichiro Oda', '9063287415', '06578000'),
(4, 'Yate', 'Vila de Tutshill', 'J.K. Rowling', '22694278336', '03869000'),
(5, 'Edimburgo', 'Rua Grassmarket', 'Arthur Conan', '4476392245', '92634000'),
(6, 'Hartford', 'Lawrence St', 'Suzanne Collins', '901387014', '92686000'),
(7, 'Sukagawa', 'Kashiwazaki Wada', 'Nakaba Suzuki', '0896354278', '20591901'),
(8, 'Bournemouth', 'Fitzharris Ave', 'J. R. R. Tolkien', '98965478213', '99574000'),
(9, 'Portland', 'Ponce St', 'Stephen King', '66987445213', '94734000'),
(10, 'Amiens', 'Rue de Rouen', 'Júlio Verne', '6395782415', '86578000'),
(11, 'Iwate Prefecture', 'Sanchōme IchiŌdōri', 'Gege Akutami', '66913527458', '0270083'),
(12, 'Indianápolis', 'S New Jersey St', 'John Green', '75983266674', '46225'),
(13, 'Filadélfia', 'E Norris St', 'Rachael Lippincott', '3295877341', '19125'),
(14, 'Fukuoka', 'Yonchōme NiIikura', 'Koyoharu Gotōge', '3295864321', '8140161'),
(15, 'San Antonio', 'San Fernando St', 'Rick Riordan', '34978521436', '78207');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'Aventura'),
(2, 'Fantasia'),
(3, 'Romance'),
(4, 'Ficção Científica'),
(5, 'Ação/Aventura'),
(6, 'Ação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `codigo_curso` bigint(20) NOT NULL,
  `cordenador_curso` varchar(255) DEFAULT NULL,
  `duracao_curso` int(11) DEFAULT NULL,
  `nome_curso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`codigo_curso`, `cordenador_curso`, `duracao_curso`, `nome_curso`) VALUES
(2, 'Rafael', 36, 'SI'),
(4, 'Sueli', 60, 'Direito'),
(5, 'Ana Gleicia', 48, 'Quimica'),
(6, 'João Carlos', 48, 'ADM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id` bigint(20) NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `uf` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id`, `cidade`, `endereco`, `nome`, `telefone`, `uf`) VALUES
(1, 'Barueri', 'Av. Paulista', 'Panini', '08002371309', '06460110'),
(3, 'Rio de Janeiro', 'Rua Júlio Diniz', 'Rocco', '2135252000', '20211901'),
(4, 'Rio de Janeiro', 'R. da Quitanda', 'HarperCollins', '2131751030', '20211901'),
(5, 'São Paulo', 'Rua Machado Bittencourt', 'JBC', '11964862935', '01153000'),
(6, 'Rio de Janeiro', 'Rua Cotia', 'Zahar', '2121080808', '20211901'),
(7, 'Gávea', 'Rua Marquês de São Vicente', 'Intrínseca', '2132067400', '22451041'),
(8, 'Jacaré', 'R. Viúva Cláudio', 'Alt', '02139957512', '20970031');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` bigint(20) NOT NULL,
  `ano` int(11) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `sub_titulo` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` bigint(20) DEFAULT NULL,
  `editora` bigint(20) DEFAULT NULL,
  `categoria` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `ano`, `isbn`, `local`, `sub_titulo`, `titulo`, `autor`, `editora`, `categoria`) VALUES
(1, 2022, '9786559607037', 'Japão', 'One Piece Vol.101', 'One Piece', 3, 1, 5),
(2, 1997, '9786588967037', 'Inglaterra', 'Harry Potter', 'Harry Potter e a Pedra Filosofal', 4, 3, 2),
(3, 1902, '9734159607037', 'Inglaterra', 'Sherlock Holmes', 'O Cão dos Baskervilles', 5, 4, 3),
(4, 2000, '9734159603617', 'Inglaterra', 'Harry Potter', 'Harry Potter e o Cálice de Fogo', 4, 3, 2),
(5, 1998, '9734159607028', 'Inglaterra', 'Harry Potter', 'Harry Potter e a Câmara Secreta', 4, 3, 2),
(6, 1999, '9786559602843', 'Inglaterra', 'Harry Potter', 'Harry Potter e o Prisioneiro de Azkaban', 4, 3, 2),
(7, 2003, '9792459602843', 'Inglaterra', 'Harry Potter', 'Harry Potter e a Ordem da Fênix', 4, 3, 2),
(8, 2005, '9786588755837', 'Inglaterra', 'Harry Potter', 'Harry Potter e o Enigma do Príncipe', 4, 3, 2),
(9, 2007, '9734159607015', 'Inglaterra', 'Harry Potter', 'Harry Potter e as Relíquias da Morte', 4, 3, 2),
(10, 2008, '9788581220307', 'Estados Unidos', 'Jogos vorazes', 'Jogos Vorazes', 6, 3, 4),
(11, 2010, '9788581220321', 'Estados Unidos', 'Jogos vorazes', 'A esperança', 6, 3, 4),
(12, 2020, '6555940018', 'Japão', 'Nanatsu no Taizai', 'Nanatsu no Taizai Vol.40', 7, 5, 5),
(13, 2017, ' 854570237X', 'Japão', 'Nanatsu no Taizai', 'Nanatsu no Taizai Vol.21', 7, 5, 5),
(14, 2023, '6525910765', 'Japão', 'One Piece', 'One Piece 3 em 1 Vol. 13', 3, 1, 5),
(15, 1954, '9734159864037', 'Reino Unido', 'O Senhor dos Anéis', 'O Senhor dos Anéis', 8, 4, 2),
(17, 2021, '6555127279', 'Japão', 'Jujutsu Kaisen', 'Jujutsu Kaisen 0', 11, 1, 6),
(18, 2014, '8580573807', 'Estados Unidos', 'A Culpa é das Estrelas', 'A Culpa é das Estrelas', 12, 7, 3),
(19, 2019, '8525067423', 'Estados Unidos', 'A Cinco Passos de Você', 'A Cinco Passos de Você', 13, 8, 3),
(20, 2022, '6555123621', 'Japão', 'Kimetsu No Yaiba', 'Kimetsu No Yaiba Vol. 9', 14, 1, 2),
(21, 2009, '8580575435', 'Estados Unidos', 'Percy Jackson', 'O Último Olimpiano', 15, 7, 6),
(22, 1872, '8537816132', 'Fraça', 'A Volta ao Mundo em 80 Dias', 'A Volta ao Mundo em 80 Dias', 10, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `id` bigint(20) NOT NULL,
  `data_fim` date DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `aluno` bigint(20) DEFAULT NULL,
  `livro` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`id`, `data_fim`, `data_inicio`, `observacao`, `aluno`, `livro`) VALUES
(1, '2023-06-28', '2023-06-15', 'Ele atrasou a devolução do último livro que reservou', 1, 1),
(2, '2023-07-01', '2023-06-18', 'Nunca houve atrasos', 3, 2),
(3, '2023-07-10', '2023-06-27', 'Falou que iria ler rápido e devolver no mesmo dia', 1, 13),
(4, '2023-08-13', '2023-07-31', 'Pegou um livro no primeiro dia de aula, ela é novata', 2, 18),
(5, '2023-08-13', '2023-07-31', 'Segundo livro de que ela pega hoje', 2, 19),
(6, '2023-06-23', '2023-06-10', 'Vejo ele na faculdade direto, mas é a primeira vez que faz reserva', 4, 14),
(7, '2023-08-13', '2023-07-31', 'Nunca houve atrasos e ela disse que devolveria na segunda', 3, 9),
(8, '2023-08-23', '2023-08-10', 'Primeiro livro dela', 5, 5),
(9, '2023-09-02', '2023-08-20', 'Segundo livro dela', 5, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpsac2suv1g3r2q57wbu1ut2y1` (`curso`);

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`codigo_curso`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkb5yd2w19fu12arb3qtv6dsrk` (`autor`),
  ADD KEY `FK2w0m87bv90obqalyg587yw59u` (`editora`),
  ADD KEY `FKrmdynwkn8eomkmstn7j2n3vlg` (`categoria`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgf1a3hnewl7qsqcybw2x102wt` (`aluno`),
  ADD KEY `FKkobwnatp5bp1lucpmm3s5okf1` (`livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `codigo_curso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `FKpsac2suv1g3r2q57wbu1ut2y1` FOREIGN KEY (`curso`) REFERENCES `curso` (`codigo_curso`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `FK2w0m87bv90obqalyg587yw59u` FOREIGN KEY (`editora`) REFERENCES `editora` (`id`),
  ADD CONSTRAINT `FKkb5yd2w19fu12arb3qtv6dsrk` FOREIGN KEY (`autor`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `FKrmdynwkn8eomkmstn7j2n3vlg` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FKgf1a3hnewl7qsqcybw2x102wt` FOREIGN KEY (`aluno`) REFERENCES `aluno` (`id`),
  ADD CONSTRAINT `FKkobwnatp5bp1lucpmm3s5okf1` FOREIGN KEY (`livro`) REFERENCES `livro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

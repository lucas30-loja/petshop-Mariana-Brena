-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27-Jun-2019 às 00:12
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `cod` int(11) NOT NULL,
  `cod_prop` int(11) DEFAULT NULL,
  `nome_prop` varchar(100) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `raca` varchar(50) DEFAULT NULL,
  `obs` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `sexo` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`cod`, `cod_prop`, `nome_prop`, `nome`, `raca`, `obs`, `tipo`, `sexo`) VALUES
(4, NULL, 'Maria', 'Troy', 'Pinscher', 'Catiorineo', 'Pequeno', 'Macho'),
(5, NULL, 'Mazinha', 'Mariana', 'Hufflepuff', 'Cuidado extra com as orelhas', 'Medio', 'Femea'),
(6, NULL, 'Maria', 'Fergie', 'Golden Retriever', 'Cansada, com problemas respiratórios', 'Medio', 'Femea');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `cod` int(11) NOT NULL,
  `cod_prop` int(11) DEFAULT NULL,
  `cod_produto` int(11) DEFAULT NULL,
  `qt_compra` int(11) DEFAULT NULL,
  `hora` varchar(30) DEFAULT NULL,
  `data` varchar(30) DEFAULT NULL,
  `nome_prod` varchar(300) DEFAULT NULL,
  `nome_cart` varchar(100) NOT NULL,
  `num_cart` varchar(150) NOT NULL,
  `cod_cart` varchar(20) NOT NULL,
  `dt_validade` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`cod`, `cod_prop`, `cod_produto`, `qt_compra`, `hora`, `data`, `nome_prod`, `nome_cart`, `num_cart`, `cod_cart`, `dt_validade`, `valor`) VALUES
(16, NULL, NULL, 2, '22:58:43', '22/06/2019', ' 1 Frisbee,  1 Ração Montego, ', 'MARIANA BEZERRA', '37475681218408', '154', '12/09/2022', '36'),
(17, NULL, NULL, 4, '23:20:24', '19/02/2019', ' 1 Frisbee,  1 Rato de Controle Remoto,  1 Ração para Cães,  1 Cama , ', 'MARIA ERISMAR BEZERRA', '35144894822846', '157', '28/05/2051', '113'),
(18, NULL, 19, 3, '22:58:43', '22/01/2019', ' 3 Frisbee,', 'MARIANA BEZERRA', '37475681218408', '154', '12/09/2022', '33'),
(19, NULL, NULL, 2, '22:58:43', '22/01/2019', ' 3 Frisbee,  2 Filhote de Brinquedo, ', 'MARIANA BEZERRA', '37475681218408', '154', '12/09/2022', '66'),
(20, NULL, NULL, 3, '23:20:24', '19/01/2019', '  1 Rato de Controle Remoto,  1 Ração para Cães,  1 Cama , ', 'MARIA ERISMAR BEZERRA', '35144894822846', '157', '28/05/2051', '102'),
(21, NULL, NULL, 3, '23:28:12', '22/02/2019', ' 3 Ração para Cães, ', 'ALEXANDRE GOVREA', '123456789101213', '554', '09/07/2022', '66'),
(22, NULL, NULL, 2, '23:30:04', '22/03/2019', ' 1 Cama ,  1 Ração Safeway, ', 'BERNIE HUNNO', '131211100908070', '875', '04/09/2025', '93'),
(23, NULL, NULL, 2, '13:30:04', '22/03/2019', ' 1 Cama ,  1 Ração Safeway, ', 'BERNIE HUNNO', '131211100908070', '875', '04/09/2025', '93'),
(24, NULL, NULL, 3, '23:32:46', '22/05/2019', ' 1 Gaiolinha,  2 Filhote de Brinquedo, ', 'POOR STRAY', '555555555555555', '122', '12/02/2020', '107'),
(25, NULL, NULL, 4, '10:32:46', '22/05/2019', ' 2 Gaiolinha,  2 Filhote de Brinquedo, ', 'POOR STRAY', '555555555555555', '122', '12/02/2020', '184'),
(26, NULL, NULL, 6, '23:32:46', '22/05/2019', ' 5 Frisbee, 1 Gaiolinha ', 'POOR STRAY', '555555555555555', '122', '12/02/2020', '132'),
(27, NULL, NULL, 4, '10:32:46', '22/05/2019', ' 2 Gaiolinha,  2 Filhote de Brinquedo, ', 'POOR STRAY', '555555555555555', '122', '12/02/2020', '184'),
(28, NULL, NULL, 2, '22:58:43', '22/04/2019', ' 1 Frisbee,  1 Ração Montego, ', 'MARIANA BEZERRA', '37475681218408', '154', '12/09/2022', '36'),
(29, NULL, NULL, 4, '23:20:24', '19/04/2019', ' 1 Frisbee,  1 Rato de Controle Remoto,  1 Ração para Cães,  1 Cama , ', 'MARIA ERISMAR BEZERRA', '35144894822846', '157', '28/05/2051', '113'),
(30, NULL, 19, 3, '22:58:43', '22/04/2019', ' 3 Frisbee,', 'MARIANA BEZERRA', '37475681218408', '154', '12/09/2022', '33'),
(31, NULL, NULL, 6, '23:32:46', '22/04/2019', ' 5 Frisbee, 1 Gaiolinha ', 'POOR STRAY', '555555555555555', '122', '12/02/2020', '132'),
(32, NULL, NULL, 4, '23:20:24', '19/04/2019', ' 1 Frisbee,  1 Rato de Controle Remoto,  1 Ração para Cães,  1 Cama , ', 'MARIA ERISMAR BEZERRA', '35144894822846', '157', '28/05/2051', '113'),
(33, NULL, 19, 3, '22:58:43', '22/04/2019', ' 3 Frisbee,', 'MARIANA BEZERRA', '37475681218408', '154', '12/09/2022', '33'),
(34, NULL, NULL, 6, '23:32:46', '22/04/2019', ' 5 Frisbee, 1 Gaiolinha ', 'POOR STRAY', '555555555555555', '122', '12/02/2020', '132'),
(35, NULL, NULL, 3, '15:18:28', '23/06/2019', ' 2 Frisbee,  1 Ração Safeway, ', 'RAYLOT STIWF', '159753268413468', '285', '28/11/2025', '55'),
(36, NULL, NULL, 1, '15:32:59', '23/06/2019', ' 1 Portão Protetor, ', 'MOACIR MARTINS', '762134894613580', '582', '05/02/2024', '50'),
(37, NULL, NULL, 1, '22:14:36', '23/06/2019', ' 1 Filhote de Brinquedo, ', 'FOFILIS OVNI', '222564800123520', '159', '07/07/2027', '15'),
(38, NULL, NULL, 1, '22:14:36', '23/06/2019', 'Filhote de Brinquedo', 'FOFILIS OVNI', '222564800123520', '159', '07/07/2027', '15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `cod` int(11) NOT NULL,
  `slogan` varchar(80) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `end` varchar(100) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fotos` varchar(100) DEFAULT NULL,
  `hor_func_ss` varchar(45) NOT NULL,
  `hor_func_sb` varchar(45) NOT NULL,
  `hor_func_dg` varchar(45) NOT NULL,
  `foto1_slider` varchar(45) NOT NULL,
  `foto2_slider` varchar(45) NOT NULL,
  `foto3_slider` varchar(45) NOT NULL,
  `foto_banho` varchar(45) NOT NULL,
  `foto_consulta` varchar(45) NOT NULL,
  `foto_daycare` varchar(45) NOT NULL,
  `foto_login` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`cod`, `slogan`, `nome`, `end`, `tel`, `email`, `fotos`, `hor_func_ss`, `hor_func_sb`, `hor_func_dg`, `foto1_slider`, `foto2_slider`, `foto3_slider`, `foto_banho`, `foto_consulta`, `foto_daycare`, `foto_login`) VALUES
(16, 'O shop do seu pet', 'Petshop', '000, Rua dos Bobos, Centro, New Home - EC', '88988537778', 'petSS@hotmail.com', '6fc663ebf8693f31c5f5ec0ff39e821b.jpg', '07:30am - 17:00pm', '08:00am - 13:00pm', 'Estamos fechados.', 'header.jpg', 'abbdb4eb0da4a5394a8fb70180776a3c.jpg', '0a3efa11f7a3a47851dbbe162683f6b7.jpg', '84db8190cf61923b5409933be0aa289f.jpg', '227ee5b6ce1588bb03900316a32e4902.jpg', '708411f9d88ce4294769f2906dfbf27b.jpg', '4821e3f84b8aaacc0b44504d88eb0020.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `cod` int(11) NOT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `foto` varchar(45) NOT NULL,
  `tipo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`cod`, `cpf`, `salario`, `nome`, `foto`, `tipo`) VALUES
(18, '2525252525', 3500, 'Annie Marks', '42f6ced9de9027ec82e68e534199fb42.jpg', 'Veterinário'),
(19, '8208182829', 2800, 'Marcos Kevin', '3662638c481197bd4941f8023a0d5691.jpg', 'Veterinário'),
(20, '787653546', 1000, 'Luciano Heman', '4a315d1bf1afd1b636c91cbefaa5a656.jpg', 'Cuidados com o estabelecimento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `cod` int(11) NOT NULL,
  `qnt` int(11) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `categoria` varchar(45) NOT NULL,
  `foto` varchar(45) NOT NULL,
  `foto2` varchar(50) NOT NULL,
  `foto3` varchar(50) NOT NULL,
  `foto4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`cod`, `qnt`, `descricao`, `nome`, `valor`, `categoria`, `foto`, `foto2`, `foto3`, `foto4`) VALUES
(16, 14, 'Extremamente fofo, diversão garantida para qualquer pet!', 'Filhote de Brinquedo', 15, 'Brinquedo', '0cb7afe3287b331dd5f00a094b8647d1.jpg', '3cf490a6d6c5ce5e86cd9418cd980354.jpg', 'ff6ff1bab1859052a6bab3e8cc9dd07c.jpg', ''),
(18, 14, 'De onde estiver, confortavelmente, você ainda pode brincar com seu pet!', 'Rato de Controle Remoto', 20, 'Brinquedo', '209c59e7b7ddf32710c038c2175e3405.jpg', 'a328f01f2782689d2c0a10cf3f8084f9.jpg', '4a8495fde8b42b78906a249f8c6717c8.jpg', ''),
(19, 3, 'Lance o mais longe o possível, seu cachorro vai voltar SIM!', 'Frisbee', 11, 'Brinquedo', 'bab73e7024783b6008dafb2ffaa4773f.jpg', '451b31493ed12812facf826867277082.jpg', 'b7fb4e4968eb531caf9fd38f13ac90b2.jpg', '897b05b4c72e5287de3b14165bad0d17.jpg'),
(20, 16, 'Deliciosa, feita especialmente com qualidade para seu pet', 'Ração para Cães', 22, 'Comida', '402530173e90f7bc0411747ef0119b68.jpg', 'd7de8d84bf0ee622cb6e1464e4fbd9b5.jpg', '', ''),
(21, 14, 'A Montego oferece ração para todos os tipos de cãezinhos', 'Ração Montego', 25, 'Comida', '7dfcb9554a59142d57480e5f0495df4c.jpg', 'fb0e67b617d2de807f1cf4a2a30a9c35.png', '03ab1f90d932904720dcf76d74550910.jpg', '2e190dcf9ea7a5db26448f718705eccc.jpg'),
(22, 16, 'Safeway é o caminho seguro para uma boa alimentação', 'Ração Safeway', 33, 'Comida', '75e9d802b0e50b278f60f39d2d9c59ee.jpg', '99a1da02b2f45e5d8f32c4e734768ebb.jpg', '', ''),
(23, 4, 'Garantir a segurança e limitar o espaço do seu pet é essencial', 'Portão Protetor', 50, 'Moveis', 'd4b21fadeb01bc624c1db2331715cea1.png', '7a581c161fcc54ae9f99f11b848741dd.png', 'a13855576265e10db0610178130bd0ae.jpg', ''),
(24, 7, 'O conforto do seu amigo estará garantido', 'Cama ', 60, 'Moveis', '4cade2159bf16fd14b3076fbaa14e5d7.jpg', '4d8ee7518d5e8a0aafee28995982e7d8.jpg', '296ec6f68ec28fa479ed8cc4ac2fd9f4.jpg', '30e5dd0414d540768e7427109c7e1228.jpg'),
(25, 19, 'Não uma prisão, um local estiloso para seu cachorro.', 'Gaiolinha', 77, 'Moveis', 'd89072115040bcd11e3d15e55c944e41.jpg', 'fd3d073dd80996be87f455963783c4ba.jpg', '96d547a5f8ac0fd72691b94faea12a01.jpg', 'b402b89d627d19ac78ad074f9b3a09eb.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `cod` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `end` varchar(150) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`cod`, `nome`, `end`, `cpf`, `senha`, `tel`) VALUES
(12, 'Maria', '289, Logo Ali, Pe.Assis Monteiro, Morada Nova', '432f45b44c432414d2f97df0e5743818', 'e10adc3949ba59abbe56e057f20f883e', '88988657779'),
(14, 'Mazinha', '284. Rua Mãe Rosário, Pe. Assis Monteiro, Morada Nova', '16f16bb4490a1e00dc110e5699f05b0c', 'e10adc3949ba59abbe56e057f20f883e', '88988545085');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `cod` int(11) NOT NULL,
  `cod_animal` int(11) DEFAULT NULL,
  `cod_prop` int(11) DEFAULT NULL,
  `nome_prop` varchar(100) NOT NULL,
  `cod_func` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `data` varchar(30) DEFAULT NULL,
  `hora` varchar(30) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`cod`, `cod_animal`, `cod_prop`, `nome_prop`, `cod_func`, `tipo`, `data`, `hora`, `valor`, `status`) VALUES
(5, NULL, NULL, 'Maria', NULL, 'Consultas', NULL, NULL, 120, 'Pendente'),
(8, NULL, NULL, 'Maria', NULL, 'Banho', NULL, NULL, 15, 'Feito'),
(10, NULL, NULL, 'Maria', NULL, 'Banho', NULL, NULL, 25, 'Feito'),
(11, NULL, NULL, 'Mazinha', NULL, 'Tosa', NULL, NULL, 20, 'Feito'),
(12, NULL, NULL, 'Mazinha', NULL, 'Day Care', NULL, NULL, 30, 'Pendente'),
(14, NULL, NULL, 'Maria', NULL, 'Consultas', NULL, NULL, 200, 'Feito');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `login` varchar(12) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `foto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod`, `nome`, `tel`, `tipo`, `login`, `senha`, `foto`) VALUES
(1, 'Mariana Bezerra', '88888', 'Gerente', 'mBezerra', '21232f297a57a5a743894a0e4a801fc3', '62b5a4c93a919c8a913e90820bfd8998.jpg!Portrait'),
(2, 'Mazinha Bezerra', 'mazinha', 'Gerente', 'Mazinha', '211cc3dd626d1c6b2f12a79d59c5f99f', '13073f98b3a025dc8e010ab0a476da21.jpg'),
(4, 'Willamete', '78787878', 'Gerente', 'uiuiui', 'c492f8de2d00b6c4282e766bfadaf2e7', '8a41fe5ec5544b60d7a0f76e8546bb0c.jpg'),
(6, 'Vergara Outubro', '88988547474', 'Administrador', 'vergara', '17da1ae431f965d839ec8eb93087fb2b', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `fk_prop` (`cod_prop`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `fk_produto` (`cod_produto`),
  ADD KEY `fk_proprietario` (`cod_prop`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `fk_prop_servico` (`cod_prop`),
  ADD KEY `fk_animal_servico` (`cod_animal`),
  ADD KEY `fk_func_servico` (`cod_func`),
  ADD KEY `nome_prop` (`nome_prop`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `fk_prop` FOREIGN KEY (`cod_prop`) REFERENCES `proprietario` (`cod`);

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_compra_pdt` FOREIGN KEY (`cod_prop`) REFERENCES `produtos` (`cod`),
  ADD CONSTRAINT `fk_produto` FOREIGN KEY (`cod_produto`) REFERENCES `produtos` (`cod`),
  ADD CONSTRAINT `fk_proprietario` FOREIGN KEY (`cod_prop`) REFERENCES `proprietario` (`cod`);

--
-- Limitadores para a tabela `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `fk_animal_servico` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod`),
  ADD CONSTRAINT `fk_func_servico` FOREIGN KEY (`cod_func`) REFERENCES `funcionario` (`cod`),
  ADD CONSTRAINT `fk_prop_servico` FOREIGN KEY (`cod_prop`) REFERENCES `proprietario` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 10.7.0.51    Database: db_luca_fujii
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `grupo-teste`
--

DROP TABLE IF EXISTS `grupo-teste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo-teste` (
  `idGrupo` int(11) NOT NULL,
  `teste` varchar(45) DEFAULT NULL,
  `teste1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo-teste`
--

LOCK TABLES `grupo-teste` WRITE;
/*!40000 ALTER TABLE `grupo-teste` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo-teste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspf_clientes`
--

DROP TABLE IF EXISTS `lspf_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspf_clientes` (
  `lspf_idClientes` int(11) NOT NULL,
  `lspf_nome` varchar(100) NOT NULL,
  `lspf_cpf` varchar(14) NOT NULL,
  `lspf_rg` varchar(10) NOT NULL,
  `lspf_dataNascimento` date DEFAULT NULL,
  `lspf_telefone` varchar(20) NOT NULL,
  `lspf_email` varchar(100) NOT NULL,
  `lspf_cep` varchar(9) NOT NULL,
  `lspf_endereco` varchar(45) NOT NULL,
  `lspf_bairro` varchar(40) NOT NULL,
  `lspf_sexo` varchar(10) NOT NULL,
  `lspf_ativo` varchar(1) NOT NULL,
  `lspf_cidade` varchar(45) NOT NULL,
  `lspf_celular` varchar(20) NOT NULL,
  `lspf_estado` varchar(2) NOT NULL,
  PRIMARY KEY (`lspf_idClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspf_clientes`
--

LOCK TABLES `lspf_clientes` WRITE;
/*!40000 ALTER TABLE `lspf_clientes` DISABLE KEYS */;
INSERT INTO `lspf_clientes` VALUES (41,'1','1','null',NULL,'1','1','1','1','1','M','T','1','1','1'),(123,'123','321','null',NULL,'312','321','123','21','132','M','T','213','32','1'),(155,'5','555.555.555-55','5',NULL,'(55) 5555-5555','55','55555-555','5555','55','M','T','55','(55) 5555-5555','0');
/*!40000 ALTER TABLE `lspf_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspf_livros`
--

DROP TABLE IF EXISTS `lspf_livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspf_livros` (
  `lspf_idLivros` int(11) NOT NULL,
  `lspf_preco` decimal(5,2) NOT NULL,
  `lspf_quantidade` int(11) NOT NULL,
  `lspf_descricao` varchar(200) DEFAULT NULL,
  `lspf_editora` varchar(50) NOT NULL,
  `lspf_autor` varchar(50) NOT NULL,
  `lspf_dataLancamento` date DEFAULT NULL,
  PRIMARY KEY (`lspf_idLivros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspf_livros`
--

LOCK TABLES `lspf_livros` WRITE;
/*!40000 ALTER TABLE `lspf_livros` DISABLE KEYS */;
INSERT INTO `lspf_livros` VALUES (41,0.00,1,'11','1','1',NULL),(42,0.00,42,'42','24','24',NULL),(123,123.00,123,'123','123','123',NULL),(1233,0.00,123,'132','312','312',NULL),(12312,123.00,123,'123','123','123',NULL);
/*!40000 ALTER TABLE `lspf_livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspf_usuarios`
--

DROP TABLE IF EXISTS `lspf_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspf_usuarios` (
  `lspf_idUsuarios` int(11) NOT NULL,
  `lspf_nome` varchar(50) NOT NULL,
  `lspf_apelido` varchar(25) NOT NULL,
  `lspf_cpf` varchar(14) NOT NULL,
  `lspf_dataNascimento` date DEFAULT NULL,
  `lspf_senha` varchar(20) NOT NULL,
  `lspf_nivel` int(11) NOT NULL,
  `lspf_ativo` varchar(1) NOT NULL,
  PRIMARY KEY (`lspf_idUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspf_usuarios`
--

LOCK TABLES `lspf_usuarios` WRITE;
/*!40000 ALTER TABLE `lspf_usuarios` DISABLE KEYS */;
INSERT INTO `lspf_usuarios` VALUES (0,'1221','1212','1221',NULL,'1212',-1,'F'),(13,'13','13','131',NULL,'13',0,'F'),(41,'41','41','41',NULL,'14',0,'T');
/*!40000 ALTER TABLE `lspf_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspf_vendas`
--

DROP TABLE IF EXISTS `lspf_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspf_vendas` (
  `lspf_idVendas` int(11) NOT NULL,
  `lspf_data` date DEFAULT NULL,
  `lspf_clientes` int(11) NOT NULL,
  `lspf_vendedores` int(11) NOT NULL,
  `lspf_total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`lspf_idVendas`),
  KEY `fk_clientes_idx` (`lspf_clientes`),
  KEY `fk_fornecedores_idx` (`lspf_vendedores`),
  CONSTRAINT `lspf_clientes` FOREIGN KEY (`lspf_clientes`) REFERENCES `lspf_clientes` (`lspf_idClientes`),
  CONSTRAINT `lspf_vendedores` FOREIGN KEY (`lspf_vendedores`) REFERENCES `lspf_vendedores` (`lspf_idVendedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspf_vendas`
--

LOCK TABLES `lspf_vendas` WRITE;
/*!40000 ALTER TABLE `lspf_vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `lspf_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspf_vendas_livros`
--

DROP TABLE IF EXISTS `lspf_vendas_livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspf_vendas_livros` (
  `lspf_idVendasLiivros` int(11) NOT NULL,
  `lspf_vendas` int(11) NOT NULL,
  `lspf_livros` int(11) NOT NULL,
  `lspf_quant` int(11) NOT NULL,
  `lspf_valorUni` decimal(5,2) NOT NULL,
  PRIMARY KEY (`lspf_idVendasLiivros`),
  KEY `fk_livros_idx` (`lspf_livros`),
  KEY `fk_vendas_idx` (`lspf_vendas`),
  CONSTRAINT `lspf_fk_livros` FOREIGN KEY (`lspf_livros`) REFERENCES `lspf_livros` (`lspf_idLivros`),
  CONSTRAINT `lspf_fk_vendas` FOREIGN KEY (`lspf_vendas`) REFERENCES `lspf_vendas` (`lspf_idVendas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspf_vendas_livros`
--

LOCK TABLES `lspf_vendas_livros` WRITE;
/*!40000 ALTER TABLE `lspf_vendas_livros` DISABLE KEYS */;
/*!40000 ALTER TABLE `lspf_vendas_livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspf_vendedores`
--

DROP TABLE IF EXISTS `lspf_vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspf_vendedores` (
  `lspf_idVendedores` int(11) NOT NULL,
  `lspf_nome` varchar(100) NOT NULL,
  `lspf_email` varchar(100) NOT NULL,
  `lspf_endereco` varchar(100) NOT NULL,
  `lspf_cidade` varchar(45) NOT NULL,
  `lspf_estado` varchar(2) NOT NULL,
  `lspf_cep` varchar(9) NOT NULL,
  `lspf_telefone` varchar(20) NOT NULL,
  PRIMARY KEY (`lspf_idVendedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspf_vendedores`
--

LOCK TABLES `lspf_vendedores` WRITE;
/*!40000 ALTER TABLE `lspf_vendedores` DISABLE KEYS */;
INSERT INTO `lspf_vendedores` VALUES (12,'','','','','0','     -   ','(  )     -'),(41,'41','41','14','14','a','14','41'),(123,'123','12312312','12','123123','2','12312-312','1231-2312'),(132,'123','123','132','123','a','123','123'),(144,'1','12312312312','12312312123','12312312312','4','12312-312','(12) 3123-1232'),(155,'155','55555555555','555555555','5555555','3','15555-555','(15) 5555-5555'),(123123,'123123123','12312312','123123','123123','0','12312-123','(  )     -    '),(123123123,'123123','123123123','123123','12321312','0','     -   ','(12) 3123-2131');
/*!40000 ALTER TABLE `lspf_vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05  9:46:38

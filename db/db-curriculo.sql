-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: dbcurriculo
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `area_habilidade`
--
DROP DATABASE IF EXISTS dbcurriculo;
CREATE DATABASE dbcurriculo;
USE dbcurriculo;

DROP TABLE IF EXISTS `area_habilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_habilidade` (
  `idarea_habilidade` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `pessoal_idpessoal` int NOT NULL,
  PRIMARY KEY (`idarea_habilidade`),
  KEY `fk_area_habilidade_pessoal1_idx` (`pessoal_idpessoal`),
  CONSTRAINT `fk_area_habilidade_pessoal1` FOREIGN KEY (`pessoal_idpessoal`) REFERENCES `pessoal` (`idpessoal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_habilidade`
--

LOCK TABLES `area_habilidade` WRITE;
/*!40000 ALTER TABLE `area_habilidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_habilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividade_exercida`
--

DROP TABLE IF EXISTS `atividade_exercida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividade_exercida` (
  `idatividade_exercida` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  `historico_profissional_idhistorico_profissional` int NOT NULL,
  PRIMARY KEY (`idatividade_exercida`),
  KEY `fk_atividade_exercida_historico_profissional1_idx` (`historico_profissional_idhistorico_profissional`),
  CONSTRAINT `fk_atividade_exercida_historico_profissional1` FOREIGN KEY (`historico_profissional_idhistorico_profissional`) REFERENCES `historico_profissional` (`idhistorico_profissional`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividade_exercida`
--

LOCK TABLES `atividade_exercida` WRITE;
/*!40000 ALTER TABLE `atividade_exercida` DISABLE KEYS */;
/*!40000 ALTER TABLE `atividade_exercida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `idemail` int NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL,
  `ativo` tinyint NOT NULL,
  `pessoal_idpessoal` int NOT NULL,
  PRIMARY KEY (`idemail`),
  KEY `fk_email_pessoal1_idx` (`pessoal_idpessoal`),
  CONSTRAINT `fk_email_pessoal1` FOREIGN KEY (`pessoal_idpessoal`) REFERENCES `pessoal` (`idpessoal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `idendereco` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(150) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `pessoal_idpessoal` int NOT NULL,
  PRIMARY KEY (`idendereco`),
  KEY `fk_endereco_pessoal1_idx` (`pessoal_idpessoal`),
  CONSTRAINT `fk_endereco_pessoal1` FOREIGN KEY (`pessoal_idpessoal`) REFERENCES `pessoal` (`idpessoal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacao`
--

DROP TABLE IF EXISTS `formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacao` (
  `idformacao` int NOT NULL AUTO_INCREMENT,
  `instituicao` varchar(75) NOT NULL,
  `curso` varchar(75) NOT NULL,
  `data_inicial` timestamp NULL DEFAULT NULL,
  `data_final` timestamp NULL DEFAULT NULL,
  `pessoal_idpessoal` int NOT NULL,
  PRIMARY KEY (`idformacao`),
  KEY `fk_formacao_pessoal1_idx` (`pessoal_idpessoal`),
  CONSTRAINT `fk_formacao_pessoal1` FOREIGN KEY (`pessoal_idpessoal`) REFERENCES `pessoal` (`idpessoal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacao`
--

LOCK TABLES `formacao` WRITE;
/*!40000 ALTER TABLE `formacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilidade`
--

DROP TABLE IF EXISTS `habilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habilidade` (
  `idhabilidade` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  `area_habilidade_idarea_habilidade` int NOT NULL,
  PRIMARY KEY (`idhabilidade`),
  KEY `fk_habilidade_area_habilidade1_idx` (`area_habilidade_idarea_habilidade`),
  CONSTRAINT `fk_habilidade_area_habilidade1` FOREIGN KEY (`area_habilidade_idarea_habilidade`) REFERENCES `area_habilidade` (`idarea_habilidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidade`
--

LOCK TABLES `habilidade` WRITE;
/*!40000 ALTER TABLE `habilidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_profissional`
--

DROP TABLE IF EXISTS `historico_profissional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_profissional` (
  `idhistorico_profissional` int NOT NULL AUTO_INCREMENT,
  `empresa` varchar(75) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `website` varchar(150) DEFAULT NULL,
  `data_inicial` timestamp NULL DEFAULT NULL,
  `data_final` timestamp NULL DEFAULT NULL,
  `pessoal_idpessoal` int NOT NULL,
  PRIMARY KEY (`idhistorico_profissional`),
  KEY `fk_historico_profissional_pessoal1_idx` (`pessoal_idpessoal`),
  CONSTRAINT `fk_historico_profissional_pessoal1` FOREIGN KEY (`pessoal_idpessoal`) REFERENCES `pessoal` (`idpessoal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_profissional`
--

LOCK TABLES `historico_profissional` WRITE;
/*!40000 ALTER TABLE `historico_profissional` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_profissional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoal`
--

DROP TABLE IF EXISTS `pessoal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoal` (
  `idpessoal` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(75) NOT NULL,
  `objetivo` varchar(400) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idpessoal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoal`
--

LOCK TABLES `pessoal` WRITE;
/*!40000 ALTER TABLE `pessoal` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `idtelefone` int NOT NULL AUTO_INCREMENT,
  `ddi` varchar(3) NOT NULL,
  `ddd` varchar(4) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `ativo` tinyint NOT NULL,
  `whatsapp` tinyint DEFAULT NULL,
  `pessoal_idpessoal` int NOT NULL,
  PRIMARY KEY (`idtelefone`),
  KEY `fk_telefone_pessoal1_idx` (`pessoal_idpessoal`),
  CONSTRAINT `fk_telefone_pessoal1` FOREIGN KEY (`pessoal_idpessoal`) REFERENCES `pessoal` (`idpessoal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-13 13:22:26

INSERT INTO dbcurriculo.pessoal(nome,objetivo,foto)
VALUES('Marcelo Maia de Oliveira','Analista de Sistemas','');

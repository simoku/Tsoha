CREATE DATABASE  IF NOT EXISTS `tsoha` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tsoha`;
-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: tsoha
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Harjoitus`
--

DROP TABLE IF EXISTS `Harjoitus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Harjoitus` (
  `idHarjoitus` int(11) NOT NULL AUTO_INCREMENT,
  `Laji` varchar(45) NOT NULL,
  `CaloriPerTuntiPerKilo` int(11) NOT NULL,
  PRIMARY KEY (`idHarjoitus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Harjoitus`
--

LOCK TABLES `Harjoitus` WRITE;
/*!40000 ALTER TABLE `Harjoitus` DISABLE KEYS */;
INSERT INTO `Harjoitus` VALUES (1,'Lenkki',6),(2,'Golf',4),(3,'Jooga',4);
/*!40000 ALTER TABLE `Harjoitus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ika`
--

DROP TABLE IF EXISTS `Ika`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ika` (
  `Ika` varchar(45) NOT NULL,
  `Kulutus` varchar(45) NOT NULL,
  `sukupuoli` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ika`
--

LOCK TABLES `Ika` WRITE;
/*!40000 ALTER TABLE `Ika` DISABLE KEYS */;
INSERT INTO `Ika` VALUES ('','',0),('20','2800',1),('30','2200',1),('40','2700',1),('50','2700',1),('60','2500',1),('70','2250',1);
/*!40000 ALTER TABLE `Ika` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaivaKirja`
--

DROP TABLE IF EXISTS `PaivaKirja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PaivaKirja` (
  `Paivamaara` date NOT NULL,
  `Nimi` int(11) NOT NULL,
  `Rivi` varchar(45) NOT NULL,
  `Harjoitus` varchar(45) NOT NULL,
  `Kulutetut_Calorit` varchar(45) NOT NULL,
  PRIMARY KEY (`Paivamaara`,`Nimi`,`Rivi`),
  KEY `fk_PaivaKirja_1_idx` (`Nimi`),
  CONSTRAINT `fk_PaivaKirja_1` FOREIGN KEY (`Nimi`) REFERENCES `Users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaivaKirja`
--

LOCK TABLES `PaivaKirja` WRITE;
/*!40000 ALTER TABLE `PaivaKirja` DISABLE KEYS */;
INSERT INTO `PaivaKirja` VALUES ('2020-03-20',1,'1','1','100'),('2020-03-20',1,'2','2','200');
/*!40000 ALTER TABLE `PaivaKirja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ruoka`
--

DROP TABLE IF EXISTS `Ruoka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ruoka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nimi` varchar(45) NOT NULL,
  `Annos` varchar(45) DEFAULT NULL,
  `Calorit` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ruoka`
--

LOCK TABLES `Ruoka` WRITE;
/*!40000 ALTER TABLE `Ruoka` DISABLE KEYS */;
INSERT INTO `Ruoka` VALUES (1,'Bors-keitto','lautanen','140'),(2,'Pinaattikeitto','lautanen','130'),(3,'Maito','lasi','95'),(4,'Broilerin filesuikale','100 g','180'),(5,'Pekoni paistettu','100 g','520');
/*!40000 ALTER TABLE `Ruoka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nimi` varchar(50) NOT NULL,
  `KayttajaTunnus` varchar(10) NOT NULL,
  `SalaSana` varchar(10) NOT NULL,
  `Osoite` varchar(45) NOT NULL,
  `Kaupunki` varchar(45) NOT NULL,
  `Postinumero` int(11) NOT NULL,
  `Paino` int(11) NOT NULL,
  `Ika` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KayttajaTunnus_UNIQUE` (`KayttajaTunnus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Matti Jokunen','mj','salasana','Peltotie','Helsinki',790,80,0),(2,'Kaija Jokunen','kj','salasana','Peltotie','Helsinki',790,92,0);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-20 21:09:07

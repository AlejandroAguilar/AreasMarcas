CREATE DATABASE  IF NOT EXISTS `mapas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mapas`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: mapas
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` int(11) DEFAULT NULL,
  `coordenadas` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcadores`
--

DROP TABLE IF EXISTS `marcadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` int(11) DEFAULT NULL,
  `coordenadas` text NOT NULL,
  `idEstado` int(11) NOT NULL,
  `idMunicipio` int(11) NOT NULL,
  `idLocalidad` int(11) NOT NULL,
  `direccion` text NOT NULL,
  `numero` varchar(5) NOT NULL,
  `CP` varchar(5) NOT NULL,
  `idPropietario` int(11) NOT NULL,
  `perimetro` text NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcadores`
--

LOCK TABLES `marcadores` WRITE;
/*!40000 ALTER TABLE `marcadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `marcadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propiedad`
--

DROP TABLE IF EXISTS `propiedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propiedad` (
  `idPropiedad` int(11) NOT NULL AUTO_INCREMENT,
  `coordenadas` text NOT NULL,
  `idEstado` int(11) NOT NULL,
  `idMunicipio` int(11) NOT NULL,
  `idLocalidad` int(11) NOT NULL,
  `direccion` text NOT NULL,
  `numero` varchar(5) NOT NULL,
  `CP` varchar(5) NOT NULL,
  `idPropietario` int(11) NOT NULL,
  `perimetro` text NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  PRIMARY KEY (`idPropiedad`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propiedad`
--

LOCK TABLES `propiedad` WRITE;
/*!40000 ALTER TABLE `propiedad` DISABLE KEYS */;
/*!40000 ALTER TABLE `propiedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietarios`
--

DROP TABLE IF EXISTS `propietarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propietarios` (
  `idPropietario` int(11) NOT NULL AUTO_INCREMENT,
  `Paterno` text NOT NULL,
  `Materno` text NOT NULL,
  `Nombre` text NOT NULL,
  PRIMARY KEY (`idPropietario`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietarios`
--

LOCK TABLES `propietarios` WRITE;
/*!40000 ALTER TABLE `propietarios` DISABLE KEYS */;
INSERT INTO `propietarios` VALUES (1,'Tsubasa','Yagami','Akiko');
/*!40000 ALTER TABLE `propietarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-21 17:36:55

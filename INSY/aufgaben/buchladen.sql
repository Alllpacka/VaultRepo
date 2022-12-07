CREATE DATABASE  IF NOT EXISTS `buchladen` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `buchladen`;
-- MySQL dump 10.13  Distrib 5.5.24, for osx10.5 (i386)
--
-- Host: localhost    Database: buchladen
-- ------------------------------------------------------
-- Server version	5.1.44

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
-- Table structure for table `autoren`
--

DROP TABLE IF EXISTS `autoren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoren` (
  `autoren_id` int(11) NOT NULL AUTO_INCREMENT,
  `vorname` varchar(45) NOT NULL,
  `nachname` varchar(45) NOT NULL,
  `geburtsdatum` date DEFAULT NULL,
  PRIMARY KEY (`autoren_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoren`
--

LOCK TABLES `autoren` WRITE;
/*!40000 ALTER TABLE `autoren` DISABLE KEYS */;
INSERT INTO `autoren` VALUES (1,'Heinrich','Müller','1953-04-01'),(2,'Sabrina','Müller','1982-09-28'),(3,'Walburga','Deichel-Hurz','1948-09-29'),(4,'Jürgen','Rasterfahndung','1969-02-05'),(5,'Johannes','Rastermann','1972-12-12'),(6,'Nico','Nikolaus','1985-11-30'),(7,'Olga','Osterhase','1984-04-15'),(8,'Rudi','Rüsselmann','1978-03-22');
/*!40000 ALTER TABLE `autoren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoren_has_buecher`
--

DROP TABLE IF EXISTS `autoren_has_buecher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoren_has_buecher` (
  `autoren_autoren_id` int(11) NOT NULL,
  `buecher_buecher_id` int(11) NOT NULL,
  PRIMARY KEY (`autoren_autoren_id`,`buecher_buecher_id`),
  KEY `fk_autoren_has_buecher_buecher1_idx` (`buecher_buecher_id`),
  KEY `fk_autoren_has_buecher_autoren1_idx` (`autoren_autoren_id`),
  CONSTRAINT `fk_autoren_has_buecher_autoren1` FOREIGN KEY (`autoren_autoren_id`) REFERENCES `autoren` (`autoren_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_autoren_has_buecher_buecher1` FOREIGN KEY (`buecher_buecher_id`) REFERENCES `buecher` (`buecher_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoren_has_buecher`
--

LOCK TABLES `autoren_has_buecher` WRITE;
/*!40000 ALTER TABLE `autoren_has_buecher` DISABLE KEYS */;
INSERT INTO `autoren_has_buecher` VALUES (1,1),(1,2),(1,3),(2,3),(2,4),(2,5),(2,6),(3,7),(4,7),(5,7),(6,8),(6,9),(6,10),(7,10),(7,11),(8,12),(8,13),(7,14),(7,15),(5,16),(7,16),(1,17),(5,17),(7,17),(1,18),(4,19),(6,20),(8,21),(7,22);
/*!40000 ALTER TABLE `autoren_has_buecher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buecher`
--

DROP TABLE IF EXISTS `buecher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buecher` (
  `buecher_id` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(200) NOT NULL,
  `verkaufspreis` decimal(5,2) NOT NULL,
  `einkaufspreis` decimal(5,2) NOT NULL,
  `erscheinungsjahr` int(11) NOT NULL,
  `verlage_verlage_id` int(11) NOT NULL,
  PRIMARY KEY (`buecher_id`),
  KEY `fk_buecher_verlage1_idx` (`verlage_verlage_id`),
  CONSTRAINT `fk_buecher_verlage1` FOREIGN KEY (`verlage_verlage_id`) REFERENCES `verlage` (`verlage_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buecher`
--

LOCK TABLES `buecher` WRITE;
/*!40000 ALTER TABLE `buecher` DISABLE KEYS */;
INSERT INTO `buecher` VALUES (1,'Liebe auf den ersten Blick',15.95,9.02,1986,1),(2,'Hass',9.95,6.45,1977,1),(3,'Mein Kaninchen, mein Bruder und ich',11.90,5.12,1965,2),(4,'Wilde Jagd auf John Smith',11.90,5.63,1956,2),(5,'Wilde Jagd auf John Smith - Die Rache',15.90,7.11,1995,1),(6,'Wilde Jagd auf John Smith - Die Vergeltung',23.95,15.35,2012,3),(7,'Ein letzter Kuss',6.80,2.49,2008,5),(8,'Mondschein',7.90,6.23,2008,4),(9,'Wagen 1331',15.95,9.62,2008,6),(10,'Lass ihn doch singen!',36.80,23.95,2007,4),(11,'Es war keinmal',25.95,18.83,2006,5),(12,'Father and Son',16.00,8.00,2011,6),(13,'Schluckauf',9.90,6.00,1997,5),(14,'Friedrich Fritzlipitzli',23.95,12.90,1989,7),(15,'Fritz Friedlipitzi',13.90,9.18,1991,5),(16,'Winnetous Abenteuer - Reloaded',40.00,23.21,1989,3),(17,'Der Landarzt und seine Sekretärin',12.90,6.98,2001,2),(18,'Wann wirst du endlich kommen?',15.75,9.21,2012,3),(19,'Schweigsame Vollmondnacht',16.80,10.94,2012,6),(20,'Mondschein',22.80,15.09,2012,6),(21,'Am Tag die Sonne, in der Nacht der Mond',23.45,15.99,1979,7),(22,'Foliant der Hildegard von Bingen - Faksimile',485.00,205.60,1957,6);
/*!40000 ALTER TABLE `buecher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buecher_has_lieferanten`
--

DROP TABLE IF EXISTS `buecher_has_lieferanten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buecher_has_lieferanten` (
  `buecher_buecher_id` int(11) NOT NULL,
  `lieferanten_lieferanten_id` int(11) NOT NULL,
  PRIMARY KEY (`buecher_buecher_id`,`lieferanten_lieferanten_id`),
  KEY `fk_buecher_has_lieferanten_lieferanten1_idx` (`lieferanten_lieferanten_id`),
  KEY `fk_buecher_has_lieferanten_buecher1_idx` (`buecher_buecher_id`),
  CONSTRAINT `fk_buecher_has_lieferanten_buecher1` FOREIGN KEY (`buecher_buecher_id`) REFERENCES `buecher` (`buecher_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_buecher_has_lieferanten_lieferanten1` FOREIGN KEY (`lieferanten_lieferanten_id`) REFERENCES `lieferanten` (`lieferanten_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buecher_has_lieferanten`
--

LOCK TABLES `buecher_has_lieferanten` WRITE;
/*!40000 ALTER TABLE `buecher_has_lieferanten` DISABLE KEYS */;
INSERT INTO `buecher_has_lieferanten` VALUES (14,1),(15,1),(22,1),(9,2),(11,2),(13,2),(16,2),(10,3),(12,3),(3,4),(1,5),(2,5),(5,5),(13,5),(17,5),(21,5),(4,6),(13,6),(18,6),(5,7),(6,7),(8,7),(9,7),(13,7),(7,8),(8,8),(19,8),(20,8);
/*!40000 ALTER TABLE `buecher_has_lieferanten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buecher_has_sparten`
--

DROP TABLE IF EXISTS `buecher_has_sparten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buecher_has_sparten` (
  `buecher_buecher_id` int(11) NOT NULL,
  `sparten_sparten_id` int(11) NOT NULL,
  PRIMARY KEY (`buecher_buecher_id`,`sparten_sparten_id`),
  KEY `fk_buecher_has_sparten_sparten1_idx` (`sparten_sparten_id`),
  KEY `fk_buecher_has_sparten_buecher_idx` (`buecher_buecher_id`),
  CONSTRAINT `fk_buecher_has_sparten_buecher` FOREIGN KEY (`buecher_buecher_id`) REFERENCES `buecher` (`buecher_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_buecher_has_sparten_sparten1` FOREIGN KEY (`sparten_sparten_id`) REFERENCES `sparten` (`sparten_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buecher_has_sparten`
--

LOCK TABLES `buecher_has_sparten` WRITE;
/*!40000 ALTER TABLE `buecher_has_sparten` DISABLE KEYS */;
INSERT INTO `buecher_has_sparten` VALUES (1,1),(9,1),(10,1),(11,1),(12,1),(17,1),(20,1),(4,2),(5,2),(9,2),(12,2),(14,2),(16,2),(19,2),(5,3),(6,3),(7,3),(13,3),(18,3),(1,4),(2,4),(3,4),(8,4),(15,4),(20,4),(21,4),(22,5);
/*!40000 ALTER TABLE `buecher_has_sparten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieferanten`
--

DROP TABLE IF EXISTS `lieferanten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieferanten` (
  `lieferanten_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `orte_orte_id` int(11) NOT NULL,
  PRIMARY KEY (`lieferanten_id`),
  KEY `fk_lieferanten_orte1_idx` (`orte_orte_id`),
  CONSTRAINT `fk_lieferanten_orte1` FOREIGN KEY (`orte_orte_id`) REFERENCES `orte` (`orte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieferanten`
--

LOCK TABLES `lieferanten` WRITE;
/*!40000 ALTER TABLE `lieferanten` DISABLE KEYS */;
INSERT INTO `lieferanten` VALUES (1,'Schustermann',1),(2,'Schusselmann',1),(3,'123 GmbH',2),(4,'Lodwig GmbH',3),(5,'Tschenz & Co',3),(6,'Loedwig Books',4),(7,'Loedwig Bookstore',5),(8,'ABC-Lieferungen',6);
/*!40000 ALTER TABLE `lieferanten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orte`
--

DROP TABLE IF EXISTS `orte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orte` (
  `orte_id` int(11) NOT NULL AUTO_INCREMENT,
  `postleitzahl` varchar(5) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`orte_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orte`
--

LOCK TABLES `orte` WRITE;
/*!40000 ALTER TABLE `orte` DISABLE KEYS */;
INSERT INTO `orte` VALUES (1,'79312','Emmendingen'),(2,'79098','Freiburg'),(3,'79111','Freiburg'),(4,'79312','Wasser'),(5,'79312','Reute'),(6,'80895','München');
/*!40000 ALTER TABLE `orte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sparten`
--

DROP TABLE IF EXISTS `sparten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sparten` (
  `sparten_id` int(11) NOT NULL AUTO_INCREMENT,
  `bezeichnung` varchar(45) NOT NULL,
  PRIMARY KEY (`sparten_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sparten`
--

LOCK TABLES `sparten` WRITE;
/*!40000 ALTER TABLE `sparten` DISABLE KEYS */;
INSERT INTO `sparten` VALUES (1,'Liebe'),(2,'Humor'),(3,'Thriller'),(4,'Krimi'),(5,'Sachbuch');
/*!40000 ALTER TABLE `sparten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verlage`
--

DROP TABLE IF EXISTS `verlage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verlage` (
  `verlage_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `orte_orte_id` int(11) NOT NULL,
  PRIMARY KEY (`verlage_id`),
  KEY `fk_verlage_orte1_idx` (`orte_orte_id`),
  CONSTRAINT `fk_verlage_orte1` FOREIGN KEY (`orte_orte_id`) REFERENCES `orte` (`orte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verlage`
--

LOCK TABLES `verlage` WRITE;
/*!40000 ALTER TABLE `verlage` DISABLE KEYS */;
INSERT INTO `verlage` VALUES (1,'Joengkers',1),(2,'RBD',3),(3,'LoveMyBooks',4),(4,'Henry Smith & John Smuth',6),(5,'Assal',6),(6,'Libré Books',6),(7,'Lost in Reading',5);
/*!40000 ALTER TABLE `verlage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-25 20:16:56

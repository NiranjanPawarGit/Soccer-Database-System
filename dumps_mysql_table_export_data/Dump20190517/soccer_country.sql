-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: soccer
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `country` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Albania'),(2,'Algeria'),(3,'Angola'),(4,'Antigua and Barbuda'),(5,'Argentina'),(6,'Australia'),(7,'Austria'),(8,'Belgium'),(9,'Bhutan'),(10,'Bolivia'),(11,'Bosnia and Herzegovina'),(12,'Brazil'),(13,'Bulgaria'),(14,'Cameroon'),(15,'Canada'),(16,'Chile'),(17,'China'),(18,'Colombia'),(19,''),(20,''),(21,'Croatia'),(22,'Cuba'),(23,'Czech Republic'),(24,'Denmark'),(25,'Ecuador'),(26,'Egypt'),(27,'El Salvador'),(28,'England'),(29,'Estonia'),(30,'France'),(31,'Germany'),(32,'Ghana'),(33,'Greece'),(34,'Haiti'),(35,'Honduras'),(36,'Hungary'),(37,'Iceland'),(38,'India'),(39,'Indonesia'),(40,'Iran'),(41,'Iraq'),(42,'Ireland'),(43,'Israel'),(44,'Italy'),(45,'Japan'),(46,''),(47,'Kuwait'),(48,'Luxembourg'),(49,'Mexico'),(50,'Montserrat'),(51,'Morocco'),(52,'Netherlands'),(53,'New Zealand'),(54,'Nigeria'),(55,'Northern Ireland'),(56,'North Korea'),(57,'Norway'),(58,'Panama'),(59,'Paraguay'),(60,'Peru'),(61,'Poland'),(62,'Portugal'),(63,'Romania'),(64,'Russia'),(65,'Saudi Arabia'),(66,'Scotland'),(67,'Senegal'),(68,'Serbia'),(69,'Slovakia'),(70,'Slovenia'),(71,'Sri Lanka'),(72,'South Africa'),(73,'South Korea'),(74,'Spain'),(75,'Sudan'),(76,'Sweden'),(77,'Switzerland'),(78,'Togo'),(79,'Trinidad and Tobago'),(80,'Tunisia'),(81,'Turkey'),(82,'Ukraine'),(83,'Uruguay'),(84,'USA'),(85,'Wales'),(86,'Zaire'),(87,'Zambia');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 19:53:30

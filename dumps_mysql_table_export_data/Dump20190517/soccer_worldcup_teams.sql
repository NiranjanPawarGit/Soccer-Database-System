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
-- Table structure for table `worldcup_teams`
--

DROP TABLE IF EXISTS `worldcup_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `worldcup_teams` (
  `WC_TEAM_ID` int(11) NOT NULL,
  `WC_ID` int(11) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `WYEAR` year(4) DEFAULT NULL,
  `CNAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`WC_TEAM_ID`),
  KEY `WC_ID` (`WC_ID`),
  KEY `COUNTRY_ID` (`COUNTRY_ID`),
  CONSTRAINT `WORLDCUP_TEAMS_ibfk_1` FOREIGN KEY (`WC_ID`) REFERENCES `worldcup` (`WC_ID`),
  CONSTRAINT `WORLDCUP_TEAMS_ibfk_2` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldcup_teams`
--

LOCK TABLES `worldcup_teams` WRITE;
/*!40000 ALTER TABLE `worldcup_teams` DISABLE KEYS */;
INSERT INTO `worldcup_teams` VALUES (1,1930,83,1930,'Uruguay'),(2,1930,5,1930,'Argentina'),(3,1930,NULL,1930,'United States'),(4,1930,NULL,1930,'Yugoslavia'),(5,1930,16,1930,'Chile'),(6,1930,12,1930,'Brazil'),(7,1930,30,1930,'France'),(8,1930,63,1930,'Romania'),(9,1930,59,1930,'Paraguay'),(10,1930,60,1930,'Peru'),(11,1930,8,1930,'Belgium'),(12,1930,10,1930,'Bolivia'),(13,1930,NULL,1930,' Mexico'),(14,1934,44,1934,'Italy'),(15,1934,NULL,1934,'Czechoslovakia'),(16,1934,31,1934,'Germany'),(17,1934,7,1934,'Austria'),(18,1934,74,1934,'Spain'),(19,1934,36,1934,'Hungary'),(20,1934,77,1934,'Switzerland'),(21,1934,76,1934,'Sweden'),(22,1934,5,1934,'Argentina'),(23,1934,30,1934,'France'),(24,1934,52,1934,'Netherlands'),(25,1934,63,1934,'Romania'),(26,1934,26,1934,'Egypt'),(27,1934,12,1934,'Brazil'),(28,1934,8,1934,'Belgium'),(29,1934,NULL,1934,'United States'),(30,1938,44,1938,'Italy'),(31,1938,36,1938,'Hungary'),(32,1938,12,1938,'Brazil'),(33,1938,76,1938,'Sweden'),(34,1938,NULL,1938,'Czechoslovakia'),(35,1938,77,1938,'Switzerland'),(36,1938,22,1938,'Cuba'),(37,1938,30,1938,'France'),(38,1938,63,1938,'Romania'),(39,1938,31,1938,'Germany'),(40,1938,61,1938,'Poland'),(41,1938,57,1938,'Norway'),(42,1938,8,1938,'Belgium'),(43,1938,52,1938,'Netherlands'),(44,1938,NULL,1938,'Dutch East Indies'),(45,2010,74,2010,'Spain'),(46,2010,52,2010,'Netherlands'),(47,2010,31,2010,'Germany'),(48,2010,83,2010,'Uruguay'),(49,2010,5,2010,'Argentina'),(50,2010,12,2010,'Brazil'),(51,2010,32,2010,'Ghana'),(52,2010,59,2010,'Paraguay'),(53,2010,45,2010,'Japan'),(54,2010,16,2010,'Chile'),(55,2010,62,2010,'Portugal'),(56,2010,NULL,2010,'United States'),(57,2010,28,2010,'England'),(58,2010,49,2010,'Mexico'),(59,2010,73,2010,'South Korea'),(60,2010,69,2010,'Slovakia'),(61,2010,NULL,2010,'Ivory Coast'),(62,2010,70,2010,'Slovenia'),(63,2010,77,2010,'Switzerland'),(64,2010,72,2010,'South Africa'),(65,2010,6,2010,'Australia'),(66,2010,53,2010,'New Zealand'),(67,2010,68,2010,'Serbia'),(68,2010,24,2010,'Denmark'),(69,2010,33,2010,'Greece'),(70,2010,44,2010,'Italy'),(71,2010,54,2010,'Nigeria'),(72,2010,2,2010,'Algeria'),(73,2010,30,2010,'France'),(74,2010,35,2010,'Honduras'),(75,2010,14,2010,'Cameroon'),(76,2010,56,2010,'North Korea'),(77,2014,31,2014,'Germany'),(78,2014,5,2014,'Argentina'),(79,2014,52,2014,'Netherlands'),(80,2014,12,2014,'Brazil'),(81,2014,18,2014,'Colombia'),(82,2014,8,2014,'Belgium'),(83,2014,30,2014,'France'),(84,2014,NULL,2014,'Costa Rica'),(85,2014,16,2014,'Chile'),(86,2014,49,2014,'Mexico'),(87,2014,77,2014,'Switzerland'),(88,2014,83,2014,'Uruguay'),(89,2014,33,2014,'Greece'),(90,2014,2,2014,'Algeria'),(91,2014,NULL,2014,'United States'),(92,2014,54,2014,'Nigeria'),(93,2014,25,2014,'Ecuador'),(94,2014,62,2014,'Portugal'),(95,2014,21,2014,'Croatia'),(96,2014,11,2014,'Bosnia and Herzegovina'),(97,2014,NULL,2014,'Ivory Coast'),(98,2014,44,2014,'Italy'),(99,2014,74,2014,'Spain'),(100,2014,64,2014,'Russia'),(101,2014,32,2014,'Ghana'),(102,2014,28,2014,'England'),(103,2014,73,2014,'South Korea'),(104,2014,40,2014,'Iran'),(105,2014,45,2014,'Japan'),(106,2014,6,2014,'Australia'),(107,2014,35,2014,'Honduras'),(108,2014,14,2014,'Cameroon'),(109,2018,83,2018,'Uruguay'),(110,2018,64,2018,'Russia'),(111,2018,65,2018,'Saudi Arabia'),(112,2018,26,2018,'Egypt'),(113,2018,74,2018,'Spain'),(114,2018,62,2018,'Portugal'),(115,2018,NULL,2018,'IR Iran'),(116,2018,51,2018,'Morocco'),(117,2018,30,2018,'France'),(118,2018,24,2018,'Denmark'),(119,2018,60,2018,'Peru'),(120,2018,6,2018,'Australia'),(121,2018,21,2018,'Croatia'),(122,2018,5,2018,'Argentina'),(123,2018,54,2018,'Nigeria'),(124,2018,37,2018,'Iceland'),(125,2018,12,2018,'Brazil'),(126,2018,77,2018,'Switzerland'),(127,2018,68,2018,'Serbia'),(128,2018,NULL,2018,'Costa Rica'),(129,2018,76,2018,'Sweden'),(130,2018,49,2018,'Mexico'),(131,2018,NULL,2018,'Korea Republic'),(132,2018,31,2018,'Germany'),(133,2018,8,2018,'Belgium'),(134,2018,28,2018,'England'),(135,2018,80,2018,'Tunisia'),(136,2018,58,2018,'Panama'),(137,2018,18,2018,'Colombia'),(138,2018,45,2018,'Japan'),(139,2018,67,2018,'Senegal'),(140,2018,61,2018,'Poland');
/*!40000 ALTER TABLE `worldcup_teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 19:53:32

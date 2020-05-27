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
-- Table structure for table `worldcup`
--

DROP TABLE IF EXISTS `worldcup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `worldcup` (
  `WC_ID` int(11) NOT NULL,
  `WINNING_COUNTRY_ID` int(11) DEFAULT NULL,
  `HOST_COUNTRY_ID` int(11) DEFAULT NULL,
  `FIRST_RUNNER_COUNTRY_ID` int(11) DEFAULT NULL,
  `WC_YEAR` year(4) DEFAULT NULL,
  `WC` varchar(50) DEFAULT NULL,
  `HC` varchar(50) DEFAULT NULL,
  `RC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`WC_ID`),
  KEY `WINNING_COUNTRY_ID` (`WINNING_COUNTRY_ID`),
  KEY `HOST_COUNTRY_ID` (`HOST_COUNTRY_ID`),
  KEY `FIRST_RUNNER_COUNTRY_ID` (`FIRST_RUNNER_COUNTRY_ID`),
  CONSTRAINT `WORLDCUP_ibfk_1` FOREIGN KEY (`WINNING_COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `WORLDCUP_ibfk_2` FOREIGN KEY (`HOST_COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `WORLDCUP_ibfk_3` FOREIGN KEY (`FIRST_RUNNER_COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldcup`
--

LOCK TABLES `worldcup` WRITE;
/*!40000 ALTER TABLE `worldcup` DISABLE KEYS */;
INSERT INTO `worldcup` VALUES (1930,83,83,5,1930,'Uruguay','Uruguay','Argentina'),(1934,44,44,44,1934,'Italy','Italy','Czechoslovakia'),(1938,44,30,36,1938,'Italy','France','Hungary'),(1950,83,12,12,1950,'Uruguay','Brazil','Brazil'),(1954,1,77,36,1954,'West Germany','Switzerland','Hungary'),(1958,12,76,76,1958,'Brazil','Sweden','Sweden'),(1962,12,16,12,1962,'Brazil','Chile','Czechoslovakia'),(1966,28,28,28,1966,'England','England','West Germany'),(1970,12,49,44,1970,'Brazil','Mexico','Italy'),(1974,1,1,52,1974,'West Germany','West Germany','Netherlands'),(1978,5,5,52,1978,'Argentina','Argentina','Netherlands'),(1982,44,74,44,1982,'Italy','Spain','West Germany'),(1986,5,49,5,1986,'Argentina','Mexico','West Germany'),(1990,1,44,5,1990,'West Germany','Italy','Argentina'),(1994,12,12,44,1994,'Brazil','United States','Italy'),(1998,30,30,12,1998,'France','France','Brazil'),(2002,12,12,31,2002,'Brazil','South Korea, Japan','Germany'),(2006,44,31,30,2006,'Italy','Germany','France'),(2010,74,72,52,2010,'Spain','South Africa','Netherlands'),(2014,31,12,5,2014,'Germany','Brazil','Argentina'),(2018,30,64,21,2018,'France','Russia','Croatia');
/*!40000 ALTER TABLE `worldcup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 19:53:26

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
-- Table structure for table `club_stats`
--

DROP TABLE IF EXISTS `club_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `club_stats` (
  `CLUB_ID` int(11) DEFAULT NULL,
  `CLUB_RANK` int(11) NOT NULL,
  `CLUB_YEAR` int(11) NOT NULL,
  `CLUB_PLAYED_MATCHES` int(11) DEFAULT NULL,
  `CLUB_WINS` int(11) DEFAULT NULL,
  `CLUB_LOST` int(11) DEFAULT NULL,
  `CLUB_DRAWS` int(11) DEFAULT NULL,
  `GOALS_FOR` int(11) DEFAULT NULL,
  `GOALS_AGAINST` int(11) DEFAULT NULL,
  `GOALS_DIFF` int(11) DEFAULT NULL,
  `POINTS` int(11) DEFAULT NULL,
  `CLUBNAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CLUB_RANK`,`CLUB_YEAR`),
  KEY `CLUB_ID` (`CLUB_ID`),
  CONSTRAINT `CLUB_STATS_ibfk_1` FOREIGN KEY (`CLUB_ID`) REFERENCES `club` (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_stats`
--

LOCK TABLES `club_stats` WRITE;
/*!40000 ALTER TABLE `club_stats` DISABLE KEYS */;
INSERT INTO `club_stats` VALUES (14,1,2012,38,28,5,5,86,43,43,89,'Manchester United'),(13,1,2013,38,27,6,5,102,37,65,86,'Manchester City'),(6,1,2014,38,26,3,9,73,32,41,87,'Chelsea'),(13,2,2012,38,23,6,9,66,34,32,78,'Manchester City'),(12,2,2013,38,26,6,6,101,50,51,84,'Liverpool'),(13,2,2014,38,24,7,7,83,38,45,79,'Manchester City'),(6,3,2012,38,22,7,9,75,39,36,75,'Chelsea'),(6,3,2013,38,25,6,7,71,27,44,82,'Chelsea'),(1,3,2014,38,22,7,9,71,36,35,75,'Arsenal'),(1,4,2012,38,21,7,10,72,37,35,73,'Arsenal'),(1,4,2013,38,24,7,7,68,41,27,79,'Arsenal'),(14,4,2014,38,20,8,10,62,37,25,70,'Manchester United'),(17,5,2012,38,21,8,9,66,46,20,72,'Tottenham Hotspur'),(8,5,2013,38,21,8,9,61,39,22,72,'Everton'),(17,5,2014,38,19,12,7,58,53,5,64,'Tottenham Hotspur'),(8,6,2012,38,16,7,15,55,40,15,63,'Everton'),(17,6,2013,38,21,11,6,55,51,4,69,'Tottenham Hotspur'),(12,6,2014,38,18,12,8,52,48,4,62,'Liverpool'),(12,7,2012,38,16,9,13,71,43,28,61,'Liverpool'),(14,7,2013,38,19,12,7,64,43,21,64,'Manchester United'),(16,7,2014,38,18,14,6,54,33,21,60,'Southampton'),(43,8,2012,38,14,17,7,53,57,-4,49,'West Bromwich Albion'),(16,8,2013,38,15,12,11,54,46,8,56,'Southampton'),(42,8,2014,38,16,14,8,46,49,-3,56,'Swansea City'),(42,9,2012,38,11,14,13,47,51,-4,46,'Swansea City'),(41,9,2013,38,13,14,11,45,52,-7,50,'Stoke City'),(41,9,2014,38,15,14,9,48,45,3,54,'Stoke City'),(19,10,2012,38,12,16,10,45,53,-8,46,'West Ham United'),(15,10,2013,38,15,19,4,43,59,-16,49,'Newcastle United'),(7,10,2014,38,13,16,9,47,51,-4,48,'Crystal Palace'),(33,11,2012,38,10,14,14,41,58,-17,44,'Norwich City'),(7,11,2013,38,13,19,6,33,48,-15,45,'Crystal Palace'),(8,11,2014,38,12,15,11,48,50,-2,47,'Everton'),(9,12,2012,38,11,17,10,50,60,-10,43,'Fulham'),(42,12,2013,38,11,18,9,54,54,0,42,'Swansea City'),(19,12,2014,38,12,15,11,44,47,-3,47,'West Ham United'),(41,13,2012,38,9,14,15,34,45,-11,42,'Stoke City'),(19,13,2013,38,11,20,7,40,51,-11,40,'West Ham United'),(43,13,2014,38,11,16,11,38,51,-13,44,'West Bromwich Albion'),(16,14,2012,38,9,15,14,49,60,-11,41,'Southampton'),(66,14,2013,38,10,20,8,41,60,-19,38,'Sunderland'),(11,14,2014,38,11,19,8,46,55,-9,41,'Leicester City'),(21,15,2012,38,10,17,11,47,69,-22,41,'Aston Villa'),(21,15,2013,38,10,20,8,39,61,-22,38,'Aston Villa'),(15,15,2014,38,10,19,9,40,63,-23,39,'Newcastle United'),(15,16,2012,38,11,19,8,45,68,-23,41,'Newcastle United'),(28,16,2013,38,10,21,7,38,53,-15,37,'Hull City'),(66,16,2014,38,7,14,17,31,53,-22,38,'Sunderland'),(66,17,2012,38,9,17,12,41,54,-13,39,'Sunderland'),(43,17,2013,38,7,16,15,43,59,-16,36,'West Bromwich Albion'),(21,17,2014,38,10,20,8,31,57,-26,38,'Aston Villa'),(33,18,2013,38,8,21,9,28,62,-34,33,'Norwich City'),(28,18,2014,38,8,19,11,33,51,-18,35,'Hull City'),(37,19,2012,38,6,22,10,43,73,-30,28,'Reading'),(9,19,2013,38,9,24,5,40,85,-45,32,'Fulham'),(4,19,2014,38,7,19,12,28,53,-25,33,'Burnley'),(36,20,2012,38,4,21,13,30,60,-30,25,'Queens Park Rangers'),(5,20,2013,38,7,22,9,32,74,-42,30,'Cardiff City'),(36,20,2014,38,8,24,6,42,73,-31,30,'Queens Park Rangers');
/*!40000 ALTER TABLE `club_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 19:53:27

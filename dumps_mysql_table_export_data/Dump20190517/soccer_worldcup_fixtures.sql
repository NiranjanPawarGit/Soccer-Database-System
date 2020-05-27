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
-- Table structure for table `worldcup_fixtures`
--

DROP TABLE IF EXISTS `worldcup_fixtures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `worldcup_fixtures` (
  `WC_FIX_ID` int(11) NOT NULL,
  `WC_ID` int(11) NOT NULL,
  `COUNTRY1_ID` int(11) DEFAULT NULL,
  `HCNAME` varchar(100) DEFAULT NULL,
  `ACNAME` varchar(100) DEFAULT NULL,
  `COUNTRY2_ID` int(11) DEFAULT NULL,
  `WC_FIC_SCORE` varchar(50) DEFAULT NULL,
  `WC_FIX_DATE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`WC_FIX_ID`,`WC_ID`),
  KEY `WC_ID` (`WC_ID`),
  KEY `COUNTRY1_ID` (`COUNTRY1_ID`),
  KEY `COUNTRY2_ID` (`COUNTRY2_ID`),
  CONSTRAINT `WORLDCUP_FIXTURES_ibfk_1` FOREIGN KEY (`WC_ID`) REFERENCES `worldcup` (`WC_ID`),
  CONSTRAINT `WORLDCUP_FIXTURES_ibfk_2` FOREIGN KEY (`COUNTRY1_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `WORLDCUP_FIXTURES_ibfk_3` FOREIGN KEY (`COUNTRY2_ID`) REFERENCES `country` (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldcup_fixtures`
--

LOCK TABLES `worldcup_fixtures` WRITE;
/*!40000 ALTER TABLE `worldcup_fixtures` DISABLE KEYS */;
INSERT INTO `worldcup_fixtures` VALUES (1,1934,76,'Sweden','Argentina',5,'3-2','Jun 20'),(1,2010,72,'South Africa','Mexico',49,'1-1','Jun 11'),(1,2014,12,'Brazil','Croatia',21,'3-1','Jun 12'),(2,1934,7,'Austria','France',30,'1-1','Jun 24'),(2,2010,83,'Uruguay','France',30,'00','Jun 11'),(2,2014,49,'Mexico','Cameroon',14,'1-0','Jun 13'),(3,1934,31,'Germany','Belgium',8,'5-2','Jun 24'),(3,2010,72,'South Africa','Uruguay',83,'0-3','Jun 16'),(3,2014,12,'Brazil','Mexico',49,'0-0','Jun 17'),(4,1934,74,'Spain','Brazil',12,'3-1','Jun 15'),(4,2010,30,'France','Mexico',49,'0-2','Jun 17'),(4,2014,14,'Cameroon','Croatia',21,'0-4','Jun 18'),(5,1934,36,'Hungary','Egypt',26,'4-2','Jun 15'),(5,2010,49,'Mexico','Uruguay',83,'0-1','Jun 22'),(5,2014,14,'Cameroon','Brazil',12,'1-4','Jun 23'),(6,1934,77,'Switzerland','Netherlands',52,'3-2','Jun 20'),(6,2010,30,'France','South Africa',72,'1-2','Jun 22'),(6,2014,21,'Croatia','Mexico',49,'1-3','Jun 23'),(7,1934,44,'Italy','United States',NULL,'7-1','Jun 21'),(7,2010,73,'South Korea','Greece',33,'20','Jun 12'),(7,2014,74,'Spain','Netherlands',52,'1-5','Jun 13'),(8,1934,NULL,'Czechoslovakia','Romania',63,'2-1','Jun 25'),(8,2010,5,'Argentina','Nigeria',54,'10','Jun 12'),(8,2014,16,'Chile','Australia',6,'3-1','Jun 13'),(9,1934,NULL,'Czechoslovakia','Switzerland',77,'3-2','Jun 25'),(9,2010,5,'Argentina','South Korea',73,'4-1','Jun 17'),(9,2014,74,'Spain','Chile',16,'0-2','Jun 18'),(10,1934,31,'Germany','Sweden',76,'2-1','Jun 16'),(10,2010,33,'Greece','Nigeria',54,'2-1','Jun 17'),(10,2014,6,'Australia','Netherlands',52,'2-3','Jun 18'),(11,1934,44,'Italy','Spain',74,'1-1','Jun 16'),(11,2010,54,'Nigeria','South Korea',73,'2-2','Jun 22'),(11,2014,6,'Australia','Spain',74,'0-3','Jun 23'),(12,1934,7,'Austria','Hungary',36,'2-1','Jun 21'),(12,2010,33,'Greece','Argentina',5,'0-2','Jun 22'),(12,2014,52,'Netherlands','Chile',16,'2-0','Jun 23'),(13,1934,44,'Italy','Spain',74,'10','Jun 21'),(13,2010,28,'England','United States',NULL,'1-1','Jun 12'),(13,2014,18,'Colombia','Greece',33,'3-0','Jun 14'),(14,1934,44,'Italy','Austria',7,'10','Jun 25'),(14,2010,2,'Algeria','Slovenia',70,'0-1','Jun 13'),(14,2014,NULL,'Côte d\'Ivoire','Japan',45,'2-1','Jun 14'),(15,1934,NULL,'Czechoslovakia','Germany',31,'3-1','Jun 25'),(15,2010,70,'Slovenia','United States',NULL,'2-2','Jun 18'),(15,2014,18,'Colombia','Côte d\'Ivoire',NULL,'2-1','Jun 19'),(16,1934,31,'Germany','Austria',7,'3-2','Jun 26'),(16,2010,28,'England','Algeria',2,'00','Jun 18'),(16,2014,45,'Japan','Greece',33,'0-0','Jun 19'),(17,1934,44,'Italy','Czechoslovakia',NULL,'1-1','Jun 26'),(17,2010,NULL,'United States','Algeria',2,'10','Jun 23'),(17,2014,45,'Japan','Colombia',18,'1-4','Jun 24'),(18,2010,70,'Slovenia','England',28,'0-1','Jun 23'),(18,2014,33,'Greece','Côte d\'Ivoire',NULL,'2-1','Jun 24'),(19,2010,68,'Serbia','Ghana',32,'0-1','Jun 13'),(19,2014,83,'Uruguay','Costa Rica',NULL,'1-3','Jun 14'),(20,2010,31,'Germany','Australia',6,'40','Jun 13'),(20,2014,28,'England','Italy',44,'1-2','Jun 14'),(21,2010,31,'Germany','Serbia',68,'0-1','Jun 18'),(21,2014,83,'Uruguay','England',28,'2-1','Jun 19'),(22,2010,32,'Ghana','Australia',6,'1-1','Jun 19'),(22,2014,44,'Italy','Costa Rica',NULL,'0-1','Jun 20'),(23,2010,6,'Australia','Serbia',68,'2-1','Jun 23'),(23,2014,44,'Italy','Uruguay',83,'0-1','Jun 24'),(24,2010,32,'Ghana','Germany',31,'0-1','Jun 23'),(24,2014,NULL,'Costa Rica','England',28,'0-0','Jun 24'),(25,2010,52,'Netherlands','Denmark',24,'20','Jun 14'),(25,2014,77,'Switzerland','Ecuador',25,'2-1','Jun 15'),(26,2010,45,'Japan','Cameroon',14,'10','Jun 14'),(26,2014,30,'France','Honduras',35,'3-0','Jun 15'),(27,2010,52,'Netherlands','Japan',45,'10','Jun 19'),(27,2014,77,'Switzerland','France',30,'2-5','Jun 20'),(28,2010,14,'Cameroon','Denmark',24,'1-2','Jun 19'),(28,2014,35,'Honduras','Ecuador',25,'1-2','Jun 20'),(29,2010,24,'Denmark','Japan',45,'1-3','Jun 24'),(29,2014,35,'Honduras','Switzerland',77,'0-3','Jun 25'),(30,2010,14,'Cameroon','Netherlands',52,'1-2','Jun 24'),(30,2014,25,'Ecuador','France',30,'0-0','Jun 25'),(31,2010,44,'Italy','Paraguay',59,'1-1','Jun 14'),(31,2014,5,'Argentina','Bosnia-Herzegovina',NULL,'2-1','Jun 15'),(32,2010,53,'New Zealand','Slovakia',69,'1-1','Jun 15'),(32,2014,40,'Iran','Nigeria',54,'0-0','Jun 16'),(33,2010,69,'Slovakia','Paraguay',59,'0-2','Jun 20'),(33,2014,5,'Argentina','Iran',40,'1-0','Jun 21'),(34,2010,44,'Italy','New Zealand',53,'1-1','Jun 20'),(34,2014,54,'Nigeria','Bosnia-Herzegovina',NULL,'1-0','Jun 21'),(35,2010,69,'Slovakia','Italy',44,'3-2','Jun 24'),(35,2014,54,'Nigeria','Argentina',5,'2-3','Jun 25'),(36,2010,59,'Paraguay','New Zealand',53,'00','Jun 24'),(36,2014,NULL,'Bosnia-Herzegovina','Iran',40,'3-1','Jun 25'),(37,2010,NULL,'Côte d\'Ivoire','Portugal',62,'00','Jun 15'),(37,2014,31,'Germany','Portugal',62,'4-0','Jun 16'),(38,2010,12,'Brazil','North Korea',56,'2-1','Jun 15'),(38,2014,32,'Ghana','United States',NULL,'1-2','Jun 16'),(39,2010,12,'Brazil','Côte d\'Ivoire',NULL,'3-1','Jun 20'),(39,2014,31,'Germany','Ghana',32,'2-2','Jun 21'),(40,2010,62,'Portugal','North Korea',56,'70','Jun 21'),(40,2014,NULL,'United States','Portugal',62,'2-2','Jun 22'),(41,2010,62,'Portugal','Brazil',12,'00','Jun 25'),(41,2014,NULL,'United States','Germany',31,'0-1','Jun 26'),(42,2010,56,'North Korea','Côte d\'Ivoire',NULL,'0-3','Jun 25'),(42,2014,62,'Portugal','Ghana',32,'2-1','Jun 26'),(43,2010,35,'Honduras','Chile',16,'0-1','Jun 16'),(43,2014,8,'Belgium','Algeria',2,'2-1','Jun 17'),(44,2010,74,'Spain','Switzerland',77,'0-1','Jun 16'),(44,2014,64,'Russia','South Korea',73,'1-1','Jun 17'),(45,2010,16,'Chile','Switzerland',77,'10','Jun 21'),(45,2014,8,'Belgium','Russia',64,'10','Jun 22'),(46,2010,74,'Spain','Honduras',35,'20','Jun 21'),(46,2014,73,'South Korea','Algeria',2,'2-4','Jun 22'),(47,2010,16,'Chile','Spain',74,'1-2','Jun 25'),(47,2014,73,'South Korea','Belgium',8,'0-1','Jun 26'),(48,2010,77,'Switzerland','Honduras',35,'00','Jun 25'),(48,2014,2,'Algeria','Russia',64,'1-1','Jun 26'),(49,2010,83,'Uruguay','South Korea',73,'2-1','Jun 26'),(49,2014,12,'Brazil','Chile',16,'3-2 ','Jun 28'),(50,2010,NULL,'United States','Ghana',32,'1-1 1-2nV','Jun 26'),(50,2014,18,'Colombia','Uruguay',83,'2-0 (1-0)','Jun 28'),(51,2010,31,'Germany','England',28,'4-1','Jun 27'),(51,2014,52,'Netherlands','Mexico',49,'2-1 (0-0)','Jun 29'),(52,2010,5,'Argentina','Mexico',49,'3-1','Jun 27'),(52,2014,NULL,'Costa Rica','Greece',33,'5-3 pen. 1-1 (1-1, 0-0)','Jun 29'),(53,2010,52,'Netherlands','Slovakia',69,'2-1','Jun 28'),(53,2014,30,'France','Nigeria',54,'2-0 (0-0)','Jun 30'),(54,2010,12,'Brazil','Chile',16,'3-0','Jun 28'),(54,2014,31,'Germany','Algeria',2,'2-1 (0-0, 0-0)','Jun 30'),(55,2010,59,'Paraguay','Japan',45,'0-0 0-0nV 5-3iE','Jun 29'),(55,2014,5,'Argentina','Switzerland',77,'1-0 (0-0, 0-0)','Jul 1'),(56,2010,74,'Spain','Portugal',62,'1-0','Jun 29'),(56,2014,8,'Belgium','United States',NULL,'2-1 (0-0, 0-0)','Jul 1'),(57,2010,52,'Netherlands','Brazil',12,'2-1','Jul 2'),(57,2014,12,'Brazil','Colombia',18,'2-1 (1-0)','Jul 4'),(58,2010,83,'Uruguay','Ghana',32,'1-1 1-1nV 4-2iE','Jul 2'),(58,2014,30,'France','Germany',31,'0-1 (0-1)','Jul 4'),(59,2010,5,'Argentina','Germany',31,'0-4','Jul 3'),(59,2014,52,'Netherlands','Costa Rica',NULL,'4-3 pen. 0-0 (0-0, 0-0)','Jul 5'),(60,2010,59,'Paraguay','Spain',74,'0-1','Jul 3'),(60,2014,5,'Argentina','Belgium',8,'1-0 (1-0)','Jul 5'),(61,2010,83,'Uruguay','Netherlands',52,'2-3','Jul 6'),(61,2014,12,'Brazil','Germany',31,'1-7 (0-5)','Jul 8'),(62,2010,31,'Germany','Spain',74,'0-1','Jul 7'),(62,2014,52,'Netherlands','Argentina',5,'2-4 pen. 0-0 (0-0, 0-0)','Jul 9'),(63,2010,83,'Uruguay','Germany',31,'2-3','Jul 10'),(63,2014,12,'Brazil','Netherlands',52,'0-3 (0-2)','Jul 12'),(64,2010,52,'Netherlands','Spain',74,'0-0 0-1nV','Jul 11'),(64,2014,31,'Germany','Argentina',5,'1-0 (0-0, 0-0)','Jul 13');
/*!40000 ALTER TABLE `worldcup_fixtures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 19:53:29

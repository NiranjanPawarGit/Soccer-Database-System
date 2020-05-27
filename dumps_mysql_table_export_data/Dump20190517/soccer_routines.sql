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
-- Temporary view structure for view `countrieswonathome`
--

DROP TABLE IF EXISTS `countrieswonathome`;
/*!50001 DROP VIEW IF EXISTS `countrieswonathome`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `countrieswonathome` AS SELECT 
 1 AS `WC_YEAR`,
 1 AS `COUNTRY_NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `win_percent`
--

DROP TABLE IF EXISTS `win_percent`;
/*!50001 DROP VIEW IF EXISTS `win_percent`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `win_percent` AS SELECT 
 1 AS `CLUB_RANK`,
 1 AS `CLUBNAME`,
 1 AS `PERCENTAGE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `club_minrank_and_maxrank`
--

DROP TABLE IF EXISTS `club_minrank_and_maxrank`;
/*!50001 DROP VIEW IF EXISTS `club_minrank_and_maxrank`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `club_minrank_and_maxrank` AS SELECT 
 1 AS `CLUB_NAME`,
 1 AS `MAXRANK`,
 1 AS `MINRANK`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `hostandwincountry`
--

DROP TABLE IF EXISTS `hostandwincountry`;
/*!50001 DROP VIEW IF EXISTS `hostandwincountry`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `hostandwincountry` AS SELECT 
 1 AS `WC_YEAR`,
 1 AS `COUNTRY_NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `eachclubmaxandminwinpercent`
--

DROP TABLE IF EXISTS `eachclubmaxandminwinpercent`;
/*!50001 DROP VIEW IF EXISTS `eachclubmaxandminwinpercent`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `eachclubmaxandminwinpercent` AS SELECT 
 1 AS `CLUB_NAME`,
 1 AS `MAXWIN`,
 1 AS `MINWIN`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `test`
--

DROP TABLE IF EXISTS `test`;
/*!50001 DROP VIEW IF EXISTS `test`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `test` AS SELECT 
 1 AS `std_id`,
 1 AS `country_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stadiumsinfo`
--

DROP TABLE IF EXISTS `stadiumsinfo`;
/*!50001 DROP VIEW IF EXISTS `stadiumsinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `stadiumsinfo` AS SELECT 
 1 AS `club_name`,
 1 AS `std_name`,
 1 AS `lg_name`,
 1 AS `country_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `countrieswonathome`
--

/*!50001 DROP VIEW IF EXISTS `countrieswonathome`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `countrieswonathome` AS select `w`.`WC_YEAR` AS `WC_YEAR`,`c`.`COUNTRY_NAME` AS `COUNTRY_NAME` from (`worldcup` `w` join `country` `c`) where ((`w`.`WINNING_COUNTRY_ID` = `w`.`HOST_COUNTRY_ID`) and (`w`.`HOST_COUNTRY_ID` = `c`.`COUNTRY_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `win_percent`
--

/*!50001 DROP VIEW IF EXISTS `win_percent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `win_percent` AS select `club_stats`.`CLUB_RANK` AS `CLUB_RANK`,`club_stats`.`CLUBNAME` AS `CLUBNAME`,((`club_stats`.`CLUB_WINS` * 100) / `club_stats`.`CLUB_PLAYED_MATCHES`) AS `PERCENTAGE` from `club_stats` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `club_minrank_and_maxrank`
--

/*!50001 DROP VIEW IF EXISTS `club_minrank_and_maxrank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `club_minrank_and_maxrank` AS select `a`.`CLUB_NAME` AS `CLUB_NAME`,`b`.`MAXRANK` AS `MAXRANK`,`b`.`MINRANK` AS `MINRANK` from ((select `club`.`CLUB_NAME` AS `CLUB_NAME`,`club`.`CLUB_ID` AS `CLUB_ID` from `club`) `a` join (select `club_stats`.`CLUB_ID` AS `CLUB_ID`,max(`club_stats`.`CLUB_RANK`) AS `MINRANK`,min(`club_stats`.`CLUB_RANK`) AS `MAXRANK` from `club_stats` group by `club_stats`.`CLUB_ID`) `b` on((`a`.`CLUB_ID` = `b`.`CLUB_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hostandwincountry`
--

/*!50001 DROP VIEW IF EXISTS `hostandwincountry`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hostandwincountry` AS select `w`.`WC_YEAR` AS `WC_YEAR`,`c`.`COUNTRY_NAME` AS `COUNTRY_NAME` from (`worldcup` `w` join `country` `c`) where ((`w`.`WINNING_COUNTRY_ID` = `w`.`HOST_COUNTRY_ID`) and (`w`.`HOST_COUNTRY_ID` = `c`.`COUNTRY_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `eachclubmaxandminwinpercent`
--

/*!50001 DROP VIEW IF EXISTS `eachclubmaxandminwinpercent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `eachclubmaxandminwinpercent` AS select `a`.`CLUB_NAME` AS `CLUB_NAME`,`b`.`MAXWIN` AS `MAXWIN`,`b`.`MINWIN` AS `MINWIN` from ((select `club`.`CLUB_NAME` AS `CLUB_NAME`,`club`.`CLUB_ID` AS `CLUB_ID` from `club`) `a` join (select `club_stats`.`CLUB_ID` AS `CLUB_ID`,max(((`club_stats`.`CLUB_WINS` * 100) / `club_stats`.`CLUB_PLAYED_MATCHES`)) AS `MAXWIN`,min(((`club_stats`.`CLUB_WINS` * 100) / `club_stats`.`CLUB_PLAYED_MATCHES`)) AS `MINWIN` from `club_stats` group by `club_stats`.`CLUB_ID`) `b` on((`a`.`CLUB_ID` = `b`.`CLUB_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `test`
--

/*!50001 DROP VIEW IF EXISTS `test`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test` AS select `s`.`STD_ID` AS `std_id`,`cn`.`COUNTRY_NAME` AS `country_name` from (((`stadium` `s` join `club` `c`) join `league` `l`) join `country` `cn`) where (`s`.`CLUB_ID` in (select `club`.`CLUB_ID` from `club`) and `c`.`LG_ID` in (select `league`.`LG_ID` from `league`) and `l`.`COUNTRY_ID` in (select `country`.`COUNTRY_ID` from `country`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stadiumsinfo`
--

/*!50001 DROP VIEW IF EXISTS `stadiumsinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stadiumsinfo` AS select `c`.`CLUB_NAME` AS `club_name`,`s`.`STD_NAME` AS `std_name`,`l`.`LG_NAME` AS `lg_name`,`cn`.`COUNTRY_NAME` AS `country_name` from (((`stadium` `s` join `club` `c`) join `league` `l`) join `country` `cn`) where (`s`.`CLUB_ID` in (select `club`.`CLUB_ID` from `club`) and `c`.`LG_ID` in (select `league`.`LG_ID` from `league`) and `l`.`COUNTRY_ID` in (select `country`.`COUNTRY_ID` from `country`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 19:53:33

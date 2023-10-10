CREATE DATABASE  IF NOT EXISTS `expense_tracker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `expense_tracker`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: expense_tracker
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Temporary view structure for view `v_expense_regular0`
--

DROP TABLE IF EXISTS `v_expense_regular0`;
/*!50001 DROP VIEW IF EXISTS `v_expense_regular0`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_expense_regular0` AS SELECT 
 1 AS `sno`,
 1 AS `date`,
 1 AS `item`,
 1 AS `expense`,
 1 AS `receiver name`,
 1 AS `receiver ID`,
 1 AS `sender name`,
 1 AS `sender ID`,
 1 AS `is_include`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_expense_summary`
--

DROP TABLE IF EXISTS `v_expense_summary`;
/*!50001 DROP VIEW IF EXISTS `v_expense_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_expense_summary` AS SELECT 
 1 AS `date`,
 1 AS `expense`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_expense_summary0`
--

DROP TABLE IF EXISTS `v_expense_summary0`;
/*!50001 DROP VIEW IF EXISTS `v_expense_summary0`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_expense_summary0` AS SELECT 
 1 AS `date`,
 1 AS `expense`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_expense_summary1`
--

DROP TABLE IF EXISTS `v_expense_summary1`;
/*!50001 DROP VIEW IF EXISTS `v_expense_summary1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_expense_summary1` AS SELECT 
 1 AS `date`,
 1 AS `expense`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_expense_regular1`
--

DROP TABLE IF EXISTS `v_expense_regular1`;
/*!50001 DROP VIEW IF EXISTS `v_expense_regular1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_expense_regular1` AS SELECT 
 1 AS `sno`,
 1 AS `date`,
 1 AS `item`,
 1 AS `expense`,
 1 AS `receiver name`,
 1 AS `receiver ID`,
 1 AS `sender name`,
 1 AS `sender ID`,
 1 AS `is_include`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_expense_regular`
--

DROP TABLE IF EXISTS `v_expense_regular`;
/*!50001 DROP VIEW IF EXISTS `v_expense_regular`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_expense_regular` AS SELECT 
 1 AS `sno`,
 1 AS `date`,
 1 AS `item`,
 1 AS `expense`,
 1 AS `receiver name`,
 1 AS `receiver ID`,
 1 AS `sender name`,
 1 AS `sender ID`,
 1 AS `is_include`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_expense_regular0`
--

/*!50001 DROP VIEW IF EXISTS `v_expense_regular0`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_expense_regular0` AS select `exp`.`sno` AS `sno`,`exp`.`date` AS `date`,`exp`.`item` AS `item`,`exp`.`expense` AS `expense`,`rec`.`name` AS `receiver name`,`rec`.`receiver_ID` AS `receiver ID`,`sen`.`name` AS `sender name`,`exp`.`sender_ID` AS `sender ID`,`exp`.`is_include` AS `is_include` from ((`expense` `exp` left join `receiver` `rec` on((`exp`.`receiver_ID` = `rec`.`receiver_ID`))) left join `sender` `sen` on((`exp`.`sender_ID` = `sen`.`sender_ID`))) where (`exp`.`is_include` = 0) order by `exp`.`date`,`exp`.`updated_at` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_expense_summary`
--

/*!50001 DROP VIEW IF EXISTS `v_expense_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_expense_summary` AS select `exp`.`date` AS `date`,sum(`exp`.`expense`) AS `expense` from `expense` `exp` group by `exp`.`date` order by `exp`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_expense_summary0`
--

/*!50001 DROP VIEW IF EXISTS `v_expense_summary0`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_expense_summary0` AS select `exp`.`date` AS `date`,sum(`exp`.`expense`) AS `expense` from `expense` `exp` where (`exp`.`is_include` = 0) group by `exp`.`date` order by `exp`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_expense_summary1`
--

/*!50001 DROP VIEW IF EXISTS `v_expense_summary1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_expense_summary1` AS select `exp`.`date` AS `date`,sum(`exp`.`expense`) AS `expense` from `expense` `exp` where (`exp`.`is_include` = 1) group by `exp`.`date` order by `exp`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_expense_regular1`
--

/*!50001 DROP VIEW IF EXISTS `v_expense_regular1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_expense_regular1` AS select `exp`.`sno` AS `sno`,`exp`.`date` AS `date`,`exp`.`item` AS `item`,`exp`.`expense` AS `expense`,`rec`.`name` AS `receiver name`,`rec`.`receiver_ID` AS `receiver ID`,`sen`.`name` AS `sender name`,`exp`.`sender_ID` AS `sender ID`,`exp`.`is_include` AS `is_include` from ((`expense` `exp` left join `receiver` `rec` on((`exp`.`receiver_ID` = `rec`.`receiver_ID`))) left join `sender` `sen` on((`exp`.`sender_ID` = `sen`.`sender_ID`))) where (`exp`.`is_include` = 1) order by `exp`.`date`,`exp`.`updated_at` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_expense_regular`
--

/*!50001 DROP VIEW IF EXISTS `v_expense_regular`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_expense_regular` AS select `exp`.`sno` AS `sno`,`exp`.`date` AS `date`,`exp`.`item` AS `item`,`exp`.`expense` AS `expense`,`rec`.`name` AS `receiver name`,`rec`.`receiver_ID` AS `receiver ID`,`sen`.`name` AS `sender name`,`exp`.`sender_ID` AS `sender ID`,`exp`.`is_include` AS `is_include` from ((`expense` `exp` left join `receiver` `rec` on((`exp`.`receiver_ID` = `rec`.`receiver_ID`))) left join `sender` `sen` on((`exp`.`sender_ID` = `sen`.`sender_ID`))) order by `exp`.`date`,`exp`.`updated_at` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'expense_tracker'
--

--
-- Dumping routines for database 'expense_tracker'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10 10:48:10

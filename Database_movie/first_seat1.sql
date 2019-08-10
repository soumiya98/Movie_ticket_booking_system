-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: first
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `seat1`
--

DROP TABLE IF EXISTS `seat1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seat1` (
  `seat_id` int(11) NOT NULL,
  `id1` varchar(45) NOT NULL,
  `checked` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`seat_id`,`id1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat1`
--

LOCK TABLES `seat1` WRITE;
/*!40000 ALTER TABLE `seat1` DISABLE KEYS */;
INSERT INTO `seat1` VALUES (1,'morn1',1),(1,'morn2',1),(1,'night1',1),(1,'night2',0),(1,'noon1',1),(1,'noon2',0),(2,'morn1',1),(2,'morn2',1),(2,'night1',1),(2,'night2',0),(2,'noon1',1),(2,'noon2',1),(3,'morn1',1),(3,'morn2',1),(3,'night1',1),(3,'night2',0),(3,'noon1',1),(3,'noon2',1),(4,'morn1',1),(4,'morn2',1),(4,'night1',0),(4,'night2',0),(4,'noon1',1),(4,'noon2',1),(5,'morn1',1),(5,'morn2',1),(5,'night1',0),(5,'night2',0),(5,'noon1',1),(5,'noon2',1),(6,'morn1',1),(6,'morn2',1),(6,'night1',0),(6,'night2',0),(6,'noon1',1),(6,'noon2',0),(7,'morn1',1),(7,'morn2',0),(7,'night1',0),(7,'night2',0),(7,'noon1',1),(7,'noon2',0),(8,'morn1',1),(8,'morn2',0),(8,'night1',0),(8,'night2',0),(8,'noon1',1),(8,'noon2',0),(9,'morn1',1),(9,'morn2',0),(9,'night1',0),(9,'night2',0),(9,'noon1',1),(9,'noon2',0),(10,'morn1',1),(10,'morn2',0),(10,'night1',0),(10,'night2',0),(10,'noon1',0),(10,'noon2',0),(11,'morn1',1),(11,'morn2',0),(11,'night1',0),(11,'night2',0),(11,'noon1',0),(11,'noon2',0),(12,'morn1',1),(12,'morn2',0),(12,'night1',0),(12,'night2',0),(12,'noon1',0),(12,'noon2',0),(13,'morn1',1),(13,'morn2',0),(13,'night1',0),(13,'night2',0),(13,'noon1',0),(13,'noon2',0),(14,'morn1',1),(14,'morn2',0),(14,'night1',0),(14,'night2',0),(14,'noon1',0),(14,'noon2',0),(15,'morn1',1),(15,'morn2',0),(15,'night1',0),(15,'night2',0),(15,'noon1',1),(15,'noon2',0),(16,'morn1',1),(16,'morn2',0),(16,'night1',0),(16,'night2',0),(16,'noon1',1),(16,'noon2',0),(17,'morn1',1),(17,'morn2',0),(17,'night1',0),(17,'night2',0),(17,'noon1',0),(17,'noon2',0),(18,'morn1',1),(18,'morn2',0),(18,'night1',0),(18,'night2',0),(18,'noon1',0),(18,'noon2',0),(19,'morn1',1),(19,'morn2',0),(19,'night1',0),(19,'night2',0),(19,'noon1',1),(19,'noon2',0),(20,'morn1',1),(20,'morn2',0),(20,'night1',0),(20,'night2',0),(20,'noon1',1),(20,'noon2',0),(21,'morn1',1),(21,'morn2',0),(21,'night1',0),(21,'night2',0),(21,'noon1',0),(21,'noon2',0),(22,'morn1',1),(22,'morn2',0),(22,'night1',0),(22,'night2',0),(22,'noon1',0),(22,'noon2',0),(23,'morn1',1),(23,'morn2',0),(23,'night1',0),(23,'night2',0),(23,'noon1',0),(23,'noon2',0),(24,'morn1',1),(24,'morn2',0),(24,'night1',0),(24,'night2',0),(24,'noon1',0),(24,'noon2',0),(25,'morn1',1),(25,'morn2',0),(25,'night1',0),(25,'night2',0),(25,'noon1',0),(25,'noon2',0),(26,'morn1',1),(26,'morn2',0),(26,'night1',0),(26,'night2',0),(26,'noon1',0),(26,'noon2',0),(27,'morn1',1),(27,'morn2',0),(27,'night1',0),(27,'night2',0),(27,'noon1',0),(27,'noon2',0),(28,'morn1',1),(28,'morn2',0),(28,'night1',0),(28,'night2',0),(28,'noon1',0),(28,'noon2',0),(29,'morn1',1),(29,'morn2',0),(29,'night1',0),(29,'night2',0),(29,'noon1',0),(29,'noon2',0),(30,'morn1',1),(30,'morn2',0),(30,'night1',0),(30,'night2',0),(30,'noon1',0),(30,'noon2',0),(31,'morn1',0),(31,'morn2',0),(31,'night1',0),(31,'night2',0),(31,'noon1',0),(31,'noon2',0),(32,'morn1',0),(32,'morn2',0),(32,'night1',0),(32,'night2',0),(32,'noon1',0),(32,'noon2',0);
/*!40000 ALTER TABLE `seat1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29 11:49:36

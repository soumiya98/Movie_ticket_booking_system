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
-- Table structure for table `mov_pic`
--

DROP TABLE IF EXISTS `mov_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mov_pic` (
  `cid` int(11) NOT NULL,
  `mov_name` varchar(40) DEFAULT NULL,
  `image` varchar(800) DEFAULT NULL,
  `screen` int(11) DEFAULT NULL,
  `show_time` varchar(45) DEFAULT NULL,
  `time_col` varchar(45) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mov_pic`
--

LOCK TABLES `mov_pic` WRITE;
/*!40000 ALTER TABLE `mov_pic` DISABLE KEYS */;
INSERT INTO `mov_pic` VALUES (1,'Geetha Govinda','https://i.pinimg.com/originals/3b/e2/f6/3be2f644b43a5a51d923859d6d87ddc7.jpg',1,'9:30','morn1',200),(2,'Venom','https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_UX182_CR0,0,182,268_AL_.jpg',1,'2:30','noon1',350),(3,'Helicopter','https://upload.wikimedia.org/wikipedia/en/thumb/a/a2/Helicopter_Eela.jpg/220px-Helicopter_Eela.jpg',1,'18:30','night1',250),(4,'Hotel Translyvania','https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Hotel_Transylvania_3_%282018%29_Poster.jpg/220px-Hotel_Transylvania_3_%282018%29_Poster.jpg',2,'9:30','morn2',300),(5,'First Man','http://www.gstatic.com/tv/thumb/movieposters/15398283/p15398283_p_v8_aa.jpg',2,'2:30','noon2',400),(6,'Jonny English 3','https://upload.wikimedia.org/wikipedia/en/thumb/9/97/JohnnyEnglishStrikesAgain-Poster.jpg/220px-JohnnyEnglishStrikesAgain-Poster.jpg',2,'18:30','night2',400);
/*!40000 ALTER TABLE `mov_pic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29 11:49:34

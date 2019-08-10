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
-- Table structure for table `movie_det`
--

DROP TABLE IF EXISTS `movie_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_det` (
  `cid1` int(11) NOT NULL,
  `video` varchar(205) NOT NULL,
  `image` varchar(905) DEFAULT NULL,
  `synopsis` varchar(505) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid1`,`video`),
  CONSTRAINT `cid1` FOREIGN KEY (`cid1`) REFERENCES `mov_pic` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_det`
--

LOCK TABLES `movie_det` WRITE;
/*!40000 ALTER TABLE `movie_det` DISABLE KEYS */;
INSERT INTO `movie_det` VALUES (1,'https://www.youtube.com/embed/OYK2eJ0oeg8','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqOkYhurH--EueMGShQ1paUnH91wT-ZbAzaOzsGsuYbMoE_i-9','\nA 25-year-old man, Govind, falls in love with Geetha and considers her to be his <br>lady love. However, Geetha doesn\'t reciprocate his love as he comes across <br>as a womaniser. Will he be able to impress her?\n','\nTELUGU ','COMEDY  ROMANCE','3','2 hrs 28 mins\n\n\n\n '),(2,'https://www.youtube.com/embed/u9Mv98Gr5pY','https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Venom_poster.jpg/220px-Venom_poster.jpg','Eddie Brock, a journalist, stumbles upon a story that lands him in big trouble, and he becomes the host <br>to an alien Symbiote, which in turn gives him unimaginable powers. Bringing Marvel\'s one of the <br>most enigmatic, complex, and badass characters to the big screen as Tom Hardy plays the <br>role of the lethal protector, Venom.\n','\nENGLISH, HINDI, TAMIL, TELUGU','ACTION, SCI-FI\nC','4','1 hrs 53 min'),(3,'https://www.youtube.com/embed/5c8_qBn40qY','https://m.media-amazon.com/images/M/MV5BZGMyZDg1NmUtNzM5Ni00OWZlLWIzYWQtZWQwYzQ1Mzc3MTc1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg','Eela joins her son\'s college to complete her studies.','HINDI','DRAMA','3','2h 15 min'),(4,'https://www.youtube.com/embed/d5exSS74Lh0','https://vivacity.org/media/7330/hotel-transylvania-3-summer-vacation-movie-review-1.jpg?anchor=center&mode=crop&width=570&height=440&rnd=131787240830000000','Count Dracula and company participate in a cruise for sea-loving monsters, unaware<br> that their boat is being commandeered by the monster-hating Van Helsing family.','ENGLISH','ANIMATION,ADVENTURE,COMEDY','4','1h 37 min'),(5,'https://www.youtube.com/embed/w4GtJB5WAlQ','https://i.ytimg.com/vi/PSoRx87OO6k/maxresdefault.jpg','A look at the life of the astronaut, Neil Armstrong, and the legendary space <br>mission that led him to become the first man to walk on the Moon <br>on July 20, 1969.','ENGLISH','BIOGRAPHY,HISTORY,DRAMA','2','2h 21 min'),(6,'https://www.youtube.com/embed/-Qv6p6pTz5I','https://www.youtube.com/embed/-Qv6p6pTz5I','After a cyber-attack reveals the identity of all of the active undercover agents in Britain,<br> Johnny English is forced to come out of retirement to find the mastermind hacker.','ENGLISH','ACTION,ADVENTURE,COMEDY','4','1h 28 min');
/*!40000 ALTER TABLE `movie_det` ENABLE KEYS */;
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

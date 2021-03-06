-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: izone
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ideabase`
--

DROP TABLE IF EXISTS `ideabase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ideabase` (
  `uid` varchar(10) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `votes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ideabase`
--

LOCK TABLES `ideabase` WRITE;
/*!40000 ALTER TABLE `ideabase` DISABLE KEYS */;
INSERT INTO `ideabase` VALUES ('1707','haritha','broomHouse','it\'s about providing all the house cleaning equipments here','0'),('1708','chandana','campOn','we provide the best spots for camping along with  all utilities','0'),('1709','manideep','aTerrain','we provide the best terrains for camping along with all utilities','0'),('1710','srinath','hello ','this is a sample idea for the project of ideaZone\r\nhere','0');
/*!40000 ALTER TABLE `ideabase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innovators`
--

DROP TABLE IF EXISTS `innovators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innovators` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1711 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innovators`
--

LOCK TABLES `innovators` WRITE;
/*!40000 ALTER TABLE `innovators` DISABLE KEYS */;
INSERT INTO `innovators` VALUES (1701,'sreekanth','123456789','sreekanth@gmail.com'),(1702,'vamshi','123456789','vamshi@gmail.com'),(1703,'raju','123456789','raju@gmail.com'),(1704,'hello','123456789','hello@gmail.com'),(1705,'jinna','123456789','jinna@gmail.com'),(1706,'jinna','123456789','kinaa@gmail.com'),(1707,'haritha','123456789','haritha@gmail.com'),(1708,'chandana','123456789','chandana@gmail.com'),(1709,'manideep','123456789','manideep@gmail.com'),(1710,'srinath','123456789','srinath@gmail.com');
/*!40000 ALTER TABLE `innovators` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-17 20:14:58

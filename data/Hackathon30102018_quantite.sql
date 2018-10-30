-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: Hackathon30102018
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `quantite`
--

DROP TABLE IF EXISTS `quantite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adresse_id` int(11) NOT NULL,
  `bonbon_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_quantite_adresse` (`adresse_id`),
  KEY `PK_quantite_bonbon` (`bonbon_id`),
  CONSTRAINT `FK_quantite_adresse` FOREIGN KEY (`adresse_id`) REFERENCES `adresse` (`id`),
  CONSTRAINT `PK_quantite_bonbon` FOREIGN KEY (`bonbon_id`) REFERENCES `bonbon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantite`
--

LOCK TABLES `quantite` WRITE;
/*!40000 ALTER TABLE `quantite` DISABLE KEYS */;
INSERT INTO `quantite` VALUES (2,117,79,1),(3,625,80,1),(4,1016,81,1),(5,790,82,1),(6,791,83,1),(7,604,84,1),(8,431,85,1),(9,818,86,1),(10,758,87,1),(11,322,88,1),(12,293,89,1),(13,448,90,1),(14,445,91,1),(15,613,92,1),(16,1009,93,1),(17,638,94,1),(18,1096,95,1),(19,607,96,1),(20,791,97,1),(21,84,98,1),(22,1139,99,1),(23,1114,100,1),(24,896,101,1),(25,982,102,1),(26,624,103,1),(27,1016,104,1),(28,408,105,1),(29,264,106,1),(30,438,107,1),(31,898,108,1),(32,634,109,1),(33,914,110,1),(34,471,111,1),(35,454,112,1),(36,965,113,1),(37,540,114,1),(38,751,115,1),(39,23,116,1),(40,938,117,1),(41,81,118,1),(42,1061,119,1),(43,538,120,1),(44,567,121,1),(45,1068,122,1),(46,1127,123,1),(47,675,124,1),(48,677,125,1),(49,962,126,1),(50,412,127,1),(51,665,128,1),(52,65,129,1),(53,640,130,1),(54,157,131,1),(55,226,132,1),(56,1041,133,1),(57,865,134,1),(58,690,135,1),(59,990,136,1),(60,25,137,1),(61,172,138,1),(62,269,139,1),(63,853,140,1),(64,661,141,1),(65,891,142,1),(66,104,143,1);
/*!40000 ALTER TABLE `quantite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-30 17:54:38
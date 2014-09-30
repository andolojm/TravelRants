-- MySQL dump 10.13  Distrib 5.6.13, for Win64 (x86_64)
--
-- Host: localhost    Database: TravelSite
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `imageUrl` varchar(100) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination`
--

LOCK TABLES `destination` WRITE;
/*!40000 ALTER TABLE `destination` DISABLE KEYS */;
INSERT INTO `destination` VALUES (1,'Rome','http://jeffandolora.com/img/wp15.jpg','Because Rome is such a huge tourist draw, choose the date for your trip carefully. The best times of the year to visit are April, May, and late September through October. August should be avoided because this is the month that the entire country of Italy seems to go on vacation.'),(2,'Space','http://jeffandolora.com/img/wp3.jpg','Not every trip into space requires an eight-figure financial hemorrhage. One can still experience the wonders of weightlessness and looking out into black space and bright stars at a fraction of the price. Well, as long as you keep in mind how large the figure is we\'re taking a fraction of.'),(4,'Paris','http://jeffandolora.com/img/wp14.jpg','Lingering over pain au chocolat in a sidewalk café, relaxing after a day of strolling along the Seine and marveling at icons like the Eiffel Tower and the Arc de Triomphe. Awaken your spirit at Notre Dame, cap it all off with a risqué show at the Moulin Rouge.'),(5,'Irkutsk','http://jeffandolora.com/img/img4.jpg','Founded in the mid-17th century as a winter quarters for traders and tax collectors, Irkutsk came to prominence in the 1800s. Participants in the Decembrist revolt against Tsar Nicholas I were exiled to Siberia in droves, turning Irkutsk into their cultural center.'),(6,'Colorado','http://jeffandolora.com/img/img5.jpg','`Some Democrats in Congress are now trying to change the marijuana laws, making it legal so it can be taxed and increase revenue. Is that what the government\'s come down to now? We\'re selling drugs to pay off our debts? When did Uncle Sam become Scarface?` –Jay Leno \r\n'),(7,'Atlantis','http://jeffandolora.com/img/img6.jpg','The capital city of Atlantis was a marvel of architecture and engineering. The city was composed of a series of concentric walls and canals. At the very center was a hill, and on top of the hill a temple to Poseidon. Inside was a gold statue of the God of the Sea showing him driving six winged horses.');
/*!40000 ALTER TABLE `destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rant`
--

DROP TABLE IF EXISTS `rant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `destId` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `text` longtext,
  PRIMARY KEY (`id`),
  KEY `destId` (`destId`),
  CONSTRAINT `rant_ibfk_1` FOREIGN KEY (`destId`) REFERENCES `destination` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rant`
--

LOCK TABLES `rant` WRITE;
/*!40000 ALTER TABLE `rant` DISABLE KEYS */;
INSERT INTO `rant` VALUES (2,0,2,'2014-09-30','I\\\'m in SPAAAAACE','Space? There\\\'s not much up here'),(3,0,2,'2014-09-30','Mars smelled pretty bad','Seriously, like fish or something. There isn\\\'t even water up there, how is that even possible. I think the locals thought I was food, too'),(4,0,2,'2014-09-30','</h3><h1>Ha, escaped.</h1><h3>','jk, input sanitzation game too strong'),(5,0,2,'2014-09-30','test \"\'\'\"t e\"QWeT\"\" W\"t\"QW\' et','test'),(6,0,2,'2014-09-30','test\"); DROP TABLE Rant;','test'),(7,0,2,'2014-09-30','test\"); DROP TABLE Rant;','test');
/*!40000 ALTER TABLE `rant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-29 22:37:00

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
  KEY `userId` (`userId`),
  CONSTRAINT `rant_ibfk_1` FOREIGN KEY (`destId`) REFERENCES `destination` (`id`),
  CONSTRAINT `rant_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rant`
--

LOCK TABLES `rant` WRITE;
/*!40000 ALTER TABLE `rant` DISABLE KEYS */;
INSERT INTO `rant` VALUES (1,7,2,'2014-10-01','test','test\r<br>'),(2,8,2,'2014-10-01','alsoATest','DingDong'),(3,8,1,'2014-10-08','test','testPost&#39;&#45;&#45;&quot;&#45;&#45;&quot; /&gt;&lt;h6&gt;hello&lt;/h6&gt;'),(4,8,4,'2014-10-08','this place is pretty awesome','Austin hashtag pug, tattooed retro keytar beard Williamsburg fingerstache. Ethical literally stumptown, kale chips farm&#45;to&#45;table distillery Shoreditch sriracha actually lo&#45;fi put a bird on it. Tilde Etsy tote bag, four loko Neutra tofu Pitchfork deep v meh locavore raw denim pour&#45;over. PBR&amp;B ennui vinyl Marfa kale chips, Banksy distillery Pinterest try&#45;hard Godard brunch semiotics messenger bag twee banh mi. IPhone Carles &#43;1, freegan put a bird on it vegan viral asymmetrical fingerstache gentrify cornhole Etsy. Viral Banksy street art salvia brunch, aesthetic synth meggings selvage Tumblr Austin before they sold out food truck. Actually street art plaid Echo Park Marfa church&#45;key, freegan PBR Helvetica sriracha Carles.'),(5,8,1,'2014-10-08','My favorite place to take a du','Austin hashtag pug, tattooed retro keytar beard Williamsburg fingerstache. Ethical literally stumptown, kale chips farm&#45;to&#45;table distillery Shoreditch sriracha actually lo&#45;fi put a bird on it. Tilde Etsy tote bag, four loko Neutra tofu Pitchfork deep v meh locavore raw denim pour&#45;over. PBR&amp;B ennui vinyl Marfa kale chips, Banksy distillery Pinterest try&#45;hard Godard brunch semiotics messenger bag twee banh mi. IPhone Carles &#43;1, freegan put a bird on it vegan viral asymmetrical fingerstache gentrify cornhole Etsy. Viral Banksy street art salvia brunch, aesthetic synth meggings selvage Tumblr Austin before they sold out food truck. Actually street art plaid Echo Park Marfa church&#45;key, freegan PBR Helvetica sriracha Carles.'),(6,8,5,'2014-10-08','it&#39;s cold','Vice pork belly Wes Anderson photo booth squid. Gastropub meh Wes Anderson, PBR&amp;B seitan swag cred stumptown street art tote bag flexitarian fashion axe vegan. McSweeney&#39;s pour&#45;over aesthetic, Helvetica trust fund banh mi American Apparel Vice lomo Bushwick tofu quinoa. Fingerstache drinking vinegar &#43;1, actually hella forage lomo American Apparel Tumblr stumptown cred meggings wolf kitsch iPhone. Brooklyn pop&#45;up swag, tofu semiotics Pitchfork actually. Ugh artisan tote bag, paleo chambray High Life 8&#45;bit dreamcatcher stumptown Schlitz photo booth Bushwick roof party fashion axe PBR. Semiotics selvage dreamcatcher, PBR&amp;B biodiesel plaid pork belly single&#45;origin coffee Blue Bottle Neutra vinyl tilde messenger bag.'),(7,8,6,'2014-10-08','Smokin beer, drinkin pot','Wayfarers kitsch readymade, viral sriracha pickled Helvetica. Squid cornhole semiotics mlkshk bitters shabby chic. McSweeney&#39;s lo&#45;fi mustache occupy. Umami Tumblr direct trade locavore mlkshk. Tattooed pork belly gastropub, Kickstarter cred letterpress umami skateboard. Pickled whatever gluten&#45;free leggings, tote bag normcore narwhal PBR ethical trust fund vinyl yr. Cornhole Thundercats photo booth YOLO, skateboard organic messenger bag High Life fap.'),(8,8,7,'2014-10-08','I&#39;m as lost as the city is','Messenger bag blog Bushwick fap swag American Apparel. Locavore messenger bag banh mi American Apparel bespoke, pop&#45;up post&#45;ironic authentic stumptown leggings Austin 3 wolf moon normcore fanny pack raw denim. Disrupt Pinterest next level, occupy tofu plaid DIY. Small batch food truck Carles kale chips, DIY Intelligentsia next level Cosby sweater Shoreditch narwhal. Farm&#45;to&#45;table letterpress Echo Park Williamsburg polaroid banjo cliche brunch, Wes Anderson chambray pop&#45;up meh post&#45;ironic. Tattooed you probably haven&#39;t heard of them locavore, gentrify hoodie stumptown Echo Park 90&#39;s Tumblr four loko. Kale chips YOLO DIY sriracha disrupt, Carles Wes Anderson next level kogi asymmetrical Brooklyn leggings.');
/*!40000 ALTER TABLE `rant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'TheTestUser','$2y$10$FdFDAYOnhOknQf69yf3siu8qRlt/tv9NpilssgNQbwYoVPXYEiztm','andolojm@alfredstate.edu'),(2,'jeeeeefff','$2y$10$T/4fECXRiHV.3.XgqyCldeb82RbZmJ5dL6TRrLde21RAGdkvF6NK6','jeeeeefff@gmail.com'),(3,'testUser','$2y$10$YgUEb73TixnhGexy/or9Xu9QT5tFLdJ87Is/UT9stzHNIC6O5bJ76','alfredstateist@gmail.com'),(4,'testUser2','$2y$10$v9LbsGp/g9k8wuOYk4B1HOcrVOajalAl1FWlgnfDf5JstwuDCR1RW','test@test.test'),(5,'testUser69','$2y$10$L2Gvk6wtr72BXpMDQ5cKOuJ42crRtNghG7O3BjchpBKaEp4FXViAu','u@smell.funny'),(6,'TestToast','$2y$10$PdlFg9Sov.3Ll8x.Afg1cO6zruyeo3AHCiQvaF02MZvloer0JCcVC','toasty@toast.toast'),(7,'user','$2y$10$A8thLcpr34eiH9yvPNEIi.qrLBWTYKO1YfOVOuHRTRIfIMedTFxIy','user@user.user'),(8,'1337H4x0r','$2y$10$wJVjUG2QfxNZ4H8oS8dkkOQ3DCBhnTrq5rENbjeIq.0biRRjkbtDi','h4x@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-08 13:06:17

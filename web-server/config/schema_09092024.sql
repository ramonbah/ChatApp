-- MySQL dump 10.13  Distrib 9.0.1, for macos14 (arm64)
--
-- Host: localhost    Database: ChatApp
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Message`
--

DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `room_user_id` int NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `reply_to_id` int DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `room_user_id` (`room_user_id`),
  KEY `reply_to_id` (`reply_to_id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`room_user_id`) REFERENCES `RoomUser` (`room_user_id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`reply_to_id`) REFERENCES `Message` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
INSERT INTO `Message` VALUES (1,7,'Yow\n','2024-08-23 03:50:02','2024-08-23 03:50:02',NULL,NULL),(2,7,'test','2024-08-23 04:04:21','2024-08-23 04:04:21',NULL,NULL),(3,7,'Test','2024-08-23 04:06:13','2024-08-23 04:06:13',NULL,NULL),(4,6,'Hello','2024-08-23 04:11:40','2024-08-23 04:11:40',NULL,NULL),(5,7,'sup?','2024-08-23 04:44:09','2024-08-23 04:44:09',NULL,NULL),(6,7,'sup?','2024-08-23 04:49:06','2024-08-23 04:49:06',NULL,NULL),(7,7,'Yo','2024-08-23 04:53:27','2024-08-23 04:53:27',NULL,NULL),(8,7,'Hello again','2024-08-23 04:55:34','2024-08-23 04:55:34',NULL,NULL),(9,7,'Yo','2024-08-23 05:10:43','2024-08-23 05:10:43',NULL,NULL),(10,6,'What','2024-08-23 05:12:54','2024-08-23 05:12:54',NULL,NULL),(11,7,'Hey','2024-08-23 05:15:29','2024-08-23 05:15:29',NULL,NULL),(12,7,'No','2024-08-23 05:16:01','2024-08-23 05:16:01',NULL,NULL),(13,6,'Hey','2024-08-23 05:22:03','2024-08-23 05:22:03',NULL,NULL),(14,7,'Whatt','2024-08-23 05:25:27','2024-08-23 05:25:27',NULL,NULL),(15,6,'Nono','2024-08-23 05:27:23','2024-08-23 05:27:23',NULL,NULL),(16,6,'Nononono','2024-08-23 05:28:07','2024-08-23 05:28:07',NULL,NULL),(17,7,'Yep','2024-08-23 05:40:14','2024-08-23 05:40:14',NULL,NULL),(18,7,'Again no','2024-08-23 05:41:29','2024-08-23 05:41:29',NULL,NULL),(19,7,'Again no','2024-08-23 05:42:07','2024-08-23 05:42:07',NULL,NULL),(20,7,'Hey','2024-08-23 05:50:04','2024-08-23 05:50:04',NULL,NULL),(21,6,'What’s up','2024-08-23 05:50:28','2024-08-23 05:50:28',NULL,NULL),(22,6,'Hello again','2024-08-23 05:50:53','2024-08-23 05:50:53',NULL,NULL),(23,7,'Yow','2024-08-23 05:56:42','2024-08-23 05:58:25',NULL,NULL),(24,6,'Hey','2024-08-23 05:59:01','2024-08-23 05:59:01',NULL,NULL),(25,6,'Test','2024-08-23 06:06:14','2024-08-23 06:06:14',NULL,NULL),(26,6,'New message','2024-08-23 06:07:00','2024-08-23 06:07:00',NULL,NULL),(27,11,'Yow','2024-08-23 07:26:34','2024-08-23 07:26:34',NULL,NULL),(28,11,'We','2024-08-23 07:27:27','2024-08-23 07:27:27',NULL,NULL),(29,11,'Hey','2024-08-23 07:36:47','2024-08-23 07:36:47',NULL,NULL),(30,11,'Yo','2024-08-23 07:42:23','2024-08-23 07:42:23',NULL,NULL),(31,11,'Yowwww','2024-08-23 07:43:07','2024-08-23 07:43:07',NULL,NULL),(32,12,'Hey\n','2024-08-23 07:43:25','2024-08-23 07:43:25',NULL,NULL),(33,11,'Zup','2024-08-23 07:44:43','2024-08-23 07:44:43',NULL,NULL),(34,12,'What?\n','2024-08-23 07:44:53','2024-08-23 07:44:53',NULL,NULL),(35,12,'Hello','2024-08-23 07:48:42','2024-08-23 07:48:42',NULL,NULL),(36,11,'Hey','2024-08-23 07:49:45','2024-08-23 07:49:45',NULL,NULL),(37,12,'Hey','2024-08-23 07:49:57','2024-08-23 07:49:57',NULL,NULL),(38,12,'Yow\n','2024-08-23 07:50:45','2024-08-23 07:50:45',NULL,NULL),(39,11,'Yet!','2024-08-23 07:51:30','2024-08-23 07:51:30',NULL,NULL),(40,12,'Yow','2024-08-23 07:52:39','2024-08-23 07:52:39',NULL,NULL),(41,11,'Hey!\n','2024-08-23 07:53:20','2024-08-23 07:53:20',NULL,NULL),(42,11,'How are you?','2024-08-23 07:53:31','2024-08-23 07:53:31',NULL,NULL),(43,12,'I’m fine','2024-08-23 07:53:38','2024-08-23 07:53:38',NULL,NULL),(44,12,'Hello','2024-08-23 08:00:12','2024-08-23 08:00:12',NULL,NULL),(45,12,'Yow','2024-08-23 08:00:34','2024-08-23 08:00:34',NULL,NULL),(46,12,'Hey','2024-08-23 08:04:24','2024-08-23 08:04:24',NULL,NULL),(47,12,'Yo','2024-08-23 08:04:38','2024-08-23 08:04:38',NULL,NULL),(48,12,'Hello','2024-08-23 08:04:51','2024-08-23 08:04:51',NULL,NULL),(49,11,'Okay','2024-08-23 08:04:59','2024-08-23 08:04:59',NULL,NULL),(50,12,'Test','2024-08-23 08:06:41','2024-08-23 08:06:41',NULL,NULL),(51,11,'Hey','2024-08-23 08:10:57','2024-08-23 08:10:57',NULL,NULL),(52,6,'Hello','2024-08-23 08:11:58','2024-08-23 08:11:58',NULL,NULL),(53,7,'Ey','2024-08-23 08:13:03','2024-08-23 08:13:03',NULL,NULL),(54,7,'Hey','2024-08-23 08:14:16','2024-08-23 08:14:16',NULL,NULL),(55,6,'Yow','2024-08-23 08:17:19','2024-08-23 08:17:19',NULL,NULL),(56,12,'Yo','2024-08-23 08:18:59','2024-08-23 08:18:59',NULL,NULL),(57,9,'Hello','2024-08-23 08:25:07','2024-08-23 08:25:07',NULL,NULL),(58,12,'Hey','2024-08-23 08:25:42','2024-08-23 08:25:42',NULL,NULL),(59,11,'Yow','2024-08-23 08:28:40','2024-08-23 08:28:40',NULL,NULL),(60,11,'Yo','2024-08-23 08:29:06','2024-08-23 08:29:06',NULL,NULL),(61,10,'Olla','2024-08-23 08:30:59','2024-08-23 08:30:59',NULL,NULL),(62,9,'Yo','2024-08-23 08:33:24','2024-08-23 08:33:24',NULL,NULL),(63,9,'Hey','2024-08-23 08:34:04','2024-08-23 08:34:04',NULL,NULL),(64,9,'No','2024-08-23 08:34:30','2024-08-23 08:34:30',NULL,NULL),(65,10,'E','2024-08-23 08:34:54','2024-08-29 05:08:44','2024-08-29 05:08:44',NULL),(66,9,'Ye','2024-08-23 08:41:50','2024-08-23 08:41:50',NULL,NULL),(67,11,'Ey','2024-08-23 08:42:05','2024-08-23 08:42:05',NULL,NULL),(68,11,'eyy','2024-08-23 08:52:29','2024-08-23 08:52:29',NULL,NULL),(69,11,'Test','2024-08-23 08:54:39','2024-08-23 08:54:39',NULL,NULL),(70,11,'Yo\n','2024-08-23 08:56:30','2024-08-23 08:56:30',NULL,NULL),(71,12,'Oy','2024-08-23 08:56:59','2024-08-23 08:56:59',NULL,NULL),(72,7,'Hey','2024-08-23 10:28:51','2024-08-23 10:28:51',NULL,NULL),(73,11,'Ehem','2024-08-23 10:33:16','2024-08-23 10:33:16',NULL,NULL),(74,11,'Ey','2024-08-23 10:33:56','2024-08-23 10:33:56',NULL,NULL),(75,11,'Help\n','2024-08-23 10:34:01','2024-08-23 10:34:01',NULL,NULL),(76,10,'Yo','2024-08-23 10:43:27','2024-08-23 10:43:27',NULL,NULL),(77,9,'Sup','2024-08-23 10:43:35','2024-08-23 10:43:35',NULL,NULL),(78,9,'Yu','2024-08-23 10:43:41','2024-08-23 10:43:41',NULL,NULL),(79,10,'Me','2024-08-23 10:43:44','2024-08-23 10:43:44',NULL,NULL),(80,10,'Hui','2024-08-23 10:43:58','2024-08-23 10:43:58',NULL,NULL),(81,10,'Tt','2024-08-23 10:44:08','2024-08-23 10:44:08',NULL,NULL),(82,10,'T','2024-08-23 12:43:46','2024-08-23 12:43:46',NULL,NULL),(83,9,'T','2024-08-23 12:43:56','2024-08-23 12:43:56',NULL,NULL),(84,10,'T','2024-08-23 12:44:05','2024-08-23 12:44:05',NULL,NULL),(85,9,'T','2024-08-23 12:44:13','2024-08-23 12:44:13',NULL,NULL),(86,10,'Y','2024-08-23 12:50:32','2024-08-23 12:50:32',NULL,NULL),(87,9,'N','2024-08-23 12:51:04','2024-08-23 12:51:04',NULL,NULL),(88,10,'E','2024-08-23 12:51:56','2024-08-23 12:51:56',NULL,NULL),(89,9,'E','2024-08-23 12:52:06','2024-08-23 12:52:06',NULL,NULL),(90,10,'Te','2024-08-23 12:52:38','2024-08-23 12:52:38',NULL,NULL),(91,10,'E','2024-08-23 12:53:02','2024-08-23 12:53:02',NULL,NULL),(92,10,'D','2024-08-23 12:53:38','2024-08-23 12:53:38',NULL,NULL),(93,10,'Es','2024-08-23 12:54:24','2024-08-23 12:54:24',NULL,NULL),(94,10,'D','2024-08-23 12:54:33','2024-08-29 04:58:59','2024-08-29 04:58:59',NULL),(95,9,'What','2024-08-23 12:54:40','2024-08-23 12:54:40',NULL,NULL),(96,9,'Nono\n','2024-08-23 12:54:49','2024-08-23 12:54:49',NULL,NULL),(97,12,'why','2024-08-23 12:56:30','2024-08-23 12:56:30',NULL,NULL),(98,10,'Not\n','2024-08-23 12:56:41','2024-08-23 12:56:41',NULL,NULL),(99,11,'No way','2024-08-23 12:56:45','2024-08-23 12:56:45',NULL,NULL),(100,2,'Which way','2024-08-23 12:56:54','2024-08-23 12:56:54',NULL,NULL),(101,10,'That way','2024-08-23 12:56:58','2024-08-23 12:56:58',NULL,NULL),(102,14,'That way?','2024-08-23 12:57:21','2024-08-23 12:57:21',NULL,NULL),(103,2,'This way','2024-08-23 12:57:25','2024-08-23 12:57:25',NULL,NULL),(104,14,'Wait','2024-08-23 12:57:41','2024-08-23 12:57:41',NULL,NULL),(105,14,'Can I come?','2024-08-23 12:57:49','2024-08-23 12:57:49',NULL,NULL),(106,2,'No','2024-08-23 12:57:58','2024-08-23 12:57:58',NULL,NULL),(107,2,'Yow mens','2024-08-23 12:58:20','2024-08-26 07:14:16',NULL,NULL),(108,2,'Don’t go away','2024-08-23 12:58:25','2024-08-26 07:07:28',NULL,NULL),(109,10,'Come here','2024-08-23 12:58:30','2024-08-23 12:58:30',NULL,NULL),(110,9,'Where','2024-08-23 12:58:37','2024-08-23 12:58:37',NULL,NULL),(111,9,'Come here','2024-08-23 12:58:55','2024-08-29 05:13:09','2024-08-29 05:13:09',NULL),(112,10,'Where','2024-08-23 12:59:00','2024-08-23 12:59:00',NULL,NULL),(113,10,'Here?\n','2024-08-23 12:59:09','2024-08-23 12:59:09',NULL,NULL),(114,2,'Hoy hoy','2024-08-23 12:59:27','2024-08-26 07:13:39',NULL,NULL),(115,7,'Yo','2024-08-23 13:02:11','2024-08-23 13:02:11',NULL,NULL),(116,6,'Yo','2024-08-23 13:03:36','2024-08-23 13:03:36',NULL,NULL),(117,7,'Hee','2024-08-23 13:03:50','2024-08-23 13:03:50',NULL,NULL),(118,9,'Ey','2024-08-23 13:04:55','2024-08-23 13:04:55',NULL,NULL),(119,9,'Ye\n','2024-08-23 13:05:04','2024-08-23 13:05:04',NULL,NULL),(120,1,'Ey','2024-08-23 13:05:06','2024-08-23 13:05:06',NULL,NULL),(121,10,'E','2024-08-23 13:05:11','2024-08-23 13:05:11',NULL,NULL),(122,10,'We','2024-08-23 13:05:13','2024-08-23 13:05:13',NULL,NULL),(123,10,'E','2024-08-23 13:06:15','2024-08-29 05:12:59','2024-08-29 05:12:59',NULL),(124,10,'Yo','2024-08-23 13:06:44','2024-08-29 05:12:57','2024-08-29 05:12:57',NULL),(125,10,'Why','2024-08-23 13:06:49','2024-08-23 13:06:49',NULL,NULL),(126,9,'E','2024-08-23 13:06:52','2024-08-29 05:12:48','2024-08-29 05:12:48',NULL),(127,10,'Ey\n','2024-08-23 13:07:09','2024-08-29 05:11:06','2024-08-29 05:11:06',NULL),(128,10,'Test','2024-08-23 13:10:36','2024-08-23 13:10:36',NULL,NULL),(129,9,'E','2024-08-23 13:10:37','2024-08-29 05:11:03','2024-08-29 05:11:03',NULL),(130,10,'No','2024-08-23 13:10:55','2024-08-23 13:10:55',NULL,NULL),(131,10,'Yow','2024-08-23 13:11:07','2024-08-29 05:04:14','2024-08-29 05:04:14',NULL),(132,9,'Yo','2024-08-23 13:13:35','2024-08-23 13:13:35',NULL,NULL),(133,10,'Helo','2024-08-23 13:13:40','2024-08-29 05:03:22','2024-08-29 05:03:22',NULL),(134,10,'','2024-08-23 13:20:31','2024-08-29 04:59:56','2024-08-29 04:59:56',NULL),(135,9,'why','2024-08-23 13:30:42','2024-08-29 05:04:11','2024-08-29 05:04:11',NULL),(136,22,'La','2024-08-26 01:59:47','2024-08-26 01:59:47',NULL,NULL),(137,24,'Hello','2024-08-26 02:02:17','2024-08-26 02:02:17',NULL,NULL),(138,23,'La','2024-08-26 02:04:15','2024-08-26 02:04:15',NULL,NULL),(139,26,'Test','2024-08-26 02:10:33','2024-08-26 02:10:33',NULL,NULL),(140,26,'Test2','2024-08-26 02:12:41','2024-08-26 02:12:41',NULL,NULL),(141,26,'Test','2024-08-26 02:14:40','2024-08-26 03:18:12','2024-08-26 03:18:12',NULL),(142,26,'E','2024-08-26 02:15:02','2024-08-26 03:17:00','2024-08-26 03:17:00',NULL),(143,26,'Roar','2024-08-26 02:16:37','2024-08-26 03:14:13','2024-08-26 03:14:13',NULL),(144,26,'Eh','2024-08-26 02:17:11','2024-08-26 03:15:01','2024-08-26 03:15:01',NULL),(145,26,'N','2024-08-26 02:17:23','2024-08-26 03:17:50','2024-08-26 03:17:50',NULL),(146,26,'Hello','2024-08-26 03:18:22','2024-08-26 03:21:14','2024-08-26 03:21:14',NULL),(147,26,'Hello','2024-08-26 03:21:24','2024-08-26 03:25:37','2024-08-26 03:25:37',NULL),(148,26,'HI','2024-08-26 03:21:26','2024-08-26 03:21:30','2024-08-26 03:21:30',NULL),(149,33,'La','2024-08-26 06:36:42','2024-08-26 06:36:42',NULL,NULL),(150,33,'Lam','2024-08-26 06:37:38','2024-08-26 06:37:38',NULL,NULL),(151,33,'Lamon','2024-08-26 06:38:04','2024-08-26 06:38:04',NULL,NULL),(152,26,'Test 2','2024-08-26 06:49:18','2024-08-26 06:49:18',NULL,NULL),(153,26,'Test23','2024-08-26 06:49:27','2024-08-26 06:49:27',NULL,NULL),(154,2,'Don’t go home','2024-08-26 07:05:04','2024-08-26 07:05:04',NULL,NULL),(155,34,'11111-222222','2024-08-26 07:26:38','2024-08-26 07:26:59',NULL,NULL),(156,34,'Poppy','2024-08-26 07:27:27','2024-08-26 07:27:27',NULL,NULL),(157,34,'55555-666','2024-08-26 07:27:40','2024-08-26 07:28:03',NULL,NULL),(158,34,'7777','2024-08-26 07:28:12','2024-08-26 07:28:27','2024-08-26 07:28:27',NULL),(159,37,'Hey','2024-08-27 02:29:32','2024-08-27 02:29:32',NULL,NULL),(160,9,'Yow','2024-08-27 06:51:16','2024-08-29 04:59:51','2024-08-29 04:59:51',NULL),(161,11,'Oh yeah','2024-08-27 06:51:28','2024-08-27 06:51:28',NULL,NULL),(162,11,'Hello','2024-08-27 06:51:35','2024-08-27 06:51:35',NULL,NULL),(163,11,'Konichiwa','2024-08-27 06:51:42','2024-08-27 06:51:42',NULL,NULL),(164,37,'こんいちわ','2024-08-27 06:52:08','2024-08-27 06:52:08',NULL,NULL),(165,9,'Hey','2024-08-27 07:20:07','2024-08-27 07:20:07',NULL,NULL),(166,9,'HOy','2024-08-27 07:27:44','2024-08-29 05:04:06','2024-08-29 05:04:06',NULL),(167,9,'Hey','2024-08-27 07:39:57','2024-08-27 07:39:57',NULL,133),(168,33,'Ddfdffd gf the gfs dad fffsdfcccfffggggggggggggggggggggggggggggggggggggghyhgfddvghjjjj','2024-08-27 08:15:02','2024-08-27 08:15:02',NULL,NULL),(169,24,'Asdasdasdkajshdkjashdlkajsdlkjaslkdjalksjdlkasjdlkasjdlkajsldkjaslkdjalksjdlkasjdlkajsdlkjasdlkjaslkdjalksdjlaksjdlkasjdlkasjdlkajsdlkjasdlkjaslkdjalksdjasd','2024-08-27 08:30:27','2024-08-27 08:30:27',NULL,NULL),(170,50,'Hey','2024-08-27 14:08:38','2024-08-27 14:08:38',NULL,NULL),(171,59,'Who are you people?','2024-08-27 14:26:13','2024-08-27 14:26:13',NULL,NULL),(172,68,'How are you?','2024-08-28 02:37:54','2024-08-28 02:37:54',NULL,NULL),(173,70,'Hello','2024-08-28 03:06:52','2024-08-28 03:06:52',NULL,NULL),(174,71,'Hi','2024-08-28 03:07:06','2024-08-28 03:07:06',NULL,NULL),(175,74,'Yow','2024-08-28 04:14:18','2024-08-28 04:14:18',NULL,NULL),(176,75,'Eyo','2024-08-28 04:15:06','2024-08-28 04:15:06',NULL,NULL),(177,76,'Welcome','2024-08-28 04:30:42','2024-08-28 04:30:42',NULL,NULL),(178,86,'Hey','2024-08-28 05:08:35','2024-08-28 05:08:35',NULL,NULL),(179,85,'Yo','2024-08-28 05:08:43','2024-08-28 05:08:43',NULL,NULL),(180,89,'Heyow','2024-08-29 05:03:42','2024-08-29 05:03:59','2024-08-29 05:03:59',NULL),(181,89,'How are you?','2024-08-29 05:03:56','2024-08-29 23:06:22',NULL,NULL),(182,89,'Weeeee','2024-08-29 05:04:41','2024-08-29 05:04:41',NULL,NULL),(183,72,'Yeeee','2024-08-29 05:13:47','2024-08-29 05:13:47',NULL,NULL),(184,72,'Ey','2024-08-29 05:13:52','2024-08-29 05:13:52',NULL,NULL),(185,90,'I’m good','2024-08-29 06:45:27','2024-08-29 06:45:27',NULL,NULL),(186,91,'Hello','2024-08-29 07:14:32','2024-08-29 07:14:32',NULL,NULL),(187,91,'Yow','2024-08-29 07:14:59','2024-08-29 07:14:59',NULL,NULL),(188,91,'Hello','2024-08-29 07:15:22','2024-08-29 07:15:22',NULL,NULL),(189,90,'Yee','2024-08-29 07:15:31','2024-08-29 07:15:31',NULL,NULL),(190,92,'We need the list who will donate blood in the upcoming event asap','2024-08-29 07:45:57','2024-08-29 07:45:57',NULL,NULL),(191,92,'Please respond within 15 minutes','2024-08-29 07:47:53','2024-08-29 07:49:38',NULL,NULL),(192,93,'Sorry I am not qualified.','2024-08-29 07:48:10','2024-08-29 07:48:10',NULL,NULL),(193,92,'Why?','2024-08-29 07:48:20','2024-08-29 07:48:20',NULL,NULL),(194,93,'I am afraid of needles. I’m scared!','2024-08-29 07:48:38','2024-08-29 07:48:38',NULL,NULL),(195,92,'Hahahha','2024-08-29 07:48:53','2024-08-29 07:49:10','2024-08-29 07:49:10',NULL),(196,92,'Noted','2024-08-29 07:48:57','2024-08-29 07:48:57',NULL,NULL),(197,94,'Ah this is the reason for this chat! Great👍🏽','2024-08-29 07:51:31','2024-08-29 07:51:31',NULL,NULL),(198,95,'Let’s have a buffet tomorrow during lunch out!','2024-08-29 07:52:09','2024-08-29 07:52:09',NULL,NULL),(199,96,'I am willing whatever the decision','2024-08-29 07:52:41','2024-08-29 07:52:41',NULL,NULL),(200,97,'Lezgo!','2024-08-29 07:52:56','2024-08-29 07:52:56',NULL,NULL),(201,93,'I changed my name!','2024-08-29 07:53:48','2024-08-29 07:53:48',NULL,NULL),(202,92,'They will give beers after ','2024-08-29 07:54:49','2024-08-29 07:54:49',NULL,194),(203,98,'Can I go with you guys?','2024-08-29 23:31:05','2024-08-29 23:31:37','2024-08-29 23:31:37',NULL),(204,98,'Please?','2024-08-29 23:31:10','2024-08-29 23:31:40','2024-08-29 23:31:40',NULL),(205,98,'Can I come with you guys?','2024-08-29 23:31:52','2024-08-29 23:31:52',NULL,NULL),(206,98,'Please?','2024-08-29 23:31:55','2024-08-29 23:31:55',NULL,NULL),(207,100,'Who wants to!?','2024-08-30 02:29:24','2024-08-30 02:29:24',NULL,NULL),(208,101,'Sorry, I kennat.','2024-08-30 02:31:02','2024-08-30 02:31:02',NULL,NULL),(209,100,'Why?!?!?!','2024-08-30 02:31:08','2024-08-30 02:31:08',NULL,NULL),(210,101,'Afraid.','2024-08-30 02:31:18','2024-08-30 02:31:18',NULL,NULL),(211,101,'Hurts','2024-08-30 02:31:21','2024-08-30 02:31:21',NULL,NULL),(212,100,'Hahahahahhaha','2024-08-30 02:31:22','2024-08-30 02:31:40','2024-08-30 02:31:40',NULL),(213,101,'Dalit','2024-08-30 02:31:23','2024-08-30 02:31:23',NULL,NULL),(214,100,'Noted! Please rsvp in 15min!','2024-08-30 02:31:26','2024-08-30 02:32:30',NULL,NULL),(215,102,'Who will donate blood? Need 15 minutes','2024-08-30 02:39:25','2024-08-30 02:41:45',NULL,NULL),(216,103,'I can’t','2024-08-30 02:40:19','2024-08-30 02:40:19',NULL,NULL),(217,102,'Why?','2024-08-30 02:40:42','2024-08-30 02:40:42',NULL,NULL),(218,103,'I’m scared','2024-08-30 02:40:50','2024-08-30 02:40:50',NULL,NULL),(219,103,'Dalit','2024-08-30 02:40:52','2024-08-30 02:40:52',NULL,NULL),(220,102,'Hahahaha','2024-08-30 02:40:54','2024-08-30 02:41:20','2024-08-30 02:41:20',NULL),(221,102,'Noted','2024-08-30 02:41:04','2024-08-30 02:41:04',NULL,NULL),(222,104,'Hey Let’s eat out!','2024-08-30 02:46:35','2024-08-30 02:46:35',NULL,NULL),(223,105,'Ok','2024-08-30 02:46:56','2024-08-30 02:46:56',NULL,NULL),(224,104,'Who else are coming?','2024-08-30 02:47:45','2024-08-30 02:47:45',NULL,NULL),(225,102,'Are you serious?','2024-08-30 02:48:32','2024-08-30 02:48:32',NULL,218),(226,103,'Yes','2024-08-30 02:49:39','2024-08-30 02:49:39',NULL,NULL),(227,107,'Who will donate? Within 15 minutes','2024-08-30 02:55:58','2024-08-30 02:58:32',NULL,NULL),(228,108,'I can’t','2024-08-30 02:56:52','2024-08-30 02:56:52',NULL,NULL),(229,107,'Why?','2024-08-30 02:57:31','2024-08-30 02:57:31',NULL,NULL),(230,108,'I’m scared','2024-08-30 02:57:42','2024-08-30 02:57:42',NULL,NULL),(231,108,'Hurts','2024-08-30 02:57:48','2024-08-30 02:57:48',NULL,NULL),(232,107,'Hahaha','2024-08-30 02:57:50','2024-08-30 02:58:09','2024-08-30 02:58:09',NULL),(233,107,'Noted','2024-08-30 02:57:56','2024-08-30 02:57:56',NULL,NULL),(234,108,'Nice','2024-08-30 02:59:37','2024-08-30 02:59:37',NULL,NULL),(235,109,'Let’s eat out!','2024-08-30 03:00:54','2024-08-30 03:00:54',NULL,NULL),(236,110,'I will koujoint','2024-08-30 03:01:24','2024-08-30 03:01:24',NULL,NULL),(237,109,'Cool','2024-08-30 03:01:44','2024-08-30 03:01:44',NULL,NULL),(238,109,'let’s go','2024-08-30 03:02:03','2024-08-30 03:02:03',NULL,NULL),(239,107,'Are you serious?','2024-08-30 03:03:16','2024-08-30 03:03:16',NULL,231),(240,108,'Yes!!','2024-08-30 03:03:53','2024-08-30 03:03:53',NULL,NULL),(241,112,'Who will donate?','2024-08-30 04:49:10','2024-08-30 04:49:10',NULL,NULL),(242,112,'Need 15 minutes','2024-08-30 04:49:16','2024-08-30 04:51:20',NULL,NULL),(243,113,'I can’t','2024-08-30 04:50:05','2024-08-30 04:50:05',NULL,NULL),(244,112,'Why?','2024-08-30 04:50:19','2024-08-30 04:50:19',NULL,NULL),(245,113,'I’m afraid','2024-08-30 04:50:27','2024-08-30 04:50:27',NULL,NULL),(246,113,'Hurts!','2024-08-30 04:50:30','2024-08-30 04:50:30',NULL,NULL),(247,112,'Hahahaha','2024-08-30 04:50:37','2024-08-30 04:50:54','2024-08-30 04:50:54',NULL),(248,112,'Noted','2024-08-30 04:50:41','2024-08-30 04:50:41',NULL,NULL),(249,113,'Nice!','2024-08-30 04:52:10','2024-08-30 04:52:10',NULL,NULL),(250,114,'Hey lets eat out!','2024-08-30 04:54:02','2024-08-30 04:54:02',NULL,NULL),(251,115,'I will join ','2024-08-30 04:54:25','2024-08-30 04:54:25',NULL,NULL),(252,112,'Are you serious?','2024-08-30 04:55:23','2024-08-30 04:55:23',NULL,246),(253,113,'Of course! I kennat!','2024-08-30 04:55:32','2024-08-30 04:55:32',NULL,NULL),(254,117,'Who will donate blood in the event?','2024-08-30 05:20:58','2024-08-30 05:20:58',NULL,NULL),(255,117,'I need within 15 minutes','2024-08-30 05:21:06','2024-08-30 05:23:19',NULL,NULL),(256,118,'I can’t','2024-08-30 05:22:00','2024-08-30 05:22:00',NULL,NULL),(257,117,'Why?','2024-08-30 05:22:10','2024-08-30 05:22:10',NULL,NULL),(258,118,'I’m scared!','2024-08-30 05:22:29','2024-08-30 05:22:29',NULL,NULL),(259,118,'Needles hurt!','2024-08-30 05:22:33','2024-08-30 05:22:33',NULL,NULL),(260,117,'Hahahaha','2024-08-30 05:22:38','2024-08-30 05:22:52','2024-08-30 05:22:52',NULL),(261,117,'Noted','2024-08-30 05:22:42','2024-08-30 05:22:42',NULL,NULL),(262,118,'Nice!','2024-08-30 05:24:13','2024-08-30 05:24:13',NULL,NULL),(263,119,'Hey let’s go out for lunch!','2024-08-30 05:25:22','2024-08-30 05:25:22',NULL,NULL),(264,119,'Let’s go to Jollibee!','2024-08-30 05:25:28','2024-08-30 05:25:28',NULL,NULL),(265,120,'I will join','2024-08-30 05:25:50','2024-08-30 05:25:50',NULL,NULL),(266,117,'Are you serious?','2024-08-30 05:26:49','2024-08-30 05:26:49',NULL,259),(267,118,'Yes of course! I’m really scared of needles!','2024-08-30 05:27:07','2024-08-30 05:27:07',NULL,NULL),(268,122,'Who will donate blood in the upcoming event?','2024-08-30 06:14:59','2024-08-30 06:14:59',NULL,NULL),(269,122,'I need reply within 15 mins ','2024-08-30 06:15:13','2024-08-30 06:17:09',NULL,NULL),(270,123,'I can’t','2024-08-30 06:15:59','2024-08-30 06:15:59',NULL,NULL),(271,122,'Why?','2024-08-30 06:16:12','2024-08-30 06:16:12',NULL,NULL),(272,123,'I’m scared\n','2024-08-30 06:16:21','2024-08-30 06:16:21',NULL,NULL),(273,123,'Needles hurt','2024-08-30 06:16:26','2024-08-30 06:16:26',NULL,NULL),(274,122,'Hahahahha','2024-08-30 06:16:35','2024-08-30 06:16:48','2024-08-30 06:16:48',NULL),(275,122,'Noted','2024-08-30 06:16:39','2024-08-30 06:16:39',NULL,NULL),(276,123,'Nice','2024-08-30 06:18:00','2024-08-30 06:18:00',NULL,NULL),(277,124,'Hey! Let‘s go to Jollibee','2024-08-30 06:19:21','2024-08-30 06:19:21',NULL,NULL),(278,125,'I will join','2024-08-30 06:19:41','2024-08-30 06:19:41',NULL,NULL),(279,122,'Are you serious?','2024-08-30 06:20:41','2024-08-30 06:20:41',NULL,272),(280,123,'Of course I’m serious','2024-08-30 06:20:56','2024-08-30 06:20:56',NULL,NULL),(281,128,'I am alone','2024-08-30 06:33:44','2024-08-30 06:33:44',NULL,NULL),(282,125,'Where’s our lunch?','2024-08-30 06:33:46','2024-08-30 06:33:46',NULL,NULL),(283,129,'Hi','2024-08-30 06:33:58','2024-08-30 06:33:58',NULL,NULL),(284,127,'Henlo','2024-08-30 06:34:21','2024-08-30 06:34:21',NULL,NULL),(285,128,'Who has the plate number already? ','2024-08-30 06:36:03','2024-08-30 06:36:03',NULL,NULL),(286,135,'Joining the room 😎','2024-08-30 06:38:46','2024-08-30 06:38:46',NULL,NULL);
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Room` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) NOT NULL,
  `creator_id` int NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `updated_by` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`room_id`),
  KEY `room_ibfk_1_idx` (`creator_id`),
  KEY `room_ibfk_2_idx` (`updated_by`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoomUser`
--

DROP TABLE IF EXISTS `RoomUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RoomUser` (
  `room_user_id` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_muted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`room_user_id`),
  KEY `room_id` (`room_id`),
  KEY `roomuser_ibfk_2_idx` (`user_id`),
  CONSTRAINT `roomuser_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `Room` (`room_id`),
  CONSTRAINT `roomuser_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoomUser`
--

LOCK TABLES `RoomUser` WRITE;
/*!40000 ALTER TABLE `RoomUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `RoomUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (11,'Nino','nino','Start123!!!','public/images/profile19.png','2024-09-06 02:35:20','2024-09-06 02:35:20'),(12,'James Bond','jbond','jjjjj','public/images/profile14.png','2024-09-09 08:28:35','2024-09-09 08:28:35'),(13,'Nezuko','nezuko','nnnnn','public/images/profile11.png','2024-09-09 08:29:53','2024-09-09 08:29:53'),(14,'Tanjiro','tanjiro','ttttt','public/images/profile8.png','2024-09-09 08:32:54','2024-09-09 08:32:54'),(15,'Bruce Lee','bruce','bbbbb','public/images/profile18.png','2024-09-09 08:35:47','2024-09-09 08:35:47');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDevice`
--

DROP TABLE IF EXISTS `UserDevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserDevice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) NOT NULL,
  `device_push_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_invalid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userdevice_ibfk_1` (`user_id`),
  CONSTRAINT `userdevice_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserDevice`
--

LOCK TABLES `UserDevice` WRITE;
/*!40000 ALTER TABLE `UserDevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDevice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInvitation`
--

DROP TABLE IF EXISTS `UserInvitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserInvitation` (
  `invitation_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `room_id` int NOT NULL,
  `created_by` int NOT NULL,
  `is_invalid` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`invitation_id`),
  KEY `userinvitation_ibfk_1_idx` (`user_id`),
  KEY `userinvitation_ibfk_2_idx` (`created_by`),
  CONSTRAINT `userinvitation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userinvitation_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInvitation`
--

LOCK TABLES `UserInvitation` WRITE;
/*!40000 ALTER TABLE `UserInvitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserInvitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserToken`
--

DROP TABLE IF EXISTS `UserToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserToken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `access_expiry` timestamp NULL DEFAULT NULL,
  `refresh_expiry` timestamp NULL DEFAULT NULL,
  `is_invalid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `usertoken_ibfk_1` (`user_id`),
  CONSTRAINT `usertoken_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserToken`
--

LOCK TABLES `UserToken` WRITE;
/*!40000 ALTER TABLE `UserToken` DISABLE KEYS */;
INSERT INTO `UserToken` VALUES (21,'LSgL99zRA6KSoKlZz32KS01+TGA3NwE/GlG0YOz5A3tFrm78PVQPWQAVhvQ6T2c4REGY3X5VDnWBQlojj6ZYqh3i0Eli3+d1lWvUXPnxbU3fuIlHLx+25Mga5186UXm6gsLhohSQjwJV/odVUzmr5UK+0UYZCzK71iEpOcKXh5Y=','rvKFcwPKj3N+cKo8hPx45n7LDMqKVqsMEM4A6BxW5iQqHUteqD4iZ5R0GGNulebatjQKrSfo7+XptEU9zIw28IRyoAguz08mLvfsZTdLyoH9mACSpYP9/Pnx5SQ1GgYO4mU+2ylN38KSnyQKPUHZw/RkpqOl/W9uRW56QdhXiFY=',11,'2024-09-06 09:43:10','2024-09-09 01:44:54','2024-09-06 09:58:10','2024-09-13 09:43:10',0),(29,'lG4CppyiifHoBlt8wmlaAJCiCa3yN0xkLMMdHD2JUnamJgZ3KfzVJA8I6k9D73RH9h2uomtKcGiAO0q4RWNyi/eJUm80wVwCS2BsGcLVDDeDoSINss+WyLw8+heyKU6XNGa5pZLkUFidhKR5rUuMWOikvNqDMZcphQ6XOm6G63o=','MRTvcJBmlLNJHRER79r6ZOn8yrlMXT5p5mDlTBMh7DHVQLI/l8uAz2PI0dNFV3LLePFkkHhrNlaqZxcXPLUh8XLjuHE8z6FCOGgRIhRsy5JCd8e6BP64wXPk101s7y2lfeAg9xz6YJTlBPZ8kpIuXhIRTUm8edUh4y5n2ItVKvA=',11,'2024-09-09 01:45:47','2024-09-09 01:45:47','2024-09-09 02:00:47','2024-09-16 01:45:47',0),(30,'VV75OTLJmceYSGV84402wIkt8VXXOCAbiR7hcKxMS2fyZt8IUDvRVchw9zVcCj0yy1phYekTAgiRzQGbJgV17d31k6dgfkMe64cajT+rljcDjF5aammzsEMLE+KJSbU4Q05UfdRvYfrcOyGDhUZCAOPIT+NJZo1oAtGMaKNFzHA=','JlooBwPesq3FprcpEUE7m9WeLywakMzvJj1lwE4ci98qVlFYTeVLCdTUn3rwvGyfdstxmJ2GgqQOhCp+WGMpwvdLg7BKnKQP9mVMLMWBaMahH/aPiMcCAOxnjlrH/+H/G33CRMk0FshIfk+XG3rRKHNNkwS/UItM3Ybq/D6PI5k=',11,'2024-09-09 05:57:49','2024-09-09 05:57:49','2024-09-09 06:12:49','2024-09-16 05:57:49',0),(31,'fYOpi/PCA5JEvtaylBZUQFyTEYZGLdpGoslZ87leFaze+lLJAzxM3+SSjDM/QZjQcrQwhlx1aM6bL9K9zuEF68JBypqWnLYVe4Jvcf36JRzAeWplUoDnrs8VrTSkO6iaKnTmNYxUn7No1iEFKHcPRU5LE+VMaD2O/5XZqgnHpmo=','PYeRpAE0SJFXN5c1yCUd216KtOOoyp8zHg1Z22+5kuiV7+jiUhYUs24MJUSxAwxwONSAju3hS7COytUNt6Z/0zCiB7AsMpQd6nPRWmQ4sJaLtI6gL7boG0Y42xcVv8vBdHLU53HjPV0PkFzo/fxOUsJy+Zg/MNGZCeohPLtOKsM=',14,'2024-09-09 08:32:54','2024-09-09 08:32:54','2024-09-09 08:47:54','2024-09-16 08:32:54',0),(32,'Q8eeF7HwLDWEwwi2l/bB21MONGFGUN6p2mgLtLbH65D7XIpkSm+BBjhZQWj4rUmSE3xoeKnP9EjVuHFH4r0MBS1i1TIZrJMOf95FOLEhUIpXS7+2qWEHwQwRBluqMRgXn1WMde32OMeDAxqoVQj5Ip7hDHDUkLfTAP3mO+HejXA=','H1Uho0BkvNhYw8nroQUsX3CaMLUJTFLxGsvOWeN3XSHqRScyY9Owc9jHtvf86cntNEm1ZeQs4/iLe5jA9S6uagscYnlHmSW2fbsJutcFbSUUiumRSmShziVByjVkBhl9Exxodij54IqBwXSd6qBdLlGyeor7Rbw4zS4Zz7Ffrho=',15,'2024-09-09 08:35:47','2024-09-09 08:35:47','2024-09-09 08:50:47','2024-09-16 08:35:47',0),(33,'sEjxg/lzia650DEJ1rhG0p9Ag1l78JMBQzOQcGv7+4lGJDJlgGIUZLo9FLRY4BVqC+MXejikwHcXSNuzSRuvjYAIwd81y2XSZDl3QnEVYR1Z5i5f/VDsvqbUV7FtDHZj+QEOE7xmcjBE6Ba1GWD81nfu6/CzMCYqtxD3ZXqtbK8=','AUJ4KNMRO+ZI2Je31SfX/LEpbjsoCXaOrFAQsKWcw9qkknicIXTUuuX9BMKDNkmtC4HQ4nPooz/0xcycKXiLHi23aNlKFlmvdTe845cl1pZNV40K3ELRPRzvwMuodAvo3PCyrcCFb5D4Ev4LNzWuM0NWbRGq9MIGN4zsw28OYms=',11,'2024-09-09 08:54:04','2024-09-09 08:54:04','2024-09-09 09:09:04','2024-09-16 08:54:04',0);
/*!40000 ALTER TABLE `UserToken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 17:35:29

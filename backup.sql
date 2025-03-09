-- MySQL dump 10.13  Distrib 9.0.1, for Win64 (x86_64)
--
-- Host: localhost    Database: mds_blog
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(5000) NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'pretium elit vulputate non. Curabitur et feugiat nisl. Nulla facilisi. Nulla facilisi. ',1,2,'2025-03-05 15:53:33','2025-03-05 15:53:33'),(2,'pretium elit vulputate non. Curabitur et feugiat nisl. Nulla facilisi. Nulla facilisi. Sed volutpat, lorem vitae  ',1,2,'2025-03-05 15:54:05','2025-03-05 15:54:05'),(3,'Mauris tincidunt placerat nisi, sed vestibulum mauris feugiat id. Fusce sit amet lacus quis elit sodales porttitor. In hac ',2,1,'2025-03-05 16:01:16','2025-03-05 16:01:16'),(4,'Mauris tincidunt placerat nisi, sed vestibulum mauris feugiat id. Fusce sit amet lacus quis elit sodales porttitor. In hac ',2,3,'2025-03-05 16:01:50','2025-03-05 16:01:50'),(5,'Mauris tincidunt placerat nisi, sed vestibulum mauris feugiat id. Fusce sit amet lacus quis elit sodales porttitor. In hac ',2,4,'2025-03-05 16:02:07','2025-03-05 16:02:07'),(6,'Mauris tincidunt placerat nisi, sed vestibulum mauris feugiat id. Fusce sit amet lacus quis elit sodales porttitor. In hac ',3,1,'2025-03-05 16:02:23','2025-03-05 16:02:23'),(7,'Mauris tincidunt placerat nisi, sed vestibulum mauris feugiat id. Fusce sit amet lacus quis elit. In hac ',3,2,'2025-03-05 16:02:42','2025-03-05 16:02:42'),(8,'Mauris tincidunt placerat nisi, sed vestibulum mauris feugiat id. Fusce sit amet lacus quis elit sodales porttitor.',3,4,'2025-03-05 16:02:58','2025-03-05 16:02:58');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` char(150) NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `picture` char(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'mon premier post','pretium elit vulputate non. Curabitur et feugiat nisl. Nulla facilisi. Nulla facilisi. Sed volutpat, lorem vitae tincidunt consequat, odio dui ultricies neque, non tincidunt nisi est eu enim. Nulla interdum nunc nec tincidunt eleifend. Quisque fermentum mi eget velit scelerisque ultrices. Aenean nec bibendum justo, vitae posuere nisi. Mauris ultrices semper ligula, sed semper ipsum congue sit amet. Donec imperdiet ultrices tortor eget sodales. Morbi eget urna ac urna vehicula convallis sit amet ac sapien. Sed et volutpat justo. Donec tempor ultricies facilisis. Pellentesque et ante gravida, pulvinar tortor non, consectetur ipsum. Morbi vel scelerisque lorem, quis viverra nibh.',NULL,'2025-03-05 15:51:08','2025-03-05 15:51:08',1),(2,'un post random','Mauris tincidunt placerat nisi, sed vestibulum mauris feugiat id. Fusce sit amet lacus quis elit sodales porttitor. In hac habitasse platea dictumst. Duis eget quam at magna vehicula iaculis. Donec vestibulum eros ut sapien porta tristique. Aenean quis finibus nunc. Fusce auctor neque vitae tellus egestas gravida. Sed tristique sollicitudin dolor nec iaculis. Proin consequat eros in commodo porta. Curabitur tristique turpis ut libero rhoncus imperdiet. Aliquam erat volutpat. Etiam scelerisque blandit sem, a dictum lacus blandit et. Pellentesque interdum luctus turpis quis euismod. Aenean blandit, velit eget fermentum hendrerit, libero metus scelerisque massa, eu posuere nulla augue id ligula. Curabitur sollicitudin suscipit ex vitae finibus.',NULL,'2025-03-05 15:59:36','2025-03-05 15:59:36',2),(3,'ceci est un titre de post','Mauris tincidunt placerat nisi, sed vestibulum mauris feugiat id. Fusce sit amet lacus quis elit sodales porttitor. In hac habitasse platea dictumst. Duis eget quam at magna vehicula iaculis. Donec vestibulum eros ut sapien porta tristique. Aenean quis finibus nunc. Fusce auctor neque vitae tellus egestas gravida. Sed tristique sollicitudin dolor nec iaculis. Proin consequat eros in commodo porta. Curabitur tristique  scelerisque massa, eu posuere nulla augue id ligula. Curabitur sollicitudin suscipit ex vitae finibus.',NULL,'2025-03-05 16:00:24','2025-03-05 16:00:24',3);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` char(150) NOT NULL,
  `password` char(128) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1','mdp','2025-03-05 15:49:58','2025-03-05 15:49:58'),(2,'user2','mdp','2025-03-05 15:50:16','2025-03-05 15:50:16'),(3,'user3','mdp','2025-03-05 15:50:26','2025-03-05 15:50:26'),(4,'user4','mdp','2025-03-05 15:50:37','2025-03-05 15:50:37');
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

-- Dump completed on 2025-03-09 23:53:21

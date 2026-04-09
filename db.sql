-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.22.04.1

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
-- Table structure for table `users_level1`
--

DROP TABLE IF EXISTS `users_level1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_level1` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_level1`
--

LOCK TABLES `users_level1` WRITE;
/*!40000 ALTER TABLE `users_level1` DISABLE KEYS */;
INSERT INTO `users_level1` VALUES (1,'admin','S3cur3P4ssw0rd');
/*!40000 ALTER TABLE `users_level1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_level2`
--

DROP TABLE IF EXISTS `users_level2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_level2` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `job_position` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_level2`
--

LOCK TABLES `users_level2` WRITE;
/*!40000 ALTER TABLE `users_level2` DISABLE KEYS */;
INSERT INTO `users_level2` VALUES (1,'Liam Taylor','liam.taylor1@example.com','Data Scientist','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'),(2,'Olivia Moore','olivia.moore2@example.com','Project Manager','5f8b8c9d6e4f3a2b1c0d9e8f7a6b5c4d3e2f1a0b9c8d7e6f5a4b3c2d1e0f9a8b'),(3,'Noah Anderson','noah.anderson3@example.com','Software Engineer','a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2'),(4,'Emma Thomas','emma.thomas4@example.com','UX/UI Designer','dacc82392b5e6833735c88eda148f3dca1695279159f4a13b4e3e3cce8b33a25'),(5,'Oliver Jackson','oliver.jackson5@example.com','DevOps Specialist','1f8ac10f2b6b6fd703a2e7a10b4a2e5d7a8c9b0d1e2f3a4b5c6d7e8f9a0b1c2d'),(6,'Ava White','ava.white6@example.com','Marketing Coordinator','8a7b6c5d4e3f2a1b0c9d8e7f6a5b4c3d2e1f0a9b8c7d6e5f4a3b2c1d0e9f8a7b'),(7,'William Harris','william.harris7@example.com','QA Tester','c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5'),(8,'Sophia Martin','sophia.martin8@example.com','Product Manager','3e2f1a0b9c8d7e6f5a4b3c2d1e0f9a8b7c6d5e4f3a2b1c0d9e8f7a6b5c4d3e2f'),(9,'James Thompson','james.thompson9@example.com','Data Scientist','b9c8d7e6f5a4b3c2d1e0f9a8b7c6d5e4f3a2b1c0d9e8f7a6b5c4d3e2f1a0b9c8'),(10,'Isabella Garcia','isabella.garcia10@example.com','Software Engineer','6a5b4c3d2e1f0a9b8c7d6e5f4a3b2c1d0e9f8a7b6c5d4e3f2a1b0c9d8e7f6a5b'),(11,'Logan Martinez','logan.martinez11@example.com','UX/UI Designer','f1e2d3c4b5a6f7e8d9c0b1a2f3e4d5c6b7a8f9e0d1c2b3a4f5e6d7c8b9a0f1e2'),(12,'Mia Robinson','mia.robinson12@example.com','Project Manager','2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e'),(13,'Benjamin Clark','benjamin.clark13@example.com','DevOps Specialist','7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c'),(14,'Charlotte Rodriguez','charlotte.rodriguez14@example.com','Marketing Coordinator','9e8f7a6b5c4d3e2f1a0b9c8d7e6f5a4b3c2d1e0f9a8b7c6d5e4f3a2b1c0d9e8f'),(15,'Lucas Lewis','lucas.lewis15@example.com','QA Tester','4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b'),(16,'Amelia Lee','amelia.lee16@example.com','Data Scientist','c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1'),(17,'Henry Walker','henry.walker17@example.com','Software Engineer','e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0'),(18,'Harper Hall','harper.hall18@example.com','Product Manager','a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4'),(19,'Alexander Allen','alexander.allen19@example.com','UX/UI Designer','5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d'),(20,'Evelyn Young','evelyn.young20@example.com','Project Manager','b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3'),(21,'Michael Hernandez','michael.hernandez21@example.com','DevOps Specialist','7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f'),(22,'Abigail King','abigail.king22@example.com','Marketing Coordinator','1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b'),(23,'Elijah Wright','elijah.wright23@example.com','Data Scientist','f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7'),(24,'Emily Lopez','emily.lopez24@example.com','Software Engineer','d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8'),(25,'Daniel Hill','daniel.hill25@example.com','QA Tester','8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d'),(26,'Madison Scott','madison.scott26@example.com','Product Manager','4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f'),(27,'Matthew Green','matthew.green27@example.com','UX/UI Designer','a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1'),(28,'Scarlett Adams','scarlett.adams28@example.com','DevOps Specialist','9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e'),(29,'Joseph Baker','joseph.baker29@example.com','Project Manager','6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a'),(30,'Victoria Nelson','victoria.nelson30@example.com','Marketing Coordinator','b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2'),(31,'David Carter','david.carter31@example.com','Data Scientist','e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6'),(32,'Aria Mitchell','aria.mitchell32@example.com','Software Engineer','c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3'),(33,'Samuel Perez','samuel.perez33@example.com','QA Tester','8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e'),(34,'Grace Roberts','grace.roberts34@example.com','Product Manager','3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a'),(35,'Christopher Turner','christopher.turner35@example.com','UX/UI Designer','a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9'),(36,'Chloe Phillips','chloe.phillips36@example.com','DevOps Specialist','d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4'),(37,'Andrew Campbell','andrew.campbell37@example.com','Project Manager','9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a'),(38,'Zoey Parker','zoey.parker38@example.com','Marketing Coordinator','5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b'),(39,'Joshua Evans','joshua.evans39@example.com','Data Scientist','c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9'),(40,'Lily Edwards','lily.edwards40@example.com','Software Engineer','b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5'),(41,'Ryan Collins','ryan.collins41@example.com','QA Tester','7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a'),(42,'Aubrey Stewart','aubrey.stewart42@example.com','Product Manager','1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d'),(43,'Nathan Sanchez','nathan.sanchez43@example.com','UX/UI Designer','e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1'),(44,'Hannah Morris','hannah.morris44@example.com','DevOps Specialist','6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c'),(45,'Isaac Rogers','isaac.rogers45@example.com','Project Manager','d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0'),(46,'Layla Reed','layla.reed46@example.com','ADMIN','f0e4c2f76c58916ec258f246851bea091d14d4247a2fc3e18694461b1816e13b');
/*!40000 ALTER TABLE `users_level2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-09 15:58:25

-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: biblionew
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comunas`
--

DROP TABLE IF EXISTS `comunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunas`
--

LOCK TABLES `comunas` WRITE;
/*!40000 ALTER TABLE `comunas` DISABLE KEYS */;
INSERT INTO `comunas` VALUES (1,'Santiago','2022-11-18 21:32:17','2022-11-18 21:32:43'),(2,'Las Condes','2022-11-18 21:32:53','2022-11-18 21:32:53');
/*!40000 ALTER TABLE `comunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalidades`
--

DROP TABLE IF EXISTS `nacionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacionalidades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidades`
--

LOCK TABLES `nacionalidades` WRITE;
/*!40000 ALTER TABLE `nacionalidades` DISABLE KEYS */;
INSERT INTO `nacionalidades` VALUES (1,'Chilena','2022-11-27 01:20:14','2022-11-27 01:20:48'),(2,'Venezolana','2022-12-04 18:43:40','2022-12-04 18:43:40');
/*!40000 ALTER TABLE `nacionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','2022-11-13 19:41:56','2022-11-13 19:42:58'),(2,'Suscriptor','2022-11-13 20:11:51','2022-11-13 20:11:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suscriptores`
--

DROP TABLE IF EXISTS `suscriptores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suscriptores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `rut` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `activo` int NOT NULL,
  `comuna_id` int NOT NULL,
  `nacionalidad_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscriptores`
--

LOCK TABLES `suscriptores` WRITE;
/*!40000 ALTER TABLE `suscriptores` DISABLE KEYS */;
INSERT INTO `suscriptores` VALUES (1,'Rolando Jara Morales','24.678.900-2','Los Vilos 999','r.jaramorales@gmail.com',1,2,1,'2022-12-04 18:49:03','2022-12-04 19:30:50'),(2,'Javiera Torres Contreras','23.678.954-3','Los Carrera 345','javiera.torresc@hotmail.com',1,1,2,'2022-12-04 18:51:46','2022-12-07 16:27:33');
/*!40000 ALTER TABLE `suscriptores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `movil` int NOT NULL,
  `telefonoable_id` int NOT NULL,
  `telefonoable_type` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (3,287645698,2,2,'Suscriptor','2022-12-07 17:02:32','2022-12-07 17:02:32'),(4,289765430,2,2,'Suscriptor','2022-12-07 17:07:42','2022-12-07 17:07:42'),(5,956789321,1,2,'User','2022-12-07 17:12:59','2022-12-07 17:12:59'),(6,885421342,1,1,'Suscriptor','2022-12-07 17:15:18','2022-12-07 17:15:18');
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `rut` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `direccion` text NOT NULL,
  `comuna_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Segundo Galdames','11983017-6','segundogaldames@gmail.com',1,'ec6c3913b14c8b5bc8d368ee64de2e42d86b1dfe69316ffaaabf6f3bac3f359731b6b11e31f4e75a2f42b3aa4005dd60b6d98f9fb4504f2428c6b1b2188f3e4e','Arturo Prat 309',1,1,'2022-11-11 20:57:09','2022-11-18 22:45:58'),(2,'Juan Perez','12345678-5','juanperez@gmail.com',1,'ec6c3913b14c8b5bc8d368ee64de2e42d86b1dfe69316ffaaabf6f3bac3f359731b6b11e31f4e75a2f42b3aa4005dd60b6d98f9fb4504f2428c6b1b2188f3e4e','Los sauces 123',2,2,'2022-11-18 22:31:34','2022-11-18 22:46:37'),(3,'Veronica Rosales','18.654.456-0','vrosales@aiep.cl',1,'ec6c3913b14c8b5bc8d368ee64de2e42d86b1dfe69316ffaaabf6f3bac3f359731b6b11e31f4e75a2f42b3aa4005dd60b6d98f9fb4504f2428c6b1b2188f3e4e','Los naranjos 345',1,2,'2022-12-07 17:53:44','2022-12-07 17:53:44');
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

-- Dump completed on 2022-12-07 18:24:00

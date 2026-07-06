CREATE DATABASE  IF NOT EXISTS `bd_cristian_albor_cumbia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_cristian_albor_cumbia`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: bd_cristian_albor_cumbia
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.24.04.3

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
-- Table structure for table `riwi_branches`
--

DROP TABLE IF EXISTS `riwi_branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwi_branches` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwi_branches`
--

LOCK TABLES `riwi_branches` WRITE;
/*!40000 ALTER TABLE `riwi_branches` DISABLE KEYS */;
INSERT INTO `riwi_branches` VALUES (1,'north office'),(2,'headquarters'),(3,'west'),(4,'main'),(5,'coast'),(6,'coffee'),(7,'east office'),(8,'north east'),(9,'central office'),(10,'caribbean');
/*!40000 ALTER TABLE `riwi_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwi_categories`
--

DROP TABLE IF EXISTS `riwi_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwi_categories` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwi_categories`
--

LOCK TABLES `riwi_categories` WRITE;
/*!40000 ALTER TABLE `riwi_categories` DISABLE KEYS */;
INSERT INTO `riwi_categories` VALUES (1,'laptop'),(2,'desktop'),(3,'network'),(4,'printer');
/*!40000 ALTER TABLE `riwi_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwi_cities`
--

DROP TABLE IF EXISTS `riwi_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwi_cities` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwi_cities`
--

LOCK TABLES `riwi_cities` WRITE;
/*!40000 ALTER TABLE `riwi_cities` DISABLE KEYS */;
INSERT INTO `riwi_cities` VALUES (1,'bogota'),(2,'medellin'),(3,'cali'),(4,'barranquilla'),(5,'cartagena'),(6,'pereira'),(7,'bucaramanga'),(8,'cucuta'),(9,'manizales'),(10,'santa marta');
/*!40000 ALTER TABLE `riwi_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwi_clients`
--

DROP TABLE IF EXISTS `riwi_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwi_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwi_clients`
--

LOCK TABLES `riwi_clients` WRITE;
/*!40000 ALTER TABLE `riwi_clients` DISABLE KEYS */;
INSERT INTO `riwi_clients` VALUES (1,'acme ltda'),(2,'innova sas'),(3,'novatech'),(4,'biohealth'),(5,'softcorp'),(6,'vision sa'),(7,'retailone'),(8,'educenter'),(9,'healthplus'),(10,'megafoods');
/*!40000 ALTER TABLE `riwi_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwi_equipments`
--

DROP TABLE IF EXISTS `riwi_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwi_equipments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `id_equipments_category` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_equipments_categories` (`id_equipments_category`),
  CONSTRAINT `fk_equipments_categories` FOREIGN KEY (`id_equipments_category`) REFERENCES `riwi_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwi_equipments`
--

LOCK TABLES `riwi_equipments` WRITE;
/*!40000 ALTER TABLE `riwi_equipments` DISABLE KEYS */;
INSERT INTO `riwi_equipments` VALUES (1,'canon printer pixma',4),(2,'cisco switch 2960',3),(3,'dell latitude 5420',1),(4,'hp prodesk',2),(5,'lenovo thinkpad',1);
/*!40000 ALTER TABLE `riwi_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwi_orders`
--

DROP TABLE IF EXISTS `riwi_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwi_orders` (
  `workorder` varchar(100) NOT NULL,
  `id_client` int DEFAULT NULL,
  `id_equipments` int DEFAULT NULL,
  `id_branch` smallint DEFAULT NULL,
  `id_city` smallint DEFAULT NULL,
  `id_technician` smallint DEFAULT NULL,
  `id_servicetype` smallint DEFAULT NULL,
  `servicedate` date DEFAULT NULL,
  `hours` smallint DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`workorder`),
  KEY `fk_orders_client` (`id_client`),
  KEY `fk_orders_equipments` (`id_equipments`),
  KEY `fk_orders_branches` (`id_branch`),
  KEY `fk_orders_cities` (`id_city`),
  KEY `fk_orders_technicians` (`id_technician`),
  KEY `fk_orders_servicetypes` (`id_servicetype`),
  CONSTRAINT `fk_orders_branches` FOREIGN KEY (`id_branch`) REFERENCES `riwi_branches` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_cities` FOREIGN KEY (`id_city`) REFERENCES `riwi_cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_client` FOREIGN KEY (`id_client`) REFERENCES `riwi_clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_equipments` FOREIGN KEY (`id_equipments`) REFERENCES `riwi_equipments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_servicetypes` FOREIGN KEY (`id_servicetype`) REFERENCES `riwi_servicetypes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_technicians` FOREIGN KEY (`id_technician`) REFERENCES `riwi_technicians` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwi_orders`
--

LOCK TABLES `riwi_orders` WRITE;
/*!40000 ALTER TABLE `riwi_orders` DISABLE KEYS */;
INSERT INTO `riwi_orders` VALUES ('wo1001',1,3,1,1,1,2,'2026-05-01',2,120.00),('wo1002',1,3,1,1,1,2,'2026-05-02',3,180.00),('wo1003',2,4,2,2,2,1,'2026-05-03',4,250.00),('wo1004',2,4,2,2,2,1,'2026-05-04',2,150.00),('wo1005',3,2,3,3,3,2,'2026-05-05',5,500.00),('wo1006',3,2,3,3,3,2,'2026-05-06',4,450.00),('wo1007',4,1,4,4,4,1,'2026-05-07',2,130.00),('wo1008',4,1,4,4,4,1,'2026-05-08',3,200.00),('wo1009',5,5,5,5,5,2,'2026-05-09',2,140.00),('wo1010',5,5,5,5,5,2,'2026-05-10',3,190.00),('wo1011',6,4,6,6,1,2,'2026-05-11',6,550.00),('wo1012',6,4,6,6,1,2,'2026-05-12',5,520.00),('wo1013',7,3,7,7,2,1,'2026-05-13',2,160.00),('wo1014',7,3,7,7,2,1,'2026-05-14',3,210.00),('wo1015',8,2,8,8,3,2,'2026-05-15',2,125.00),('wo1016',8,2,8,8,3,2,'2026-05-16',2,135.00),('wo1017',9,1,9,9,4,2,'2026-05-17',4,400.00),('wo1018',9,1,9,9,4,2,'2026-05-18',5,430.00),('wo1019',10,5,10,10,5,1,'2026-05-19',3,220.00),('wo1020',10,5,10,10,5,1,'2026-05-20',4,260.00);
/*!40000 ALTER TABLE `riwi_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwi_servicetypes`
--

DROP TABLE IF EXISTS `riwi_servicetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwi_servicetypes` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwi_servicetypes`
--

LOCK TABLES `riwi_servicetypes` WRITE;
/*!40000 ALTER TABLE `riwi_servicetypes` DISABLE KEYS */;
INSERT INTO `riwi_servicetypes` VALUES (1,'corrective'),(2,'preventive');
/*!40000 ALTER TABLE `riwi_servicetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwi_technicians`
--

DROP TABLE IF EXISTS `riwi_technicians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwi_technicians` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwi_technicians`
--

LOCK TABLES `riwi_technicians` WRITE;
/*!40000 ALTER TABLE `riwi_technicians` DISABLE KEYS */;
INSERT INTO `riwi_technicians` VALUES (1,'juan perez'),(2,'maria gomez'),(3,'carlos ruiz'),(4,'laura diaz'),(5,'andres mora');
/*!40000 ALTER TABLE `riwi_technicians` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-06 15:56:56

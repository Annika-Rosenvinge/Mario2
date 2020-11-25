-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mariopizza
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cusID` int NOT NULL AUTO_INCREMENT,
  `cusName` varchar(255) NOT NULL,
  `cusPhone` int DEFAULT NULL,
  PRIMARY KEY (`cusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordre`
--

DROP TABLE IF EXISTS `ordre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordre` (
  `pizzaID` int NOT NULL,
  `cusID` int NOT NULL,
  `cusName` varchar(255) NOT NULL,
  `total` int NOT NULL,
  `pickuptime` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordre`
--

LOCK TABLES `ordre` WRITE;
/*!40000 ALTER TABLE `ordre` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza` (
  `pizzaID` int NOT NULL,
  `pizzaName` varchar(255) NOT NULL,
  `ingredients` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`pizzaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES (1,'Versuvio','Tomatsovs, ost, skinke, oregano',57),(2,'Amerikaner','Tomatsovs, ost, oksekød, oregano',53),(3,'Caccitore','Tomatsovs, ost, pepperoni, oregano',57),(4,'Carbona','Tomatsovs, ost, kødsovs, spaghetti, cocktailpølser, oregano',63),(5,'Dennis','Tomatsovs, ost, skinke, pepperoni, cocktailpølser, oregano',65),(6,'Bertil','Tomatsovs, ost, bacon, oregano',57),(7,'Silva','Tomatsovs, ost, pepperoni, rødpeber, løg, oliven, oregano',61),(8,'Victoria','Tomatsovs, ost, skinke, ananas, champignon, oregano',61),(9,'Toronto','Tomatsovs, ost, skinke, cocktailpølser',61),(10,'Capricciosa','Tomatsovs, ost, skinke, grønpeber, kylling',61),(11,'Hawaii','Tomatsovs, ost, skinke, ananas',61),(12,'Le Blissola','Tomatsovs, ost, skinke',56),(13,'Venezia','Tomatsovs, ost, skinke, løg, bacon',61),(14,'Mafia','Tomatsovs, ost, chilli, pepperoni',61),(15,'Viking','Tomatsovs, ost, italiensk kogt skinke, rødpeber, champingnon, chilli,\nhvidløg',85),(16,'Matriciana','Tomatsovs, ost, italiensk bacon, rucula',69),(17,'Carciofi','Tomatsovs, ost, artiskok, italiensk salami',80),(18,'Gorgonzola','Tomatsovs, ost, gorgonzola',65),(19,'Quattro Formaggi','Tomatsovs, mozzarella, emmenthaler, parmasan, gorgonzola ',70),(20,'Campagnola','Tomatsovs, ost, spinat, friske tomater, gorgonzola, parmasan,\n hvidløg, chilli',79),(21,'Saracena','Tomatsovs, ost, parmasan, pepperoni, tomatskiver',85),(22,'Magherita con Prosciutto','Tomatsovs, ost, rucula, parmasan',65),(23,'Magherita con Rucula','Tomatsovs, ost, rucula, parmasan, tomatskiver, oregano,',65),(24,'Fiorentina','Tomatsovs, ost, italiensk kogt skinke, champingnon, pepperoni',67),(25,'Rustica','Tomatsovs, Italiensk salami, løg, parmasan, rucula',71),(26,'Carpaccio','Tomatsovs, ost, parmasan, rucula ',86),(27,'Mediterranea','Tomatsovs, ost, shawarma, salat, tomat, agurk, dressing',69),(28,'Amager','Tomatsovs, ost, oksekød, spinat, pesto',60),(29,'Mario','Tomatsovs, ost, bacon, pepperoni',55),(30,'Olympia','Tomatsovs, ost, skinke, bacon, æg',65);
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-25  8:58:02

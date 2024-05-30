-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jeeswing
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `unitPrice` float(8,2) NOT NULL,
  `quantity` float(8,2) NOT NULL,
  `totalPrice` float(8,2) NOT NULL,
  `salesPrice` float(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Mango',100.00,10.00,1000.00,110.00),(2,'Jam',100.00,10.00,1000.00,120.00),(3,'Keyboard',1000.00,10.00,10000.00,1200.00),(4,'Beef Kacci',250.00,10.00,2500.00,300.00),(5,'Apple',200.00,10.00,2000.00,250.00),(7,'Jama',200.00,20.00,400.00,250.00),(8,'Panjabi',1000.00,2.00,2000.00,1500.00),(9,'Khichuri',100.00,5.00,500.00,150.00),(10,'Potato',50.00,10.00,500.00,60.00),(11,'Savlon',100.00,2.00,200.00,200.00),(16,'Head Phone',1000.00,15.00,15000.00,1100.00),(17,'Pasta',150.00,20.00,3000.00,200.00),(18,'Burger',122.00,22.00,2684.00,200.00),(19,'Pizza',500.00,5.00,2500.00,600.00),(20,'Momo',100.00,3.00,300.00,150.00),(22,'Jam',100.00,10.00,1000.00,120.00),(30,'towhid',10.00,100.00,1000.00,20000.00),(31,'Mango',90.00,10.00,1000.00,110.00),(32,'Meet',700.00,10.00,7000.00,800.00),(33,'pc',20000.00,3.00,60000.00,2000.00),(39,'laptop',200.00,10.00,2000.00,300.00),(40,'Ram 8 Gb',2000.00,10.00,20000.00,2200.00),(41,'Ram16 GB',3000.00,10.00,30000.00,3200.00),(42,'aaaa',11.00,11.00,121.00,12.00),(43,'asd',1212.00,3.00,3636.00,2222.00),(44,'qqq',122.00,3.00,366.00,123.00),(46,'gfggf',111.00,12.00,1332.00,122.00),(47,'Pc',5000.00,5.00,25000.00,10000.00),(48,'Monitor',5000.00,10.00,50000.00,5500.00),(49,'MaderBoard',7000.00,11.00,77000.00,8000.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `salesUnitPrice` float(8,2) NOT NULL,
  `salesQuantity` float(8,2) NOT NULL,
  `salesTotalPrice` float(8,2) NOT NULL,
  `salesDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'Mango',110.00,5.00,550.00,'2024-05-29'),(2,'Jam',120.00,8.00,960.00,'2024-05-29'),(3,'Panjabi',1500.00,8.00,12000.00,'2024-05-28'),(4,'Panjabi',1500.00,20.00,30000.00,'2024-05-28'),(5,'Beef Kacci',300.00,5.00,1500.00,'2024-05-29'),(6,'Apple',250.00,100.00,25000.00,'2024-05-20'),(7,'Mango',110.00,10.00,1100.00,'2024-05-09'),(8,'add',20.00,5.00,100.00,'2024-05-12'),(9,'Head Phone',1100.00,11.00,12100.00,'2024-05-19'),(10,'Cabol',30.00,11.00,330.00,'2024-05-21'),(11,'towhid',20000.00,1.00,20000.00,'2024-05-30'),(12,'towhid',20000.00,1.00,20000.00,'2024-05-30'),(13,'towhid',20000.00,1.00,20000.00,'2024-05-15'),(14,'towhid',20000.00,2.00,40000.00,'2024-05-21'),(15,'laptop',300.00,1.00,300.00,'2024-05-20'),(16,'laptop',300.00,1.00,300.00,'2024-05-20'),(17,'towhid',20000.00,1.00,300.00,'2024-05-20'),(18,'Ram 8 Gb',2200.00,1.00,2200.00,'2024-05-20'),(19,'Ram16 GB',3200.00,5.00,16000.00,'2024-05-17'),(20,'aaaa',12.00,1.00,12.00,'2024-05-09'),(21,'towhid',20000.00,1.00,12.00,'2024-05-09'),(22,'Monitor',5500.00,5.00,27500.00,'2024-05-28'),(23,'Beef Kacci',300.00,2.00,600.00,'2024-05-27');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `quantity` float(8,2) NOT NULL,
  `purcahsePrice` float(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'towhid',3.00,100.00),(2,'gfggf',12.00,111.00),(3,'Pc',5.00,5000.00),(4,'Monitor',5.00,5000.00),(5,'MaderBoard',11.00,7000.00);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-30 12:26:36

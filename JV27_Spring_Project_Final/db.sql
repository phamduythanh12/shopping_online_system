-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: jv27_project_final
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'H1/7 K33 Nam Cao','phamduythanh19998@gmail.com','pham duy thanh','duythanh1','362295861','duythanh'),(2,'H1/7 K33 Nam Cao','phamduythanh19998@gmail.com','pham duy thanh','123456','362295861','phamduythanh123');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_SELLER'),(3,'ROLE_USER');
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `account_role_relation`
--

LOCK TABLES `account_role_relation` WRITE;
/*!40000 ALTER TABLE `account_role_relation` DISABLE KEYS */;
INSERT INTO `account_role_relation` VALUES (5,3),(6,3),(1,3),(2,3);
/*!40000 ALTER TABLE `account_role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,_binary '','110.png',1),(2,_binary '','111.jpg',1),(3,_binary '','112.jpg',1),(4,_binary '','113.jpg',2),(5,_binary '','114.jpg',2),(6,_binary '','115.jpg',2),(7,_binary '','116.jpg',3),(8,_binary '','117.jpg',3),(9,_binary '','118.jpg',3),(10,_binary '','119.jpg',4),(11,_binary '','120.jpg',4),(12,_binary '','121.jpg',4),(13,_binary '','122.jpg',5),(14,_binary '','123.jpg',5),(15,_binary '','124.png',5),(16,_binary '','125.jpg',6),(17,_binary '','126.jpg',6),(18,_binary '','127.png',6),(19,_binary '','128.jpg',7),(20,_binary '','129.jpg',7),(21,_binary '','130.jpg',7),(22,_binary '','131.jpg',8),(23,_binary '','132.jpg',8),(24,_binary '','133.jpg',8),(25,_binary '','134.png',9),(26,_binary '','135.png',9),(27,_binary '','136.jpg',9),(28,_binary '','137.jpg',10),(29,_binary '','138.jpg',10),(30,_binary '','139.jpg',10),(31,_binary '','140.jpg',11),(32,_binary '','141.jpg',11),(33,_binary '','142.jpeg',11),(34,_binary '','143.jpg',12),(35,_binary '','144.jpg',12),(36,_binary '','145.jpg',12),(37,_binary '','146.jpg',13),(38,_binary '','147.jpg',13),(39,_binary '','148.jpg',13),(40,_binary '','149.jpg',14),(41,_binary '','150.jpg',14),(42,_binary '','151.jpg',14),(43,_binary '','152.jpg',15),(44,_binary '','153.png',15),(45,_binary '','154.jpg',15),(46,_binary '','155.jpg',16),(47,_binary '','156.jpg',16),(48,_binary '','157.jpg',16),(49,_binary '','158.jpg',17),(50,_binary '','159.jpg',17),(51,_binary '','160.png',17),(52,_binary '','161.jpg',18),(53,_binary '','162.jpg',18),(54,_binary '','163.jpg',18),(55,_binary '','164.jpg',19),(56,_binary '','165.jpg',19),(57,_binary '','166.png',19),(58,_binary '','167.jpg',20),(59,_binary '','168.png',20),(60,_binary '','169.jpg',20),(61,_binary '','170.jpg',21),(62,_binary '','171.jpg',21),(63,_binary '','172.jpg',21),(64,_binary '','173.jpg',22),(65,_binary '','174.jpg',22),(66,_binary '','175.jpg',22),(67,_binary '','176.jpg',23),(68,_binary '','177.jpg',23),(69,_binary '','178.jpg',23),(70,_binary '','179.jpg',24),(71,_binary '','180.jpg',24),(72,_binary '','181.jpg',24),(73,_binary '','149.jpg',14),(74,_binary '','150.jpg',14),(75,_binary '','151.jpg',14),(76,_binary '','152.jpg',15),(77,_binary '','153.png',15),(78,_binary '','154.jpg',15),(79,_binary '','155.jpg',16),(80,_binary '','156.jpg',16),(81,_binary '','157.jpg',16),(82,_binary '','158.jpg',17),(83,_binary '','159.jpg',17),(84,_binary '','160.png',17),(85,_binary '','161.jpg',18),(86,_binary '','162.jpg',18),(87,_binary '','163.jpg',18),(88,_binary '','164.jpg',19),(89,_binary '','165.jpg',19),(90,_binary '','166.png',19),(91,_binary '','167.jpg',20),(92,_binary '','168.png',20),(93,_binary '','169.jpg',20),(94,_binary '','170.jpg',21),(95,_binary '','171.jpg',21),(96,_binary '','172.jpg',21),(97,_binary '','173.jpg',22),(98,_binary '','174.jpg',22),(99,_binary '','175.jpg',22),(100,_binary '','176.jpg',23),(101,_binary '','177.jpg',23),(102,_binary '','178.jpg',23),(103,_binary '','179.jpg',24),(104,_binary '','180.jpg',24),(105,_binary '','181.jpg',24);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,0,1,430000,1,8),(2,0,1,876000,2,2),(3,0,3,396000,2,9),(4,0,1,645000,3,3),(5,0,3,510000,3,7),(6,0,1,456000,4,1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2019-04-07',NULL,430000,NULL,1),(2,'2019-04-07',NULL,1272000,5,2),(3,'2019-04-08',NULL,1155000,NULL,3),(4,'2019-04-14',NULL,456000,7,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,NULL,_binary '',NULL,NULL,'Anastasia Beverly Hills',456000,1,1),(2,NULL,_binary '\0',NULL,NULL,'Apieu Start Up Primer Pore',876000,1,1),(3,NULL,_binary '',NULL,NULL,'Bvl Splendida Magnolia Sensuel',645000,1,1),(4,NULL,_binary '',NULL,NULL,'Bvlgari Jasmin',129000,1,2),(5,NULL,_binary '',NULL,NULL,'CC Cream Chanel Grande ',120000,2,2),(6,NULL,_binary '',NULL,NULL,'Chanel Rouge Allure Ink',150000,2,2),(7,NULL,_binary '',NULL,NULL,'Chanel 12 Beige Rose Grande2',170000,2,3),(8,NULL,_binary '',NULL,NULL,'Chanel Chance Eau Fraiche Grande',430000,2,3),(9,NULL,_binary '',NULL,NULL,'Chanel Le Blanc Whitening',132000,3,3),(10,NULL,_binary '',NULL,NULL,'Charlottes Genius Under',234000,3,4),(11,NULL,_binary '',NULL,NULL,'CMS Block Image 2757 Grande',567000,3,4),(12,NULL,_binary '',NULL,NULL,'Cushion Fushion Ink Cushion',657000,3,4),(13,NULL,_binary '',NULL,NULL,'Dior Diorskin Forever Perfect',890000,4,5),(14,NULL,_binary '',NULL,NULL,'Dior Khol 741',567000,4,5),(15,NULL,_binary '',NULL,NULL,'Son Bobbi Brown Cherky Peach',180000,4,5),(16,NULL,_binary '',NULL,NULL,'Son Burberry 53 Grande',270000,4,6),(17,NULL,_binary '',NULL,NULL,'Son Burberry Kisses Grande',650000,5,6),(18,NULL,_binary '',NULL,NULL,'Son Giorgio Armani Ecstasy Shine',130000,5,6),(19,NULL,_binary '',NULL,NULL,'Son Kem Li Ysl',450000,5,7),(20,NULL,_binary '',NULL,NULL,'Lancome Deep Attraction',230000,5,7),(21,NULL,_binary '',NULL,NULL,'Louboutin Torerra',310000,6,7),(22,NULL,_binary '',NULL,NULL,'Son Torerra',70000,6,7),(23,NULL,_binary '',NULL,NULL,'Tarte Tarteist Amazonian Dlaye',270000,6,7),(24,NULL,_binary '',NULL,NULL,'Taneige Perfect Makeup ',410000,6,7);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,_binary '',NULL,'Chăm Sóc Da'),(2,_binary '',NULL,'Son Môi'),(3,_binary '',NULL,'Dầu Gội Đầu'),(4,_binary '',NULL,'Nước Hoa'),(5,_binary '','','Sữa Tắm'),(6,_binary '',NULL,'Dưỡng Da Tay');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `promotion_product_relation`
--

LOCK TABLES `promotion_product_relation` WRITE;
/*!40000 ALTER TABLE `promotion_product_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,NULL,_binary '','Neutrogena',NULL),(2,NULL,_binary '','Etude House',NULL),(3,NULL,_binary '','Evoluderm',NULL),(4,NULL,_binary '','Sivanna Colors',NULL),(5,NULL,_binary '','Holika Holika',NULL),(6,NULL,_binary '','Physician Formula',NULL),(7,NULL,_binary '','Rebirth',NULL);
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,'quang nam',NULL,'phamduythanh19998@gmail.com','pham duy thanh','0362295861'),(2,'H1/7 K33 Nam Cao',NULL,'phamduythanh19998@gmail.com','pham duy thanh','362295861'),(3,'H1/7 K33 Nam Cao',NULL,'phamduythanh19998@gmail.com','pham duy thanh','0362295861'),(4,'H1/7 K33 Nam Cao',NULL,'phamduythanh19998@gmail.com','pham duy thanh','362295861');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 23:01:02

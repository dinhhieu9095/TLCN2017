-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: flight
-- ------------------------------------------------------
-- Server version	5.6.26-enterprise-commercial-advanced-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(15) DEFAULT NULL,
  `lastName` varchar(15) DEFAULT NULL,
  `password` varchar(15) NOT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `customerID` (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'nhan','Nguyen','nhanhkt','Nu',21,'Ho Chi Minh','0975814912','dinhhieu@gmail.com'),(19,'son','tung','hero9095','Nam',21,'Ho chi minh','123234','mtp@gmail.com'),(26,'ronaldo','cristiano','hero9095','Nam',34,'Ho chi minh','123234','ronaldo@gmail.com'),(27,'bi','asd','asdasd','Nam',34,'Ho chi minh','1231231','dinhhieu@gmail.com'),(29,'tom','cruise','hero9095','Nam',34,'Ho chi minh','113911','tom@gmail.com'),(31,'hieu','nguyen','hero9095','Nam',21,'Ho chi minh','2123123','dinhhieu@gmail.com'),(32,'hieu','nguyen','hero9095','Nam',21,'Ho chi minh','1231231','dinhhieu'),(33,'hieu','nguyen','hero9095','Nam',21,'Ho chi minh','1231231','kaka'),(34,'Hieu','Nguyen Dinh','hero9095','Nam',21,'21','01686638450','nktn@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `flightID` int(11) NOT NULL AUTO_INCREMENT,
  `departTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `origin` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `numberOfSeats` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`flightID`),
  UNIQUE KEY `flightID` (`flightID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (1,'2016-12-25 11:02:38','HaNoi','HoChiMinh',100,100000),(2,'2016-12-30 11:02:38','HoChiMinh','HaNoi',110,200000),(3,'2016-12-25 11:02:38','Cantho','DaNang',10,100000),(4,'2016-12-25 11:02:38','KienGiang','NhaTrang',9,100000),(5,'2016-12-25 11:02:38','PhuQuoc','HoChiMinh',11,100000),(6,'2016-12-25 14:50:55','HaNoi','HoChiMinh',69,100000),(7,'2016-12-25 14:50:55','HaNoi','HoChiMinh',79,200000);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticketID` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_detailID` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`ticketID`),
  UNIQUE KEY `ticketID` (`ticketID`),
  KEY `typeID_idx` (`typeID`),
  KEY `ticket_detailID_idx` (`ticket_detailID`),
  CONSTRAINT `ticket_detailID` FOREIGN KEY (`ticket_detailID`) REFERENCES `ticket_detail` (`ticket_detailID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `typeID` FOREIGN KEY (`typeID`) REFERENCES `type` (`typeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (7,49,1,'phu van phu'),(8,49,1,'le trung nhat'),(9,49,2,'nguyen dinh hieu');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_detail`
--

DROP TABLE IF EXISTS `ticket_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_detail` (
  `ticket_detailID` int(11) NOT NULL AUTO_INCREMENT,
  `flightID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `totalclient` int(11) NOT NULL,
  `totalprice` varchar(15) DEFAULT NULL,
  `totaltax` varchar(15) DEFAULT NULL,
  `confirm` tinyint(4) DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_detailID`),
  UNIQUE KEY `unique_index` (`flightID`,`customerID`),
  KEY `customerID_idx` (`customerID`),
  CONSTRAINT `customerID1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `flightID1` FOREIGN KEY (`flightID`) REFERENCES `flight` (`flightID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_detail`
--

LOCK TABLES `ticket_detail` WRITE;
/*!40000 ALTER TABLE `ticket_detail` DISABLE KEYS */;
INSERT INTO `ticket_detail` VALUES (1,1,1,3,'300000','160000.0',1,'2015-12-31 17:00:00'),(2,2,19,2,'200000','100000.0',0,'2015-12-31 17:00:00'),(3,3,26,3,'300000','160000.0',0,'2015-12-31 17:00:00'),(4,4,31,3,'300000','160000.0',0,'2015-12-31 17:00:00'),(5,5,33,3,'300000','160000.0',0,'2015-12-31 17:00:00'),(6,6,19,3,'300000','160000.0',0,'2015-12-31 17:00:00'),(7,7,1,3,'300000','160000.0',1,'2016-01-01 17:00:00'),(49,1,34,3,'600000','320000.0',0,'2016-01-01 17:00:00');
/*!40000 ALTER TABLE `ticket_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `typeID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `tax` int(11) NOT NULL,
  PRIMARY KEY (`typeID`),
  UNIQUE KEY `typeID` (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'adult',60),(2,'child',40);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'flight'
--

--
-- Dumping routines for database 'flight'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-04 20:33:36

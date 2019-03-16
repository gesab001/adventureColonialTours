-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: cat
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `CustomerNum` char(4) NOT NULL,
  `LastName` char(30) NOT NULL,
  `FirstName` char(30) DEFAULT NULL,
  `Address` char(35) DEFAULT NULL,
  `City` char(35) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `PostalCode` char(5) DEFAULT NULL,
  `Phone` char(12) DEFAULT NULL,
  PRIMARY KEY (`CustomerNum`),
  UNIQUE KEY `customer_number_index` (`CustomerNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('101','Northfold','Liam','9 Old Mill Rd.','Londonderry','NH','03053','603-555-7563'),('102','Ocean','Arnold','2332 South St. Apt 3','Springfield','MA','01101','413-555-3212'),('103','Kasuma','Sujata','132 Main St. #1','East Hartford','CT','06108','860-555-0703'),('104','Goff','Ryan','164A South Bend Rd.','Lowell','MA','01854','781-555-8423'),('105','McLean','Kyle','345 Lower Ave.','Wolcott','NY','14590','585-555-5321'),('106','Morontoia','Joseph','156 Scholar St.','Johnston','RI','02919','401-555-4848'),('107','Marchand','Quinn','76 Cross Rd.','Bath','NH','03740','603-555-0456'),('108','Rulf','Uschi','32 Sheep Stop St.','Edinboro','PA','16412','814-555-5521'),('109','Caron','Jean Luc','10 Greenfield St.','Rome','ME','04963','207-555-9643'),('110','Bers','Martha','65 Granite St.','York','NY','14592','585-555-0111'),('112','Jones','Laura','373 Highland Ave.','Somerville','MA','02143','857-555-6258'),('115','Vaccari','Adam','1282 Ocean Walk','Ocean City','NJ','08226','609-555-5231'),('116','Murakami','Iris','7 Cherry Blossom St.','Weymouth','MA','02188','617-555-6665'),('119','Chau','Clement','18 Ark Ledge Ln.','Londonderry','VT','05148','802-555-3096'),('120','Gernowski','Sadie','24 Stump Rd.','Athens','ME','04912','207-555-4507'),('121','Bretton-Borak','Siam','10 Old Main St.','Cambridge','VT','05444','802-555-3443'),('122','Hefferson','Orlagh','132 South St. Apt 27','Manchester','NH','03101','603-555-3476'),('123','Barnett','Larry','25 Stag Rd.','Fairfield','CT','06824','860-555-9876'),('124','Busa','Karen','12 Foster St.','South Windsor','CT','06074','857-555-5532'),('125','Peterson','Becca','51 Fredrick St.','Albion','NY','14411','585-555-0900'),('126','Brown','Brianne','154 Central St.','Vernon','CT','06066','860-555-3234');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Guide`
--

DROP TABLE IF EXISTS `Guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Guide` (
  `GuideNum` char(4) NOT NULL,
  `LastName` char(15) DEFAULT NULL,
  `FirstName` char(15) DEFAULT NULL,
  `Address` char(25) DEFAULT NULL,
  `City` char(25) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `PostalCode` char(5) DEFAULT NULL,
  `PhoneNum` char(12) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  PRIMARY KEY (`GuideNum`),
  UNIQUE KEY `guide_number_index` (`GuideNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Guide`
--

LOCK TABLES `Guide` WRITE;
/*!40000 ALTER TABLE `Guide` DISABLE KEYS */;
INSERT INTO `Guide` VALUES ('AM01','Abrams','Miles','54 Quest Ave.','Williamsburg','MA','01096','617-555-6032','2012-06-03'),('BR01','Boyers','Rita','140 Oakton Rd.','Jaffrey','NH','03452','603-555-2134','2012-03-04'),('DH01','Devon','Harley','25 Old Ranch Rd.','Sunderland','MA','01375','781-555-7767','2012-01-08'),('GZ01','Gregory','Zach','7 Moose Head Rd.','Dummer','NH','03588','603-555-8765','2012-11-04'),('KS01','Kiley','Susan','943 Oakton Rd.','Jaffrey','NH','03452','603-555-1230','2013-04-08'),('KS02','Kelly','Sam','9 Congaree Ave.','Fraconia','NH','03580','603-555-0003','2013-06-10'),('MR01','Marston','Ray','24 Shenandoah Rd.','Springfield','MA','01101','781-555-2323','2015-09-14'),('RH01','Rowan','Hal','12 Heather Rd.','Mount Desert','ME','04660','207-555-9009','2014-06-02'),('SL01','Stevens','Lori','15 Riverton Rd.','Coventry','VT','05825','802-555-3339','2014-09-05'),('UG01','Unser','Glory','342 Pineview St.','Danbury','CT','06810','203-555-8534','2015-02-02');
/*!40000 ALTER TABLE `Guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Guides_Paddling`
--

DROP TABLE IF EXISTS `Guides_Paddling`;
/*!50001 DROP VIEW IF EXISTS `Guides_Paddling`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Guides_Paddling` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reservation` (
  `ReservationID` char(7) NOT NULL,
  `TripID` decimal(3,0) DEFAULT NULL,
  `TripDate` date DEFAULT NULL,
  `NumPersons` decimal(3,0) DEFAULT NULL,
  `TripPrice` decimal(6,2) DEFAULT NULL,
  `OtherFees` decimal(6,2) DEFAULT NULL,
  `CustomerNum` char(4) DEFAULT NULL,
  PRIMARY KEY (`ReservationID`),
  UNIQUE KEY `PK_Reservation_ID` (`ReservationID`),
  UNIQUE KEY `reservation_id_index` (`ReservationID`),
  KEY `FK_TripID` (`TripID`),
  KEY `FK_CustomerNum` (`CustomerNum`),
  CONSTRAINT `FK_CustomerNum` FOREIGN KEY (`CustomerNum`) REFERENCES `Customer` (`CustomerNum`),
  CONSTRAINT `FK_TripID` FOREIGN KEY (`TripID`) REFERENCES `Trip` (`TripID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
INSERT INTO `Reservation` VALUES ('1600001',40,'2016-03-26',2,55.00,0.00,'101'),('1600002',21,'2016-06-08',2,95.00,0.00,'101'),('1600003',28,'2016-09-12',1,35.00,0.00,'103'),('1600004',26,'2016-10-16',4,45.00,15.00,'104'),('1600005',39,'2016-06-25',5,55.00,0.00,'105'),('1600006',32,'2016-06-18',1,80.00,20.00,'106'),('1600007',22,'2016-07-09',8,75.00,10.00,'107'),('1600008',28,'2016-09-12',2,35.00,0.00,'108'),('1600009',38,'2016-09-11',2,90.00,40.00,'109'),('1600010',2,'2016-05-14',3,25.00,0.00,'102'),('1600011',3,'2016-09-15',3,25.00,0.00,'102'),('1600012',1,'2016-06-12',4,15.00,0.00,'115'),('1600013',8,'2016-07-09',1,20.00,5.00,'116'),('1600014',12,'2016-10-01',2,40.00,5.00,'119'),('1600015',10,'2016-07-23',1,20.00,0.00,'120'),('1600016',11,'2016-07-23',6,75.00,15.00,'121'),('1600017',39,'2016-06-18',3,20.00,5.00,'122'),('1600018',38,'2016-09-18',4,85.00,15.00,'126'),('1600019',25,'2016-08-29',2,110.00,25.00,'124'),('1600020',28,'2016-08-27',2,35.00,10.00,'124'),('1600021',32,'2016-06-11',3,90.00,20.00,'112'),('1600022',21,'2016-06-08',1,95.00,25.00,'119'),('1600024',38,'2016-09-11',1,70.00,30.00,'121'),('1600025',38,'2016-09-11',2,70.00,45.00,'125'),('1600026',12,'2016-10-01',2,40.00,0.00,'126'),('1600029',4,'2016-09-19',4,105.00,25.00,'120'),('1600030',15,'2016-07-25',6,60.00,15.00,'104');
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trip`
--

DROP TABLE IF EXISTS `Trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Trip` (
  `TripID` decimal(3,0) NOT NULL,
  `TripName` char(75) DEFAULT NULL,
  `StartLocation` char(50) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Distance` decimal(4,0) DEFAULT NULL,
  `MaxGrpSize` decimal(4,0) DEFAULT NULL,
  `TripType` char(20) DEFAULT NULL,
  `Season` char(20) DEFAULT NULL,
  PRIMARY KEY (`TripID`),
  UNIQUE KEY `trip_id_index` (`TripID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trip`
--

LOCK TABLES `Trip` WRITE;
/*!40000 ALTER TABLE `Trip` DISABLE KEYS */;
INSERT INTO `Trip` VALUES (1,'Arethusa Falls','Harts Location','NH',5,10,'Hiking','Summer'),(2,'Mt Ascutney - North Peak','Weathersfield','VT',5,6,'Hiking','Late Spring'),(3,'Mt Ascutney - West Peak','Weathersfield','VT',6,10,'Hiking','Early Fall'),(4,'Bradbury Mountain Ride','Lewiston-Auburn','ME',25,8,'Biking','Early Fall'),(5,'Baldpate Mountain','North Newry','ME',6,10,'Hiking','Late Spring'),(6,'Blueberry Mountain','Batchelders Grant','ME',8,8,'Hiking','Early Fall'),(7,'Bloomfield - Maidstone','Bloomfield','CT',10,6,'Paddling','Late Spring'),(8,'Black Pond','Lincoln','NH',8,12,'Hiking','Summer'),(9,'Big Rock Cave','Tamworth','NH',6,10,'Hiking','Summer'),(10,'Mt. Cardigan - Firescrew','Orange','NH',7,8,'Hiking','Summer'),(11,'Chocorua Lake Tour','Tamworth','NH',12,15,'Paddling','Summer'),(12,'Cadillac Mountain Ride','Bar Harbor','ME',8,18,'Biking','Early Fall'),(13,'Cadillac Mountain','Bar Harbor','ME',7,8,'Hiking','Late Spring'),(14,'Cannon Mtn','Franconia','NH',6,6,'Hiking','Early Fall'),(15,'Crawford Path Presidentials Hike','Crawford Notch','NH',16,4,'Hiking','Summer'),(16,'Cherry Pond','Whitefield','NH',6,16,'Hiking','Spring'),(17,'Huguenot Head Hike','Bar Harbor','ME',5,10,'Hiking','Early Fall'),(18,'Low Bald Spot Hike','Pinkam Notch','NH',8,6,'Hiking','Early Fall'),(19,'Masons Farm','North Stratford','CT',12,7,'Paddling','Late Spring'),(20,'Lake Mephremagog Tour','Newport','VT',8,15,'Paddling','Late Spring'),(21,'Long Pond','Rutland','MA',8,12,'Hiking','Summer'),(22,'Long Pond Tour','Greenville','ME',12,10,'Paddling','Summer'),(23,'Lower Pond Tour','Poland','ME',8,15,'Paddling','Late Spring'),(24,'Mt Adams','Randolph','NH',9,6,'Hiking','Summer'),(25,'Mount Battie Ride','Camden','ME',20,8,'Biking','Early Fall'),(26,'Mount Cardigan Hike','Cardigan','NH',4,16,'Hiking','Late Fall'),(27,'Mt. Chocorua','Albany','NH',6,10,'Hiking','Spring'),(28,'Mount Garfield Hike','Woodstock','NH',5,10,'Hiking','Early Fall'),(29,'Metacomet-Monadnock Trail Hike','Pelham','MA',10,12,'Hiking','Late Spring'),(30,'McLennan Reservation Hike','Tyringham','MA',6,16,'Hiking','Summer'),(31,'Missisquoi River - VT','Lowell','VT',12,10,'Paddling','Summer'),(32,'Northern Forest Canoe Trail','Stark','NH',15,10,'Paddling','Summer'),(33,'Park Loop Ride','Mount Desert Island','ME',27,8,'Biking','Late Spring'),(34,'Pontook Reservoir Tour','Dummer','NH',15,14,'Paddling','Late Spring'),(35,'Pisgah State Park Ride','Northborough','NH',12,10,'Biking','Summer'),(36,'Pondicherry Trail Ride','White Mountains','NH',15,16,'Biking','Late Spring'),(37,'Seal Beach Harbor','Bar Harbor','ME',5,16,'Hiking','Early Spring'),(38,'Sawyer River Ride','Mount Carrigain','NH',10,18,'Biking','Early Fall'),(39,'Welch and Dickey Mountains Hike','Thorton','NH',5,10,'Hiking','Summer'),(40,'Wachusett Mountain','Princeton','MA',8,8,'Hiking','Early Spring'),(41,'Westfield River Loop','Fort Fairfield','ME',20,10,'Biking','Late Spring');
/*!40000 ALTER TABLE `Trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TripGuides`
--

DROP TABLE IF EXISTS `TripGuides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TripGuides` (
  `TripID` decimal(3,0) NOT NULL,
  `GuideNum` char(4) NOT NULL,
  PRIMARY KEY (`TripID`,`GuideNum`),
  KEY `FK_GuideNum` (`GuideNum`),
  CONSTRAINT `FK_GuideNum` FOREIGN KEY (`GuideNum`) REFERENCES `Guide` (`GuideNum`),
  CONSTRAINT `FK_Trip_ID` FOREIGN KEY (`TripID`) REFERENCES `Trip` (`TripID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TripGuides`
--

LOCK TABLES `TripGuides` WRITE;
/*!40000 ALTER TABLE `TripGuides` DISABLE KEYS */;
INSERT INTO `TripGuides` VALUES (2,'AM01'),(21,'AM01'),(30,'AM01'),(4,'BR01'),(8,'BR01'),(9,'BR01'),(12,'BR01'),(24,'BR01'),(25,'BR01'),(28,'BR01'),(39,'BR01'),(41,'BR01'),(11,'DH01'),(19,'DH01'),(23,'DH01'),(29,'DH01'),(40,'DH01'),(1,'GZ01'),(4,'GZ01'),(10,'GZ01'),(15,'GZ01'),(26,'GZ01'),(27,'GZ01'),(35,'GZ01'),(5,'KS01'),(11,'KS01'),(32,'KS01'),(34,'KS01'),(14,'KS02'),(16,'KS02'),(18,'KS02'),(36,'KS02'),(38,'KS02'),(1,'RH01'),(6,'RH01'),(13,'RH01'),(17,'RH01'),(37,'RH01'),(2,'SL01'),(3,'SL01'),(7,'SL01'),(20,'SL01'),(23,'SL01'),(31,'SL01'),(5,'UG01'),(11,'UG01'),(22,'UG01'),(33,'UG01');
/*!40000 ALTER TABLE `TripGuides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Trips_in_states`
--

DROP TABLE IF EXISTS `Trips_in_states`;
/*!50001 DROP VIEW IF EXISTS `Trips_in_states`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Trips_in_states` AS SELECT 
 1 AS `State`,
 1 AS `COUNT(State)`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'cat'
--
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN 
DECLARE varAvgDistance decimal(4,0); 
DECLARE varMessage varchar(255);
SELECT AVG(Distance) INTO varAvgDistance 
FROM Trip WHERE TripType = varTripType 
AND TripID IN (SELECT TripID FROM TripGuides 
WHERE GuideNum=varGuideNum); 
IF varAvgDistance > 0
THEN SET varMessage = CONCAT ('The average distance for this combination of the trip type and guide is ', varAvgDistance);
ELSE
SET varMessage = CONCAT('This combination of the trip type and guide does not exist ');
END IF;
RETURN varMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide1`(varTripName char(75), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN DECLARE varTripName char(75); SELECT TripName INTO varTripName FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('The trip name for ', varTripID, ' is ', varTripName); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide10`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN 
DECLARE varAvgDistance decimal(4,0); 
DECLARE varMessage varchar(255);
SELECT AVG(Distance) INTO varAvgDistance 
FROM Trip WHERE TripType = varTripType 
AND TripID IN (SELECT TripID FROM TripGuides 
WHERE GuideNum=varGuideNum); 
IF varAvgDistance > 0
THEN SET varMessage = CONCAT ('The average distance for this combination of the trip type and guide is ', varAvgDistance);
END IF;
RETURN varMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide11` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide11`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN 
DECLARE varAvgDistance decimal(4,0); 
DECLARE varMessage varchar(255);
SELECT AVG(Distance) INTO varAvgDistance 
FROM Trip WHERE TripType = varTripType 
AND TripID IN (SELECT TripID FROM TripGuides 
WHERE GuideNum=varGuideNum); 
IF varAvgDistance > 0
THEN SET varMessage = CONCAT ('The average distance for this combination of the trip type and guide is ', varAvgDistance);
ELSE
SET varMessage = CONCAT('The average distance for this combination of the trip type and guide is ');
END IF;
RETURN varMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide12` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide12`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN 
DECLARE varAvgDistance decimal(4,0); 
DECLARE varMessage varchar(255);
SELECT AVG(Distance) INTO varAvgDistance 
FROM Trip WHERE TripType = varTripType 
AND TripID IN (SELECT TripID FROM TripGuides 
WHERE GuideNum=varGuideNum); 
IF varAvgDistance > 0
THEN SET varMessage = CONCAT ('The average distance for this combination of the trip type and guide is ', varAvgDistance);
ELSE
SET varMessage = CONCAT('This combination of the trip type and guide does not exist ');
END IF;
RETURN varMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide2`(varTripName char(75), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN DECLARE varAvgDistance decimal(4,0); SELECT AVG(Distance) INTO varAvgDistance FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('The trip name for ', varTripID, ' is ', varTripName); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide3`(varTripName char(75), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN DECLARE varAvgDistance decimal(4,0); SELECT AVG(Distance) INTO varAvgDistance FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('The trip average distance for ', varTripID, ' is ', varAvgDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide4`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN DECLARE varAvgDistance decimal(4,0); SELECT AVG(Distance) INTO varAvgDistance FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('The trip average distance for ', varTripID, ' is ', varAvgDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide5`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN DECLARE varAvgDistance decimal(4,0); SELECT AVG(Distance) INTO varAvgDistance FROM Trip WHERE TripType = varTripType AND TripID IN (SELECT TripID FROM TripGuides WHERE GuideNum=varGuideNum); RETURN CONCAT ('The trip average distance for ', varTripID, ' is ', varAvgDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide6`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN DECLARE varAvgDistance decimal(4,0); SELECT AVG(Distance) INTO varAvgDistance FROM Trip WHERE TripType = varTripType AND TripID IN (SELECT TripID FROM TripGuides WHERE GuideNum=varGuideNum); RETURN CONCAT ('The trip average distance for ', TripID, ' is ', varAvgDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide7` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide7`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN DECLARE varAvgDistance decimal(4,0); SELECT AVG(Distance) INTO varAvgDistance FROM Trip WHERE TripType = varTripType AND TripID IN (SELECT TripID FROM TripGuides WHERE GuideNum=varGuideNum); RETURN CONCAT ('The average distance for this combination of the trip type and guide is ', varAvgDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide8`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN 
DECLARE varAvgDistance decimal(4,0); 
DECLARE varMessage varchar(255);
SELECT AVG(Distance) INTO varAvgDistance 
FROM Trip WHERE TripType = varTripType 
AND TripID IN (SELECT TripID FROM TripGuides 
WHERE GuideNum=varGuideNum); 
SET varMessage = CONCAT ('The average distance for this combination of the trip type and guide is ', varAvgDistance);
RETURN varMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `AvgDist_TripType_Guide9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgDist_TripType_Guide9`(varTripType char(20), varGuideNum char(4)) RETURNS varchar(255) CHARSET latin1
BEGIN 
DECLARE varAvgDistance decimal(4,0); 
DECLARE varMessage varchar(255);
SELECT AVG(Distance) INTO varAvgDistance 
FROM Trip WHERE TripType = varTripType 
AND TripID IN (SELECT TripID FROM TripGuides 
WHERE GuideNum=varGuideNum); 
IF varAvgDistance > 0
THEN SET varMessage = CONCAT ('The average distance for this combination of the trip type and guide is ', varAvgDistance);
RETURN varMessage;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DisplayTripDistance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DisplayTripDistance`(varTripID decimal(3,0)) RETURNS char(75) CHARSET latin1
BEGIN DECLARE varDistance decimal(4,0); SELECT Distance into varDistance FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('The average distance for this combination of trip type and guide  is ', varDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DisplayTripDistance1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DisplayTripDistance1`(varTripID decimal(3,0)) RETURNS char(75) CHARSET latin1
BEGIN DECLARE varDistance decimal(4,0); SELECT Trip.Distance into varDistance FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('The average distance for this combination of trip type and guide  is ', varDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DisplayTripDistance2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DisplayTripDistance2`(varTripID decimal(3,0)) RETURNS char(75) CHARSET latin1
BEGIN DECLARE varDistance decimal(4,0); SELECT Trip.Distance into varDistance FROM Trip, Guide WHERE TripID = varTripID; RETURN CONCAT ('The average distance for this combination of trip type and guide  is ', varDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DisplayTripDistance3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DisplayTripDistance3`(varTripID decimal(3,0), varGuideNum char(4)) RETURNS char(75) CHARSET latin1
BEGIN DECLARE varDistance decimal(4,0); SELECT Trip.Distance into varDistance FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('The average distance for this combination of trip type and guide  is ', varDistance); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DisplayTripDistance4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DisplayTripDistance4`(varTripID decimal(3,0), varGuideNum char(4)) RETURNS char(75) CHARSET latin1
BEGIN DECLARE varDistance decimal(4,0); SELECT Trip.Distance into varDistance FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('The average distance for this combination of trip type and guide  is ', AVG(varDistance)); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DisplayTripID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DisplayTripID`(varState char(2)) RETURNS decimal(3,0)
BEGIN DECLARE varTripID decimal(3,0); SELECT TripID into varTripID FROM Trip WHERE State = varState; RETURN CONCAT ('TripID is ', varTripID); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DisplayTripName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DisplayTripName`(varTripID decimal(3,0)) RETURNS char(75) CHARSET latin1
BEGIN DECLARE varTripName char(75); SELECT TripName into varTripName FROM Trip WHERE TripID = varTripID; RETURN CONCAT ('TripName is ', varTripName); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display`()
BEGIN SELECT * FROM Guide; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display1`(p_GuideNum text)
BEGIN SELECT * FROM Guide; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display2`(p_GuideNum text)
BEGIN SELECT * FROM Guide; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display3`(p_GuideNum text)
BEGIN SELECT FirstName, LastName FROM Guide; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display4`(p_GuideNum text)
BEGIN SELECT FirstName, LastName FROM Guide WHERE GuideNum = p_GuideNum; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display5`(p_GuideNum text)
BEGIN SELECT CONCAT ("The guide's full name is", FirstName, LastName) FROM Guide WHERE GuideNum = p_GuideNum; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display6`(p_GuideNum text)
BEGIN SELECT CONCAT ("The guide's full name is ", FirstName, ' ', LastName) FROM Guide WHERE GuideNum = p_GuideNum; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display7` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display7`(p_GuideNum text)
BEGIN SELECT CONCAT ("The guide's full name is ", "", FirstName, "", LastName) FROM Guide WHERE GuideNum = p_GuideNum; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display8`(p_GuideNum text)
BEGIN SELECT CONCAT ("The guide's full name is ", " ", FirstName, " ", LastName) FROM Guide WHERE GuideNum = p_GuideNum; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display9`(p_GuideNum text)
BEGIN SELECT CONCAT ("The guide's full name is ", " ", FirstName, " ", LastName) AS 'Guide Name' FROM Guide WHERE GuideNum = p_GuideNum; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DisplayGuideName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DisplayGuideName`(p_GuideNum text)
BEGIN SELECT CONCAT ("The guide's full name is ", " ", FirstName, " ", LastName) AS 'Guide Name'
FROM Guide WHERE GuideNum = p_GuideNum; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShowReservationInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowReservationInfo`(p_ReservationID int)
BEGIN SELECT Reservation.CustomerNum, Customer.LastName, Reservation.NumPersons
FROM Reservation, Customer WHERE Reservation.ReservationID = p_ReservationID 
AND Reservation.CustomerNum = Customer.CustomerNum; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateMaxGrpSize` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateMaxGrpSize`(varTripID decimal(3,0), varMaxGrpSize decimal(4,0))
UPDATE Trip SET MaxGrpSize = varMaxGrpSize WHERE TripID = varTripID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `Guides_Paddling`
--

/*!50001 DROP VIEW IF EXISTS `Guides_Paddling`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Guides_Paddling` AS select `Guide`.`FirstName` AS `FirstName`,`Guide`.`LastName` AS `LastName` from ((`TripGuides` join `Trip`) join `Guide`) where ((`TripGuides`.`GuideNum` = `Guide`.`GuideNum`) and (`TripGuides`.`TripID` = `Trip`.`TripID`) and (`Trip`.`State` = 'NH') and (`Trip`.`TripType` = 'Paddling')) order by `Guide`.`LastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Trips_in_states`
--

/*!50001 DROP VIEW IF EXISTS `Trips_in_states`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Trips_in_states` AS select `Trip`.`State` AS `State`,count(`Trip`.`State`) AS `COUNT(State)` from `Trip` group by `Trip`.`State` having (count(0) > 3) order by `Trip`.`State` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-29  6:25:42

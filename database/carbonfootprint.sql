-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: carbonfootprint
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `Country` varchar(255) NOT NULL,
  `Coal` double DEFAULT NULL,
  `Gas` double DEFAULT NULL,
  `Oil` double DEFAULT NULL,
  `Hydro` double DEFAULT NULL,
  `Renewable` double DEFAULT NULL,
  `Nuclear` double DEFAULT NULL,
  PRIMARY KEY (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('Albania',0,0,0,100,0,0),('Algeria',0,97.8,1.8,0.4,0,0),('Angola',0,0,46.8,53.2,0,0),('Argentina',2.9,47.7,13.8,29,2.5,4.1),('Armenia',0,42.4,0,25.7,0.1,31.8),('Australia',61.2,21.9,2,7.4,7.5,0),('Austria',8,8.8,1,66.6,14.6,0),('Azerbaijan',0,93.9,0.2,5.3,0.4,0),('Bahrain',0,100,0,0,0,0),('Bangladesh',2,82,14.7,1.1,0.3,0),('Belarus',0.1,98,1.1,0.3,0.4,0),('Belgium',6.2,27,0.3,0.4,16.6,47.2),('Benin',0,0,99.5,0,0.5,0),('Bolivia',0,70,2,25.7,2.3,0),('Bosnia and Herzegovina',62.8,0.2,0.3,36.7,0,0),('Botswana',95.8,0,4.2,0,0,0),('Brazil',4.5,13.7,6,63.2,9.9,2.6),('Brunei Darussalam',0,99,1,0,0,0),('Bulgaria',45.4,4.6,0.4,9.8,5.9,33.8),('Cambodia',28.2,0,10.7,60.5,0.6,0),('Cameroon',0,12.9,12.8,73.2,1,0),('Canada',9.9,9.4,1.2,58.3,4.5,16.4),('Chile',35.3,16.9,6.2,31.3,9.8,0),('China',72.6,2,0.2,18.6,4.1,2.3),('Colombia',10.2,15.3,0.2,71.1,3.1,0),('Congo, Dem. Rep.',0,0.1,0,99.9,0,0),('Congo, Rep.',0,45.3,0,54.7,0,0),('Costa Rica',0,0,10.2,65.7,24,0),('Cote d\'Ivoire',0,69.9,6.1,23.1,0.8,0),('Croatia',17.6,7.5,1,67,6.9,0),('Cuba',0,14.4,81.6,0.5,3.5,0),('Curacao',0,0,96.4,0,3.6,0),('Cyprus',0,0,92.7,0,7.3,0),('Czech Republic',51.5,1.9,0,2.2,8.5,35.7),('Denmark',34.4,6.5,1,0,55.8,0),('Dominican Republic',13.3,21.5,51.9,8.5,4.7,0),('Ecuador',0,13.3,37.5,47.1,2,0),('Egypt, Arab Rep.',0,78.7,12.2,8.1,0.9,0),('El Salvador',0,0,40.3,27.6,32.1,0),('Eritrea',0,0,99.5,0,0.5,0),('Estonia',87.4,0.6,0.3,0.2,10.9,0),('Ethiopia',0,0,0.1,95.6,4.3,0),('Finland',17.4,8.1,0.3,19.7,18.9,34.6),('France',2.2,2.3,0.3,11.3,5.1,78.4),('Gabon',0,38.9,27,33.6,0.5,0),('Georgia',0,19.6,0,80.4,0,0),('Germany',45.8,10,0.9,3.1,23,15.6),('Ghana',0,18.2,17.1,64.7,0,0),('Greece',51.1,13.5,11,8.9,15.3,0),('Guatemala',17.3,0,14.1,45.2,23.4,0),('Haiti',0,0,91.3,8.7,0,0),('Honduras',0.5,0,55.7,32.4,11.5,0),('Hong Kong SAR, China',76.2,23,0.6,0,0.2,0),('Hungary',20.8,14.4,0.2,1,9.7,53.3),('Iceland',0,0,0,71,28.9,0),('India',75.1,4.9,1.8,10.2,5.2,2.8),('Indonesia',52.6,24.6,11.3,6.6,4.8,0),('Iran, Islamic Rep.',0.2,71.3,21.7,5,0.1,1.6),('Iraq',0,21.9,73.7,4.3,0,0),('Ireland',24.9,49.6,0.7,2.7,21.8,0),('Israel',49.6,48.4,0.5,0,1.5,0),('Italy',16.7,33.7,5.1,21.1,22.3,0),('Jamaica',0,0,90.2,3.3,6.5,0),('Japan',33.7,40.6,11.2,7.9,6.1,0),('Jordan',0,7.1,92.5,0.3,0,0),('Kazakhstan',71.9,19.2,1,7.9,0,0),('Kenya',0,0,18.5,35.8,45.7,0),('Korea, Dem. People?s Rep.',24.1,0,3.3,72.6,0,0),('Korea, Rep.',42.4,23.9,3.2,0.5,1.1,28.7),('Kosovo',96.9,0,0.3,2.8,0,0),('Kuwait',0,33.7,66.3,0,0,0),('Kyrgyz Republic',7.4,0.8,0.6,91.3,0,0),('Latvia',0,45.5,0,38.8,15.8,0),('Lebanon',0,0,98.9,1.1,0,0),('Libya',0,53.7,46.3,0,0,0),('Lithuania',0.1,47.2,4.3,10.8,30,0),('Luxembourg',0,76.2,0,5.7,15.3,0),('Macedonia, FYR',69.5,3.6,2.8,22.5,1.6,0),('Malaysia',37.9,50.1,2.4,9.1,0.6,0),('Malta',0,0,96.7,0,3.3,0),('Mauritius',42.9,0,36.7,3.1,17.2,0),('Mexico',11.2,57,10.9,12.9,4.6,3.2),('Moldova',0,93.5,0.3,5.9,0.3,0),('Mongolia',92.3,0,4.5,0,3.2,0),('Montenegro',44.8,0,0,55.2,0,0),('Morocco',55,19.5,13.1,5.7,6.7,0),('Mozambique',0,8.8,0,91.2,0,0),('Myanmar',2,35.2,0.5,62.4,0,0),('Namibia',0,0,0.9,99.1,0,0),('Nepal',0,0,0,99.8,0.2,0),('Netherlands',31.3,49.8,1.8,0.1,11.2,4),('New Zealand',4.5,16.3,0,55.9,23.2,0),('Nicaragua',0,0,46.1,8.9,45,0),('Niger',71.6,0,27.8,0,0.6,0),('Nigeria',0,82.4,0,17.6,0,0),('Norway',0.1,1.8,0,96,1.7,0),('Oman',0,97.4,2.6,0,0,0),('Pakistan',0.2,25.1,39.7,29.8,0.4,4.8),('Panama',7.4,0,36.8,54.2,1.6,0),('Paraguay',0,0,0,100,0,0),('Peru',0.7,45.9,1.2,48.8,3.4,0),('Philippines',42.8,24.2,7.4,11.8,13.8,0),('Poland',83,3.4,1,1.4,11.1,0),('Portugal',23,13.2,2.6,30,30.8,0),('Qatar',0,100,0,0,0,0),('Romania',27.3,12.4,0.7,28.8,12.8,17.9),('Russian Federation',14.9,50.2,1,16.5,0.1,17),('Saudi Arabia',0,51.2,48.8,0,0,0),('Senegal',0,4.2,83.6,8.7,1.8,0),('Serbia',66.3,0.7,0,32.9,0.1,0),('Singapore',1.1,95.3,0.7,0,1.7,0),('Slovak Republic',12.4,6,1.1,15.5,7.4,57.1),('Slovenia',21.9,2.2,0.2,35.5,3,37.1),('South Africa',93,0,0.1,0.4,1,5.5),('South Sudan',0,0,99.6,0,0.4,0),('Spain',16.5,17.2,5.1,14.2,25.9,20.8),('Sri Lanka',25.7,0,35.1,36.5,2.7,0),('Sudan',0,0,21.7,78.3,0,0),('Suriname',0,0,37.7,62.3,0,0),('Sweden',0.6,0.3,0.2,41.5,14.3,42.3),('Switzerland',0,0.7,0.1,54.3,3.8,39.3),('Syrian Arab Republic',0,64.4,21.8,13.8,0,0),('Tajikistan',0,2.9,0,97.1,0,0),('Tanzania',0,42.2,15.5,41.6,0.6,0),('Thailand',21.6,68.3,1,3.2,5.9,0),('Togo',0,0,12,84.5,3.5,0),('Trinidad and Tobago',0,99.8,0.2,0,0,0),('Tunisia',0,94.2,1.8,0.3,2.8,0),('Turkey',30.3,47.9,0.9,16.1,4.8,0),('Turkmenistan',0,100,0,0,0,0),('Ukraine',38.7,7,0.1,4.7,0.9,48.6),('United Arab',0,98.4,1.3,0,0.3,0),('United Kingdom',30.4,30,0.5,1.8,17.7,19),('United States',39.7,26.9,0.9,6.1,6.9,19.2),('Uruguay',0,0,9.1,74.2,16.8,0),('Uzbekistan',4.1,74.2,0.4,21.4,0,0),('Venezuela, RB',0,17.7,14,68.3,0,0),('Vietnam',24.5,33.5,0.3,41.5,0.1,0),('Yemen, Rep.',0,38.6,61.4,0,0,0),('Zambia',0,0,2.8,97.2,0,0),('Zimbabwe',43.9,0,0.5,54.2,1.4,0);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world`
--

DROP TABLE IF EXISTS `world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world` (
  `Country` varchar(255) NOT NULL,
  `Coal` double DEFAULT NULL,
  `Gas` double DEFAULT NULL,
  `Oil` double DEFAULT NULL,
  `Hydro` double DEFAULT NULL,
  `Renewable` double DEFAULT NULL,
  `Nuclear` double DEFAULT NULL,
  PRIMARY KEY (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world`
--

LOCK TABLES `world` WRITE;
/*!40000 ALTER TABLE `world` DISABLE KEYS */;
INSERT INTO `world` VALUES ('East Asia & Pacific',60.6,13.5,2.2,15,4.2,3.8),('Europe & Central',24.1,24.3,1.3,16.6,10.5,22.4),('Latin America & Caribbean',6.5,26,10.6,46.5,6.4,1.9),('Middle East & North Afrika',3.4,64.1,28.8,2.6,0.4,0.3),('North America',35.7,24.6,1,12.9,6.6,18.9),('South Asia',65.7,9.1,5.2,11.6,4.6,2.8),('Sub-Saharan Africa',51.4,8.6,4.3,21.2,1.7,3),('World',40.7,21.6,4.1,16.2,6,10.6);
/*!40000 ALTER TABLE `world` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-08  8:37:39

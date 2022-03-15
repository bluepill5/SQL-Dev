-- Respaldo de la Bases de Datos del proyecto:
-- Base de Datos: creditos
-- Tablas: 
-- auditoria
-- cliente
-- credito
-- institucion
-- producto
-- reestriccion
-- tipo_tasa
--


CREATE DATABASE  IF NOT EXISTS `creditos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `creditos`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: creditos
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTION_REAL` varchar(255) DEFAULT NULL,
  `OLD_VAL` varchar(255) DEFAULT NULL,
  `NEW_VAL` varchar(255) DEFAULT NULL,
  `USER` varchar(255) DEFAULT NULL,
  `DATE_MOD` datetime DEFAULT (curdate()),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (1,'INSERT','','NOM5','root@localhost','2022-02-23 00:00:00'),(2,'INSERT','','NOM6','root@localhost','2022-02-23 00:00:00'),(3,'UPDATE','ABC1','ABC1','root@localhost','2022-02-23 00:00:00'),(4,'UPDATE','ABC1','ABC1','root@localhost','2022-03-07 00:00:00');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `INSTITUCION` varchar(6) NOT NULL,
  `FOLIO_CLIENTE` varchar(18) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `EDAD` int NOT NULL,
  `SALARIO` decimal(10,0) NOT NULL,
  `GENERO` enum('1','0') NOT NULL,
  `EMPLEO` enum('PUBLICO','PRIVADO','ASALARIADO') NOT NULL,
  PRIMARY KEY (`INSTITUCION`,`FOLIO_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('40012','CLIE1','JUAN',21,10000,'1','ASALARIADO'),('40012','CLIE10','MONICA',55,59654,'0','PRIVADO'),('40012','CLIE11','SANDRA',29,39792,'1','PUBLICO'),('40012','CLIE12','SOFIA',26,12340,'1','ASALARIADO'),('40012','CLIE13','RICARDO',45,69294,'1','PUBLICO'),('40012','CLIE14','ROBERTO',23,17752,'0','PRIVADO'),('40012','CLIE15','MANUEL',35,65404,'0','PUBLICO'),('40012','CLIE16','ALMA',54,32945,'0','PRIVADO'),('40012','CLIE17','EDUARDO',43,57924,'0','ASALARIADO'),('40012','CLIE18','LEONARDO',39,9939,'0','PUBLICO'),('40012','CLIE19','LUIS',26,71307,'0','PRIVADO'),('40012','CLIE2','PEDRO',30,15000,'1','ASALARIADO'),('40012','CLIE20','CECILIA',43,14367,'1','PUBLICO'),('40012','CLIE21','JUAN',38,9591,'1','ASALARIADO'),('40012','CLIE22','PEDRO',44,51166,'1','PUBLICO'),('40012','CLIE23','CARLOS',53,21399,'1','PRIVADO'),('40012','CLIE24','OMAR',36,47027,'1','PUBLICO'),('40012','CLIE25','JOSE',38,5931,'1','PRIVADO'),('40012','CLIE26','MANUEL',26,58890,'1','ASALARIADO'),('40012','CLIE27','ALMA',25,14814,'1','PUBLICO'),('40012','CLIE28','EDUARDO',42,21266,'0','PRIVADO'),('40012','CLIE29','LEONARDO',50,79404,'1','PRIVADO'),('40012','CLIE3','CARLOS',40,40000,'1','ASALARIADO'),('40012','CLIE30','LUIS',55,13743,'0','ASALARIADO'),('40012','CLIE31','CECILIA',28,76678,'1','PUBLICO'),('40012','CLIE32','CAMILA',46,23049,'0','PRIVADO'),('40012','CLIE33','MARIANA',33,22033,'0','PUBLICO'),('40012','CLIE34','GABRIELA',54,23834,'1','ASALARIADO'),('40012','CLIE35','MONICA',53,75437,'0','PUBLICO'),('40012','CLIE36','JUAN',51,76978,'1','PRIVADO'),('40012','CLIE37','PEDRO',38,40218,'1','PUBLICO'),('40012','CLIE38','CARLOS',32,18759,'0','PRIVADO'),('40012','CLIE39','OMAR',35,51530,'0','PUBLICO'),('40012','CLIE4','OMAR',24,56316,'1','PUBLICO'),('40012','CLIE40','MANUEL',53,69090,'0','ASALARIADO'),('40012','CLIE41','ALMA',52,40829,'0','PUBLICO'),('40012','CLIE42','EDUARDO',54,45857,'0','PRIVADO'),('40012','CLIE43','LEONARDO',25,37966,'1','PUBLICO'),('40012','CLIE44','LUIS',37,7441,'0','PRIVADO'),('40012','CLIE45','CECILIA',29,57936,'1','ASALARIADO'),('40012','CLIE46','CAMILA',24,60142,'1','PUBLICO'),('40012','CLIE47','MARIANA',28,60343,'0','ASALARIADO'),('40012','CLIE48','GABRIELA',21,28320,'0','PUBLICO'),('40012','CLIE49','MONICA',31,52602,'1','PRIVADO'),('40012','CLIE5','JORGE',22,76028,'1','ASALARIADO'),('40012','CLIE6','ALEJANDRA',49,8814,'0','PUBLICO'),('40012','CLIE7','MARIA',47,30278,'0','PRIVADO'),('40012','CLIE8','MARIANA',31,28534,'1','ASALARIADO'),('40012','CLIE9','GABRIELA',31,60272,'1','PUBLICO'),('40012','CLIENTE_1','PEDRO',21,15000,'0','ASALARIADO'),('40012','CLIENTE_2','JUAN',28,18000,'0','ASALARIADO'),('40012','CLIENTE_3','LUIS',34,20000,'0','ASALARIADO'),('40021','CLIE1','SANDRA',31,9047,'0','PUBLICO'),('40021','CLIE10','JUAN',44,49630,'0','PUBLICO'),('40021','CLIE11','PEDRO',40,49826,'0','PRIVADO'),('40021','CLIE12','CARLOS',48,20328,'1','PUBLICO'),('40021','CLIE13','OMAR',23,57636,'1','PRIVADO'),('40021','CLIE14','PEDRO',46,52155,'0','ASALARIADO'),('40021','CLIE15','CARLOS',30,38750,'1','PUBLICO'),('40021','CLIE16','OMAR',25,76051,'0','PRIVADO'),('40021','CLIE17','MANUEL',25,72053,'0','PUBLICO'),('40021','CLIE18','ALMA',55,52396,'0','ASALARIADO'),('40021','CLIE19','EDUARDO',42,69657,'1','PUBLICO'),('40021','CLIE2','PEDRO',34,11621,'1','PRIVADO'),('40021','CLIE20','LEONARDO',28,35427,'0','PRIVADO'),('40021','CLIE21','LUIS',55,23931,'1','PUBLICO'),('40021','CLIE22','LAURA',53,49243,'0','ASALARIADO'),('40021','CLIE23','LORENA',43,50605,'1','PUBLICO'),('40021','CLIE24','ROBERTO',37,33293,'1','PRIVADO'),('40021','CLIE25','MANUEL',35,12995,'0','PUBLICO'),('40021','CLIE26','ALMA',37,44368,'1','ASALARIADO'),('40021','CLIE27','EDUARDO',35,58813,'0','PUBLICO'),('40021','CLIE28','LEONARDO',27,14772,'0','PRIVADO'),('40021','CLIE29','LEONARDO',49,47995,'1','ASALARIADO'),('40021','CLIE3','MANUEL',36,56398,'1','ASALARIADO'),('40021','CLIE30','LUIS',36,41739,'1','PUBLICO'),('40021','CLIE31','CECILIA',48,42902,'0','PRIVADO'),('40021','CLIE32','CAMILA',43,60461,'1','PUBLICO'),('40021','CLIE33','JUAN',31,57124,'1','PRIVADO'),('40021','CLIE34','PEDRO',39,67991,'0','ASALARIADO'),('40021','CLIE35','CARLOS',51,56758,'0','PUBLICO'),('40021','CLIE36','ROBERTO',53,78076,'0','PRIVADO'),('40021','CLIE37','MANUEL',27,44106,'1','ASALARIADO'),('40021','CLIE38','ALMA',43,62702,'1','PUBLICO'),('40021','CLIE39','EDUARDO',54,53600,'0','ASALARIADO'),('40021','CLIE4','ALMA',27,21755,'1','PUBLICO'),('40021','CLIE40','CECILIA',50,47050,'1','PUBLICO'),('40021','CLIE41','CAMILA',21,49755,'0','PRIVADO'),('40021','CLIE42','JUAN',51,16663,'1','PUBLICO'),('40021','CLIE43','PEDRO',50,60633,'0','PRIVADO'),('40021','CLIE44','CARLOS',51,69081,'0','ASALARIADO'),('40021','CLIE45','CECILIA',45,45435,'0','PUBLICO'),('40021','CLIE46','CAMILA',41,29485,'0','PRIVADO'),('40021','CLIE47','JUAN',45,12739,'1','ASALARIADO'),('40021','CLIE48','PEDRO',35,45107,'1','PUBLICO'),('40021','CLIE49','CARLOS',39,32345,'1','PRIVADO'),('40021','CLIE5','EDUARDO',29,49285,'1','PRIVADO'),('40021','CLIE6','LEONARDO',26,63257,'1','ASALARIADO'),('40021','CLIE7','LUIS',34,47070,'1','PUBLICO'),('40021','CLIE8','CECILIA',54,27030,'1','PRIVADO'),('40021','CLIE9','CAMILA',43,49226,'0','ASALARIADO');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credito`
--

DROP TABLE IF EXISTS `credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credito` (
  `INSTITUCION` varchar(6) NOT NULL,
  `FOLIO` varchar(50) NOT NULL,
  `ID_PRODUCTO` varchar(18) NOT NULL,
  `FOLIO_CLIENTE` varchar(18) NOT NULL,
  `SALDO` decimal(10,0) NOT NULL,
  `ATRASOS` int unsigned NOT NULL,
  `MONTO_EXIGIBLE` decimal(10,0) NOT NULL,
  `PAGO_REALIZADO` decimal(10,0) NOT NULL,
  `FECHA_INICIO` date NOT NULL,
  PRIMARY KEY (`INSTITUCION`,`FOLIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credito`
--

LOCK TABLES `credito` WRITE;
/*!40000 ALTER TABLE `credito` DISABLE KEYS */;
INSERT INTO `credito` VALUES ('40012','40012165?QL','PROD2','CLIE7',53277,0,7696,3342,'1990-10-28'),('40012','40012170@ON','PROD9','CLIE13',47845,0,5820,861,'1990-10-28'),('40012','40012181NY<','PROD3','CLIE40',88974,1,55822,8919,'1990-10-28'),('40012','40012198A=U','PROD9','CLIE33',68339,0,66955,7325,'1990-10-28'),('40012','40012199U@A','PROD8','CLIE42',80316,0,7813,3959,'1990-10-28'),('40012','40012218EAM','PROD6','CLIE20',9666,1,9430,7307,'1990-10-28'),('40012','40012256RVQ','PROD2','CLIE30',93795,0,84375,41382,'1990-10-28'),('40012','40012318BV=','PROD9','CLIE31',97952,1,54544,46182,'1990-10-28'),('40012','40012350JMG','PROD9','CLIE43',41925,1,19798,8965,'1990-10-28'),('40012','40012365?NO','PROD1','CLIE11',6933,1,6865,7,'1990-10-28'),('40012','40012409RFD','PROD4','CLIE5',30045,1,24614,46,'1990-10-28'),('40012','40012417IYQ','PROD8','CLIE40',1072,1,107,32,'1990-10-28'),('40012','40012429OAO','PROD2','CLIE15',13062,0,8701,3283,'1990-10-28'),('40012','40012438N=K','PROD2','CLIE37',79704,1,8514,1705,'1990-10-28'),('40012','40012476F<>','PROD3','CLIE11',47156,0,39270,29408,'1990-10-28'),('40012','40012481FI<','PROD3','CLIE1',97416,0,49930,45949,'1990-10-28'),('40012','40012483>WJ','PROD3','CLIE7',70386,0,14816,10957,'1990-10-28'),('40012','40012497GGG','PROD5','CLIE13',53094,1,25314,4177,'1990-10-28'),('40012','40012598EGN','PROD3','CLIE35',21744,1,13428,6757,'1990-10-28'),('40012','40012598QZP','PROD1','CLIE3',30063,0,9156,7197,'1990-10-28'),('40012','40012616?KE','PROD5','CLIE4',16956,1,11330,10342,'1990-10-28'),('40012','40012625ASF','PROD4','CLIE25',78349,1,8944,4065,'1990-10-28'),('40012','40012626?EA','PROD8','CLIE48',85821,0,10544,10130,'1990-10-28'),('40012','40012656EFM','PROD2','CLIE3',40971,0,20543,2105,'1990-10-28'),('40012','40012656OAH','PROD3','CLIE26',88896,1,62878,6716,'1990-10-28'),('40012','40012682SEF','PROD7','CLIE20',11345,1,6327,3567,'1990-10-28'),('40012','40012683=ZR','PROD9','CLIE3',39422,1,32867,18197,'1990-10-28'),('40012','40012710<NP','PROD9','CLIE15',44193,1,18354,17943,'1990-10-28'),('40012','40012715BA=','PROD2','CLIE15',24180,1,7467,760,'1990-10-28'),('40012','40012732A>U','PROD4','CLIE45',87894,1,512,259,'1990-10-28'),('40012','40012744@CB','PROD6','CLIE33',91436,0,1462,232,'1990-10-28'),('40012','40012746DF=','PROD8','CLIE35',88718,0,11940,5257,'1990-10-28'),('40012','40012782NDL','PROD11','CLIE33',4261,0,1884,962,'1990-10-28'),('40012','40012788=KB','PROD6','CLIE39',62352,0,31107,15819,'1990-10-28'),('40012','40012848PQG','PROD6','CLIE21',52069,0,25258,3954,'1990-10-28'),('40012','40012890>TO','PROD10','CLIE43',40401,0,19197,3752,'1990-10-28'),('40012','40012959BXF','PROD10','CLIE28',9046,1,6709,6565,'1990-10-28'),('40012','40012961HWK','PROD6','CLIE43',64567,0,27560,6041,'1990-10-28'),('40012','ABC1','PROD1','CLIE1',555,0,0,50,'2022-01-17'),('40012','ABC2','PROD2','CLIE1',10000,0,100,50,'2022-01-17'),('40012','ABC3','PROD3','CLIE1',10000,0,100,50,'2022-01-17'),('40012','ABC4','PROD1','CLIE2',10000,0,100,50,'2022-01-17'),('40012','ABC5','PROD2','CLIE2',10000,0,100,50,'2022-01-17'),('40012','ABC6','PROD3','CLIE2',10000,0,100,50,'2022-01-17'),('40012','ABC7','PROD4','CLIE2',10000,0,100,50,'2022-01-17'),('40012','NOM1','PROD1','CLIE1',9999999,0,100,50,'2022-01-17'),('40012','NOM2','PROD2','CLIE1',-999,0,100,50,'2022-01-17'),('40012','NOM3','PROD1','CLIE1',9999999,0,100,50,'2022-01-17'),('40012','NOM4','PROD2','CLIE1',-999,0,100,50,'2022-01-17'),('40012','NOM5','PROD1','CLIE1',9999999,0,100,50,'2022-01-17'),('40012','NOM6','PROD2','CLIE1',-999,0,100,50,'2022-01-17'),('40021','40021117>ZO','PROD3','CLIE44',90951,1,9348,4681,'1990-10-28'),('40021','40021121TLA','PROD10','CLIE30',85718,1,27222,18541,'1990-10-28'),('40021','40021125DHQ','PROD3','CLIE9',4749,1,1596,527,'1990-10-28'),('40021','40021167CHJ','PROD7','CLIE11',52287,1,39008,1542,'1990-10-28'),('40021','40021190@H=','PROD8','CLIE12',26975,1,19503,12605,'1990-10-28'),('40021','40021201>U>','PROD2','CLIE10',79750,0,28399,19980,'1990-10-28'),('40021','40021243??C','PROD3','CLIE7',22723,1,14661,6219,'1990-10-28'),('40021','40021291KRB','PROD6','CLIE33',27299,0,19069,16507,'1990-10-28'),('40021','40021307TYN','PROD5','CLIE19',19913,1,13004,10528,'1990-10-28'),('40021','40021310CVH','PROD1','CLIE20',33224,1,4356,1689,'1990-10-28'),('40021','40021318BNM','PROD7','CLIE34',84802,1,59520,55803,'1990-10-28'),('40021','40021370UYO','PROD10','CLIE44',70561,0,26728,19632,'1990-10-28'),('40021','40021379DNK','PROD6','CLIE25',63743,0,15722,4925,'1990-10-28'),('40021','40021450QT=','PROD6','CLIE6',51962,1,42787,39504,'1990-10-28'),('40021','40021450RZO','PROD4','CLIE45',55959,0,39114,32559,'1990-10-28'),('40021','40021453ACU','PROD4','CLIE41',51399,0,19769,4433,'1990-10-28'),('40021','40021458<P<','PROD5','CLIE8',37503,0,32016,29827,'1990-10-28'),('40021','40021483COK','PROD2','CLIE48',38867,1,36247,34007,'1990-10-28'),('40021','40021506?FJ','PROD4','CLIE21',89694,0,7783,3067,'1990-10-28'),('40021','40021512PA=','PROD9','CLIE15',16936,1,4327,323,'1990-10-28'),('40021','40021540GGM','PROD6','CLIE20',56631,1,26267,19,'1990-10-28'),('40021','40021541?HP','PROD11','CLIE30',18023,1,10913,10156,'1990-10-28'),('40021','40021602<WB','PROD2','CLIE13',99741,1,68325,6685,'1990-10-28'),('40021','40021645>VT','PROD11','CLIE3',64098,0,52004,6037,'1990-10-28'),('40021','40021681MUL','PROD10','CLIE46',89417,0,43714,33528,'1990-10-28'),('40021','40021700G?R','PROD6','CLIE37',42637,0,28127,5288,'1990-10-28'),('40021','40021704OAI','PROD6','CLIE12',25836,1,21441,289,'1990-10-28'),('40021','40021720OXE','PROD5','CLIE27',87846,0,82435,38612,'1990-10-28'),('40021','40021733HNB','PROD10','CLIE16',10338,1,2282,694,'1990-10-28'),('40021','40021792GLS','PROD3','CLIE26',27544,0,22409,13650,'1990-10-28'),('40021','40021896=OD','PROD5','CLIE27',59445,0,32347,30590,'1990-10-28'),('40021','40021904=P=','PROD1','CLIE21',59982,1,55675,1265,'1990-10-28'),('40021','40021906NU=','PROD10','CLIE26',67171,0,4101,766,'1990-10-28'),('40021','40021976EMI','PROD4','CLIE13',36249,0,6700,1855,'1990-10-28'),('40021','40021996BY@','PROD8','CLIE23',50807,0,20190,14320,'1990-10-28'),('40021','40021999HLR','PROD3','CLIE13',44992,0,24101,20405,'1990-10-28');
/*!40000 ALTER TABLE `credito` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_CREDITOS` BEFORE INSERT ON `credito` FOR EACH ROW BEGIN
    IF NEW.SALDO > 9999999 THEN
        SET NEW.SALDO = 9999999;
    ELSEIF NEW.SALDO < -999 THEN
        SET NEW.SALDO = -999;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_CREDITOS_AFTER` AFTER INSERT ON `credito` FOR EACH ROW BEGIN
    INSERT INTO AUDITORIA(ACTION_REAL, OLD_VAL, NEW_VAL, USER)
    VALUES ('INSERT', '', NEW.FOLIO, CURRENT_USER);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_INSTITUCIONES` AFTER UPDATE ON `credito` FOR EACH ROW BEGIN
    INSERT INTO AUDITORIA(ACTION_REAL, OLD_VAL, NEW_VAL, USER)
    VALUES ('UPDATE',  OLD.FOLIO, NEW.FOLIO, CURRENT_USER);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institucion` (
  `INSTITUCION` varchar(6) NOT NULL,
  `NOMBRE` varchar(25) NOT NULL,
  PRIMARY KEY (`INSTITUCION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES ('40012','BANCOMER'),('40021','HSBC'),('40058','BANREGIO'),('40072','BANORTE'),('40132','MULTIVA'),('40147','BANKAOOL');
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `INSTITUCION` varchar(6) NOT NULL,
  `ID_PRODUCTO` varchar(18) NOT NULL,
  `NOMBRE_PRODUCTO` varchar(50) NOT NULL,
  `TIPO_CREDITO` int unsigned NOT NULL,
  `TIPO_REESTRICCION` int unsigned NOT NULL,
  `TIPO_TASA` int unsigned NOT NULL,
  `COMISION` int unsigned NOT NULL,
  `FECHA_CONTRATO` date NOT NULL,
  PRIMARY KEY (`INSTITUCION`,`ID_PRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('40012','PROD1','PRODUCTO 1',1,0,1,1,'0000-00-00'),('40012','PROD10','PRODUCTO 10',1,0,1,0,'0000-00-00'),('40012','PROD11','PRODUCTO 11',1,0,1,0,'0000-00-00'),('40012','PROD2','PRODUCTO 2',1,0,1,1,'0000-00-00'),('40012','PROD3','PRODUCTO 3',1,0,1,0,'0000-00-00'),('40012','PROD4','PRODUCTO 4',0,0,1,0,'0000-00-00'),('40012','PROD5','PRODUCTO 5',1,0,1,0,'0000-00-00'),('40012','PROD6','PRODUCTO 6',0,0,1,1,'0000-00-00'),('40012','PROD7','PRODUCTO 7',0,0,1,0,'0000-00-00'),('40012','PROD8','PRODUCTO 8',0,0,1,1,'0000-00-00'),('40012','PROD9','PRODUCTO 9',1,0,1,0,'0000-00-00'),('40012','PRODUCTO_1','PRODUCTO 1',1,0,1,0,'2022-01-17'),('40012','PRODUCTO_2','PRODUCTO 2',1,0,1,0,'2022-01-17'),('40021','PROD1','PRODUCTO 1',1,0,1,1,'0000-00-00'),('40021','PROD10','PRODUCTO 10',0,0,1,0,'0000-00-00'),('40021','PROD11','PRODUCTO 11',1,0,1,0,'0000-00-00'),('40021','PROD2','PRODUCTO 2',1,0,1,0,'0000-00-00'),('40021','PROD3','PRODUCTO 3',0,0,1,0,'0000-00-00'),('40021','PROD4','PRODUCTO 4',1,0,1,1,'0000-00-00'),('40021','PROD5','PRODUCTO 5',0,0,1,1,'0000-00-00'),('40021','PROD6','PRODUCTO 6',1,0,1,1,'0000-00-00'),('40021','PROD7','PRODUCTO 7',1,0,1,1,'0000-00-00'),('40021','PROD8','PRODUCTO 8',1,0,1,0,'0000-00-00'),('40021','PROD9','PRODUCTO 9',0,0,1,1,'0000-00-00'),('40058','PROD1','PRODUCTO 1',0,0,1,1,'0000-00-00'),('40058','PROD10','PRODUCTO 10',0,0,1,1,'0000-00-00'),('40058','PROD11','PRODUCTO 11',0,0,1,0,'0000-00-00'),('40058','PROD2','PRODUCTO 2',1,0,1,1,'0000-00-00'),('40058','PROD3','PRODUCTO 3',0,0,1,0,'0000-00-00'),('40058','PROD4','PRODUCTO 4',0,0,1,0,'0000-00-00'),('40058','PROD5','PRODUCTO 5',1,0,1,0,'0000-00-00'),('40058','PROD6','PRODUCTO 6',1,0,1,1,'0000-00-00'),('40058','PROD7','PRODUCTO 7',1,0,1,1,'0000-00-00'),('40058','PROD8','PRODUCTO 8',0,0,1,1,'0000-00-00'),('40058','PROD9','PRODUCTO 9',1,0,1,1,'0000-00-00');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reestriccion`
--

DROP TABLE IF EXISTS `reestriccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reestriccion` (
  `TIPO_REESTRICCION` int unsigned NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  PRIMARY KEY (`TIPO_REESTRICCION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reestriccion`
--

LOCK TABLES `reestriccion` WRITE;
/*!40000 ALTER TABLE `reestriccion` DISABLE KEYS */;
INSERT INTO `reestriccion` VALUES (0,'SIN REESTRICCION'),(1,'PARA EMPLEADOS'),(2,'DEBEN SER ESTUDIANTES');
/*!40000 ALTER TABLE `reestriccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_tasa`
--

DROP TABLE IF EXISTS `tipo_tasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_tasa` (
  `TIPO_TASA` int unsigned NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  PRIMARY KEY (`TIPO_TASA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_tasa`
--

LOCK TABLES `tipo_tasa` WRITE;
/*!40000 ALTER TABLE `tipo_tasa` DISABLE KEYS */;
INSERT INTO `tipo_tasa` VALUES (0,'NO APLICA'),(1,'FIJA'),(2,'VARIABLE'),(3,'MIXTA');
/*!40000 ALTER TABLE `tipo_tasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'creditos'
--

--
-- Dumping routines for database 'creditos'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_ADD_INSTI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ADD_INSTI`(IN INSTI VARCHAR(6), IN NOM VARCHAR(25))
BEGIN
    INSERT INTO INSTITUCION (INSTITUCION, NOMBRE)
    VALUES (INSTI, NOM);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ORDENA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ORDENA`(INOUT PARAM_ORD VARCHAR(35), INOUT PARAM_ASC_DESC VARCHAR(35))
BEGIN
    SET @QUERY = CONCAT('SELECT * FROM credito ORDER BY ', PARAM_ORD, ' ', PARAM_ASC_DESC);
    PREPARE QUERY_ORDER FROM @QUERY;
    EXECUTE QUERY_ORDER;
    DEALLOCATE PREPARE QUERY_ORDER;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PROCEDIMIENTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PROCEDIMIENTOS`()
BEGIN
    SELECT 'HOLA MUNDO' AS BIENVENIDA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PROMEDIO_SALARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PROMEDIO_SALARIO`(OUT PARAM DECIMAL(5, 2))
BEGIN
    SELECT AVG(SALARIO) INTO PARAM
    FROM cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SUM_SALARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SUM_SALARIO`(OUT PARAM INT(5))
BEGIN
    SELECT SUM(SALARIO) INTO PARAM FROM cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 16:58:15

-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: examen2
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Fashion');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `categoria_idcategoria` int(11) NOT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `fk_producto_categoria_idx` (`categoria_idcategoria`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'playera nautica Act',256,'azul',1),(4,'playera nautica',256,'azul',1),(5,'Nombre Producto Prueba',200,'Descripcion Producto prueba',1),(6,'Nombre Producto Prueba Act',200,'Descripcion Producto prueba Act',1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 10:18:01
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cintegracion
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (8,'Categoria Actualizada 30_07_2019',NULL),(9,'PHP',NULL),(10,'Javascript',NULL),(12,'Java',NULL),(13,'Categoria Actualizada 30_07_2019',NULL),(14,'.NET',NULL),(15,'Groovy',NULL),(16,'J#',NULL),(111,'GG Cat\'egoria','GG'),(114,'GG Categoria','MG\'s'),(115,'Berenice Ramirez','Prueba'),(116,'GG Categoria','GG'),(117,'GG Categoria','MG\'s'),(118,'Berenice Ramirez','Prueba'),(119,'Berenice Ramirez','otro\'comen'),(120,'SSerge Categoria','ss'),(121,'GG Categoria','GG'),(122,'GG Categoria','GG'),(123,'GG Categoria','MG\'s'),(125,'SSerge Categoria','ss'),(126,'SSerge Categoria','ss'),(127,'GG Categoria','GG'),(128,'Categoria Nueva BR','Descripcion de categoria BR'),(130,'Super Sergio','Solo Super'),(131,'Cat actualizada BR','Descripcion de categoria BR actualizada'),(132,'Mauricio','Descripcion de la categoria Mauricio'),(134,'PHP No Existe GG','null'),(135,'PHP No existe BR','null'),(137,'php existe Serge','null'),(138,'php existe SSerge','null'),(139,'PHP No Existe MG','null'),(141,'PHP 2','PHP lenguaje nuevo '),(142,'Categoria 1','Categoria agregada por Berenice'),(143,'SUPER serge','hola'),(144,'BATMAN','hola'),(145,'Bootstrap','Estilos'),(147,'MGRIS2','MI CATEGORIA'),(148,'NRA Nueva Categoria',NULL),(149,'NRA Categoria con Comando',NULL),(151,'NRA Nueva Categoria',NULL),(152,'NRA Categoria con Comando',NULL),(154,'JJ Nueva Categoria',NULL),(155,'JJ Categoria con comando',NULL),(157,'NRA Nueva Categoria',NULL),(158,'NRA Categoria con Comando',NULL),(160,'NRA Nueva Categoria',NULL),(161,'NRA Categoria con Comando',NULL),(163,'NRA ---MOD--- 12345',NULL),(164,'JJ POSTMAN act',NULL),(165,'Categoria NR Rest TEST',NULL),(166,'Categoria GG Rest Test',NULL),(167,'Categoria JJ Rest Test',NULL),(168,'NRA ------ 12345',NULL),(169,'NRA Nueva Categoria',NULL),(170,'NRA Categoria con Comando',NULL),(173,'NRA Nueva Categoria',NULL),(174,'NRA Categoria con Comando',NULL),(176,'NRA Nueva Categoria',NULL),(177,'NRA Categoria con Comando',NULL),(179,'NRA Nueva Categoria',NULL),(180,'NRA Categoria con Comando',NULL),(182,'NRA Nueva Categoria',NULL),(183,'NRA Categoria con Comando',NULL),(185,'JJ OSTMAN',NULL),(186,'JJ Rest T',NULL),(187,'NRA ---11--- 12345',NULL),(188,'JJ OSMAN',NULL),(189,'Categoria NR 1Rest TEST',NULL),(190,'Categoria NR 2Rest TEST',NULL),(191,'Categoria NR 3Rest TEST',NULL),(192,'Categoria NR 4Rest TEST',NULL),(193,'Categoria NR 5Rest TEST',NULL),(194,'Categoria NR 6Rest TEST',NULL),(195,'Categoria NR 7Rest TEST',NULL),(196,'NRA Nueva Categoria','desc'),(197,'NRA Categoria con Comando','desc'),(199,'Categoria NR 8Rest TEST','......................11'),(200,'NRA ---1221--- 12345','....................'),(201,'JJ wlidfly ACT',NULL),(202,'CategoriaNRA','Categoria desde Rest ..'),(203,'Cat 100001','nueva categoria'),(204,'Cat 100002','N 2'),(205,'Cat 100004','N 2'),(206,'GG 1156','1156'),(207,'Cat 100005','aaaaaa'),(208,'Cat 100006','nueva categoria'),(209,'Cat 100007','dfsadf'),(210,'cat 100008',''),(213,'MyBatis GG Categoria',NULL),(214,'GG Hibernate Actualizado','GG Hibernate desc actualizada'),(215,'Categoria SuperSergio MyBatis Dic',NULL),(216,'Super Hibernate Actualizado','Hibernate Update'),(217,'MG Hibernate Actualizado','MG Hibernate Desc. Actualizada'),(218,'Categoria MG MyBatis Dic',NULL),(220,'Serge ReLoaded','SuperSergioReLoaded'),(224,'Categoria SuperSergio MyBatis Dic',NULL),(225,'Categoria SuperSergio MyBatis Dic',NULL),(226,'Categoria MG MyBatis Dic',NULL),(232,'SuperSerge Hinbernate','Himbernate Batman'),(233,'ACTUALIZADO RBRS','ACTUALIZADO DESCRIPCION RBRS'),(236,'python actualizado','intermedio'),(237,'Python','intermedio'),(239,'Python','intermedio'),(240,'Categoria Actualizada 30_07_2019','intermedio'),(241,'Python','intermedio'),(242,'Python','intermedio'),(243,'Python','intermedio'),(246,'Python','intermedio'),(247,'Python','intermedio'),(251,'Carlos 31072019','Descr GC'),(252,'Categoria Actualizada 30_07_2019','Categoria de JMVL'),(253,'ATLETISMO','DEPORTE'),(254,'Juanyk 31072019','Describe'),(257,'Estela','Trejo'),(258,'JMVL','Categoria 02_08_2019'),(259,'GG 02082019','DESC 02082019'),(260,'gggggg','ggggg'),(261,'nuevoooo','nuevoooo'),(262,'shunco','pruebas'),(263,'nuevoooosadf','nuevoooo'),(264,'ddd','ddd'),(265,'guardado','guardadoooo'),(266,'asfdsafasdf265','sadfad'),(267,'nueva','test nueva categoria'),(268,'nvljmvl','assad'),(269,'nueva 2','test 2'),(270,'jose manuel','jose manuel'),(271,'eee','eee'),(272,'nuevo 3','test 3'),(273,'asdfasdf121515','sadfadsf515'),(274,'nuevo 4','test 3'),(275,'eeeq','qw'),(276,'e','e'),(277,'carlos 1','charles'),(278,'Prueba','para ver si inserta'),(279,'Prodscto 3',NULL),(280,'','para ver si inserta'),(281,'Categoria Ivgos','Decripcion'),(282,'Categoria OM','Desc OM'),(283,'Categoria JACC','Descripcion JACC'),(284,'Categoria AD','Desc AD'),(285,'Categoria AB','Descripcion AB'),(286,'Categoria RSO','hi!'),(287,'Categoria GG','Desc GG'),(288,'Categoria MMH','Categoria MMH'),(289,'Categoria JC','Desc JC'),(290,'Alexis AA',NULL),(291,'Categoria FP','Desc Ja'),(292,'Categoria YCRD','hola'),(293,'Categoria OO','Desc OO'),(294,'jaz','mg'),(295,'Categoria GG 2','Desc GG'),(296,'CategoriaSIg','Decsssspcion'),(297,'Categoria CRD','hola'),(298,'Categoria GG 2','Desc GG'),(299,'Categoria xavier','Desc Ja'),(301,'','Categoria MMH'),(302,'Categoria CRD','hoo'),(303,'Categoria RSO','hi!'),(304,'Categoria AB','Descripcion AB'),(305,'Alexis AA','Desc AA'),(306,'Categoria AD','Desc AD'),(307,'Categoria GG 2','Desc GG'),(308,'CategoriaSIGFOX','Decsssspasadasdasdasdsacion'),(309,'Categoria RSO','hi!'),(310,'Categoria KM','Desc KM'),(311,'Alexis AA','Desc AA'),(312,'Hola de nuevo','Hola'),(313,'Otro','update'),(314,'Categoria AD','Desc AD'),(315,'Categoria AB','Descripcion AB'),(316,'Categoria xavier','Descp Javiern'),(317,'jaz','mg'),(318,'CategoriaSIGFOX','Decsssspasadasdasdangfngngngffnsdsacion'),(319,'Categoria OOB','Desc OOB'),(320,'jaz','mg'),(321,'CategoriaSIGFOX','Decsssspasadasdasdangfngngngffnsdsacion'),(322,'jaz','mg'),(323,'Categoria OOB','Desc OOB'),(324,'Categoria CRD','holii'),(325,'CategoriaSIGFOX','Decsssspasadasdasdangfngngngffnsdsacion'),(326,'categoria-IDVZ','the cake is a lie'),(327,'jaz','mg'),(328,'Categoria LL','Desc LL'),(329,'Categoria AD','Desc AD'),(330,'Categoria AD','Desc AD'),(331,'Categoria CRD','holii'),(332,'Categoria AD','Desc AD'),(333,'Categoria AD','Desc AD'),(334,'jaz','mg'),(336,'pruebapath api','Desdd'),(337,'CategoriaaaaSIGFOX','Decsssspasadasdasdangfngngngffnsdsacion'),(338,'Prueba2','Prueba2'),(339,'jaz','mg'),(341,'jaz','mg'),(342,'Categoria CRD','holii'),(343,'Categoria AD','Desc AD'),(344,'Categoria CRD','Citlalli'),(345,'Prueba3','Prueba3'),(346,'Prueba3','Prueba3'),(352,'CategoriActualizadaSIGFOX','Si se pudo XD'),(354,'Categoria corrected','Desc corrected'),(357,'Categoria RSO2','hi!'),(362,'Categoria RSO4','hi!!!!'),(363,'Categorcgsdfgia RSO4','hsdfi!!!!'),(364,'Categorcgsdfgia RSO4','hsdfi!!!!'),(369,'as11d','Da111sdasd');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apaterno` varchar(45) NOT NULL,
  `amaterno` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'TOMÁS','FRANCO','MARTE','FAMRET321654897'),(2,'Gerardo','Guerrero','Gomez','GUGG'),(3,'Berenice','Ramirez','Salinas','RASR921104'),(4,'Super Sergio','Q','C','SQC'),(5,'Batman new year','super update','super serge SOAP','qeqwe546545'),(6,'Jose Juan_1','Juarez','Rodriguez_1','JURJ860722L98'),(9,'Jose Juan','Juarez','Rodriguez','JURJ860722L98'),(11,'NRA','Rivera','Acosta','RIAN840617'),(12,'NRA Command','Rivera','Acosta','RIAN840617'),(14,'Jose Juan','Juarez','Rodriguez','JURJ860722L98'),(15,'Jose Juan','Juarez','Rodriguez','JURJ860722L98'),(16,'NRA','Rivera','Acosta','RIAN840617'),(17,'NRA Command','Rivera','Acosta','RIAN840617'),(19,'NRA','Rivera','Acosta','RIAN840617'),(20,'NRA Command','Rivera','Acosta','RIAN840617'),(22,'NRA','Rivera','Acosta','RIAN840617'),(23,'NRA Command','Rivera','Acosta','RIAN840617'),(25,'Jose Juan','Juarez','Rodriguez','JURJ860722L98'),(27,'Jose Juan','Juarez','Rodriguez','JURJ860722L98'),(29,'Jose Juan','Juarez','Rodriguez','JURJ860722L98'),(31,'Jose Juan','Juarez','Rodriguez','JURJ860722L98'),(33,'Berenice','Ramirez','Salinas','RASR921104'),(34,'Berenice2','Salinas2','Cruz2','RASR921105'),(35,'Rosa','Ramirez','Salinas','RASR921104'),(38,'Rosa Berenice','Ramirez','Salinas','RASR921104'),(39,'Mau','Gris',' Cortes',' GICM7604183L3'),(40,'Beatriz','Ramirez','Salinas','BEVI856320'),(41,'Mau2','Gris2',' Cortes2',' GICM7604183L2'),(42,'Mau2','Gris2',' Cortes2',' GICM7604183L2'),(43,'Mau2','Gris2',' Cortes2',' GICM7604183L2'),(44,'Alma','Salinas','Cruz','SAXC526302'),(45,'NRA','Rivera','Acosta','RIAN840617'),(46,'NRA Command','Rivera','Acosta','RIAN840617'),(48,'NRA','Rivera','Acosta','RIAN840617'),(49,'NRA Command','Rivera','Acosta','RIAN840617'),(51,'Jose Juan','Juarez','Rodriguez','JURJ860722L98'),(53,'NRA','Rivera','Acosta','RIAN840617'),(54,'NRA Command','Rivera','Acosta','RIAN840617'),(56,'NRA','Rivera','Acosta','RIAN840617'),(57,'NRA Command','Rivera','Acosta','RIAN840617'),(59,'NRA','Rivera','Acosta','RIAN840617'),(60,'NRA Command','Rivera','Acosta','RIAN840617'),(62,'NRA','Rivera','Acosta','RIAN840617'),(63,'NRA Command','Rivera','Acosta','RIAN840617'),(65,'NRA','Rivera','Acosta','RIAN840617'),(66,'NRA Command','Rivera','Acosta','RIAN840617'),(68,'NRA','Rivera','Acosta','RIAN840617'),(69,'NRA Command','Rivera','Acosta','RIAN840617'),(71,'NRA','Rivera','Acosta','RIAN840617'),(72,'NRA Command','Rivera','Acosta','RIAN840617'),(74,'NRA','Rivera','Acosta','RIAN840617'),(75,'Berenice','Ramirez','Salinas','RASR921104'),(78,'Maurito','GRIS','CORTES','GICM7604183L2'),(79,'GG','Guerrero','Gomez','GUGG'),(80,'Gerardo Nuevo','Paterno Nuevo','Materno Nuevo','RFC Nuevo'),(81,'Batman','Ninja','Wayne','DARK KNIGHT'),(82,'Batman','Ninja','Wayne','DARK KNIGHT'),(84,'Berenice Nuevo','Ramirez Nuevo','Salinas Nuevo','RASR921104 Nuevo'),(85,'Batman','Ninja','Wayne','DARK KNIGHT'),(86,'Batman','Ninja','Wayne','DARK KNIGHT'),(87,'Berenice Nuevo','Ramirez Nuevo','Salinas Nuevo','RASR921104 Nuevo'),(94,'Super','Serge','Serge','WQEQWE5454'),(95,'Super SOAP','Serge','Serge','WQEQWE5454'),(96,'Super SOAP','Serge','Serge','WQEQWE5454'),(98,'BERENICE','SALINAS','RAMIREZ','RASR921104'),(99,'Mau','Gris','Cortes','GICM7604183L5'),(100,'Super SOAP Return','Serge','Serge','WQEQWE5454'),(103,'Mau','Gris','Cortes','GICM7604183L5'),(105,'R. Berenice','Ramírez','Salinas','RASR020119'),(107,'MIGUEL','SANCHEZ','SANCHEZ','SSM321564987'),(110,'Gerardo SOAP','Guerrero SOAP','Gomez SOAP','RFCSOAP'),(111,'Gerardo REST','Guerrero REST','Gomez REST','RFCREST'),(115,'Gerardo Actualizado','Guerrero Act','Gomez Act','Act'),(116,'ACT Berenice 08-01-2019','ACT Ramirez','ACT Salinas','ACTRASR921104'),(117,'Mauricio 08-01-2019','Gris','Cortes','GICM7604183L3'),(119,'Tomás ACt 08/01/2019','Franco','Marte','Super FMT'),(123,'un Ultimo Super Serge','QQ','CC','RRRRD5A4SD5'),(126,'Mau REST','Gris','Cortes','GICM7604193L2'),(127,'Mau REST','Gris','Cortes','GICM7604193L2'),(128,'ANASTACIO','CASANUEVA','LUNA','CALA800912U65'),(129,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(130,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(131,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(132,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(133,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(134,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(135,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(136,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(137,'ARMADILLO','LINARES','FUENTE','ROBJ640722G73'),(138,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(139,'ARMADILLO','LINARES','FUENTE','ROBJ640722G73'),(140,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(141,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(142,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(143,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(144,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(145,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(146,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(147,'JUEVENTINO','ROSAS','BADILLO','ROBJ640722G73'),(148,'ARMADILLO','LINARES','FUENTE','ROBJ640722G73'),(149,'Se actualizo','test','test','123abc'),(152,'Se actualizo','test','test','123abc');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `idcompra` int(11) NOT NULL AUTO_INCREMENT,
  `fechacompra` date NOT NULL,
  `total` decimal(7,2) NOT NULL,
  `idcliente` int(11) NOT NULL,
  PRIMARY KEY (`idcompra`),
  KEY `fk_compra_cliente1_idx` (`idcliente`),
  CONSTRAINT `fk_compra_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2018-11-01',100.00,1),(2,'2018-11-01',100.00,1),(11,'2018-11-01',100.00,1),(12,'2018-11-01',100.00,1),(13,'2018-12-14',1000.00,2),(14,'2018-12-14',1000.00,3),(15,'2018-12-14',1000.00,75),(16,'2018-12-14',1000.00,4),(17,'2018-12-14',1400.00,4),(18,'2018-12-14',1400.00,4),(19,'2018-12-14',1000.00,2),(20,'2018-12-14',1000.00,80),(21,'2018-12-14',1400.00,4),(22,'2019-08-29',700.00,80),(23,'2018-12-14',1400.00,4),(25,'2018-12-14',1400.00,4),(27,'2019-08-02',12014.00,25),(28,'2018-12-14',1400.00,4),(29,'2018-12-14',1400.00,4),(31,'2018-12-14',1000.00,75),(32,'2018-12-14',1000.00,75),(33,'2018-12-14',1000.00,84),(34,'2019-08-29',100.00,80),(35,'2018-12-14',1400.00,85),(36,'2018-12-14',1400.00,4),(37,'2018-12-14',1400.00,86),(38,'2018-12-14',1000.00,75),(39,'2018-12-14',1000.00,87),(41,'2019-07-17',8900.00,128),(42,'2019-07-23',8900.00,128),(43,'2019-07-23',8900.00,128),(44,'2019-07-23',8900.00,128),(45,'2019-07-23',8900.00,128),(46,'2019-07-23',8900.00,128),(47,'2019-07-23',8900.00,128),(48,'2019-07-23',8900.00,128),(49,'2019-07-23',8900.00,128),(52,'2018-11-10',100.00,1),(53,'2018-11-10',100.00,1),(54,'2019-08-29',100.00,5),(55,'2018-11-10',100.00,1),(56,'2018-11-09',100.00,1),(57,'2019-08-29',170.00,5),(59,'2019-08-02',234.00,2),(60,'2019-08-02',300.00,1),(61,'2019-08-01',150.00,1),(63,'2019-08-01',502.00,25),(64,'2019-11-01',170.00,5),(66,'2018-08-12',450.00,2),(68,'2019-08-01',1.00,5),(69,'2019-08-01',1.00,5),(70,'2019-08-01',1.00,5),(71,'2019-08-02',150.00,5),(72,'2019-08-02',100.00,80),(73,'2019-08-02',55.00,6),(74,'2019-08-02',55.00,6),(75,'2019-08-02',55.00,6),(76,'2019-08-01',0.00,4),(77,'2019-08-01',0.00,5),(78,'2019-08-01',0.00,148),(79,'2019-08-02',50.00,6),(80,'2019-08-08',120.00,1),(81,'2019-08-27',888.00,3),(82,'2019-06-05',555.00,1),(83,'2019-09-24',797.25,1),(84,'2019-09-01',935.50,1),(85,'2019-01-17',345.00,1);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compraproducto`
--

DROP TABLE IF EXISTS `compraproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compraproducto` (
  `idcompraproducto` int(11) NOT NULL AUTO_INCREMENT,
  `idcompra` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `preciounitario` decimal(7,2) NOT NULL,
  PRIMARY KEY (`idcompraproducto`),
  KEY `fk_compra_has_producto_producto1_idx` (`idproducto`),
  KEY `fk_compra_has_producto_compra1_idx` (`idcompra`),
  CONSTRAINT `fk_compra_has_producto_compra1` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`),
  CONSTRAINT `fk_compra_has_producto_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compraproducto`
--

LOCK TABLES `compraproducto` WRITE;
/*!40000 ALTER TABLE `compraproducto` DISABLE KEYS */;
INSERT INTO `compraproducto` VALUES (14,11,1,2,1717.70),(17,1,1,5,550.00),(18,1,1,5,550.00),(19,1,1,5,550.00),(20,1,1,5,550.00),(21,1,1,5,550.00),(22,1,1,5,550.00),(23,1,1,5,550.00),(24,1,1,5,550.00),(25,1,1,5,550.00),(26,1,1,5,550.00),(27,1,1,5,550.00),(28,1,1,5,550.00),(29,1,1,5,550.00),(30,1,1,5,550.00),(31,11,1,2,10.50),(35,11,1,2,1717.70);
/*!40000 ALTER TABLE `compraproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logger` varchar(100) DEFAULT NULL,
  `nivel` varchar(100) DEFAULT NULL,
  `mensaje` text,
  `excepcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('02dcff11-f324-11e8-a7c0-5048494f4e43','2018-11-28 21:41:01','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','Error Fatal de sistema MGC',''),('035a1e52-f324-11e8-a7c0-5048494f4e43','2018-11-28 21:41:03','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','Error de conexion: MGCYou have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('03cf4e53-f324-11e8-a7c0-5048494f4e43','2018-11-28 21:41:04','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','Mensaje con fines de desarrollo MGC ',''),('04445744-f324-11e8-a7c0-5048494f4e43','2018-11-28 21:41:05','mx.com.cuatrop.integracion.exception.ConexionException','WARN','Mensaje de warning, aun no falla el sistema MGC',''),('04bc9485-f324-11e8-a7c0-5048494f4e43','2018-11-28 21:41:06','mx.com.cuatrop.integracion.exception.ConexionException','INFO','Mensaje informativo MGC',''),('118286b1-f320-11e8-b081-e4b318f36399','2018-11-28 21:12:49','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','BERE Fatal error',''),('1207e352-f320-11e8-b081-e4b318f36399','2018-11-28 21:12:50','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','BERE Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'Berenice Ramirez\'\'\' at line 1',''),('128d3ff3-f320-11e8-b081-e4b318f36399','2018-11-28 21:12:51','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','BERE Mensaje con fines de desarrollo',''),('13358de4-f320-11e8-b081-e4b318f36399','2018-11-28 21:12:52','mx.com.cuatrop.integracion.exception.ConexionException','WARN','BERE Mensaje de warning, aun no falla el sistema',''),('13deed45-f320-11e8-b081-e4b318f36399','2018-11-28 21:12:53','mx.com.cuatrop.integracion.exception.ConexionException','INFO','BERE Mensaje informativo',''),('24cbd001-f320-11e8-99c9-e4b318f36399','2018-11-28 21:13:21','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','BERE Fatal error',''),('25552442-f320-11e8-99c9-e4b318f36399','2018-11-28 21:13:22','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','BERE Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'Berenice Ramirez\'\'\' at line 1',''),('25e0e983-f320-11e8-99c9-e4b318f36399','2018-11-28 21:13:23','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','BERE Mensaje con fines de desarrollo',''),('267b54c4-f320-11e8-99c9-e4b318f36399','2018-11-28 21:13:24','mx.com.cuatrop.integracion.exception.ConexionException','WARN','BERE Mensaje de warning, aun no falla el sistema',''),('26f9ac85-f320-11e8-99c9-e4b318f36399','2018-11-28 21:13:25','mx.com.cuatrop.integracion.exception.ConexionException','INFO','BERE Mensaje informativo',''),('44a66a21-f320-11e8-8f73-e4b318f36399','2018-11-28 21:14:14','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','BERE Fatal error',''),('452f9752-f320-11e8-8f73-e4b318f36399','2018-11-28 21:14:16','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','BERE Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'Berenice Ramirez\'\'\' at line 1',''),('45adc803-f320-11e8-8f73-e4b318f36399','2018-11-28 21:14:17','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','BERE Mensaje con fines de desarrollo',''),('462038e4-f320-11e8-8f73-e4b318f36399','2018-11-28 21:14:17','mx.com.cuatrop.integracion.exception.ConexionException','WARN','BERE Mensaje de warning, aun no falla el sistema',''),('46996085-f320-11e8-8f73-e4b318f36399','2018-11-28 21:14:18','mx.com.cuatrop.integracion.exception.ConexionException','INFO','BERE Mensaje informativo',''),('4a7816c1-f31f-11e8-8c7b-a44e31ac758c','2018-11-28 21:07:15','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','Fatal error',''),('4af005e2-f31f-11e8-8c7b-a44e31ac758c','2018-11-28 21:07:16','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('4b599d23-f31f-11e8-8c7b-a44e31ac758c','2018-11-28 21:07:17','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','Mensaje con fines de desarrollo',''),('4bc29824-f31f-11e8-8c7b-a44e31ac758c','2018-11-28 21:07:17','mx.com.cuatrop.integracion.exception.ConexionException','WARN','Mensaje de warning, aun no falla el sistema',''),('4c30ea55-f31f-11e8-8c7b-a44e31ac758c','2018-11-28 21:07:18','mx.com.cuatrop.integracion.exception.ConexionException','INFO','Mensaje informativo',''),('58b4d831-f320-11e8-94f9-0215971e04e7','2018-11-28 21:14:48','mx.com.cuatrop.integracion.exeption.ConnexionExeption','FATAL','Fatal, no puede continuar',''),('593504b2-f320-11e8-94f9-0215971e04e7','2018-11-28 21:14:49','mx.com.cuatrop.integracion.exeption.ConnexionExeption','ERROR','Error de Conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('59d5ffa3-f320-11e8-94f9-0215971e04e7','2018-11-28 21:14:50','mx.com.cuatrop.integracion.exeption.ConnexionExeption','DEBUG','Mensaje con fines de desarrollo: ',''),('5a495ae4-f320-11e8-94f9-0215971e04e7','2018-11-28 21:14:51','mx.com.cuatrop.integracion.exeption.ConnexionExeption','WARN','Mensaje de Warning, aun no me falla el sistema',''),('5ac9d585-f320-11e8-94f9-0215971e04e7','2018-11-28 21:14:52','mx.com.cuatrop.integracion.exeption.ConnexionExeption','INFO','Mensaje Informativo',''),('81cfc691-f324-11e8-a0bc-5048494f4e43','2018-11-28 21:44:34','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','Error Fatal de sistema MGC',''),('8248c722-f324-11e8-a0bc-5048494f4e43','2018-11-28 21:44:36','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','Error de conexion: MGCYou have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('82b19b13-f324-11e8-a0bc-5048494f4e43','2018-11-28 21:44:37','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','Mensaje con fines de desarrollo MGC ',''),('832ac2b4-f324-11e8-a0bc-5048494f4e43','2018-11-28 21:44:38','mx.com.cuatrop.integracion.exception.ConexionException','WARN','Mensaje de warning, aun no falla el sistema MGC',''),('83820a71-f324-11e8-8461-a44e31ac758c','2018-11-28 21:44:38','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','Fatal error',''),('839eba35-f324-11e8-a0bc-5048494f4e43','2018-11-28 21:44:39','mx.com.cuatrop.integracion.exception.ConexionException','INFO','Mensaje informativo MGC',''),('83f6c542-f324-11e8-8461-a44e31ac758c','2018-11-28 21:44:39','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('843f6701-f324-11e8-843d-0215971e04e7','2018-11-28 21:44:39','mx.com.cuatrop.integracion.exeption.ConnexionExeption','FATAL','Fatal, no puede continuar',''),('845f4b13-f324-11e8-8461-a44e31ac758c','2018-11-28 21:44:40','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','Mensaje con fines de desarrollo',''),('84cc8bd4-f324-11e8-8461-a44e31ac758c','2018-11-28 21:44:41','mx.com.cuatrop.integracion.exception.ConexionException','WARN','Mensaje de warning, aun no falla el sistema',''),('84d98422-f324-11e8-843d-0215971e04e7','2018-11-28 21:44:40','mx.com.cuatrop.integracion.exeption.ConnexionExeption','ERROR','Error de Conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('8534ea95-f324-11e8-8461-a44e31ac758c','2018-11-28 21:44:41','mx.com.cuatrop.integracion.exception.ConexionException','INFO','Mensaje informativo',''),('85634d93-f324-11e8-843d-0215971e04e7','2018-11-28 21:44:41','mx.com.cuatrop.integracion.exeption.ConnexionExeption','DEBUG','Mensaje con fines de desarrollo: ',''),('85e575e4-f324-11e8-843d-0215971e04e7','2018-11-28 21:44:42','mx.com.cuatrop.integracion.exeption.ConnexionExeption','WARN','Mensaje de Warning, aun no me falla el sistema',''),('865c2c85-f324-11e8-843d-0215971e04e7','2018-11-28 21:44:43','mx.com.cuatrop.integracion.exeption.ConnexionExeption','INFO','Mensaje Informativo',''),('b2dd8d81-f31f-11e8-af01-0215971e04e7','2018-11-28 21:10:09','mx.com.cuatrop.integracion.exeption.ConnexionExeption','FATAL','Fatal, no puede continuar',''),('b36d2352-f31f-11e8-af01-0215971e04e7','2018-11-28 21:10:11','mx.com.cuatrop.integracion.exeption.ConnexionExeption','ERROR','Error de Conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('b3e19003-f31f-11e8-af01-0215971e04e7','2018-11-28 21:10:12','mx.com.cuatrop.integracion.exeption.ConnexionExeption','DEBUG','Mensaje con fines de desarrollo: ',''),('b4527a44-f31f-11e8-af01-0215971e04e7','2018-11-28 21:10:13','mx.com.cuatrop.integracion.exeption.ConnexionExeption','WARN','Mensaje de Warning, aun no me falla el sistema',''),('b4d035c5-f31f-11e8-af01-0215971e04e7','2018-11-28 21:10:14','mx.com.cuatrop.integracion.exeption.ConnexionExeption','INFO','Mensaje Informativo',''),('b71ce811-f323-11e8-8080-5048494f4e43','2018-11-28 21:38:54','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','Error Fatal de sistema MGC',''),('b7aaf742-f323-11e8-8080-5048494f4e43','2018-11-28 21:38:56','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','Error de conexion: MGCYou have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('b8222313-f323-11e8-8080-5048494f4e43','2018-11-28 21:38:57','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','Mensaje con fines de desarrollo MGC ',''),('b89975f4-f323-11e8-8080-5048494f4e43','2018-11-28 21:38:58','mx.com.cuatrop.integracion.exception.ConexionException','WARN','Mensaje de warning, aun no falla el sistema MGC',''),('b90fde75-f323-11e8-8080-5048494f4e43','2018-11-28 21:38:59','mx.com.cuatrop.integracion.exception.ConexionException','INFO','Mensaje informativo MGC',''),('bf11f141-f31f-11e8-9db0-5048494f4e43','2018-11-28 21:10:29','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','Error Fatal de sistema',''),('bf880ba2-f31f-11e8-9db0-5048494f4e43','2018-11-28 21:10:32','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('bfebfd93-f31f-11e8-9db0-5048494f4e43','2018-11-28 21:10:32','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','Mensaje con fines de desarrollo',''),('c04e8ff4-f31f-11e8-9db0-5048494f4e43','2018-11-28 21:10:33','mx.com.cuatrop.integracion.exception.ConexionException','WARN','Mensaje de warning, aun no falla el sistema',''),('c0b2a8f5-f31f-11e8-9db0-5048494f4e43','2018-11-28 21:10:34','mx.com.cuatrop.integracion.exception.ConexionException','INFO','Mensaje informativo',''),('c0f9ee51-f323-11e8-a34e-e4b318f36399','2018-11-28 21:39:12','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','BERE Fatal error',''),('c1769862-f323-11e8-a34e-e4b318f36399','2018-11-28 21:39:13','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','BERE Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'Berenice Ramirez\'\'\' at line 1',''),('c1f0f883-f323-11e8-a34e-e4b318f36399','2018-11-28 21:39:14','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','BERE Mensaje con fines de desarrollo',''),('c2dabc45-f323-11e8-a34e-e4b318f36399','2018-11-28 21:39:15','mx.com.cuatrop.integracion.exception.ConexionException','INFO','BERE Mensaje informativo',''),('d74f8d41-f323-11e8-a2a4-e4b318f36399','2018-11-28 21:39:49','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','BERE Fatal error',''),('d7db7992-f323-11e8-a2a4-e4b318f36399','2018-11-28 21:39:50','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','BERE Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'Berenice Ramirez\'\'\' at line 1',''),('d8527e53-f323-11e8-a2a4-e4b318f36399','2018-11-28 21:39:51','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','BERE Mensaje con fines de desarrollo',''),('d8da24e4-f323-11e8-a2a4-e4b318f36399','2018-11-28 21:39:52','mx.com.cuatrop.integracion.exception.ConexionException','WARN','BERE Mensaje de warning, aun no falla el sistema',''),('d951ecf5-f323-11e8-a2a4-e4b318f36399','2018-11-28 21:39:53','mx.com.cuatrop.integracion.exception.ConexionException','INFO','BERE Mensaje informativo',''),('fcbef971-f31f-11e8-8889-5048494f4e43','2018-11-28 21:12:12','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','Error Fatal de sistema MGC',''),('fd36e892-f31f-11e8-8889-5048494f4e43','2018-11-28 21:12:15','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','Error de conexion: MGCYou have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'PHP\'\'\' at line 1',''),('fda27ba3-f31f-11e8-8889-5048494f4e43','2018-11-28 21:12:16','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','Mensaje con fines de desarrollo MGC ',''),('fde7c201-f31f-11e8-82f9-e4b318f36399','2018-11-28 21:12:16','mx.com.cuatrop.integracion.exception.ConexionException','FATAL','Fatal error',''),('fe14ec84-f31f-11e8-8889-5048494f4e43','2018-11-28 21:12:17','mx.com.cuatrop.integracion.exception.ConexionException','WARN','Mensaje de warning, aun no falla el sistema MGC',''),('fe5db552-f31f-11e8-82f9-e4b318f36399','2018-11-28 21:12:17','mx.com.cuatrop.integracion.exception.ConexionException','ERROR','Error de conexion: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'Berenice Ramirez\'\'\' at line 1',''),('fe7e35a5-f31f-11e8-8889-5048494f4e43','2018-11-28 21:12:17','mx.com.cuatrop.integracion.exception.ConexionException','INFO','Mensaje informativo MGC',''),('fed4e123-f31f-11e8-82f9-e4b318f36399','2018-11-28 21:12:18','mx.com.cuatrop.integracion.exception.ConexionException','DEBUG','Mensaje con fines de desarrollo',''),('ff4221e4-f31f-11e8-82f9-e4b318f36399','2018-11-28 21:12:19','mx.com.cuatrop.integracion.exception.ConexionException','WARN','Mensaje de warning, aun no falla el sistema',''),('ffad3fc5-f31f-11e8-82f9-e4b318f36399','2018-11-28 21:12:19','mx.com.cuatrop.integracion.exception.ConexionException','INFO','Mensaje informativo',''),('lmrkehfvdckiorsugrdf89','2019-09-17 20:41:03','mx.com.everist..springbootjpa.controller.GladosException','FATAL','The cake is a lie.... SPACE!!!','nobody loves me'),('ofejnfjncjnñejked','2018-11-28 21:41:01','mx.com.cuatrop.integracion.exception.ConexionException','Insertar','Insertar Nuevo','');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apaterno` varchar(45) NOT NULL,
  `amaterno` varchar(45) NOT NULL,
  PRIMARY KEY (`idlogin`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'ihsaDATO','ihsa','FULL ','Prueba','Prueba'),(2,'mrojas','mrojas','Miguel Angel','Rojas','Rojas'),(3,'joel','123|','Carlos Garcia Update','rodriguez','rojas'),(4,'ppicapiedra','ppicapiedra','Pedro','Picapiedra','Picapiedra'),(5,'jorodriguez','123','Alexander Actualiza','Rodri','Roj'),(6,'carlosi','carlosi','carlosi','carlosi','carlosi'),(7,'pmarmol','pmarmol','Pablo','Marmol','Marmol'),(8,'aaaaa','aaaaa','aaaaa','aaaaa','aaaaa'),(9,'mluis','mluis','Marino','Luis','H'),(10,'joel','123','Carlos Update','joel','joel'),(14,'CGACharles','CGA1234','Charles','Garcia','Aguilar'),(16,'userCurso','1234','TestCurso','Curso','Integracion'),(17,'shunco86','Integraci0n','Shunco','Vásquez','López'),(20,'PEPE','55555','Pruebita Actualizado','De León','Ricardo'),(21,'Sheena','M4r126','Unica Actualizado','Guzman','Romero'),(24,'shunco86','Integraci0n','Shunco','Vásquez','López'),(25,'shunco86','Integraci0n','Shunco','Vásquez','López'),(26,'shunco86','Integraci0n','Shunco','Vásquez','López'),(27,'oye','varon','te','estoy','hablando'),(28,'etrejor','pass','Estela','Trejo','Rodriguez'),(29,'tecgurus','password','Gerardo','Guerrero','Gomez'),(30,'tecgurus','password','Gerardo','Guerrero','Gomez'),(31,'etrejor','pass','Estela','Trejo','Rodriguez'),(32,'etrejor','pass','Estela','Trejo','Rodriguez'),(34,'shunco86','Integraci0n','JMVL Actualizado 30_07_2019','Vásquez','López'),(35,'shunco86','Integraci0n','Shunco','Vásquez','López'),(36,'etrejor','pass','Estela','Trejo','Rodriguez'),(37,'Sheena','M4r126','Juanyk','Guzman','Romero'),(38,'shunco86','Integraci0n','Shunco','Vásquez','López'),(39,'tecgurus','password','Gerardo','Guerrero','Gomez'),(40,'shunco86','Integraci0n','Shunco','Vásquez','López'),(41,'CGACharles','CGA1234','Charles','Garcia','Aguilar'),(42,'oye','varon','te','estoy','hablando'),(43,'oye','varon','te','estoy','hablando'),(44,'PEPITO','9999','Davidsito','De León','Ricardo'),(46,'oye','varon','te','estoy','hablando'),(47,'tecgurus','password','Gerardo','Guerrero','Gomez'),(48,'oye','varon','te','estoy','hablando'),(49,'Sheena','M4r126','Juanyk','Guzman','Romero'),(50,'shunco86','Integraci0n','Shunco','Vásquez','López'),(51,'PEPE','55555','David','De León','Ricardo'),(52,'shunco86','Integraci0n','Shunco','Vásquez','López'),(53,'shunco86','Integraci0n','Shunco','Vásquez','López'),(54,'tecgurus','12345','Tec Gurus','',''),(55,'Carlos','cgarciaa','Carlos','Garcia','aguilar'),(56,'oye','varon','te','estoy','hablando'),(58,'PEPE','55555','David','De León','Ricardo'),(59,'PPAPA','####333','PADRE','DELR','RIC'),(60,'ED','123','Paco','Lopez','Lopez'),(61,'Juuuuaa','224351','Margarita','','Fauna'),(62,'tecguruvasquez','passenha','Shunco','Vasquez','Lopez'),(63,'Tapitas','lola','Sheena','Guerra','Higareda'),(64,'tecgurus23072019','12345','Tec Gurus','',''),(67,'DAVID','####333','DAVID','DELR','RIC'),(69,'shunix','passenha','Shunix Actualizado','Vasquez','Lopez'),(71,'laAlta','No se sabe','Karina','Guzman','Valles'),(73,'CGARCIAAUPT','c4rl0supt','Carlos Update73','DELR','RIC'),(76,'DAVID 2','####44','DAVID2','DELR2','RIC2'),(77,'DAVID','####333','DAVID','DELR','RIC'),(79,'Carlos','cgarciaa','Carlos','Garcia','aguilar'),(80,'CGARCIAA','c4rl0s','Carlos CGA','Garcia','Aguilar'),(81,'oye','varon','te','estoy','hablando'),(82,'shunco86','Integraci0n','Shunco','Vásquez','López'),(83,'oye','varon','te','estoy','hablando'),(84,'oye','varon','te','estoy','hablando'),(85,'Sheena','M4r126','Juanyk','Guzman','Romero'),(87,'ESTELA2307219','PASS','ESTELA','TRJEJO','TRJEJO'),(88,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(90,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(91,'ESTELA2307219','PASS','ESTELA','TRJEJO','TRJEJO'),(92,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(93,'Bonono','No se sabe','Karina','Guzman','Valles'),(94,'Tapitas','lola','Sheena','Guerra','Higareda'),(95,'ESTELA2307219','PASS','ESTELA','TRJEJO','TRJEJO'),(96,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(97,'oye','varon','te','estoy','hablando'),(98,'Sheena','M4r126','Juanyk','Guzman','Romero'),(99,'ESTELA2307219','PASS','ESTELA','TRJEJO','TRJEJO'),(100,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(101,'ESTELA2307219','PASS','ESTELA','TRJEJO','TRJEJO'),(104,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(105,'ESTELA2307219','PASS','ESTELA','TRJEJO','TRJEJO'),(106,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(107,'ESTELA2307219','PASS','ESTELA','TRJEJO','TRJEJO'),(108,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(109,'ESTELA2307219','PASS','ESTELA','TRJEJO','TRJEJO'),(110,'TREJO','PASS','ESTELA','TRJEJO','TRJEJO'),(112,'jmvl86','Integraci0n','JMVL','Vasquez','Lopez'),(114,'nuevotest','*****','test','test','test'),(115,'Fridal','123Esay','Frida','Guzman','Juarez'),(116,'Fridal','123Esay','Frida','Guzman','Juarez'),(117,'TRepJO','PASS','ESTess','TRJEJO','TRJEJO'),(118,'a23456787','PASS','ESTELA','TRJEJO','TRJEJO'),(119,'a23456789','PASS','ESTELA','TRJEJO','TRJEJO'),(120,'a2345678z','PASS','ESTELA','TRJEJO','TRJEJO'),(122,'AlejandroUsuario','AlejandroPassword','AlejandroNombre','AlejandroApaterno','AlejandroAmaterno'),(124,'AlejandroUsuario2','AlejandroPassword2','AlejandroNombre2','AlejandroApaterno2','AlejandroAmaterno2'),(125,'AlejandroUsuario2','AlejandroPassword2','AlejandroNombre2','AlejandroApaterno2','AlejandroAmaterno2');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `desc_perfil` varchar(45) NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'ADMIN','Ninguna'),(2,'OTRO','Ninguna'),(3,'curso','IntegracionEmpresarial');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `fecharegistro` date NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idproducto`),
  KEY `fk_producto_categoria_idx` (`idcategoria`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Libro C#','2018-11-10',550.00,8,'https://postparaprogramadores.com/wp-content/uploads/2017/05/coverblog-46.png',5),(2,'Libro Java','2018-11-09',700.00,12,'https://www.popularlibros.com/imagenes_grandes/9788441/978844153940.JPG',2),(3,'Libro Visual Studio .NET','2018-11-08',800.00,14,'https://dialnet.unirioja.es/recursos/imagen?entidad=LIBRO&tipo_contenido=74&libro=319552',3),(10,'Libro NRA mod','2018-11-29',100.00,197,'https://.......',99),(11,'Producto NRA TEST','2022-10-29',10.10,200,'http://localhost/img1.jpg',99),(15,'Nuevo producto BR','2018-12-11',890.00,8,'nueva ruta',100),(17,'Nuevo Actualiza 17','2019-07-17',967.62,236,'imagen aqui',228444695),(22,'CONCHAS NACAR','2019-08-31',1200.00,8,'https://www.google.com/search?q=PRODUCTO+ESPECTACULAR',100),(23,'pluma','1970-01-01',200.00,8,'imagen',27),(24,'pluma','1970-01-01',200.00,8,'imagen',27),(25,'pluma','1970-01-01',200.00,8,'imagen',27),(26,'pluma','1970-01-01',200.00,8,'imagen',27),(27,'pluma','1970-01-01',200.00,8,'imagen',27),(28,'pluma','1970-01-01',200.00,8,'imagen',27),(29,'pluma','1970-01-01',200.00,8,'imagen',27),(30,'pluma','1970-01-01',200.00,8,'imagen',27);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_perfil_idx` (`id_perfil`),
  CONSTRAINT `perfil_fk` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (4,1,'tecgurus','$2a$10$GarwzO4.7mnsti.awZYkq.tPti.8.eOd7n4algT4PE.aKP4MfA5e6',1,'contacto@tecgurus.net'),(5,1,'guerrerog','$2a$10$2UYnqm40rGK.ZAYEam6h3u0t0oSkgzF7lyayeBOorX4.ofil/cuNW',1,'guerrerog@gmail.com'),(7,1,'Bruno','azabache24',1,'brunis@outlook.es'),(8,3,'Estela','Pass',1,'etrejor@intercam.com'),(9,3,'ejemplo','ejemplo',1,'ejemplo@ejemplo.es'),(10,3,'Estela','Pass',1,'etrejor@intercam.com'),(11,3,'Estela','Pass',1,'etrejor@intercam.com'),(12,3,'EstElA','Pass',1,'etrejorr@intercam.com'),(13,3,'EstElA','Pass',1,'etrejor@intercam.com'),(14,3,'EstElA','Pass',1,'etrejor@intercam.com'),(15,3,'EstElA','Pass',1,'etrejor@intercam.com'),(16,3,'svasquez','passvasquez',1,'svas@intermilan.com'),(18,3,'EstElA','Pass',1,'etrejor@intercam.com'),(19,3,'EstElA','Pass',1,'etrejor@intercam.com'),(20,3,'EstElA','Pass',1,'etrejor@intercam.com'),(22,3,'EstElA','Pass',1,'etrejor@intercam.com'),(23,3,'svasquez','passvasquez',1,'svas@intermilan.com'),(24,3,'EstElA','Pass',1,'etrejor@intercam.com'),(25,3,'svasquez','passvasquez',1,'svas@intermilan.com'),(26,3,'EstElA','Pass',1,'etrejor@intercam.com'),(27,3,'EstElA','Pass',1,'etrejor@intercam.com'),(28,3,'EstElA','Pass',1,'etrejor@intercam.com'),(29,3,'EstElA','Pass',1,'etrejor@intercam.com'),(30,3,'svasquez','passvasquez',1,'svas@intermilan.com'),(31,3,'EstElA','Pass',1,'etrejor@intercam.com'),(32,3,'EstElA','Pass',1,'etrejor@intercam.com'),(33,3,'EstElA','Pass',0,'etrejor@intercam.com'),(34,3,'EstElA','Pass',1,'etrejor@intercam.com'),(35,3,'svasquez','passvasquez',1,'svas@intermilan.com'),(36,3,'EstElA','Pass',1,'etrejor@intercam.com'),(37,3,'svasquez','passvasquez',1,'svas@intermilan.com'),(38,3,'svasquez','passvasquez',1,'svas@intermilan.com'),(39,3,'EstElA','Pass',1,'etrejor@intercam.com'),(40,3,'EstElA','Pass',1,'etrejor@intercam.com'),(41,3,'EstElA','Pass',1,'etrejor@intercam.com'),(42,3,'ejemplo','ejemplo',1,'ejemplo@ejemplo.es'),(43,3,'ESTElA','estelita',1,'etrejo@intercam.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 10:18:02
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: actividadesdb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `idactividad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `horas` int(11) NOT NULL,
  PRIMARY KEY (`idactividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividadasignada`
--

DROP TABLE IF EXISTS `actividadasignada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividadasignada` (
  `idactividadasignada` int(11) NOT NULL AUTO_INCREMENT,
  `fechainicio` datetime NOT NULL,
  `fechafin` datetime NOT NULL,
  `idempleado` int(11) NOT NULL,
  `idactividad` int(11) NOT NULL,
  PRIMARY KEY (`idactividadasignada`),
  KEY `fk_actividadasignada_emplado1_idx` (`idempleado`),
  KEY `fk_actividadasignada_actividad1_idx` (`idactividad`),
  CONSTRAINT `fk_actividadasignada_actividad1` FOREIGN KEY (`idactividad`) REFERENCES `actividad` (`idactividad`),
  CONSTRAINT `fk_actividadasignada_emplado1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividadasignada`
--

LOCK TABLES `actividadasignada` WRITE;
/*!40000 ALTER TABLE `actividadasignada` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividadasignada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) NOT NULL,
  `idactividadasignada` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`idbitacora`),
  KEY `fk_bitacora_actividadasignada1_idx` (`idactividadasignada`),
  CONSTRAINT `fk_bitacora_actividadasignada1` FOREIGN KEY (`idactividadasignada`) REFERENCES `actividadasignada` (`idactividadasignada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apaterno` varchar(45) NOT NULL,
  `amaterno` varchar(45) NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `fk_emplado_usuario1_idx` (`idusuario`),
  CONSTRAINT `fk_emplado_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'melman','la jirafa');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 10:18:04
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escuela
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apaterno` varchar(45) DEFAULT NULL,
  `amaterno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (2,'Alex','la','cabra'),(3,'Jaime','hola','chucho'),(4,'Nombre Alejandro Junit','Apaterno Alejandro Junit','Amaterno Alejandro Junit'),(5,'Nombre AlejandroAct Junit','Apaterno AlejandroAct Junit','Amaterno AlejandroAct Junit');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inicio` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `curso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_calendario_curso_idx` (`curso_id`),
  CONSTRAINT `fk_calendario_curso` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
INSERT INTO `calendario` VALUES (2,'2019-07-10 00:00:00','2019-08-10 00:00:00',3),(3,'2019-07-10 00:00:00','2019-06-05 00:00:00',2),(4,'2019-07-10 00:00:00','2019-06-05 00:00:00',2);
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecurso` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (2,'Curso Actualizado Junit','Descripcion Actualizada Junit'),(3,'español','hola'),(4,'Curso Alejandro Junit','Descripcion Alejandro Junit'),(5,'Curso Alejandro Junit','Descripcion Alejandro Junit'),(7,'Curso Alejandro Junit 0','Descripcion Alejandro Junit 0'),(8,'Curso Alejandro Junit 1','Descripcion Alejandro Junit 1'),(9,'Curso Alejandro Junit 2','Descripcion Alejandro Junit 2'),(10,'Curso Alejandro Junit 3','Descripcion Alejandro Junit 3'),(11,'Curso Alejandro Junit 4','Descripcion Alejandro Junit 4'),(12,'Curso Alejandro Junit 5','Descripcion Alejandro Junit 5'),(13,'Curso Alejandro Junit 6','Descripcion Alejandro Junit 6'),(14,'Curso Alejandro Junit 7','Descripcion Alejandro Junit 7'),(15,'Curso Alejandro Junit 8','Descripcion Alejandro Junit 8'),(16,'Curso Alejandro Junit 9','Descripcion Alejandro Junit 9'),(17,'Curso Alejandro Junit 10','Descripcion Alejandro Junit 10'),(18,'Curso Alejandro Junit 11','Descripcion Alejandro Junit 11'),(19,'Curso Alejandro Junit 12','Descripcion Alejandro Junit 12'),(20,'Curso Alejandro Junit 13','Descripcion Alejandro Junit 13'),(21,'Curso Alejandro Junit 14','Descripcion Alejandro Junit 14'),(22,'Curso Alejandro Junit 15','Descripcion Alejandro Junit 15'),(23,'Curso Alejandro Junit 16','Descripcion Alejandro Junit 16'),(24,'Curso Alejandro Junit 17','Descripcion Alejandro Junit 17'),(25,'Curso Alejandro Junit 18','Descripcion Alejandro Junit 18'),(26,'Curso Alejandro Junit 19','Descripcion Alejandro Junit 19'),(27,'Curso Alejandro Junit 20','Descripcion Alejandro Junit 20'),(28,'Curso Alejandro Junit 21','Descripcion Alejandro Junit 21'),(29,'Curso Alejandro Junit 22','Descripcion Alejandro Junit 22'),(30,'Curso Alejandro Junit 23','Descripcion Alejandro Junit 23'),(31,'Curso Alejandro Junit 24','Descripcion Alejandro Junit 24'),(32,'Curso Alejandro Junit 25','Descripcion Alejandro Junit 25'),(33,'Curso Alejandro Junit 26','Descripcion Alejandro Junit 26'),(34,'Curso Alejandro Junit 27','Descripcion Alejandro Junit 27'),(35,'Curso Alejandro Junit 28','Descripcion Alejandro Junit 28'),(36,'Curso Alejandro Junit 29','Descripcion Alejandro Junit 29'),(37,'Curso Alejandro Junit 30','Descripcion Alejandro Junit 30'),(38,'Curso Alejandro Junit 31','Descripcion Alejandro Junit 31'),(39,'Curso Alejandro Junit 32','Descripcion Alejandro Junit 32'),(40,'Curso Alejandro Junit 33','Descripcion Alejandro Junit 33'),(41,'Curso Alejandro Junit 34','Descripcion Alejandro Junit 34'),(42,'Curso Alejandro Junit 35','Descripcion Alejandro Junit 35'),(43,'Curso Alejandro Junit 36','Descripcion Alejandro Junit 36'),(44,'Curso Alejandro Junit 37','Descripcion Alejandro Junit 37'),(45,'Curso Alejandro Junit 38','Descripcion Alejandro Junit 38'),(46,'Curso Alejandro Junit 39','Descripcion Alejandro Junit 39'),(47,'Curso Alejandro Junit 40','Descripcion Alejandro Junit 40'),(48,'Curso Alejandro Junit 41','Descripcion Alejandro Junit 41'),(49,'Curso Alejandro Junit 42','Descripcion Alejandro Junit 42'),(50,'Curso Alejandro Junit 43','Descripcion Alejandro Junit 43'),(51,'Curso Alejandro Junit 44','Descripcion Alejandro Junit 44'),(52,'Curso Alejandro Junit 45','Descripcion Alejandro Junit 45'),(53,'Curso Alejandro Junit 46','Descripcion Alejandro Junit 46'),(54,'Curso Alejandro Junit 47','Descripcion Alejandro Junit 47'),(55,'Curso Alejandro Junit 48','Descripcion Alejandro Junit 48'),(56,'Curso Alejandro Junit 49','Descripcion Alejandro Junit 49'),(57,'Curso 23 Sept','Descripción'),(58,'Curso 23 Sept 1','Descripción'),(59,'Curso 23 Sept 1','Descripción');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alumno_id` int(11) NOT NULL,
  `calendario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inscripcion_alumno1_idx` (`alumno_id`),
  KEY `fk_inscripcion_calendario1_idx` (`calendario_id`),
  CONSTRAINT `fk_inscripcion_alumno1` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`id`),
  CONSTRAINT `fk_inscripcion_calendario1` FOREIGN KEY (`calendario_id`) REFERENCES `calendario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` VALUES (1,2,2),(3,3,2);
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pago` datetime NOT NULL,
  `monto` double NOT NULL,
  `inscripcion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pago_inscripcion1_idx` (`inscripcion_id`),
  CONSTRAINT `fk_pago_inscripcion1` FOREIGN KEY (`inscripcion_id`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'2019-09-10 00:00:00',300.5,1),(3,'2019-09-19 17:17:25',5000,3),(4,'2019-09-19 12:19:49',5000,3);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'melman','la jirafa');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 10:18:05

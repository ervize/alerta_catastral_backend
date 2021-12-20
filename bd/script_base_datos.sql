CREATE DATABASE  IF NOT EXISTS `alerta_catastral` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alerta_catastral`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: alerta_catastral
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensajes` (
  `codmensaje` varchar(15) NOT NULL,
  `id_1` varchar(50) NOT NULL,
  `id_2` varchar(50) NOT NULL,
  `id_3` varchar(50) NOT NULL,
  `nummodif` int NOT NULL,
  `codsistema` varchar(2) NOT NULL,
  `numemisor` varchar(50) NOT NULL,
  `emailemisor` varchar(50) NOT NULL,
  `codpais` varchar(4) NOT NULL,
  `codreceptor` varchar(50) NOT NULL,
  `numreceptor` varchar(50) NOT NULL,
  `emailreceptor` varchar(50) NOT NULL,
  `mensaje` varchar(150) NOT NULL,
  `fecmensaje` datetime NOT NULL,
  `estenviosms` varchar(1) NOT NULL,
  `esteenvioemail` varchar(1) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `fecregistro` datetime NOT NULL,
  `maquina` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`codmensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` VALUES ('000000000001','0141000080A0101001','-','-',1,'01','40569722','ervize@hotmail.com','51','0000000045','999302985','-','SE REALIZO CAMBIO DE PROPIETARIO COD: 0141000080A0101001','2021-12-16 00:00:00','N','N','SISTEMAS','2021-12-16 00:00:00','SERVIDOR','127.0.0.1'),('000000000002','20060100000000000110000','-','-',1,'01','40569722','ervize@hotmail.com','51','0000000046','956290589','-','SE REALIZO CAMBIOS EN LAS CARACTERISTICAS DE CONSTRUCCION COD: 20060100000000000110000','2021-12-16 00:00:00','N','N','SISTEMAS','2021-12-16 00:00:00','SERVIDOR','127.0.0.1'),('000000000003','20060100000000000101001','-','-',1,'01','40569722','ervize@hotmail.com','51','0000000047','960283643','-','SE REALIZO CAMBIOS EN EL AREA DE TERRENO COD: 20060100000000000101001','2021-12-16 00:00:00','N','N','SISTEMAS','2021-12-16 00:00:00','SERVIDOR','127.0.0.1');
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predios`
--

DROP TABLE IF EXISTS `predios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predios` (
  `codusuario` varchar(10) NOT NULL,
  `codficha` varchar(10) NOT NULL,
  `codcatastral` varchar(30) NOT NULL,
  `nummodif` int NOT NULL,
  `codtipopredio` varchar(1) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `fecregistro` datetime NOT NULL,
  `maquina` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`codusuario`,`codficha`,`codcatastral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predios`
--

LOCK TABLES `predios` WRITE;
/*!40000 ALTER TABLE `predios` DISABLE KEYS */;
INSERT INTO `predios` VALUES ('0000000045','','0141000080A0101001',1,'R','A','','2021-12-16 11:36:18','',''),('0000000045','','20060100000000000101001',1,'U','A','','2021-12-18 05:54:06','',''),('0000000046','','0130100150A0101001',1,'R','A','','2021-12-18 05:05:40','',''),('0000000046','','20060100000000000110000',1,'U','A','','2021-12-18 04:54:38','',''),('0000000047','','20060100000000000101001',1,'U','A','','2021-12-18 05:54:36','','');
/*!40000 ALTER TABLE `predios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semillas`
--

DROP TABLE IF EXISTS `semillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semillas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombcampo` varchar(50) NOT NULL,
  `serie` varchar(10) NOT NULL,
  `nummodif` int NOT NULL,
  `descsemilla` varchar(50) NOT NULL,
  `valor` bigint NOT NULL,
  `estado` varchar(1) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `fecregistro` datetime NOT NULL,
  `maquina` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semillas`
--

LOCK TABLES `semillas` WRITE;
/*!40000 ALTER TABLE `semillas` DISABLE KEYS */;
INSERT INTO `semillas` VALUES (1,'codusuario','',1,'Codigo de Usuario',48,'N','SISTEMAS','2021-11-10 00:00:00','SERVIDOR','127.0.0.1'),(2,'codmensaje','',1,'Codigo de Mensaje',13,'N','SISTEMAS','2021-11-17 00:00:00','SERVIDOR','127.0.0.1');
/*!40000 ALTER TABLE `semillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistemas`
--

DROP TABLE IF EXISTS `sistemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistemas` (
  `codsistema` varchar(2) NOT NULL,
  `nummodif` varchar(50) NOT NULL,
  `nombsistema` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `responsable` varchar(50) DEFAULT NULL,
  `fecregistro` datetime DEFAULT NULL,
  `maquina` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codsistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistemas`
--

LOCK TABLES `sistemas` WRITE;
/*!40000 ALTER TABLE `sistemas` DISABLE KEYS */;
INSERT INTO `sistemas` VALUES ('01','1','SGTM','N','SISTEMAS','2021-11-17 00:00:00','SERVIDOR','127.0.0.1');
/*!40000 ALTER TABLE `sistemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocs`
--

DROP TABLE IF EXISTS `tipodocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodocs` (
  `codtipodoc` varchar(2) NOT NULL,
  `nummodif` int NOT NULL,
  `nombtipodoc` varchar(150) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `fecregistro` datetime NOT NULL,
  `maquina` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`codtipodoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocs`
--

LOCK TABLES `tipodocs` WRITE;
/*!40000 ALTER TABLE `tipodocs` DISABLE KEYS */;
INSERT INTO `tipodocs` VALUES ('01',1,'DNI','N','SISTEMAS','2021-11-09 00:00:00','SERVIDOR','127.0.0.1'),('02',1,'CARNET EX','N','SISTEMAS','2021-11-09 00:00:00','SERVIDOR','127.0.0.1');
/*!40000 ALTER TABLE `tipodocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipospredio`
--

DROP TABLE IF EXISTS `tipospredio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipospredio` (
  `codtipopredio` varchar(1) NOT NULL,
  `nummodif` int NOT NULL,
  `nombtipopredio` varchar(50) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `responsable` varchar(45) NOT NULL,
  `fecregistro` varchar(45) NOT NULL,
  `maquina` varchar(45) NOT NULL,
  `ip` varchar(45) NOT NULL,
  PRIMARY KEY (`codtipopredio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipospredio`
--

LOCK TABLES `tipospredio` WRITE;
/*!40000 ALTER TABLE `tipospredio` DISABLE KEYS */;
INSERT INTO `tipospredio` VALUES ('R',1,'RURAL','N','SISTEMAS','2021-11-15','SERVIDOR','127.0.0.1'),('U',1,'URBANO','N','SISTEMAS','2021-11-15','SERVIDOR','127.0.0.1');
/*!40000 ALTER TABLE `tipospredio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `codusuario` varchar(10) NOT NULL,
  `nummodif` int NOT NULL DEFAULT '1',
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `codtipodoc` varchar(2) NOT NULL,
  `numdoc` varchar(25) NOT NULL,
  `email` varchar(150) NOT NULL,
  `numcel` varchar(50) NOT NULL,
  `passw` varchar(250) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `fecregistro` datetime NOT NULL,
  `maquina` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`codusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('0000000045',4,'VILELA','ZEGARRA','ERNESTO SALOMON','01','40569722','ervize@hotmail.com','999302985','$2b$10$muMF49LFwpD0yaO27HyO8OUmdblZTyx4FMJKbGcLfI226HvXetvqi','N','SISTEMAS','2021-12-16 11:34:43','localhost','161.132.117.171'),('0000000046',2,'ZAPATA','CARREÑO','JORGE','01','12345678','jzapata@hotmail.com','956290589','$2b$10$YUlaguDRf95TPwAst3Q6q.Kf0R2uNJkkNIXNSboWH4ra7jgsas2m6','N','SISTEMAS','2021-12-18 04:52:41','localhost','181.176.68.244'),('0000000047',2,'VILELA','SALES','BRUNO','01','99999999','bvilela@hotmail.com','960283643','$2b$10$WGJk6se79u9mH2Sga2HruOxjCFmo639lQAlXVAx.zmfEO1qe0C6Sy','N','SISTEMAS','2021-12-18 05:42:57','localhost','127.0.0.1');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'alerta_catastral'
--

--
-- Dumping routines for database 'alerta_catastral'
--
/*!50003 DROP PROCEDURE IF EXISTS `proc_mensajesbuscar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_mensajesbuscar`(
	IN pcodmensaje VARCHAR(15),
	IN pcodsistema VARCHAR(10),
    IN pcodreceptor VARCHAR(50),
	IN pid_1 VARCHAR(50),
    IN pid_2 VARCHAR(50),
	IN pid_3 VARCHAR(50)
    
)
BEGIN
	
   	SELECT 
            @i:=@i+1 AS id, 
            t.*
	FROM 
            mensajes AS t,
			(SELECT @i:=0) AS foo
    WHERE
		(pcodmensaje='' OR codmensaje=pcodmensaje) AND
		(pcodsistema='' OR codsistema=pcodsistema) AND
        (pcodreceptor='' OR codreceptor=pcodreceptor) AND
        (pid_1='' OR id_1=pid_1) AND 
        (pid_2='' OR id_2=pid_2) AND
        (pid_3='' OR id_3=pid_3);
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_mensajeseliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_mensajeseliminar`(
	
			IN pcodmensaje VARCHAR(15)
)
BEGIN
	
	DELETE FROM mensajes 
    WHERE 
		codmensaje=pcodmensaje;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_mensajesgrabar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_mensajesgrabar`(
	
			IN pcodmensaje VARCHAR(15),
			IN pnummodif INT,
			IN pcodsistema VARCHAR(2),
			IN pnumemisor VARCHAR(50),
			IN pemailemisor VARCHAR(50),
			IN pcodpais VARCHAR(4),
			IN pcodreceptor VARCHAR(50),
			IN pnumreceptor VARCHAR(15),
			IN pemailreceptor VARCHAR(50),
			IN pmensaje VARCHAR(500),
			IN pfecmensaje DATETIME,
			IN pestenviosms VARCHAR(1),
			IN pesteenvioemail VARCHAR(1),
			IN pid_1 VARCHAR(50),
            IN pid_2 VARCHAR(50),
            IN pid_3 VARCHAR(50),
			IN presponsable VARCHAR(50),
			IN pfecregistro DATETIME,
			IN pmaquina VARCHAR(50),
			IN pip VARCHAR(50)
)
BEGIN
	declare pmens varchar(50);
    
	#set pmens='Numero de documento no debe ser vacio';
	#if pnumdoc='' then
		 #SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = pmens;
	#end if;

	if pcodmensaje='' then
		set pnummodif=1;
		call proc_SemillasGeneraCodigo(pcodmensaje,'codmensaje','',15,'N');
	else
		set pnummodif=(SELECT nummodif FROM mensajes WHERE codmensaje=pcodmensaje);
		DELETE FROM mensajes WHERE codmensaje=pcodmensaje;
	end if;

		INSERT INTO `mensajes`
		(
        
			`codmensaje`,
			`nummodif`,
			`codsistema`,
			`numemisor`,
			`emailemisor`,
			`codpais`,
			`codreceptor`,
			`numreceptor`,
			`emailreceptor`,
			`mensaje`,
			`fecmensaje`,
			`estenviosms`,
			`esteenvioemail`,
			`id_1`,
            `id_2`,
            `id_3`,
			`responsable`,
			`fecregistro`,
			`maquina`,
			`ip`
        
        )
		VALUES
		(
			 pcodmensaje,
			 pnummodif,
			 pcodsistema,
			 pnumemisor,
			 pemailemisor,
			 pcodpais,
			 pcodreceptor,
			 pnumreceptor,
			 pemailreceptor,
			 pmensaje,
			 pfecmensaje,
			 pestenviosms,
			 pesteenvioemail,
             pid_1,
             pid_2,
             pid_3,
			 presponsable,
			 pfecregistro,
			 pmaquina,
			 pip	
        );


	SELECT pcodmensaje AS pcodmensaje;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_prediosbuscar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_prediosbuscar`(
	IN pcodusuario VARCHAR(10),
    IN pcodficha VARCHAR(10),
    IN pcodcatastral VARCHAR(30),
    IN pcodtipopredio VARCHAR(50)
)
BEGIN
		SELECT 
            @i:=@i+1 AS id, 
            t.*
		FROM 
            predios AS t,
			(SELECT @i:=0) AS foo
		WHERE
			(pcodusuario='' OR codusuario=pcodusuario) AND
			(pcodficha='' OR codficha=pcodficha) AND
			(pcodcatastral='' OR codcatastral=pcodcatastral) AND
			(pcodtipopredio='' OR codtipopredio=pcodtipopredio);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_predioseliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_predioseliminar`(
	IN pcodusuario VARCHAR(10),
    IN pcodficha VARCHAR(10),
    IN pcodcatastral VARCHAR(30)
)
BEGIN

		DELETE FROM predios 
        WHERE
        (pcodusuario='' OR codusuario=pcodusuario) AND
		(pcodficha='' OR codficha=pcodficha) AND
		(pcodcatastral='' OR codcatastral=pcodcatastral);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_prediosgrabar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_prediosgrabar`(
	IN pcodusuario VARCHAR(10),
    IN pcodficha VARCHAR(10),
    IN pcodcatastral VARCHAR(30),
	IN pnummodif INT,
    IN pcodtipopredio VARCHAR(50),
    IN pestado VARCHAR(1),
    IN presponsable VARCHAR(50),
    IN pfecregistro DATETIME,
    IN pmaquina VARCHAR(50),
    IN pip VARCHAR(50)
)
BEGIN
	
		SET pcodtipopredio=CASE
								WHEN pcodtipopredio='1' THEN 'U'
								WHEN pcodtipopredio='2' THEN 'R'
								ELSE ''
							END;

		INSERT INTO `predios`
		(
			`codusuario`,
			`codficha`,
			`codcatastral`,
			`nummodif`,
			`codtipopredio`,
			`estado`,
			`responsable`,
			`fecregistro`,
			`maquina`,
			`ip`
        )
		VALUES
		(
			pcodusuario,
			pcodficha,
			pcodcatastral,
			pnummodif,
			pcodtipopredio,
			pestado,
			presponsable,
			pfecregistro,
			pmaquina,
			pip
        );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_SemillasGeneraCodigo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_SemillasGeneraCodigo`(
	OUT pnumsalida	Varchar(15), 
	IN pnombcampo	VarChar (30),  
	IN pserie varchar(15),
	IN ptam int,
	IN pmostselect Varchar(1)
)
BEGIN

	

	declare pvalor bigint;
    declare pmens varchar (150);
    declare pnumreg int;
    
    SET SQL_SAFE_UPDATES = 0;
    
    set pnumreg=0;
    
    Set pMens=concat('No existe semilla ', pnombcampo);
    
    If not Exists(Select * From semillas Where  RTRIM(NombCampo) = pNombCampo and Serie=pSerie) then
            SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = pmens;
	end if;
    
    While pnumreg=0 DO
	
     
		SET  pvalor=(Select  Valor  
						From semillas 
							Where  RTRIM(NombCampo) = pNombCampo AND Serie=pSerie
                            );
	
		Set	pNumSalida = Right(concat(repeat('0',pTam), Convert(pValor, char)),pTam);
	
    
		Update 	semillas 
			Set Valor= Valor+1 
            Where  
				NombCampo= pNombCampo and Valor=pValor and Serie=pSerie;
	
		Set pNumReg=ROW_COUNT();
	  
    
		If pMostSelect='S' then
			Select pNumSalida;
		end if;
	End while;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_tipodocsbuscar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_tipodocsbuscar`(
IN pcodtipodoc VARCHAR(2),
IN pnombtipodoc varchar(150)
)
BEGIN
	SELECT 
    
		*
    FROM tipodocs
    WHERE 
		(pcodtipodoc='' OR codtipodoc=pcodtipodoc) AND
        (pnombtipodoc='' OR nombtipodoc=pnombtipodoc); 
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_usuariosbuscar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_usuariosbuscar`(
	IN pcodusuario VARCHAR(10)
)
BEGIN
	SELECT 
		*
    FROM usuarios
    WHERE 
		(pcodusuario='' OR codusuario=pcodusuario) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_usuarioscerrar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_usuarioscerrar`(
	IN pcodusuario VARCHAR(10),
    IN presponsable VARCHAR(50),
    IN pfecregistro DATETIME,
    IN pmaquina VARCHAR(50),
    IN pip VARCHAR(50)
)
BEGIN
	
    UPDATE usuarios 
    SET 
		nummodif=nummodif+1,
		Estado='I'
    WHERE codusuario=pcodusuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_usuariosgrabar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_usuariosgrabar`(
	IN pcodusuario VARCHAR(10),
    IN pnummodif INT,
    IN ppaterno VARCHAR(50),
    IN pmaterno VARCHAR(50),
    IN pnombres VARCHAR(50),
    IN pcodtipodoc VARCHAR(2),
    IN pnumdoc VARCHAR(25),
    IN pemail VARCHAR(50),
    IN pnumcel VARCHAR(50),
    IN ppassw VARCHAR(250),
    IN pestado VARCHAR(1),
    IN presponsable VARCHAR(50),
    IN pfecregistro DATETIME,
    IN pmaquina VARCHAR(50),
    IN pip VARCHAR(50)
)
BEGIN
	declare pmens varchar(50);
	set pmens='Numero de documento no debe ser vacio';
	if pnumdoc='' then
		 SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = pmens;
	end if;

	if pcodusuario='' then
		set pnummodif=1;
		call proc_SemillasGeneraCodigo(pcodusuario,'codusuario','',10,'N');
	else
		set pnummodif=(SELECT nummodif FROM usuarios WHERE codusuario=pcodusuario);
		DELETE FROM usuarios WHERE codusuario=pcodusuario;
	end if;

		INSERT INTO `usuarios`
		(`codusuario`,
        `nummodif`,
		`paterno`,
		`materno`,
		`nombres`,
		`codtipodoc`,
		`numdoc`,
		`email`,
		`numcel`,
		`passw`,
        `estado`,
		`responsable`,
		`fecregistro`,
		`maquina`,
		`ip`)
		VALUES
		(
			pcodusuario,
            pnummodif+1,
			ppaterno,
			pmaterno,
			pnombres,
			pcodtipodoc,
			pnumdoc,
			pemail,
			pnumcel,
			ppassw,
            pestado,
			presponsable,
			pfecregistro,
			pmaquina,
			pip
        );

	SELECT pcodusuario AS pcodusuario;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_usuariosvalidar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_usuariosvalidar`(
	IN pemail VARCHAR(150)
)
BEGIN
	SELECT 
		*
    FROM usuarios
    WHERE 
		(email=pemail);
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

-- Dump completed on 2021-12-20 10:15:46

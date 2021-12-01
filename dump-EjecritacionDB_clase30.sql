-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: EjecritacionDB_clase30
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `categorías`
--

DROP TABLE IF EXISTS `categorías`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorías` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorías`
--

LOCK TABLES `categorías` WRITE;
/*!40000 ALTER TABLE `categorías` DISABLE KEYS */;
INSERT INTO `categorías` VALUES (1,'Lorem Ipsum'),(2,'Lorem Ipsum II'),(3,'Lorem Ipsum III'),(4,'Lorem Ipsum IV'),(5,'Lorem Ipsum V'),(6,'Finibus Bonorum'),(7,'Finibus Bonorum II'),(8,'Finibus Bonorum III'),(9,'Pasajes Lorem'),(10,'Pasajes Lorem II');
/*!40000 ALTER TABLE `categorías` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_id` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Fecha_creación` date NOT NULL DEFAULT current_timestamp(),
  `Fecha_modificación` date NOT NULL DEFAULT current_timestamp(),
  `Descripción` text NOT NULL,
  `Eliminar` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_FK` (`Usuario_id`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,1,'Pasaje estándar Lorem Ipsum','2020-05-30','2021-02-05','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',0),(2,3,'Finibus Bonorum et Malorum','2019-02-09','2021-03-23','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',0),(3,7,'Finibus Bonorum et Malorum II','2018-08-26','2020-08-28','Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt',0),(4,2,'Lorem Ipsum','2020-10-10','2021-08-02','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',0),(5,5,'Pasaje estándar Lorem Ipsum II','2019-01-05','2020-12-14','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',0),(6,9,'Lorem Ipsum V','2018-03-15','2020-07-09','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',0),(7,8,'Lorem Ipsum','2020-06-16','2021-10-01','Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',0),(8,10,'Pasaje Lorem Ipsum','2020-11-23','2021-11-01','Enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',0),(9,4,'Lorem Ipsumm','2021-02-13','2021-06-06','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',0),(10,6,'Bonorum et Malorum','2019-12-03','2020-12-25','Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',0);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorías`
--

DROP TABLE IF EXISTS `notas_categorías`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_categorías` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `categoría_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_categorías_FK` (`nota_id`),
  KEY `notas_categorías_FK_1` (`categoría_id`),
  CONSTRAINT `notas_categorías_FK` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `notas_categorías_FK_1` FOREIGN KEY (`categoría_id`) REFERENCES `categorías` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorías`
--

LOCK TABLES `notas_categorías` WRITE;
/*!40000 ALTER TABLE `notas_categorías` DISABLE KEYS */;
INSERT INTO `notas_categorías` VALUES (1,1,9),(2,2,6),(3,3,8),(4,4,1),(5,5,10),(6,6,5),(7,7,1),(8,8,9),(9,9,3),(10,10,6);
/*!40000 ALTER TABLE `notas_categorías` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Martin','martintaddia@gmail.com'),(2,'Tomas','tomasguerrero93@hotmail.com'),(3,'Jose','joseignacio@gmail.com'),(4,'Paula','paulamunge@yahoo.com.ar'),(5,'Mauro','eyrasm@yahoo.com.ar'),(6,'Tomas','tomizurro@gmail.com'),(7,'Julian','juliandmgz91@hotmail.com'),(8,'Gabriela','mleys@yahoo.com.ar'),(9,'Mercedes','mechiruiz@gmail.com'),(10,'Federico','pinchumilos@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'EjecritacionDB_clase30'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 16:24:31

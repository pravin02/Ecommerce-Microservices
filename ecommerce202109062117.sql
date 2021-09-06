-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ecommerce
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ ecommerce;
USE ecommerce;

--
-- Table structure for table `ecommerce`.`catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `catalog_id` int(11) NOT NULL,
  `catalog` varchar(255) default NULL,
  PRIMARY KEY  (`catalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecommerce`.`catalog`
--

/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` (`catalog_id`,`catalog`) VALUES 
 (1,'Electronics'),
 (2,'Clothing'),
 (3,'Mobile'),
 (4,'Laptop');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;


--
-- Table structure for table `ecommerce`.`log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` varchar(255) NOT NULL,
  `log` varchar(255) default NULL,
  `method` varchar(255) default NULL,
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecommerce`.`log`
--

/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;


--
-- Table structure for table `ecommerce`.`logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `description` varchar(500) NOT NULL default '',
  `method` varchar(45) NOT NULL default '',
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecommerce`.`logs`
--

/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (1,'product catalog called','get',NULL),
 (2,'GET request sent to http://localhost:8080/api/logs','GET','Pre'),
 (3,'GET request sent to http://localhost:8080/api/logs','GET','Route'),
 (4,'GET request sent to http://localhost:8080/api/logs','GET','Post'),
 (5,'GET request sent to http://localhost:8080/api/logs','GET','Pre'),
 (6,'GET request sent to http://localhost:8080/api/logs','GET','Route'),
 (7,'GET request sent to http://localhost:8080/api/logs','GET','Post'),
 (8,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (9,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (10,'GET request sent to http://localhost:8080/api/catalog/list','GET','Post'),
 (11,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (12,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (13,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (14,'GET request sent to http://localhost:8080/api/logs','GET','Pre');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (15,'GET request sent to http://localhost:8080/api/logs','GET','Route'),
 (16,'GET request sent to http://localhost:8080/api/logs','GET','Post'),
 (17,'GET request sent to http://localhost:8080/api/products','GET','Pre'),
 (18,'GET request sent to http://localhost:8080/api/products','GET','Route'),
 (19,'GET request sent to http://localhost:8080/api/products','GET','Post'),
 (20,'GET request sent to http://localhost:8080/api/logs','GET','Pre'),
 (21,'GET request sent to http://localhost:8080/api/logs','GET','Route'),
 (22,'GET request sent to http://localhost:8080/api/logs','GET','Post'),
 (23,'GET request sent to http://localhost:8080/api/products/list','GET','Pre'),
 (24,'GET request sent to http://localhost:8080/api/products/list','GET','Route'),
 (25,'GET request sent to http://localhost:8080/api/products/list','GET','Post'),
 (26,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (27,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (28,'GET request sent to http://localhost:8080/api/catalog/list','GET','Post');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (29,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (30,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (31,'GET request sent to http://localhost:8080/api/catalog/list','GET','Post'),
 (32,'GET request sent to http://localhost:8080/api/products/list','GET','Pre'),
 (33,'GET request sent to http://localhost:8080/api/products/list','GET','Route'),
 (34,'GET request sent to http://localhost:8080/api/products/list','GET','Post'),
 (35,'GET request sent to http://localhost:8080/api/logs','GET','Pre'),
 (36,'GET request sent to http://localhost:8080/api/logs','GET','Route'),
 (37,'GET request sent to http://localhost:8080/api/logs','GET','Post'),
 (38,'GET request sent to http://localhost:8080/api/products/list','GET','Pre'),
 (39,'GET request sent to http://localhost:8080/api/products/list','GET','Route'),
 (40,'GET request sent to http://localhost:8080/api/products/list','GET','Post'),
 (41,'GET request sent to http://localhost:8080/api/products','GET','Pre');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (42,'GET request sent to http://localhost:8080/api/products','GET','Route'),
 (43,'GET request sent to http://localhost:8080/api/products','GET','Post'),
 (44,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (45,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (46,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (47,'GET request sent to http://localhost:8080/api/logs','GET','Pre'),
 (48,'GET request sent to http://localhost:8080/api/logs','GET','Route'),
 (49,'GET request sent to http://localhost:8080/api/logs','GET','Post'),
 (50,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (51,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (52,'GET request sent to http://localhost:8080/error','GET','Post'),
 (53,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (54,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (55,'GET request sent to http://localhost:8080/error','GET','Post');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (56,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (57,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (58,'GET request sent to http://localhost:8080/error','GET','Post'),
 (59,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (60,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (61,'GET request sent to http://localhost:8080/error','GET','Post'),
 (62,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (63,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (64,'GET request sent to http://localhost:8080/error','GET','Post'),
 (65,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (66,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (67,'GET request sent to http://localhost:8080/error','GET','Post'),
 (68,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (69,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (70,'GET request sent to http://localhost:8080/error','GET','Post'),
 (71,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (72,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (73,'GET request sent to http://localhost:8080/error','GET','Post'),
 (74,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (75,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (76,'GET request sent to http://localhost:8080/error','GET','Post'),
 (77,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (78,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (79,'GET request sent to http://localhost:8080/error','GET','Post'),
 (80,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (81,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (82,'GET request sent to http://localhost:8080/error','GET','Post'),
 (83,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (84,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (85,'GET request sent to http://localhost:8080/error','GET','Post'),
 (86,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (87,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (88,'GET request sent to http://localhost:8080/error','GET','Post'),
 (89,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (90,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (91,'GET request sent to http://localhost:8080/error','GET','Post'),
 (92,'GET request sent to http://localhost:8080/api/logs','GET','Pre'),
 (93,'GET request sent to http://localhost:8080/api/logs','GET','Route'),
 (94,'GET request sent to http://localhost:8080/api/logs','GET','Post'),
 (95,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (96,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (97,'GET request sent to http://localhost:8080/error','GET','Post');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (98,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (99,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (100,'GET request sent to http://localhost:8080/error','GET','Post'),
 (101,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (102,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (103,'GET request sent to http://localhost:8080/error','GET','Post'),
 (104,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (105,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (106,'GET request sent to http://localhost:8080/api/catalog/list','GET','Post'),
 (107,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre'),
 (108,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (109,'GET request sent to http://localhost:8080/api/catalog/list','GET','Post'),
 (110,'GET request sent to http://localhost:8080/api/catalog/list','GET','Pre');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (111,'GET request sent to http://localhost:8080/api/catalog/list','GET','Route'),
 (112,'GET request sent to http://localhost:8080/api/catalog/list','GET','Post'),
 (113,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (114,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (115,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (116,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (117,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (118,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (119,'GET request sent to http://localhost:8080/api/logs','GET','Pre'),
 (120,'GET request sent to http://localhost:8080/api/logs','GET','Route'),
 (121,'GET request sent to http://localhost:8080/api/logs','GET','Post'),
 (122,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (123,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (124,'GET request sent to http://localhost:8080/api/catalog','GET','Post');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (125,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (126,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (127,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (128,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (129,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (130,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (131,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (132,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (133,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (134,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (135,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (136,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (137,'GET request sent to http://localhost:8080/api/catalog','GET','Pre');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (138,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (139,'GET request sent to http://localhost:8080/error','GET','Post'),
 (140,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (141,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (142,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (143,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (144,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (145,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (146,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (147,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (148,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (149,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (150,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (151,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (152,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (153,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (154,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (155,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (156,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (157,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (158,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (159,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (160,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (161,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (162,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (163,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (164,'GET request sent to http://localhost:8080/api/catalog/props','GET','Pre'),
 (165,'GET request sent to http://localhost:8080/api/catalog/props','GET','Route'),
 (166,'GET request sent to http://localhost:8080/api/catalog/props','GET','Post'),
 (167,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (168,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (169,'GET request sent to http://localhost:8080/error','GET','Post'),
 (170,'GET request sent to http://localhost:8080/api/catalog/message','GET','Pre'),
 (171,'GET request sent to http://localhost:8080/api/catalog/message','GET','Route'),
 (172,'GET request sent to http://localhost:8080/api/catalog/message','GET','Post'),
 (173,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (174,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (175,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (176,'GET request sent to http://localhost:8080/api/catalog','GET','Pre');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (177,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (178,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (179,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (180,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (181,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (182,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (183,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (184,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (185,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (186,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (187,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (188,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (189,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (190,'GET request sent to http://localhost:8080/api/catalog','GET','Post');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (191,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (192,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (193,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (194,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (195,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (196,'GET request sent to http://localhost:8080/error','GET','Post'),
 (197,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (198,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (199,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (200,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (201,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (202,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (203,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (204,'GET request sent to http://localhost:8080/api/catalog','GET','Route');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (205,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (206,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (207,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (208,'GET request sent to http://localhost:8080/error','GET','Post'),
 (209,'GET request sent to http://localhost:8080/api/catalog','GET','Pre'),
 (210,'GET request sent to http://localhost:8080/api/catalog','GET','Route'),
 (211,'GET request sent to http://localhost:8080/api/catalog','GET','Post'),
 (212,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Pre'),
 (213,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Route'),
 (214,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Post'),
 (215,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Pre'),
 (216,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Route'),
 (217,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Post');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (218,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Pre'),
 (219,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Route'),
 (220,'GET request sent to http://localhost:8080/error','GET','Post'),
 (221,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Pre'),
 (222,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Route'),
 (223,'GET request sent to http://localhost:8080/error','GET','Post'),
 (224,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Pre'),
 (225,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Route'),
 (226,'GET request sent to http://localhost:8080/error','GET','Post'),
 (227,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Pre'),
 (228,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Route');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (229,'GET request sent to http://localhost:8080/api/catalog/catalog/Electronics/products','GET','Post'),
 (230,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Pre'),
 (231,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Route'),
 (232,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Post'),
 (233,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Pre'),
 (234,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Route'),
 (235,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Post'),
 (236,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Pre'),
 (237,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Route'),
 (238,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Post'),
 (239,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Pre');
INSERT INTO `logs` (`log_id`,`description`,`method`,`type`) VALUES 
 (240,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Route'),
 (241,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Post'),
 (242,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Pre'),
 (243,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Route'),
 (244,'GET request sent to http://localhost:8080/api/catalog/Electronics/products','GET','Post');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


--
-- Table structure for table `ecommerce`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `catalog_id` int(11) default NULL,
  `product_name` varchar(255) default NULL,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecommerce`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_id`,`catalog_id`,`product_name`) VALUES 
 (1,1,'Freeze'),
 (2,1,'TV'),
 (3,2,'T-Shirt'),
 (4,3,'Samsung'),
 (5,3,'Apple'),
 (6,4,'Dell'),
 (7,4,'HP');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.8.110 (MySQL 5.6.10)
# Database: country_region
# Generation Time: 2019-07-24 01:16:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table continents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `continents`;

CREATE TABLE `continents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `iso_code_2` varchar(11) NOT NULL,
  `cn_name` varchar(100) NOT NULL,
  `en_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `continents` WRITE;
/*!40000 ALTER TABLE `continents` DISABLE KEYS */;

INSERT INTO `continents` (`id`, `iso_code_2`, `cn_name`, `en_name`)
VALUES
	(1,'AF','非洲','Africa'),
	(2,'AS','亚洲','Asia'),
	(3,'EU','欧洲','Europe'),
	(4,'AN','南极洲','Antarctica'),
	(5,'OC','大洋洲','Oceania'),
	(6,'NA','北美洲','North America'),
	(7,'SA','南美洲','South America');

/*!40000 ALTER TABLE `continents` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

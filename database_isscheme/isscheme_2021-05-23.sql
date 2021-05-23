# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.13-MariaDB)
# Database: isscheme
# Generation Time: 2021-05-23 06:25:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Product`;

CREATE TABLE `Product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `brand` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;

INSERT INTO `Product` (`id`, `price`, `short_description`, `brand`)
VALUES
	(2,11000.67,'White colour, 84GB Internal','Brand1'),
	(3,11000.68,'Black colour, 84GB Internal','Brand2'),
	(4,7000,'Blue Colour, 34GB Internal','Brand3'),
	(5,23000,'Black colour, 104GB Internal','Brand4'),
	(7,8000,'White colour, 34GB Internal','Brand5'),
	(8,6500,'White colour, 30GB Internal','Brand4'),
	(9,2000.56,'White colour, 8GB Internal','Brand3'),
	(10,6500.78,'Red colour, 34GB Internal','Brand6'),
	(11,4500,'White colour, 30GB Internal','Brand5'),
	(12,9500,'Red colour, 74GB Internal','Brand3'),
	(13,6500,'Blue colour, 30GB Internal','Brand3'),
	(14,9000,'Black colour, 70GB Internal','Brand2'),
	(15,10000,'Blue colour, 80GB Internal','Brand1'),
	(16,6800.86,'Yellow colour, 34GB Internal','Brand6'),
	(17,10500,'Yellow colour, 84GB Internal','Brand1'),
	(18,3000,'White colour, 15GB Internal','Brand2'),
	(19,9500.58,'Red colour, 74GB Internal','Brand3'),
	(20,5500,'Green colour, 34GB Internal','Brand4'),
	(21,9300.48,'Green colour, 74GB Internal','Brand5'),
	(22,10800,'Yellow colour, 104GB Internal','Brand3');

/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

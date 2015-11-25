# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.22)
# Database: Project
# Generation Time: 2015-11-25 22:07:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table CourseDetails
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CourseDetails`;

CREATE TABLE `CourseDetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '',
  `Course_ID` varchar(8) NOT NULL DEFAULT '',
  `Course_Description` text,
  `Instructor_Name` varchar(50) NOT NULL DEFAULT '',
  `Time` varchar(15) NOT NULL DEFAULT '',
  `Day` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `CourseDetails` WRITE;
/*!40000 ALTER TABLE `CourseDetails` DISABLE KEYS */;

INSERT INTO `CourseDetails` (`id`, `Name`, `Course_ID`, `Course_Description`, `Instructor_Name`, `Time`, `Day`)
VALUES
	(1,'Algorithms','CS404','Amazing Course. All About algorithms\n','Umar Sheikh','10:30','Tuesdays'),
	(2,'Advanced Programming','CS415','Advanced Programming concepts about Java.','Rehan Sarwar','2:00','Wednesdays'),
	(3,'SMD','CS445','Mobile Technologies specifically Android.','Ishrat Fatima','08:30','Mondays');

/*!40000 ALTER TABLE `CourseDetails` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table RegisteredCourses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RegisteredCourses`;

CREATE TABLE `RegisteredCourses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Roll_Number` varchar(10) NOT NULL DEFAULT '',
  `Course_ID` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Transcript
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Transcript`;

CREATE TABLE `Transcript` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Roll_Number` varchar(10) NOT NULL DEFAULT '',
  `Course_ID` double NOT NULL,
  `Grade` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table User
# ------------------------------------------------------------

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL DEFAULT '',
  `DOB` date NOT NULL,
  `Address` text NOT NULL,
  `Phone_Number` varchar(30) NOT NULL DEFAULT '',
  `Roll_Number` varchar(10) NOT NULL DEFAULT '',
  `Username` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL DEFAULT '',
  `EmailAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;

INSERT INTO `User` (`id`, `Name`, `DOB`, `Address`, `Phone_Number`, `Roll_Number`, `Username`, `Password`, `EmailAddress`)
VALUES
	(1,'Ali Abbas Jaffri','1991-01-18','House No. 1486/2-C, Nagi Road Lahore Cantt','3314960870','114623','aliabbas','123456',NULL),
	(2,'Mahina Aman Khan Lashari','1993-08-14','141-A EME Defence Lahore','3004005024','114439','mahina','123',NULL),
	(4,'Umair Ahsan','1991-08-15','Gandi Jagah DHA, Lahore','3314714311','114457','umair','123',NULL),
	(5,'Raza Ahmad','1992-11-01','Zahoor Nazeer Lane, Arif Jaan Road, Lahore Cantt','3324323214','114627','raza','123',NULL),
	(6,'Hamza Tahir','1992-01-01','141 N Block DHA Lahore','3077937299','114034','hamza','123',NULL),
	(7,'Syed Asad Ali Kazmi','1993-12-11','Mian Mir Colony, Upper Mall Road, Lahore','3324197629','114280','kazmi','123',NULL),
	(8,'Abdussami Tayyab','1994-02-01','Karim Block Allama Iqbal Town, Lahore','3314484089','114939','dhuss','123',NULL),
	(9,'Bilal Saleem','1990-02-01','Somewhere on Walton, Lahore','3334393344','114543','bilal','123',NULL),
	(10,'Muhammad Ali','1996-11-10','Lawrence Road, Lahore','03454567445','114445','mario','123',NULL),
	(11,'MahaSaeed','2015-11-11','House No. I DONT KNOW, DHA Lahore.','03114711471','114000.0','mahasaeed','123456','maha@saeed.com');

/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

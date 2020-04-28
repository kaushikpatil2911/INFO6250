
-- SQL Commands for 6250 Final Project Database --

CREATE DATABASE  IF NOT EXISTS `capp_db`;

USE `capp_db`;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `user_fk_idx` (`userId`),
  CONSTRAINT `user_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `loginName` varchar(45) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(1) NOT NULL DEFAULT '2',
  `loginStatus` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `loginName_UNIQUE` (`loginName`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (3,'Kaush','123456789','kaush@gmail.com','Mumbai','k','123',1,1);
UNLOCK TABLES;

select * from user;

--  ----------------------END---------------------- --


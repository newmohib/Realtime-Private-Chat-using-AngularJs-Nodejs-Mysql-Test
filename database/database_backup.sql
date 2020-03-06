DROP DATABASE `chat`; 
CREATE DATABASE IF NOT EXISTS `chat`;
USE `chat`;
DROP TABLE IF EXISTS `message`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` varchar(45) DEFAULT NULL,
  `to_user_id` varchar(45) DEFAULT NULL,
  `message` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6  ;

LOCK TABLES `message` WRITE;
INSERT INTO `message` VALUES (1,'1','2','hi'),(2,'2','1','hello'),(3,'1','2','how are you\n'),(4,'2','1','\ni am fine'),(5,'3','2','hi');
UNLOCK TABLES;


DROP TABLE IF EXISTS `user`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `socketid` varchar(200) DEFAULT NULL,
  `online` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 ;

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'mohib','123456','','N'),(2,'jafor','123456','','N'),(3,'rony','123456','','N'),(5,'faisal','123456','','N');
UNLOCK TABLES;

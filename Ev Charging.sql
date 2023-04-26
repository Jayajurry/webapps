/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - evcharge
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`evcharge` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `evcharge`;

/*Table structure for table `station` */

DROP TABLE IF EXISTS `station`;

CREATE TABLE `station` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `sid` varchar(222) DEFAULT NULL,
  `sname` varchar(222) DEFAULT NULL,
  `kwh` varchar(222) DEFAULT NULL,
  `cost` varchar(222) DEFAULT NULL,
  `location` varchar(222) DEFAULT NULL,
  `contact` varchar(222) DEFAULT NULL,
  `map` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `station` */

insert  into `station`(`sno`,`sid`,`sname`,`kwh`,`cost`,`location`,`contact`,`map`) values (1,'SID7102','Relux - Electric Vehicle Charging Station','12 KWH','RS:50','Guindy','044 4952 1212','https://www.google.com/maps/dir/13.0610929,80.198654/ev+charging+station++in+chennai/@13.0414052,80.1696995,13.5z/data=!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a526767676ee245:0xbc0454841752d43a!2m2!1d80.2075137!2d13.0076571'),(2,'SID8371','Merchant logo Lectron Charging Station','15','RS:57','Teynampet','87967967896','https://www.google.com/maps/dir/13.0610929,80.198654/ev+charging+station++in+chennai/@13.046264,80.1865745,13z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a526749b3084e2d:0x5e736d1d9983d4d8!2m2!1d80.2477884!2d13.0449935'),(3,'SID8112','Lectron Charging Station','12 KWH','RS:34','Anna Salai','044 4952 1212','https://www.google.com/maps/dir/13.0610929,80.198654/Lectron+Charging+Station,+Century+Plaza,+No:560+to+562,+Anna+Salai,+Thiru+Vi+Ka+Kudiyiruppu,+Teynampet,+Chennai,+Tamil+Nadu+600018/@13.0476448,80.1865745,13z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a526749b3084e2d:0x5e736d1d9983d4d8!2m2!1d80.2477884!2d13.0449935');

/*Table structure for table `station1` */

DROP TABLE IF EXISTS `station1`;

CREATE TABLE `station1` (
  `sno` int(22) DEFAULT NULL,
  `user` varchar(222) DEFAULT NULL,
  `sid` varchar(222) DEFAULT NULL,
  `sname` varchar(222) DEFAULT NULL,
  `cost` varchar(222) DEFAULT NULL,
  `contact` varchar(222) DEFAULT NULL,
  `location` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Waiting',
  `feed` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `station1` */

insert  into `station1`(`sno`,`user`,`sid`,`sname`,`cost`,`contact`,`location`,`status`,`feed`) values (2,'Lakshmi','SID8371','Merchant logo Lectron Charging Station','RS:57','87967967896','Teynampet','Reserved Successfully','Very Good services'),(3,'Deepa','SID8112','Lectron Charging Station','RS:34','044 4952 1212','Anna Salai','Reserved Successfully','User comfortable');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(222) DEFAULT NULL,
  `pass` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `contact` varchar(222) DEFAULT NULL,
  `location` varchar(222) DEFAULT NULL,
  `feed` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`sno`,`user`,`pass`,`email`,`contact`,`location`,`feed`) values (1,'Lakshmi','lakshmi','lakshmi@gmail.com','875868585','Chennai',NULL),(2,'Lakshmi','lakshmi','lakshmi@gmail.com','875868585','Chennai',NULL),(8,'Deepa','deepa','  deepa@gmail.com','87967967896','Chennai',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

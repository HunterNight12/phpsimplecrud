/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 8.0.30 : Database - db_simplecrud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_simplecrud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_simplecrud`;

/*Table structure for table `tb_mahasiswa` */

DROP TABLE IF EXISTS `tb_mahasiswa`;

CREATE TABLE `tb_mahasiswa` (
  `id_mhs` int NOT NULL AUTO_INCREMENT,
  `nim_mhs` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nama_mhs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ranking_mhs` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` mediumint NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status_mhs` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_mhs`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_mahasiswa` */

insert  into `tb_mahasiswa`(`id_mhs`,`nim_mhs`,`nama_mhs`,`ranking_mhs`,`alamat`,`provinsi`,`email`,`telp`,`status_mhs`) values 
(1,'3123124455','vortex','IMO','MOKA',1,'aefafdahibdha@gmail.com','242135246247',1),
(2,'2312323','sura','IMO','IDB',1,'makima@gmail.com','242135246247',1),
(3,'1234123523','sabar','GRY','NMC',1,'elsabar@gmail.com','01923481293',1),
(4,'1312415213','JUL','IMO','IDB',1,'jul@gmail.com','312423542345634',4),
(5,'1234134325','cecep bin cogan','IMO','gorong',5,'makima@gmail.com','312423542345634',2);

/*Table structure for table `tb_provinsi` */

DROP TABLE IF EXISTS `tb_provinsi`;

CREATE TABLE `tb_provinsi` (
  `id_provinsi` smallint NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_provinsi`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_provinsi` */

insert  into `tb_provinsi`(`id_provinsi`,`nama_provinsi`) values 
(1,'Bali'),
(2,'Nusa Tenggara Timur'),
(3,'Nusa Tenggara Barat'),
(4,'Jawa Timur'),
(5,'Jawa Tengah'),
(6,'Jawa Barat'),
(7,'Kalimantan');

/*Table structure for table `tb_ranking` */

DROP TABLE IF EXISTS `tb_ranking`;

CREATE TABLE `tb_ranking` (
  `kode_ranking` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ranking` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`kode_ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_ranking` */

insert  into `tb_ranking`(`kode_ranking`,`nama_ranking`) values 
('BR','BRONZE'),
('DM','DIAMOND'),
('EL','ELITE'),
('EP','EPIC'),
('GD','GRANDMASTER'),
('GRD','GUARDIAN'),
('GRY','GLORY'),
('HR','HONOR'),
('IMO','IMMORTAL'),
('LD','LEGEND'),
('MC','MYTHIC'),
('MR','MASTER'),
('PT','PLATINUM'),
('SL','SILVER');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

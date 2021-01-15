/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - db_secure_varifiable_access
*********************************************************************
Server version : 5.0.15-nt
*/
SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `db_secure_varifiable_access`;

USE `db_secure_varifiable_access`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_acess_control` */

DROP TABLE IF EXISTS `m_acess_control`;

CREATE TABLE `m_acess_control` (
  `ac_code` int(5) NOT NULL auto_increment,
  `f_code` int(5) NOT NULL,
  `dept_code` int(5) NOT NULL,
  `desig_code` int(5) NOT NULL,
  PRIMARY KEY  (`ac_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_acess_control` */

insert into `m_acess_control` (`ac_code`,`f_code`,`dept_code`,`desig_code`) values (1,1,1,1);
insert into `m_acess_control` (`ac_code`,`f_code`,`dept_code`,`desig_code`) values (2,1,3,2);

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'admin','12345','admin','bangalore','7760255563','smitha@gmail.com');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_id` int(10) NOT NULL auto_increment,
  `c_url` varchar(200) NOT NULL,
  `c_username` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `c_status` varchar(50) default NULL,
  `c_remarks` varchar(200) default NULL,
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (1,'ftp://ftp.drivehq.com/cloud1','blrstore1','*blrstore123','Active','First cloud space');

/*Table structure for table `m_department` */

DROP TABLE IF EXISTS `m_department`;

CREATE TABLE `m_department` (
  `dept_code` int(10) NOT NULL auto_increment,
  `dept_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`dept_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_department` */

insert into `m_department` (`dept_code`,`dept_name`) values (1,'All');
insert into `m_department` (`dept_code`,`dept_name`) values (2,'IT');
insert into `m_department` (`dept_code`,`dept_name`) values (3,'Development');
insert into `m_department` (`dept_code`,`dept_name`) values (4,'Management');
insert into `m_department` (`dept_code`,`dept_name`) values (5,'Sales');
insert into `m_department` (`dept_code`,`dept_name`) values (6,'Finance');
insert into `m_department` (`dept_code`,`dept_name`) values (7,'Maintainance');
insert into `m_department` (`dept_code`,`dept_name`) values (8,'Marketing');

/*Table structure for table `m_designation` */

DROP TABLE IF EXISTS `m_designation`;

CREATE TABLE `m_designation` (
  `desig_code` int(10) NOT NULL auto_increment,
  `desig_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`desig_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_designation` */

insert into `m_designation` (`desig_code`,`desig_name`) values (1,'All');
insert into `m_designation` (`desig_code`,`desig_name`) values (2,'Software Developer');
insert into `m_designation` (`desig_code`,`desig_name`) values (3,'Software Engineer');
insert into `m_designation` (`desig_code`,`desig_name`) values (4,'HR Marketing');
insert into `m_designation` (`desig_code`,`desig_name`) values (5,'HR Sales');
insert into `m_designation` (`desig_code`,`desig_name`) values (6,'HR Finance');
insert into `m_designation` (`desig_code`,`desig_name`) values (7,'Project Manager');
insert into `m_designation` (`desig_code`,`desig_name`) values (8,'Project Leader');

/*Table structure for table `m_file_one` */

DROP TABLE IF EXISTS `m_file_one`;

CREATE TABLE `m_file_one` (
  `file_no` int(11) NOT NULL auto_increment,
  `file_name` varchar(20) default NULL,
  `file_size1` int(11) default NULL,
  `file_size2` int(11) default NULL,
  `padding` int(11) default NULL,
  `no_blocks` int(11) default NULL,
  `hash_blk_nos` varchar(200) default NULL,
  `user_id` int(11) default NULL,
  `date` varchar(10) default NULL,
  `time` varchar(10) default NULL,
  `day` varchar(10) default NULL,
  PRIMARY KEY  (`file_no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file_one` */

insert into `m_file_one` (`file_no`,`file_name`,`file_size1`,`file_size2`,`padding`,`no_blocks`,`hash_blk_nos`,`user_id`,`date`,`time`,`day`) values (1,'sup.txt',260,0,0,26,'1-2-3-4-5-6-7-8-9-10-11-12-13-14-4-15-16-17-18-19-20-21-22-23-24-25-',1,'24-03-2017','12:48:31','FRIDAY');

/*Table structure for table `m_file_upload` */

DROP TABLE IF EXISTS `m_file_upload`;

CREATE TABLE `m_file_upload` (
  `f_code` int(5) NOT NULL auto_increment,
  `f_name` varchar(100) NOT NULL,
  `f_type` varchar(50) NOT NULL,
  `f_upload_date` varchar(50) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `f_size` varchar(100) NOT NULL,
  `f_encrpted_size` varchar(100) NOT NULL,
  PRIMARY KEY  (`f_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file_upload` */

insert into `m_file_upload` (`f_code`,`f_name`,`f_type`,`f_upload_date`,`owner_id`,`f_size`,`f_encrpted_size`) values (1,'sup.txt','.txt','24-03-2017',1,'35','260');

/*Table structure for table `m_hash_code` */

DROP TABLE IF EXISTS `m_hash_code`;

CREATE TABLE `m_hash_code` (
  `hash_unique_code` int(11) NOT NULL auto_increment,
  `hash_code` varchar(40) default NULL,
  `blk_name` varchar(20) default NULL,
  `no_instnce` int(11) default NULL,
  `uploaded_status` varchar(5) default 'no',
  `block_size` varchar(100) default NULL,
  PRIMARY KEY  (`hash_unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_hash_code` */

insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (1,'f2e095be90b5629527b112c82f77711c','1blk_0',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (2,'67ae48d2716cedd2a97a5d0b37b4de5c','2blk_1',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (3,'769eb601bb25318786327f360d75710a','3blk_2',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (4,'fe8851ee4580bf2a705bfd593d56a124','4blk_14',2,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (5,'bf64e01abad7a0af4889c2640ce8c7d5','5blk_4',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (6,'130b8d7fe86e5d24f8a6a6a23bf19108','6blk_5',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (7,'190701b933d2172d41f018ffa0a77153','7blk_6',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (8,'22fd4437cdda3b4f1ee1b9d5bf671234','8blk_7',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (9,'4399e9380199999f8db328f45bae42ec','9blk_8',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (10,'aa8ee084e81a6a35e3a102527babbcab','10blk_9',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (11,'5610961da10eb655516627568dbf07a1','11blk_10',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (12,'cea05fe7d854f8e951bf9d02ff7794a6','12blk_11',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (13,'de7d298cb7f670ca4b0fdae2c30bbef8','13blk_12',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (14,'5f630715a846b60143025fd657e39f53','14blk_13',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (15,'290426c27a853f94e6b3b0276043c99e','15blk_15',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (16,'bd99a263b4cf7e1e314a7507763fb906','16blk_16',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (17,'98aa84b34f85fe605827c5ccb4bc88e8','17blk_17',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (18,'62b330534690c901ca64033e39009d5b','18blk_18',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (19,'35404ca7da9bdc979c05227ff4ca406b','19blk_19',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (20,'aab12e1d6f6504aa379f72a9e9fdfa81','20blk_20',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (21,'66ba7c90f5d3e7b68281ac2c3d4defe4','21blk_21',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (22,'4423bf396c4f66a4f978e46b01f43ee4','22blk_22',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (23,'29299b1e8eba80156abb50b2703e63f','23blk_23',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (24,'527cf8c82d80bc97692a5ca493f773ce','24blk_24',1,'yes','10');
insert into `m_hash_code` (`hash_unique_code`,`hash_code`,`blk_name`,`no_instnce`,`uploaded_status`,`block_size`) values (25,'85ba9a84f5e688b6a2e8a77ee6496d98','25blk_25',1,'yes','10');

/*Table structure for table `m_level1` */

DROP TABLE IF EXISTS `m_level1`;

CREATE TABLE `m_level1` (
  `m_l1_code` int(11) NOT NULL default '0',
  `m_l1_byte` varchar(4) default 'NULL',
  PRIMARY KEY  (`m_l1_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_level1` */

insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (0,'00');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (1,'01');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (2,'02');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (3,'03');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (4,'04');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (5,'05');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (6,'06');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (7,'07');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (8,'08');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (9,'09');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (10,'0a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (11,'0b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (12,'0c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (13,'0d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (14,'0e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (15,'0f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (16,'10');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (17,'11');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (18,'12');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (19,'13');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (20,'14');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (21,'15');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (22,'16');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (23,'17');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (24,'18');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (25,'19');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (26,'1a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (27,'1b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (28,'1c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (29,'1d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (30,'1e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (31,'1f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (32,'20');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (33,'21');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (34,'22');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (35,'23');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (36,'24');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (37,'25');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (38,'26');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (39,'27');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (40,'28');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (41,'29');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (42,'2a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (43,'2b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (44,'2c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (45,'2d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (46,'2e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (47,'2f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (48,'30');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (49,'31');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (50,'32');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (51,'33');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (52,'34');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (53,'35');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (54,'36');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (55,'37');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (56,'38');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (57,'39');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (58,'3a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (59,'3b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (60,'3c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (61,'3d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (62,'3e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (63,'3f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (64,'40');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (65,'41');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (66,'42');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (67,'43');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (68,'44');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (69,'45');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (70,'46');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (71,'47');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (72,'48');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (73,'49');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (74,'4a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (75,'4b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (76,'4c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (77,'4d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (78,'4e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (79,'4f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (80,'50');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (81,'51');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (82,'52');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (83,'53');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (84,'54');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (85,'55');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (86,'56');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (87,'57');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (88,'58');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (89,'59');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (90,'5a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (91,'5b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (92,'5c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (93,'5d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (94,'5e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (95,'5f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (96,'60');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (97,'61');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (98,'62');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (99,'63');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (100,'64');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (101,'65');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (102,'66');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (103,'67');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (104,'68');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (105,'69');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (106,'6a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (107,'6b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (108,'6c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (109,'6d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (110,'6e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (111,'6f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (112,'70');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (113,'71');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (114,'72');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (115,'73');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (116,'74');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (117,'75');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (118,'76');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (119,'77');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (120,'78');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (121,'79');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (122,'7a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (123,'7b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (124,'7c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (125,'7d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (126,'7e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (127,'7f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (128,'80');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (129,'81');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (130,'82');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (131,'83');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (132,'84');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (133,'85');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (134,'86');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (135,'87');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (136,'88');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (137,'89');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (138,'8a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (139,'8b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (140,'8c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (141,'8d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (142,'8e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (143,'8f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (144,'90');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (145,'91');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (146,'92');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (147,'93');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (148,'94');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (149,'95');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (150,'96');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (151,'97');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (152,'98');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (153,'99');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (154,'9a');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (155,'9b');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (156,'9c');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (157,'9d');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (158,'9e');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (159,'9f');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (160,'a0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (161,'a1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (162,'a2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (163,'a3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (164,'a4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (165,'a5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (166,'a6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (167,'a7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (168,'a8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (169,'a9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (170,'aa');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (171,'ab');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (172,'ac');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (173,'ad');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (174,'ae');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (175,'af');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (176,'b0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (177,'b1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (178,'b2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (179,'b3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (180,'b4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (181,'b5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (182,'b6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (183,'b7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (184,'b8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (185,'b9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (186,'ba');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (187,'bb');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (188,'bc');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (189,'bd');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (190,'be');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (191,'bf');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (192,'c0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (193,'c1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (194,'c2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (195,'c3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (196,'c4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (197,'c5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (198,'c6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (199,'c7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (200,'c8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (201,'c9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (202,'ca');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (203,'cb');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (204,'cc');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (205,'cd');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (206,'ce');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (207,'cf');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (208,'d0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (209,'d1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (210,'d2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (211,'d3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (212,'d4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (213,'d5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (214,'d6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (215,'d7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (216,'d8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (217,'d9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (218,'da');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (219,'db');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (220,'dc');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (221,'dd');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (222,'de');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (223,'df');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (224,'e0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (225,'e1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (226,'e2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (227,'e3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (228,'e4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (229,'e5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (230,'e6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (231,'e7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (232,'e8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (233,'e9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (234,'ea');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (235,'eb');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (236,'ec');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (237,'ed');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (238,'ee');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (239,'ef');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (240,'f0');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (241,'f1');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (242,'f2');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (243,'f3');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (244,'f4');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (245,'f5');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (246,'f6');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (247,'f7');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (248,'f8');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (249,'f9');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (250,'fa');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (251,'fb');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (252,'fc');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (253,'fd');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (254,'fe');
insert into `m_level1` (`m_l1_code`,`m_l1_byte`) values (255,'ff');

/*Table structure for table `m_level2` */

DROP TABLE IF EXISTS `m_level2`;

CREATE TABLE `m_level2` (
  `m_l2_code` int(11) NOT NULL auto_increment,
  `m_l1_code` int(11) default NULL,
  `m_l2_byte` varchar(4) default NULL,
  PRIMARY KEY  (`m_l2_code`),
  KEY `m_l1_code` (`m_l1_code`),
  CONSTRAINT `m_level2_ibfk_1` FOREIGN KEY (`m_l1_code`) REFERENCES `m_level1` (`m_l1_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_level2` */

insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (1,242,'e0');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (2,103,'ae');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (3,118,'9e');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (4,254,'88');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (5,191,'64');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (6,19,'0b');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (7,25,'07');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (8,34,'fd');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (9,67,'99');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (10,170,'8e');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (11,86,'10');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (12,206,'a0');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (13,222,'7d');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (14,95,'63');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (15,41,'04');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (16,189,'99');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (17,152,'aa');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (18,98,'b3');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (19,53,'40');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (20,170,'b1');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (21,102,'ba');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (22,68,'23');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (23,41,'29');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (24,82,'7c');
insert into `m_level2` (`m_l2_code`,`m_l1_code`,`m_l2_byte`) values (25,133,'ba');

/*Table structure for table `m_level3` */

DROP TABLE IF EXISTS `m_level3`;

CREATE TABLE `m_level3` (
  `m_l3_code` int(11) NOT NULL auto_increment,
  `m_l2_code` int(11) default NULL,
  `m_l3_bytes` varchar(30) default NULL,
  `hash_uniq_code` int(11) default NULL,
  PRIMARY KEY  (`m_l3_code`),
  KEY `m_l2_code` (`m_l2_code`),
  CONSTRAINT `m_level3_ibfk_1` FOREIGN KEY (`m_l2_code`) REFERENCES `m_level2` (`m_l2_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_level3` */

insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (1,1,'95be90b5629527b112c82f77711c',1);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (2,2,'48d2716cedd2a97a5d0b37b4de5c',2);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (3,3,'b601bb25318786327f360d75710a',3);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (4,4,'51ee4580bf2a705bfd593d56a124',4);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (5,5,'e01abad7a0af4889c2640ce8c7d5',5);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (6,6,'8d7fe86e5d24f8a6a6a23bf19108',6);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (7,7,'01b933d2172d41f018ffa0a77153',7);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (8,8,'4437cdda3b4f1ee1b9d5bf671234',8);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (9,9,'e9380199999f8db328f45bae42ec',9);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (10,10,'e084e81a6a35e3a102527babbcab',10);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (11,11,'961da10eb655516627568dbf07a1',11);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (12,12,'5fe7d854f8e951bf9d02ff7794a6',12);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (13,13,'298cb7f670ca4b0fdae2c30bbef8',13);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (14,14,'0715a846b60143025fd657e39f53',14);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (15,15,'26c27a853f94e6b3b0276043c99e',15);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (16,16,'a263b4cf7e1e314a7507763fb906',16);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (17,17,'84b34f85fe605827c5ccb4bc88e8',17);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (18,18,'30534690c901ca64033e39009d5b',18);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (19,19,'4ca7da9bdc979c05227ff4ca406b',19);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (20,20,'2e1d6f6504aa379f72a9e9fdfa81',20);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (21,21,'7c90f5d3e7b68281ac2c3d4defe4',21);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (22,22,'bf396c4f66a4f978e46b01f43ee4',22);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (23,23,'9b1e8eba80156abb50b2703e63f',23);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (24,24,'f8c82d80bc97692a5ca493f773ce',24);
insert into `m_level3` (`m_l3_code`,`m_l2_code`,`m_l3_bytes`,`hash_uniq_code`) values (25,25,'9a84f5e688b6a2e8a77ee6496d98',25);

/*Table structure for table `m_owner` */

DROP TABLE IF EXISTS `m_owner`;

CREATE TABLE `m_owner` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `ownerid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_owner` */

insert into `m_owner` (`id`,`name`,`password`,`ownerid`,`address`,`phone`,`email`) values (1,'shanu gowda','shanu','shanu','banaglore','9988000000','shalini@celestialv.com');

/*Table structure for table `m_rnskey` */

DROP TABLE IF EXISTS `m_rnskey`;

CREATE TABLE `m_rnskey` (
  `userid` int(30) default NULL,
  `key1` varchar(50) NOT NULL,
  `key2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_rnskey` */

insert into `m_rnskey` (`userid`,`key1`,`key2`) values (1,'503','509');

/*Table structure for table `m_transaction` */

DROP TABLE IF EXISTS `m_transaction`;

CREATE TABLE `m_transaction` (
  `t_no` int(10) NOT NULL auto_increment,
  `t_date` varchar(100) NOT NULL,
  `t_time` varchar(100) NOT NULL,
  `u_code` int(10) NOT NULL,
  `f_code` int(10) NOT NULL,
  `dept_code` int(10) NOT NULL,
  `design_code` int(10) NOT NULL,
  `t_status` varchar(50) default NULL,
  PRIMARY KEY  (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `u_code` int(10) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `dept_code` int(10) NOT NULL,
  `dept_code1` int(10) NOT NULL,
  `design_code` int(10) NOT NULL,
  `design_code1` int(10) NOT NULL,
  `u_address` varchar(200) NOT NULL,
  `u_city` varchar(100) default NULL,
  `u_cell` varchar(100) default NULL,
  `u_phone` bigint(20) default NULL,
  `u_email` varchar(100) default NULL,
  PRIMARY KEY  (`u_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`u_code`,`username`,`password`,`u_name`,`dept_code`,`dept_code1`,`design_code`,`design_code1`,`u_address`,`u_city`,`u_cell`,`u_phone`,`u_email`) values (1,'shanu','12345','shalini gowda',1,3,1,2,'banaglore','hassan','9080778888',8888888888,'shalini@celestialv.com');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

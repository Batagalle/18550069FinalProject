/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.0.96-community-nt : Database - abctours
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`abctours` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `abctours`;

/*Table structure for table `country_codes` */

DROP TABLE IF EXISTS `country_codes`;

CREATE TABLE `country_codes` (
  `ccno` int(11) NOT NULL auto_increment,
  `country` varchar(50) character set utf8 NOT NULL,
  `code` varchar(5) character set utf8 default NULL,
  PRIMARY KEY  (`country`),
  KEY `ccno` (`ccno`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=latin1;

/*Data for the table `country_codes` */

insert  into `country_codes`(`ccno`,`country`,`code`) values (2,'Afghanistan','+93'),(3,'Albania','+355'),(4,'Algeria','+213'),(5,'Andorra','+376'),(6,'Angola','+244'),(7,'Antarctica','+672'),(8,'Argentina','+54'),(9,'Armenia','+374'),(10,'Aruba','+297'),(11,'Australia','+61'),(12,'Austria','+43'),(13,'Azerbaijan','+994'),(14,'Bahrain','+973'),(15,'Bangladesh','+880'),(16,'Belarus','+375'),(17,'Belgium','+32'),(18,'Belize','+501'),(19,'Benin','+229'),(20,'Bhutan','+975'),(21,'Bolivia','+591'),(22,'Bosnia and Herzegovina','+387'),(23,'Botswana','+267'),(24,'Brazil','+55'),(25,'British Indian Ocean Territory','+246'),(26,'Brunei','+673'),(27,'Bulgaria','+359'),(28,'Burkina Faso','+226'),(29,'Burundi','+257'),(30,'Cambodia','+855'),(31,'Cameroon','+237'),(32,'Canada','+1'),(33,'Cape Verde','+238'),(34,'Central African Republic','+236'),(35,'Chad','+235'),(36,'Chile','+56'),(37,'China','+86'),(38,'Christmas Island','+61'),(39,'Cocos Islands','+61'),(40,'Colombia','+57'),(41,'Comoros','+269'),(42,'Cook Islands','+682'),(43,'Costa Rica','+506'),(1,'Country...',NULL),(44,'Croatia','+385'),(45,'Cuba','+53'),(46,'Curacao','+599'),(47,'Cyprus','+357'),(48,'Czech Republic','+420'),(49,'Democratic Republic of the Congo','+243'),(50,'Denmark','+45'),(51,'Djibouti','+253'),(52,'East Timor','+670'),(53,'Ecuador','+593'),(54,'Egypt','+20'),(55,'El Salvador','+503'),(56,'Equatorial Guinea','+240'),(57,'Eritrea','+291'),(58,'Estonia','+372'),(59,'Ethiopia','+251'),(60,'Falkland Islands','+500'),(61,'Faroe Islands','+298'),(62,'Fiji','+679'),(63,'Finland','+358'),(64,'France','+33'),(65,'French Polynesia','+689'),(66,'Gabon','+241'),(67,'Gambia','+220'),(68,'Georgia','+995'),(69,'Germany','+49'),(70,'Ghana','+233'),(71,'Gibraltar','+350'),(72,'Greece','+30'),(73,'Greenland','+299'),(74,'Guatemala','+502'),(75,'Guinea','+224'),(76,'Guinea-Bissau','+245'),(77,'Guyana','+592'),(78,'Haiti','+509'),(79,'Honduras','+504'),(80,'Hong Kong','+852'),(81,'Hungary','+36'),(82,'Iceland','+354'),(83,'India','+91'),(84,'Indonesia','+62'),(85,'Iran','+98'),(86,'Iraq','+964'),(87,'Ireland','+353'),(88,'Israel','+972'),(89,'Italy','+39'),(90,'Ivory Coast','+225'),(91,'Japan','+81'),(92,'Jordan','+962'),(93,'Kazakhstan','+7'),(94,'Kenya','+254'),(95,'Kiribati','+686'),(96,'Kosovo','+383'),(97,'Kuwait','+965'),(98,'Kyrgyzstan','+996'),(99,'Laos','+856'),(100,'Latvia','+371'),(101,'Lebanon','+961'),(102,'Lesotho','+266'),(103,'Liberia','+231'),(104,'Libya','+218'),(105,'Liechtenstein','+423'),(106,'Lithuania','+370'),(107,'Luxembourg','+352'),(108,'Macao','+853'),(109,'Macedonia','+389'),(110,'Madagascar','+261'),(111,'Malawi','+265'),(112,'Malaysia','+60'),(113,'Maldives','+960'),(114,'Mali','+223'),(115,'Malta','+356'),(116,'Marshall Islands','+692'),(117,'Mauritania','+222'),(118,'Mauritius','+230'),(119,'Mayotte','+262'),(120,'Mexico','+52'),(121,'Micronesia','+691'),(122,'Moldova','+373'),(123,'Monaco','+377'),(124,'Mongolia','+976'),(125,'Montenegro','+382'),(126,'Morocco','+212'),(127,'Mozambique','+258'),(128,'Myanmar','+95'),(129,'Namibia','+264'),(130,'Nauru','+674'),(131,'Nepal','+977'),(132,'Netherlands','+31'),(133,'Netherlands Antilles','+599'),(134,'New Caledonia','+687'),(135,'New Zealand','+64'),(136,'Nicaragua','+505'),(137,'Niger','+227'),(138,'Nigeria','+234'),(139,'Niue','+683'),(140,'North Korea','+850'),(141,'Norway','+47'),(142,'Oman','+968'),(143,'Pakistan','+92'),(144,'Palau','+680'),(145,'Palestine','+970'),(146,'Panama','+507'),(147,'Papua New Guinea','+675'),(148,'Paraguay','+595'),(149,'Peru','+51'),(150,'Philippines','+63'),(151,'Pitcairn','+64'),(152,'Poland','+48'),(153,'Portugal','+351'),(154,'Qatar','+974'),(155,'Republic of the Congo','+242'),(156,'Reunion','+262'),(157,'Romania','+40'),(158,'Russia','+7'),(159,'Rwanda','+250'),(160,'Saint Barthelemy','+590'),(161,'Saint Helena','+290'),(162,'Saint Martin','+590'),(163,'Saint Pierre and Miquelon','+508'),(164,'Samoa','+685'),(165,'San Marino','+378'),(166,'Sao Tome and Principe','+239'),(167,'Saudi Arabia','+966'),(168,'Senegal','+221'),(169,'Serbia','+381'),(170,'Seychelles','+248'),(171,'Sierra Leone','+232'),(172,'Singapore','+65'),(173,'Slovakia','+421'),(174,'Slovenia','+386'),(175,'Solomon Islands','+677'),(176,'Somalia','+252'),(177,'South Africa','+27'),(178,'South Korea','+82'),(179,'South Sudan','+211'),(180,'Spain','+34'),(181,'Sri Lanka','+94'),(182,'Sudan','+249'),(183,'Suriname','+597'),(184,'Svalbard and Jan Mayen','+47'),(185,'Swaziland','+268'),(186,'Sweden','+46'),(187,'Switzerland','+41'),(188,'Syria','+963'),(189,'Taiwan','+886'),(190,'Tajikistan','+992'),(191,'Tanzania','+255'),(192,'Thailand','+66'),(193,'Togo','+228'),(194,'Tokelau','+690'),(195,'Tonga','+676'),(196,'Tunisia','+216'),(197,'Turkey','+90'),(198,'Turkmenistan','+993'),(199,'Tuvalu','+688'),(200,'Uganda','+256'),(201,'Ukraine','+380'),(202,'United Arab Emirates','+971'),(203,'United Kingdom','+44'),(204,'United States','+1'),(205,'Uruguay','+598'),(206,'Uzbekistan','+998'),(207,'Vanuatu','+678'),(208,'Vatican','+379'),(209,'Venezuela','+58'),(210,'Vietnam','+84'),(211,'Wallis and Futuna','+681'),(212,'Western Sahara','+212'),(213,'Yemen','+967'),(214,'Zambia','+260'),(215,'Zimbabwe','+263');

/*Table structure for table `cus_customize_tours` */

DROP TABLE IF EXISTS `cus_customize_tours`;

CREATE TABLE `cus_customize_tours` (
  `ctid` int(2) unsigned zerofill NOT NULL auto_increment,
  `uname` varchar(100) default NULL,
  `interests` text,
  `budget` text,
  `accommodation` text,
  `travel_date` date default NULL,
  `duration` int(4) default NULL,
  `group_size` int(4) default NULL,
  `other_details` text,
  `inquiry_date` date default NULL,
  `act_budget` double default NULL,
  `status` varchar(1) default 'N',
  `status_date` date default NULL,
  `vno` int(11) default NULL,
  PRIMARY KEY  (`ctid`),
  KEY `ctid` (`ctid`),
  KEY `uname` (`uname`),
  KEY `vno` (`vno`),
  CONSTRAINT `cus_customize_tours_ibfk_1` FOREIGN KEY (`uname`) REFERENCES `cus_master` (`uname`),
  CONSTRAINT `cus_customize_tours_ibfk_2` FOREIGN KEY (`vno`) REFERENCES `vehicle` (`vno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

/*Data for the table `cus_customize_tours` */

insert  into `cus_customize_tours`(`ctid`,`uname`,`interests`,`budget`,`accommodation`,`travel_date`,`duration`,`group_size`,`other_details`,`inquiry_date`,`act_budget`,`status`,`status_date`,`vno`) values (01,'Tharindu','THRILLS, HERITAGE, ','UP TO USD 499','HOME STAYS,','2015-10-17',4,5,'sdf sdfsdv ddsv zvdv','2015-09-02',450,'Y','2015-10-02',18),(02,'shamith','FESTIVE, ','UP TO USD 999','BOUTIQUE HOTELS,','2015-10-20',6,2,'df sdfvsd dsfsd sdsd sdvsdv sd','2015-09-02',250,'Y','2015-10-07',27),(03,'ranith','SCENIC, ','UP TO USD 1499','BUDGET ACCOMMODATION,','2015-10-25',6,4,'dsv dsd fbds sdbsd sdbvs','2015-09-02',500,'Y','2015-10-05',24),(04,'pamitha','BLISS, SCENIC, ','UP TO USD 2499','SUPERIOR HOTELS (4* & 5*),','2015-10-23',5,3,'sfs fdgdf dfgd fbfd cbf','2015-09-05',330,'Y','2015-10-18',21),(05,'thara','BLISS, WILD, ','UP TO USD 1499','BUDGET ACCOMMODATION,','2015-10-28',2,3,'dsf zdvz zdv zd sfvz dbv c sv z  ','2015-09-17',400,'Y','2015-10-14',33);

/*Table structure for table `cus_master` */

DROP TABLE IF EXISTS `cus_master`;

CREATE TABLE `cus_master` (
  `fname` varchar(50) default NULL,
  `lname` varchar(50) default NULL,
  `address` varchar(250) default NULL,
  `mobile` varchar(25) default NULL,
  `email` varchar(250) default NULL,
  `uname` varchar(100) NOT NULL,
  `pw` varchar(20) default NULL,
  `country` varchar(50) default NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cus_master` */

insert  into `cus_master`(`fname`,`lname`,`address`,`mobile`,`email`,`uname`,`pw`,`country`) values ('Pamitha','Madhusanka','706/B, Ederamulla, wattala','+94712809092','pamithamadhu@gmail.com','pamitha','pamitha123','Sri Lanka'),('Ranith','Udugampola','17,Kirillawala,Kadawatha','+94773515232','ranithudugampola@gmail.com','ranith','1991','Sri Lanka'),('Shamith','Rosa','176, Seeduwa North, Seeduwa','+94720742814','shamithrosa@gmail.com','shamith','123','Sri Lanka'),('Thara','Batagalle','205, hiripitiya, pannipitiya','+94715965049','tharabatagalle@yahoo.com','thara','thara123','Sri Lanka'),('Tharindu','Bandara','187/B2, Suraweera Mw, Walpola, Ragama','+94719554801','tharindu635@gmail.com','Tharindu','123456','Sri Lanka');

/*Table structure for table `cus_tours` */

DROP TABLE IF EXISTS `cus_tours`;

CREATE TABLE `cus_tours` (
  `tid` int(2) unsigned zerofill NOT NULL auto_increment,
  `uname` varchar(100) default NULL,
  `main_category` varchar(50) default NULL,
  `sub_category` varchar(50) default NULL,
  `travel_date` date default NULL,
  `group_size` int(3) default NULL,
  `duration` int(4) default NULL,
  `other_details` text,
  `budget` double default NULL,
  `inquiry_date` date default NULL,
  `status` varchar(1) default 'N',
  `status_date` date default NULL,
  `vno` int(11) default NULL,
  PRIMARY KEY  (`tid`),
  KEY `tid` (`tid`),
  KEY `uname` (`uname`),
  KEY `vno` (`vno`),
  CONSTRAINT `cus_tours_ibfk_1` FOREIGN KEY (`uname`) REFERENCES `cus_master` (`uname`),
  CONSTRAINT `cus_tours_ibfk_2` FOREIGN KEY (`vno`) REFERENCES `vehicle` (`vno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

/*Data for the table `cus_tours` */

insert  into `cus_tours`(`tid`,`uname`,`main_category`,`sub_category`,`travel_date`,`group_size`,`duration`,`other_details`,`budget`,`inquiry_date`,`status`,`status_date`,`vno`) values (01,'Tharindu','Family Escapes','A Short Escape','2015-09-10',1,6,'asdd afafvds afaf safaf',150,'2015-09-02','Y','2015-09-02',NULL),(02,'Tharindu','Wild Life','Nature and Us','2015-10-05',3,10,'I want a car',1170,'2015-09-02','Y','2015-10-01',11),(03,'shamith','Special Interest Tours','Adventure & Camping','2015-10-16',5,9,'afa asdas asf asfasf asfasf asfasf',2700,'2015-09-02','Y','2015-10-03',23),(04,'ranith','Wild Life','Nature and Us','2015-10-20',3,10,'sdf sdgsd sdbssb ss  sdsds sdvsd sdbs ',1170,'2015-09-02','Y','2015-10-10',16),(05,'pamitha','Family Escapes','Through The Time Line','2015-10-30',2,12,'zdf zdvzd dvsd dxbds xdbx',920,'2015-09-03','Y','2015-10-16',16),(06,'thara','Family Escapes','Something Old Something New','2015-10-17',3,8,'hu hbh bubu hh hhhhbh hhhi bujj',840,'2015-09-08','Y','2015-10-03',26);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fno` int(11) NOT NULL auto_increment,
  `uname` varchar(100) default NULL,
  `country` varchar(50) default NULL,
  `date` date default NULL,
  `fdbk` text,
  PRIMARY KEY  (`fno`),
  KEY `fno` (`fno`),
  KEY `uname` (`uname`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`uname`) REFERENCES `cus_master` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`fno`,`uname`,`country`,`date`,`fdbk`) values (1,'Tharindu','Sri Lanka','2015-08-08','This trip was awesome... wanna go back again . . . Thank You Browns Tours ! ! ! '),(2,'Tharindu','Sri Lanka','2015-06-23','I love It . . . .  Thanksss'),(3,'Tharindu','Sri Lanka','2015-08-08','HI this tour was great ! ! ! !'),(6,'shamith','Sri Lanka','2015-11-05','Thanks for reaching out--and for the lovely birthday gift. It\'s perfect and deeply appreciated. '),(7,'ranith','Sri Lanka','2015-11-05','See you as soon as we can come back again! love jeewa, love sri Lanka.'),(8,'pamitha','Sri Lanka','2015-11-05','\"Extremely satisfied!!!! 5/5 !!! keep up the good work!!\"'),(9,'thara','Sri Lanka','2015-11-05','\"I love my trip. It was a surprise to me. Excellent service, Thank you.\"');

/*Table structure for table `shopping` */

DROP TABLE IF EXISTS `shopping`;

CREATE TABLE `shopping` (
  `sno` int(11) NOT NULL auto_increment,
  `place` text,
  `description` text,
  `address` text,
  `url` text,
  PRIMARY KEY  (`sno`),
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `shopping` */

insert  into `shopping`(`sno`,`place`,`description`,`address`,`url`) values (1,'ODEL','This mall is a haven for fashionistas as it has the best-known branded garment factory outlet. Youll find clothes, accessories, shoes, bags, cosmetics, home décor, chocolates and toiletries from international labels such as Gap, DKNY etc. You cant miss this one!','No 5, Alexandra Place, Colombo 7','http://www.odel.lk/'),(2,'Majestic City','The mall has a variety of branded shops which sell everything from clothes, linen, books, stationary and more. Majestic City also has a cinema and internet cafes.','10, Station Road, Colombo 04','http://www.majesticcity.lk/'),(3,'House of Fashions','This mall is for serious shoppers as the three-storey outlet offers branded clothes at a hugely discounted price.','101, D.S Senanayake Mawatha, Colombo 08,','http://www.houseoffashions.lk/'),(4,'Barefoot Gallery','You can pick up toys, notebooks bound in hand-loom fabrics, hand-painted boxes, tote bags, clothes, costume jewellery, linens in vibrant colours and designs.....','706, Galle Rd, Colombo 03','http://www.barefootceylon.com/');

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `vno` int(11) NOT NULL auto_increment,
  `vname` text,
  `vtype` text,
  `rate_per_day_US_$` int(11) default NULL,
  `excess_km_US_$` double default NULL,
  PRIMARY KEY  (`vno`),
  KEY `vno` (`vno`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

insert  into `vehicle`(`vno`,`vname`,`vtype`,`rate_per_day_US_$`,`excess_km_US_$`) values (1,'TOYOTA NZE 121','Standard Cars',50,0.5),(2,'TOYOTA VIOS','Standard Cars',50,0.5),(3,'NISSAN SUPER SALOON','Standard Cars',50,0.5),(4,'HONDA INSIGHT','Standard Cars',50,0.5),(5,'HONDA AIRWAVE','Standard Cars',50,0.5),(6,'HUNDAI TRAJET','Standard Cars',50,0.5),(7,'MICRO GEELEY','Standard Cars',50,0.5),(8,'PROTON GEN','Standard Cars',50,0.5),(9,'TOYOTA AXIO','Premium Cars',55,0.5),(10,'TOYOTA BELTA','Premium Cars',55,0.5),(11,'TOYOTA PRIUS','Premium Cars',55,0.5),(12,'NISSAN TIIDA','Premium Cars',55,0.5),(13,'NISSAN BLUEBIRD SYLPY','Premium Cars',55,0.5),(14,'TOYOTA ALLION','Premium Cars',55,0.5),(15,'MERCEDES BENZ New C CLASS','Luxury Cars',310,3),(16,'MERCEDES BENZ E 250','Luxury Cars',440,4),(17,'TOYOTA LAND CRUISER PRADO TRJ 120','4 WD Vehicles',140,1.4),(18,'TOYOTA LAND CRUISER PRADO KZJ 95','4 WD Vehicles',90,0.75),(19,'TOYOTA LAND CRUISER PRADO TRJ 150','4 WD Vehicles',160,1.55),(20,'TOYOTA HIACE SUPER GL','Standard Vans',50,0.5),(21,'NISSAN CARAVAN','Standard Vans',50,0.5),(22,'TOYOTA GRAND HIACE','Standard Vans',50,0.5),(23,'TOYOTA HIACE LUXURY 9 SEATER','Premium Vans',58,0.55),(24,'TOYOTA HIACE LUXURY 12 SEATER','Premium Vans',60,0.55),(25,'TOYOTA HIACE LUXURY 6 SEATER','Premium Vans',55,0.55),(26,'MITSUBISHI ROSA 24 SEATER','Mini Coaches',80,0.8),(27,'MITSUBISHI ROSA 29 SEATER','Mini Coaches',85,0.85),(28,'TOYOTA COASTER 22 SEATER','Mini Coaches',75,0.75),(29,'ZONDA 45 SEATER','Luxury Busses',120,1.2),(30,'ZONDA 33 SEATER','Luxury Busses',100,1),(31,'ZONDA 33 SEATER','Luxury Busses',100,1),(32,'ZONDA 33 SEATER','Luxury Busses',100,1),(33,'ZONDA 33 SEATER','Luxury Busses',100,1),(34,'HIGER 45 SEATER','Luxury Busses',150,1.5),(35,'YU TONG 45 SEATER','Luxury Busses',150,1.5),(36,'ZONDA 51 SEATER','Luxury Busses',165,1.65);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

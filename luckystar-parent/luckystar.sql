/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.3-m13 : Database - luckystar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`luckystar` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `luckystar`;

/*Table structure for table `chicken_info` */

DROP TABLE IF EXISTS `chicken_info`;

CREATE TABLE `chicken_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) NOT NULL COMMENT '真名',
  `star_id` int(20) NOT NULL COMMENT '繁星号',
  `l_id` int(10) NOT NULL COMMENT '所属工会',
  `reg_date` datetime NOT NULL COMMENT '注册时间',
  `cookie` varchar(10480) DEFAULT NULL COMMENT '登录后的cookie信息，需要人工定期维护',
  `time_rate` float(2,1) NOT NULL DEFAULT '1.0' COMMENT '考勤倍率',
  `bean_rate` float(2,1) NOT NULL DEFAULT '1.0' COMMENT '星豆倍率',
  `state` int(1) NOT NULL COMMENT '0：停用 1：在用',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `chicken_info` */

insert  into `chicken_info`(`id`,`user_name`,`star_id`,`l_id`,`reg_date`,`cookie`,`time_rate`,`bean_rate`,`state`) values (1,'陈怡',365997694,5544,'2017-08-09 13:12:02','kg_mid=f245e8b93bd77a4079dba4d535a4dd04; KuGoo=KugooID=1067527567&KugooPwd=35F3FC5E282631877D7E900040ADED45&NickName=%u0031%u0030%u0036%u0037%u0035%u0032%u0037%u0035%u0036%u0037&Pic=http://imge.kugou.com/kugouicon/165/20100101/20100101192931478054.jpg&RegState=1&RegFrom=&t=56959ea30d774b684f31dc64589d8116098e2d7cec637052b6b0497ae6cf3e4f&a_id=1010&ct=1502243400&UserName=%u0031%u0038%u0036%u0038%u0033%u0034%u0034%u0033%u0036%u0036%u0035; _fxNickName=JD%E8%B5%B0%E8%BF%90%E6%B1%82%E7%A7%92%E6%A6%9C%E4%B8%80; _fxRichLevel=6; Hm_lvt_a8cea520bce1646202b6709aa9f11956=1502002639,1502105592,1502158620,1502243401; _fx_coin=1548.00; fxClientInfo=%7B%22userId%22%3A%22365997694%22%2C%22kugouId%22%3A%221067527567%22%2C%22ip%22%3A%220.0.0.0%22%7D; ACK_SERVER_10004=%7B%22list%22%3A%5B%5B%22apibj.fanxing.kugou.com%22%5D%5D%7D; FANXING=%257B%2522kugouId%2522%253A%25221067527567%2522%252C%2522coin%2522%253A%25221548.00%2522%252C%2522atime%2522%253A1502274853%252C%2522isRemember%2522%253A0%252C%2522sign%2522%253A%2522fe349936b65d1fa012f713b762f18e31%2522%257D; FANXING_COIN=1548.00; ACK_SERVER_10013=%7B%22list%22%3A%5B%5B%22visitor.fanxing.kugou.com%22%5D%2C%5B%22visitorfx2.kugou.com%22%5D%5D%7D; ACK_SERVER_10021=%7B%22list%22%3A%5B%5B%22service01.fanxing.com%22%5D%2C%5B%22service03.fanxing.com%22%5D%2C%5B%22service02.fanxing.com%22%5D%2C%5B%22service04.fanxing.com%22%5D%5D%7D; ACK_SERVER_10012=%7B%22list%22%3A%5B%5B%22task.fanxing.kugou.com%22%5D%2C%5B%22taskfx2.kugou.com%22%5D%5D%7D; ACK_SERVER_10009=%7B%22list%22%3A%5B%5B%22act.fanxing.kugou.com%22%5D%2C%5B%22actfx2.kugou.com%22%5D%5D%7D; ACK_SERVER_10011=%7B%22list%22%3A%5B%5B%22fanxing.kugou.com%22%5D%2C%5B%22sparefx2.kugou.com%22%5D%5D%7D; ACK_SERVER_10020=%7B%22list%22%3A%5B%5B%22fx.service.kugou.com%22%5D%2C%5B%22fxservice1.kugou.com%22%5D%2C%5B%22fxservice2.kugou.com%22%5D%5D%7D; ACK_SERVER_10010=%7B%22list%22%3A%5B%5B%22api.fanxing.kugou.com%22%5D%2C%5B%22apifx2.kugou.com%22%5D%5D%7D; ACK_SERVER_10014=%7B%22list%22%3A%5B%5B%22service.fanxing.kugou.com%22%5D%2C%5B%22servicefx2.kugou.com%22%5D%5D%7D; fx_manifest=1; Hm_lvt_9903bd4a6f77b8537ecb17a75dd2e187=1502105130,1502158616,1502243398,1502274852; Hm_lpvt_9903bd4a6f77b8537ecb17a75dd2e187=1502274852; Hm_lvt_e0a7c5eaf6994884c4376a64da96825a=1502105129,1502158615,1502243398,1502274853; Hm_lpvt_e0a7c5eaf6994884c4376a64da96825a=1502274853; Hm_lvt_52e69492bce68bf637c6f3a2f099ae08=1502105129,1502158616,1502243398,1502274853; Hm_lpvt_52e69492bce68bf637c6f3a2f099ae08=1502274853',1.0,1.0,1);

/*Table structure for table `labor_union` */

DROP TABLE IF EXISTS `labor_union`;

CREATE TABLE `labor_union` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_id` int(11) NOT NULL COMMENT '公会id',
  `name` varchar(50) NOT NULL COMMENT '公会名称',
  `reg_date` datetime NOT NULL COMMENT '注册时间',
  `state` int(1) NOT NULL COMMENT '0：停用 1：在用',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `labor_union` */

insert  into `labor_union`(`id`,`l_id`,`name`,`reg_date`,`state`) values (1,5544,'聚点','2017-08-08 19:25:29',1);

/*Table structure for table `ls_user_info` */

DROP TABLE IF EXISTS `ls_user_info`;

CREATE TABLE `ls_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `administrator` int(1) NOT NULL COMMENT '是否管理员 0：否 1：是',
  `state` int(1) NOT NULL COMMENT '是否在用 0：停用 1：在用',
  `reg_date` datetime NOT NULL COMMENT '注册时间',
  `last_login` datetime NOT NULL COMMENT '最后登录时间',
  `opt` varchar(256) NOT NULL COMMENT '权限字符串，控制能够访问的工会',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ls_user_info` */

insert  into `ls_user_info`(`id`,`user_name`,`password`,`administrator`,`state`,`reg_date`,`last_login`,`opt`) values (1,'a','b',0,1,'2017-08-08 19:53:08','2017-08-08 19:53:08','5544,2233,');

/*Table structure for table `task_info` */

DROP TABLE IF EXISTS `task_info`;

CREATE TABLE `task_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `star_id` int(20) NOT NULL,
  `min_task` int(11) NOT NULL COMMENT '任务数',
  `max_task` int(11) NOT NULL COMMENT '目标数',
  `cur_month` int(6) NOT NULL COMMENT '月份',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_info` */

/*Table structure for table `work_info` */

DROP TABLE IF EXISTS `work_info`;

CREATE TABLE `work_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `star_id` int(20) NOT NULL COMMENT '繁星id',
  `l_id` int(11) NOT NULL COMMENT '所属工会',
  `star_level` int(5) DEFAULT NULL COMMENT '繁星等级',
  `rich_level` int(5) DEFAULT NULL COMMENT '财富等级',
  `fisrt_bean` float(20,2) DEFAULT NULL COMMENT '当天初始星豆数',
  `bean_total` float(20,2) DEFAULT NULL COMMENT '星豆总数',
  `coin` float(20,2) DEFAULT NULL COMMENT '星币数',
  `coin_total` float(20,2) DEFAULT NULL COMMENT '星币总数',
  `fans_count` int(11) DEFAULT NULL COMMENT '被关注数',
  `follow_count` int(11) DEFAULT NULL COMMENT '关注数',
  `experience` float(11,2) DEFAULT NULL COMMENT '经验值',
  `work_time` int(11) DEFAULT NULL COMMENT '工作时长',
  `cur_month` int(6) NOT NULL COMMENT '当前月份',
  `cur_day` date NOT NULL COMMENT '当前天',
  `last_time` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`star_id`,`cur_day`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `work_info` */

insert  into `work_info`(`id`,`star_id`,`l_id`,`star_level`,`rich_level`,`fisrt_bean`,`bean_total`,`coin`,`coin_total`,`fans_count`,`follow_count`,`experience`,`work_time`,`cur_month`,`cur_day`,`last_time`) values (13,365997694,5544,15,6,6508593.00,6508593.00,1548.00,13464161.00,4147,6,118085.50,NULL,201708,'2017-08-09','2017-08-09 19:48:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

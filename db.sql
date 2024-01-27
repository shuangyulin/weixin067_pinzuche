/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmu47if
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmu47if` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmu47if`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmu47if/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmu47if/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmu47if/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussqichexinxi` */

DROP TABLE IF EXISTS `discussqichexinxi`;

CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';

/*Data for the table `discussqichexinxi` */

insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-14 20:04:10',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-14 20:04:10',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-14 20:04:10',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-14 20:04:10',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-14 20:04:10',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-14 20:04:10',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-14 20:04:10',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-14 20:04:10',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-14 20:04:10',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-14 20:04:10',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-14 20:04:10',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-14 20:04:10',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-05-14 20:04:10','标题1','简介1','http://localhost:8080/ssmu47if/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-05-14 20:04:10','标题2','简介2','http://localhost:8080/ssmu47if/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-05-14 20:04:10','标题3','简介3','http://localhost:8080/ssmu47if/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-05-14 20:04:10','标题4','简介4','http://localhost:8080/ssmu47if/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-05-14 20:04:10','标题5','简介5','http://localhost:8080/ssmu47if/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-05-14 20:04:10','标题6','简介6','http://localhost:8080/ssmu47if/upload/news_picture6.jpg','内容6');

/*Table structure for table `pinchexinxi` */

DROP TABLE IF EXISTS `pinchexinxi`;

CREATE TABLE `pinchexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `pinchejiage` int(11) NOT NULL COMMENT '拼车价格',
  `pincherenshu` int(11) NOT NULL COMMENT '拼车人数',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `pincheshijian` datetime DEFAULT NULL COMMENT '拼车时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='拼车信息';

/*Data for the table `pinchexinxi` */

insert  into `pinchexinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`pinchejiage`,`pincherenshu`,`zongjiage`,`pincheshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (81,'2021-05-14 20:04:10','订单编号1','汽车名称1','汽车类型1','汽车品牌1','车牌1',1,1,1,'2021-05-14 20:04:10','用户名1','姓名1','身份证1','手机1','是','','未支付',1);
insert  into `pinchexinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`pinchejiage`,`pincherenshu`,`zongjiage`,`pincheshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (82,'2021-05-14 20:04:10','订单编号2','汽车名称2','汽车类型2','汽车品牌2','车牌2',2,2,2,'2021-05-14 20:04:10','用户名2','姓名2','身份证2','手机2','是','','未支付',2);
insert  into `pinchexinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`pinchejiage`,`pincherenshu`,`zongjiage`,`pincheshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (83,'2021-05-14 20:04:10','订单编号3','汽车名称3','汽车类型3','汽车品牌3','车牌3',3,3,3,'2021-05-14 20:04:10','用户名3','姓名3','身份证3','手机3','是','','未支付',3);
insert  into `pinchexinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`pinchejiage`,`pincherenshu`,`zongjiage`,`pincheshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (84,'2021-05-14 20:04:10','订单编号4','汽车名称4','汽车类型4','汽车品牌4','车牌4',4,4,4,'2021-05-14 20:04:10','用户名4','姓名4','身份证4','手机4','是','','未支付',4);
insert  into `pinchexinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`pinchejiage`,`pincherenshu`,`zongjiage`,`pincheshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (85,'2021-05-14 20:04:10','订单编号5','汽车名称5','汽车类型5','汽车品牌5','车牌5',5,5,5,'2021-05-14 20:04:10','用户名5','姓名5','身份证5','手机5','是','','未支付',5);
insert  into `pinchexinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`pinchejiage`,`pincherenshu`,`zongjiage`,`pincheshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (86,'2021-05-14 20:04:10','订单编号6','汽车名称6','汽车类型6','汽车品牌6','车牌6',6,6,6,'2021-05-14 20:04:10','用户名6','姓名6','身份证6','手机6','是','','未支付',6);

/*Table structure for table `qichechuku` */

DROP TABLE IF EXISTS `qichechuku`;

CREATE TABLE `qichechuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `chukuneirong` longtext COMMENT '出库内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='汽车出库';

/*Data for the table `qichechuku` */

insert  into `qichechuku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`chukushijian`,`chukuneirong`) values (41,'2021-05-14 20:04:10','汽车名称1','汽车类型1','汽车品牌1','车牌1','2021-05-14 20:04:10','出库内容1');
insert  into `qichechuku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`chukushijian`,`chukuneirong`) values (42,'2021-05-14 20:04:10','汽车名称2','汽车类型2','汽车品牌2','车牌2','2021-05-14 20:04:10','出库内容2');
insert  into `qichechuku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`chukushijian`,`chukuneirong`) values (43,'2021-05-14 20:04:10','汽车名称3','汽车类型3','汽车品牌3','车牌3','2021-05-14 20:04:10','出库内容3');
insert  into `qichechuku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`chukushijian`,`chukuneirong`) values (44,'2021-05-14 20:04:10','汽车名称4','汽车类型4','汽车品牌4','车牌4','2021-05-14 20:04:10','出库内容4');
insert  into `qichechuku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`chukushijian`,`chukuneirong`) values (45,'2021-05-14 20:04:10','汽车名称5','汽车类型5','汽车品牌5','车牌5','2021-05-14 20:04:10','出库内容5');
insert  into `qichechuku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`chukushijian`,`chukuneirong`) values (46,'2021-05-14 20:04:10','汽车名称6','汽车类型6','汽车品牌6','车牌6','2021-05-14 20:04:10','出库内容6');

/*Table structure for table `qicheguihai` */

DROP TABLE IF EXISTS `qicheguihai`;

CREATE TABLE `qicheguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `guihaineirong` longtext COMMENT '归还内容',
  `guihaishijian` datetime DEFAULT NULL COMMENT '归还时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='汽车归还';

/*Data for the table `qicheguihai` */

insert  into `qicheguihai`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`guihaineirong`,`guihaishijian`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (61,'2021-05-14 20:04:10','订单编号1','汽车名称1','汽车类型1','汽车品牌1','车牌1','归还内容1','2021-05-14 20:04:10','用户名1','姓名1','手机1','是','',1);
insert  into `qicheguihai`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`guihaineirong`,`guihaishijian`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (62,'2021-05-14 20:04:10','订单编号2','汽车名称2','汽车类型2','汽车品牌2','车牌2','归还内容2','2021-05-14 20:04:10','用户名2','姓名2','手机2','是','',2);
insert  into `qicheguihai`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`guihaineirong`,`guihaishijian`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (63,'2021-05-14 20:04:10','订单编号3','汽车名称3','汽车类型3','汽车品牌3','车牌3','归还内容3','2021-05-14 20:04:10','用户名3','姓名3','手机3','是','',3);
insert  into `qicheguihai`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`guihaineirong`,`guihaishijian`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (64,'2021-05-14 20:04:10','订单编号4','汽车名称4','汽车类型4','汽车品牌4','车牌4','归还内容4','2021-05-14 20:04:10','用户名4','姓名4','手机4','是','',4);
insert  into `qicheguihai`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`guihaineirong`,`guihaishijian`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (65,'2021-05-14 20:04:10','订单编号5','汽车名称5','汽车类型5','汽车品牌5','车牌5','归还内容5','2021-05-14 20:04:10','用户名5','姓名5','手机5','是','',5);
insert  into `qicheguihai`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`guihaineirong`,`guihaishijian`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (66,'2021-05-14 20:04:10','订单编号6','汽车名称6','汽车类型6','汽车品牌6','车牌6','归还内容6','2021-05-14 20:04:10','用户名6','姓名6','手机6','是','',6);

/*Table structure for table `qichepinche` */

DROP TABLE IF EXISTS `qichepinche`;

CREATE TABLE `qichepinche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `pinchejiage` int(11) NOT NULL COMMENT '拼车价格',
  `pincherenshu` int(11) NOT NULL COMMENT '拼车人数',
  `pincheneirong` longtext COMMENT '拼车内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='汽车拼车';

/*Data for the table `qichepinche` */

insert  into `qichepinche`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`yanse`,`chepai`,`pinchejiage`,`pincherenshu`,`pincheneirong`,`fabushijian`) values (71,'2021-05-14 20:04:10','汽车名称1','小轿车','汽车品牌1','http://localhost:8080/ssmu47if/upload/qichepinche_tupian1.jpg','颜色1','车牌1',1,1,'拼车内容1','2021-05-14 20:04:10');
insert  into `qichepinche`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`yanse`,`chepai`,`pinchejiage`,`pincherenshu`,`pincheneirong`,`fabushijian`) values (72,'2021-05-14 20:04:10','汽车名称2','小轿车','汽车品牌2','http://localhost:8080/ssmu47if/upload/qichepinche_tupian2.jpg','颜色2','车牌2',2,2,'拼车内容2','2021-05-14 20:04:10');
insert  into `qichepinche`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`yanse`,`chepai`,`pinchejiage`,`pincherenshu`,`pincheneirong`,`fabushijian`) values (73,'2021-05-14 20:04:10','汽车名称3','小轿车','汽车品牌3','http://localhost:8080/ssmu47if/upload/qichepinche_tupian3.jpg','颜色3','车牌3',3,3,'拼车内容3','2021-05-14 20:04:10');
insert  into `qichepinche`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`yanse`,`chepai`,`pinchejiage`,`pincherenshu`,`pincheneirong`,`fabushijian`) values (74,'2021-05-14 20:04:10','汽车名称4','小轿车','汽车品牌4','http://localhost:8080/ssmu47if/upload/qichepinche_tupian4.jpg','颜色4','车牌4',4,4,'拼车内容4','2021-05-14 20:04:10');
insert  into `qichepinche`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`yanse`,`chepai`,`pinchejiage`,`pincherenshu`,`pincheneirong`,`fabushijian`) values (75,'2021-05-14 20:04:10','汽车名称5','小轿车','汽车品牌5','http://localhost:8080/ssmu47if/upload/qichepinche_tupian5.jpg','颜色5','车牌5',5,5,'拼车内容5','2021-05-14 20:04:10');
insert  into `qichepinche`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`yanse`,`chepai`,`pinchejiage`,`pincherenshu`,`pincheneirong`,`fabushijian`) values (76,'2021-05-14 20:04:10','汽车名称6','小轿车','汽车品牌6','http://localhost:8080/ssmu47if/upload/qichepinche_tupian6.jpg','颜色6','车牌6',6,6,'拼车内容6','2021-05-14 20:04:10');

/*Table structure for table `qicheruku` */

DROP TABLE IF EXISTS `qicheruku`;

CREATE TABLE `qicheruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  `rukuneirong` longtext COMMENT '入库内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='汽车入库';

/*Data for the table `qicheruku` */

insert  into `qicheruku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`rukushijian`,`rukuneirong`) values (31,'2021-05-14 20:04:10','汽车名称1','汽车类型1','汽车品牌1','车牌1','2021-05-14 20:04:10','入库内容1');
insert  into `qicheruku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`rukushijian`,`rukuneirong`) values (32,'2021-05-14 20:04:10','汽车名称2','汽车类型2','汽车品牌2','车牌2','2021-05-14 20:04:10','入库内容2');
insert  into `qicheruku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`rukushijian`,`rukuneirong`) values (33,'2021-05-14 20:04:10','汽车名称3','汽车类型3','汽车品牌3','车牌3','2021-05-14 20:04:10','入库内容3');
insert  into `qicheruku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`rukushijian`,`rukuneirong`) values (34,'2021-05-14 20:04:10','汽车名称4','汽车类型4','汽车品牌4','车牌4','2021-05-14 20:04:10','入库内容4');
insert  into `qicheruku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`rukushijian`,`rukuneirong`) values (35,'2021-05-14 20:04:10','汽车名称5','汽车类型5','汽车品牌5','车牌5','2021-05-14 20:04:10','入库内容5');
insert  into `qicheruku`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`rukushijian`,`rukuneirong`) values (36,'2021-05-14 20:04:10','汽车名称6','汽车类型6','汽车品牌6','车牌6','2021-05-14 20:04:10','入库内容6');

/*Table structure for table `qichexinxi` */

DROP TABLE IF EXISTS `qichexinxi`;

CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) NOT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) NOT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nengyuanleixing` varchar(200) DEFAULT NULL COMMENT '能源类型',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `pailiang` varchar(200) DEFAULT NULL COMMENT '排量',
  `chepai` varchar(200) NOT NULL COMMENT '车牌',
  `zulinjiage` int(11) NOT NULL COMMENT '租赁价格',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='汽车信息';

/*Data for the table `qichexinxi` */

insert  into `qichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`nengyuanleixing`,`yanse`,`pailiang`,`chepai`,`zulinjiage`,`zixundianhua`,`zhuangtai`) values (21,'2021-05-14 20:04:10','汽车名称1','小轿车','汽车品牌1','http://localhost:8080/ssmu47if/upload/qichexinxi_tupian1.jpg','汽油','颜色1','排量1','车牌1',1,'咨询电话1','待租赁');
insert  into `qichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`nengyuanleixing`,`yanse`,`pailiang`,`chepai`,`zulinjiage`,`zixundianhua`,`zhuangtai`) values (22,'2021-05-14 20:04:10','汽车名称2','小轿车','汽车品牌2','http://localhost:8080/ssmu47if/upload/qichexinxi_tupian2.jpg','汽油','颜色2','排量2','车牌2',2,'咨询电话2','待租赁');
insert  into `qichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`nengyuanleixing`,`yanse`,`pailiang`,`chepai`,`zulinjiage`,`zixundianhua`,`zhuangtai`) values (23,'2021-05-14 20:04:10','汽车名称3','小轿车','汽车品牌3','http://localhost:8080/ssmu47if/upload/qichexinxi_tupian3.jpg','汽油','颜色3','排量3','车牌3',3,'咨询电话3','待租赁');
insert  into `qichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`nengyuanleixing`,`yanse`,`pailiang`,`chepai`,`zulinjiage`,`zixundianhua`,`zhuangtai`) values (24,'2021-05-14 20:04:10','汽车名称4','小轿车','汽车品牌4','http://localhost:8080/ssmu47if/upload/qichexinxi_tupian4.jpg','汽油','颜色4','排量4','车牌4',4,'咨询电话4','待租赁');
insert  into `qichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`nengyuanleixing`,`yanse`,`pailiang`,`chepai`,`zulinjiage`,`zixundianhua`,`zhuangtai`) values (25,'2021-05-14 20:04:10','汽车名称5','小轿车','汽车品牌5','http://localhost:8080/ssmu47if/upload/qichexinxi_tupian5.jpg','汽油','颜色5','排量5','车牌5',5,'咨询电话5','待租赁');
insert  into `qichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`tupian`,`nengyuanleixing`,`yanse`,`pailiang`,`chepai`,`zulinjiage`,`zixundianhua`,`zhuangtai`) values (26,'2021-05-14 20:04:10','汽车名称6','小轿车','汽车品牌6','http://localhost:8080/ssmu47if/upload/qichexinxi_tupian6.jpg','汽油','颜色6','排量6','车牌6',6,'咨询电话6','待租赁');

/*Table structure for table `qichezulin` */

DROP TABLE IF EXISTS `qichezulin`;

CREATE TABLE `qichezulin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `zulinjiage` int(11) NOT NULL COMMENT '租赁价格',
  `zulinshizhang` int(11) NOT NULL COMMENT '租赁时长',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `zulinshijian` datetime DEFAULT NULL COMMENT '租赁时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='汽车租赁';

/*Data for the table `qichezulin` */

insert  into `qichezulin`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`zulinjiage`,`zulinshizhang`,`zongjiage`,`zulinshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (51,'2021-05-14 20:04:10','订单编号1','汽车名称1','汽车类型1','汽车品牌1','车牌1',1,1,'总价格1','2021-05-14 20:04:10','用户名1','姓名1','身份证1','手机1','是','','未支付',1);
insert  into `qichezulin`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`zulinjiage`,`zulinshizhang`,`zongjiage`,`zulinshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (52,'2021-05-14 20:04:10','订单编号2','汽车名称2','汽车类型2','汽车品牌2','车牌2',2,2,'总价格2','2021-05-14 20:04:10','用户名2','姓名2','身份证2','手机2','是','','未支付',2);
insert  into `qichezulin`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`zulinjiage`,`zulinshizhang`,`zongjiage`,`zulinshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (53,'2021-05-14 20:04:10','订单编号3','汽车名称3','汽车类型3','汽车品牌3','车牌3',3,3,'总价格3','2021-05-14 20:04:10','用户名3','姓名3','身份证3','手机3','是','','未支付',3);
insert  into `qichezulin`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`zulinjiage`,`zulinshizhang`,`zongjiage`,`zulinshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (54,'2021-05-14 20:04:10','订单编号4','汽车名称4','汽车类型4','汽车品牌4','车牌4',4,4,'总价格4','2021-05-14 20:04:10','用户名4','姓名4','身份证4','手机4','是','','未支付',4);
insert  into `qichezulin`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`zulinjiage`,`zulinshizhang`,`zongjiage`,`zulinshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (55,'2021-05-14 20:04:10','订单编号5','汽车名称5','汽车类型5','汽车品牌5','车牌5',5,5,'总价格5','2021-05-14 20:04:10','用户名5','姓名5','身份证5','手机5','是','','未支付',5);
insert  into `qichezulin`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`qichepinpai`,`chepai`,`zulinjiage`,`zulinshizhang`,`zongjiage`,`zulinshijian`,`yonghuming`,`xingming`,`shenfenzheng`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (56,'2021-05-14 20:04:10','订单编号6','汽车名称6','汽车类型6','汽车品牌6','车牌6',6,6,'总价格6','2021-05-14 20:04:10','用户名6','姓名6','身份证6','手机6','是','','未支付',6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','yb2zc1b6u3fio9ma9vu4e48be6d7antc','2021-05-14 20:07:09','2021-05-14 21:07:09');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','8l46bk6s8x5ki7fdie0zroxzsn22gz49','2021-05-14 20:07:14','2021-05-14 21:07:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-14 20:04:10');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (11,'2021-05-14 20:04:10','1','1','姓名1','男','http://localhost:8080/ssmu47if/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (12,'2021-05-14 20:04:10','用户2','123456','姓名2','男','http://localhost:8080/ssmu47if/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (13,'2021-05-14 20:04:10','用户3','123456','姓名3','男','http://localhost:8080/ssmu47if/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (14,'2021-05-14 20:04:10','用户4','123456','姓名4','男','http://localhost:8080/ssmu47if/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (15,'2021-05-14 20:04:10','用户5','123456','姓名5','男','http://localhost:8080/ssmu47if/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (16,'2021-05-14 20:04:10','用户6','123456','姓名6','男','http://localhost:8080/ssmu47if/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

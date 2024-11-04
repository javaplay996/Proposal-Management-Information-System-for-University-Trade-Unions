/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tianxinxiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tianxinxiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tianxinxiguanli`;

/*Table structure for table `caiwu` */

DROP TABLE IF EXISTS `caiwu`;

CREATE TABLE `caiwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caiwu_zhichu` decimal(10,2) DEFAULT NULL COMMENT '支出金额',
  `caiwu_shouru` decimal(10,2) DEFAULT NULL COMMENT '收入金额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='财务';

/*Data for the table `caiwu` */

insert  into `caiwu`(`id`,`caiwu_zhichu`,`caiwu_shouru`,`create_time`) values (1,'3000.00','1000.00','2021-04-13 15:24:29');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-13 15:33:49'),(2,'sex_types','性别',2,'女',NULL,'2021-04-13 15:33:49'),(3,'zirushouhcu_types','支出/收入',1,'支出',NULL,'2021-04-13 15:33:49'),(4,'zirushouhcu_types','支出/收入',2,'收入',NULL,'2021-04-13 15:33:49'),(5,'proposal_types','提案类型名称',1,'提案类型1',NULL,'2021-04-13 15:33:49'),(6,'proposal_types','提案类型名称',2,'提案类型2',NULL,'2021-04-13 15:33:49'),(7,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-13 15:33:49'),(8,'news_types','公告类型名称',2,'紧急公告',NULL,'2021-04-13 15:33:49'),(9,'shifou_types','是否同意',1,'同意',NULL,'2021-04-13 15:33:49'),(10,'shifou_types','是否同意',2,'拒绝',NULL,'2021-04-13 15:33:49');

/*Table structure for table `fuyijilu` */

DROP TABLE IF EXISTS `fuyijilu`;

CREATE TABLE `fuyijilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `proposal_id` int(200) DEFAULT NULL COMMENT '附议提案',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '附议人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '附议时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='附议记录';

/*Data for the table `fuyijilu` */

insert  into `fuyijilu`(`id`,`proposal_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,23,2,'2021-04-13 17:37:00','2021-04-13 17:37:00'),(2,24,2,'2021-04-13 17:58:17','2021-04-13 17:58:17'),(3,24,3,'2021-04-13 17:58:31','2021-04-13 17:58:31');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',2,'http://localhost:8080/tianxinxiguanli/file/download?fileName=1618311454964.jpg','2021-04-13 18:57:38','公告详情\r\n','2021-04-13 18:57:38'),(2,'公告名称2',1,'http://localhost:8080/tianxinxiguanli/file/download?fileName=1618311494770.jpg','2021-04-13 18:58:16','公告详情公告详情公告详情公告详情\r\n','2021-04-13 18:58:16');

/*Table structure for table `proposal` */

DROP TABLE IF EXISTS `proposal`;

CREATE TABLE `proposal` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `proposal_name` varchar(200) DEFAULT NULL COMMENT '提案标题 Search111',
  `proposal_photo` varchar(200) DEFAULT NULL COMMENT '提案简略图',
  `zirushouhcu_types` int(200) DEFAULT NULL COMMENT '支出/收入 Search111',
  `proposal_moeny` decimal(10,2) DEFAULT NULL COMMENT '涉及金额',
  `proposal_types` int(200) DEFAULT NULL COMMENT '提案类型 Search111',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '提案用户',
  `shifou_types` int(200) DEFAULT NULL COMMENT '是否同意 Search111',
  `proposal_number` int(200) DEFAULT NULL COMMENT '附议人数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提案时间',
  `proposal_content` text COMMENT '提案详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='提案';

/*Data for the table `proposal` */

insert  into `proposal`(`id`,`proposal_name`,`proposal_photo`,`zirushouhcu_types`,`proposal_moeny`,`proposal_types`,`yonghu_id`,`shifou_types`,`proposal_number`,`insert_time`,`proposal_content`,`create_time`) values (22,'提案标题1','http://localhost:8080/tianxinxiguanli/file/download?fileName=1618301047444.jpg',2,'1000.00',2,4,1,1,'2021-04-13 16:04:49','提案详情提案详情提案详情\r\n','2021-04-13 16:04:49'),(23,'提案标题2','http://localhost:8080/tianxinxiguanli/file/download?fileName=1618303949209.jpg',1,'2000.00',1,3,1,5,'2021-04-13 16:52:41','提案详情11111\r\n','2021-04-13 16:52:41'),(24,'提案标题3','http://localhost:8080/tianxinxiguanli/file/download?fileName=1618307873988.jpg',1,'10001.00',1,2,0,2,'2021-04-13 17:58:12','提案详情提案详情提案详情\r\n','2021-04-13 17:58:12');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','s5coqm2mpuqqar9taxrj7j94j2dwcdvy','2021-04-13 15:03:55','2021-04-13 19:56:36'),(2,1,'111','yonghu','用户','o1i9ayh4rvnfbx83fo2hrs2gmu5j61u7','2021-04-13 15:59:07','2021-04-13 16:59:08'),(3,2,'111','yonghu','用户','0s4ennntz08vl1qzhib4sb6305rkyisf','2021-04-13 17:22:13','2021-04-13 18:40:34'),(4,3,'222','yonghu','用户','172w62ewyfl2l0oawvaan7hibjem2p00','2021-04-13 17:58:27','2021-04-13 18:58:28');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (2,'111','123456','张三',2,'410882199611015471','17747899664','http://localhost:8080/tianxinxiguanli/file/download?fileName=1618300968570.jpg','2021-04-13 16:02:49'),(3,'222','123456','李四',1,'410882199611015472','17747899665','http://localhost:8080/tianxinxiguanli/file/download?fileName=1618300985756.jpg','2021-04-13 16:03:10'),(4,'333','123456','王五',2,'410882199611015473','17747899666','http://localhost:8080/tianxinxiguanli/file/download?fileName=1618301013648.jpg','2021-04-13 16:03:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

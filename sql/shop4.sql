/*
SQLyog Ultimate v8.32 
MySQL - 8.0.21 : Database - shop4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `shop4`;

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `car` */

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`id`,`user_id`,`item_id`,`content`,`addTime`) values (7,3,35,'真的很不错','2018-03-20 19:23:03'),(8,3,28,'真好吃','2018-03-20 19:32:31');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `scNum` int DEFAULT NULL COMMENT '收藏数',
  `gmNum` int DEFAULT NULL COMMENT '购买数',
  `url1` varchar(255) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  `url3` varchar(255) DEFAULT NULL,
  `url4` varchar(255) DEFAULT NULL,
  `url5` varchar(255) DEFAULT NULL,
  `ms` text,
  `pam1` varchar(255) DEFAULT NULL COMMENT '参数1',
  `pam2` varchar(255) DEFAULT NULL COMMENT '参数2',
  `pam3` varchar(255) DEFAULT NULL COMMENT '参数3',
  `val3` varchar(255) DEFAULT NULL COMMENT '值3',
  `val2` varchar(255) DEFAULT NULL COMMENT '值2',
  `val1` varchar(255) DEFAULT NULL COMMENT '值1',
  `type` int DEFAULT NULL,
  `zk` int DEFAULT NULL COMMENT '折扣',
  `category_id_one` int DEFAULT NULL COMMENT '类别id',
  `category_id_two` int DEFAULT NULL COMMENT '类别2级',
  `isDelete` int DEFAULT NULL COMMENT '0否 1是',
  `desec` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `item` */

insert  into `item`(`id`,`name`,`price`,`scNum`,`gmNum`,`url1`,`url2`,`url3`,`url4`,`url5`,`ms`,`pam1`,`pam2`,`pam3`,`val3`,`val2`,`val1`,`type`,`zk`,`category_id_one`,`category_id_two`,`isDelete`,`desec`) values (27,'朗逸','100000',2,5,'\\test1_war_exploded\\resource\\ueditor\\upload\\a.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\a.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\a.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\a.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\a.jpg','<p><img src=\"/\\test1_war_exploded\\resource\\ueditor\\upload\\a.jpg\" title=\"\" alt=\"1.jpg\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,9,75,76,0,'史蒂夫噶看见发给大家看法的嘎是会计'),(28,'宝马三系','180000',1,8,'\\test1_war_exploded\\resource\\ueditor\\upload\\b.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\b.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\b.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\b.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\b.jpg','<p><img src=\"/test1_war_exploded/resource/ueditor/\\test1_war_exploded\\resource\\ueditor\\upload\\b.jpg.png\" title=\"\" alt=\"4.png\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,9,75,76,0,NULL),(29,'卡拉罗','490000',0,1,'\\test1_war_exploded\\resource\\ueditor\\upload\\c.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\c.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\c.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\c.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\c.jpg','<p><img src=\"/test1_war_exploded/resource/ueditor/\\test1_war_exploded\\resource\\ueditor\\upload\\c.jpg\" title=\"\" alt=\"2.jpg\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,8,75,76,0,NULL),(30,'坦克300','850000',0,6,'\\test1_war_exploded\\resource\\ueditor\\upload\\d.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\d.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\d.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\d.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\d.jpg','<p><img src=\"\\test1_war_exploded\\resource\\ueditor\\upload\\d.jpg\" title=\"\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,9,71,72,0,NULL),(31,'宝马','360000',1,1,'\\test1_war_exploded\\resource\\ueditor\\upload\\e.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\e.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\e.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\e.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\e.jpg','<p>品牌名称：<span class=\"J_EbrandLogo\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">绿养道</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>厂名：绿养道农产品产销合作社</p></li><li><p>厂址：云南蒙自攀枝村花石榴园</p></li><li><p>厂家联系方式：13521676858</p></li><li><p>保质期：60 天</p></li><li><p>净含量:&nbsp;1900g</p></li><li><p>包装方式:&nbsp;包装</p></li><li><p>品牌:&nbsp;绿养道</p></li><li><p>售卖方式:&nbsp;单品</p></li><li><p>生鲜储存温度:&nbsp;8-15℃</p></li><li><p>热卖时间:&nbsp;1月&nbsp;2月&nbsp;8月&nbsp;9月&nbsp;10月&nbsp;11月&nbsp;12月</p></li><li><p>产地:&nbsp;中国大陆</p></li><li><p>省份:&nbsp;云南省</p></li><li><p>城市:&nbsp;红河哈尼族彝族自治州</p></li><li><p>特产品类:&nbsp;蒙自石榴</p></li><li><p>净含量:&nbsp;2.5kg(含）-5kg(不含)</p></li><li><p>价格:&nbsp;51-100元</p></li></ul><p><br/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,7,71,72,0,NULL),(32,'比亚迪','99000',0,13,'\\test1_war_exploded\\resource\\ueditor\\upload\\f.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\f.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\f.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\f.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\f.jpg','<p><img src=\"\\test1_war_exploded\\resource\\ueditor\\upload\\f.jpg\" title=\"\" alt=\"77.jpg\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,9,71,72,0,NULL),(33,'保时捷','8000000',3,2,'\\test1_war_exploded\\resource\\ueditor\\upload\\g.gif','\\test1_war_exploded\\resource\\ueditor\\upload\\g.gif','\\test1_war_exploded\\resource\\ueditor\\upload\\g.gif','\\test1_war_exploded\\resource\\ueditor\\upload\\g.gif','\\test1_war_exploded\\resource\\ueditor\\upload\\g.gif','<p><img src=\"\\test1_war_exploded\\resource\\ueditor\\upload\\g.gif\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,9,71,72,0,NULL),(34,'本田','85000',0,4,'\\test1_war_exploded\\resource\\ueditor\\upload\\h.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\h.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\h.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\h.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\h.jpg','<p><img src=\"\\test1_war_exploded\\resource\\ueditor\\upload\\h.jpg\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,9,71,72,0,NULL),(35,'风骏','25000',0,9,'\\test1_war_exploded\\resource\\ueditor\\upload\\k.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\k.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\k.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\k.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\k.jpg','<p><img src=\"\\test1_war_exploded\\resource\\ueditor\\upload\\k.jpg.jpg\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,9,73,74,0,NULL),(36,'大众','12000',0,5,'\\test1_war_exploded\\resource\\ueditor\\upload\\l.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\l.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\l.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\l.jpg','\\test1_war_exploded\\resource\\ueditor\\upload\\l.jpg','<p><img src=\"\\test1_war_exploded\\resource\\ueditor\\upload\\l.jpg\"/></p>',NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,5,73,74,0,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'       <span>排量 :30</span></br><span>油耗:100kala</span></br> <span style=\"margin-top: 10px\">能源类型:电动</span></br> <span>车身结构：三厢车</span></br>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `item_category` */

DROP TABLE IF EXISTS `item_category`;

CREATE TABLE `item_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

/*Data for the table `item_category` */

insert  into `item_category`(`id`,`name`,`pid`,`isDelete`) values (50,'A系',71,0),(69,'宝马',NULL,0),(70,'5系',69,0),(71,'奔驰',NULL,0),(72,'S级',71,0),(73,'奥迪',11,0),(74,'奥迪',73,0),(75,'比亚迪',NULL,0),(76,'EV',75,0),(77,'DM',75,0),(78,'CC',75,1),(79,'AC',75,0),(80,'特斯拉',NULL,0),(81,'A级',0,0),(82,'7系',69,0),(83,'MODEL-Y',80,0),(84,'MODEL-X',80,0),(85,'MODEL-S',80,0);

/*Table structure for table `item_order` */

DROP TABLE IF EXISTS `item_order`;

CREATE TABLE `item_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '0.新建代发货1.已取消 2已已发货3.到收货4已评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `item_order` */

insert  into `item_order`(`id`,`item_id`,`user_id`,`code`,`addTime`,`total`,`isDelete`,`status`) values (27,NULL,3,'2018032017080001','2018-03-20 17:08:56','54.9',0,3),(28,NULL,3,'2018032017380001','2018-03-20 17:38:52','653.59',0,3),(29,NULL,3,'2018032017390001','2018-03-20 17:39:28','976.5',0,3),(30,NULL,3,'2018032019220001','2018-03-20 19:22:25','364.5',0,3),(31,NULL,3,'2018032019310001','2018-03-20 19:31:23','359.15999999999997',0,1),(32,NULL,3,'2018032019310002','2018-03-20 19:31:50','59.86',0,3),(33,NULL,1,'2021030112420001','2021-03-01 12:42:28','308.43',0,1),(34,NULL,1,'2021030309350001','2021-03-03 09:35:34','165.60',0,1),(35,NULL,1,'2021031914440001','2021-03-19 14:44:21','252000.00',0,0),(36,NULL,1,'2021031914440002','2021-03-19 14:44:42','89100.00',0,0),(37,NULL,1,'2021031921180001','2021-03-19 21:18:31','765000.00',0,0),(38,NULL,1,'2021031921190001','2021-03-19 21:19:06','90000.00',0,1),(39,NULL,1,'2021031921190002','2021-03-19 21:19:32','111600.00',0,1),(40,NULL,1,'2021031921240001','2021-03-19 21:24:16','7200000.00',0,1);

/*Table structure for table `manage` */

DROP TABLE IF EXISTS `manage`;

CREATE TABLE `manage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `manage` */

insert  into `manage`(`id`,`userName`,`passWord`,`realName`) values (1,'admin','111111','管理员');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`name`,`phone`,`content`) values (2,'1','1','                    \n             1       '),(3,'2','2','                    \n             2       ');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `addTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`id`,`name`,`content`,`addTime`) values (3,'开车同日','<p><img src=\"/ueditor/8fcd79b049e011e8f60304f21e6bcd90d613e0adcb8ef424fed66f6deea08d99.jpg\" title=\"\" alt=\"d613e0adcb8ef424fed66f6deea08d99.jpg\"/></p>','2018-04-27 14:02:28'),(4,'测试公告2','<p><img src=\"/ueditor/a83fde2049e011e8f298b03797777b7bd613e0adcb8ef424fed66f6deea08d99.jpg\" title=\"\" alt=\"d613e0adcb8ef424fed66f6deea08d99.jpg\"/></p>','2018-04-27 14:03:09'),(5,'测试公告3','<p style=\"margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">原来是我们自使用类似于Ant来获取类的时候是不能象UserLibaray来使用的,因为我们建立的是一个web app,而web app使用的是自定义的ClassLoader,而非JVM中的存在的三种ClassLoader(如上面所说),因此它无法识别出我们写在xml文件中的第三方类库的class文件,而只有我们写在src目录下的java文件才能使用,因此,我们必须要把第三方的类库放入到lib目录下,web app 才会识别我们定义在xml中的类了 &nbsp;.</p><p style=\"margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 通这个错误,也让我对classloader的认识也进了一步.虽然以前看过周志明的深入JVM一书中关于类加载器分派体系的介绍,但是不太理解,这样一来,自己也多了一些体会.</p><p><br/></p>','2018-04-27 14:03:32'),(6,'习近平总书记湖北之行第三天','<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">新华网北京4月26日电 在24至25日沿长江考察调研后，26日下午，习近平总书记在武汉主持召开了深入推动长江经济带发展座谈会，为长江经济带发展进一步指引方向，作出部署。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　26日上午，习近平前往武汉市的科技企业和居民社区调研，聚焦自主创新、棚户区改造和社区党组织建设。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　这是习近平总书记第二次召开长江经济发展专题座谈会，特意安排在了位于长江中游的湖北。上一次座谈会是2016年1月，在位于长江上游的重庆召开的。“共抓大保护、不搞大开发”的重大战略思想，就是在那次座谈会上提出的。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　在今天的座谈会上，习近平总书记明确提出了推动长江经济带发展需要正确把握的5个关系：</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆整体推进和重点突破的关系；</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆生态环境保护和经济发展的关系；</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆总体谋划和久久为功的关系；</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆破除旧动能和培育新动能的关系；</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆自身发展和协同发展的关系。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　习近平强调，加强改革创新、战略统筹、规划引导，以长江经济带发展推动经济高质量发展。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　自主创新，是习近平在武汉调研的一个重点课题。</p><p><br/></p>','2018-04-27 14:25:46');

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '0.未退货 1已退货',
  `num` int DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

/*Data for the table `order_detail` */

insert  into `order_detail`(`id`,`item_id`,`order_id`,`status`,`num`,`total`) values (54,27,27,0,1,'1'),(55,32,28,0,5,'25'),(56,27,28,0,3,'9'),(57,28,28,0,1,'1'),(58,35,29,0,2,'4'),(59,34,29,0,4,'16'),(60,32,29,0,3,'9'),(61,36,29,0,3,'9'),(62,32,29,0,2,'4'),(63,35,30,0,6,'36'),(64,30,30,0,3,'9'),(65,28,31,0,4,'16'),(66,28,31,0,2,'4'),(67,28,32,0,1,'1'),(68,30,33,0,1,'76.5'),(69,29,33,0,1,'39.93'),(70,33,33,0,1,'72.0'),(71,36,33,0,2,'120.0'),(72,30,34,0,1,'76.5'),(73,32,34,0,1,'89.1'),(74,31,35,0,1,'252000.0'),(75,32,36,0,1,'89100.0'),(76,30,37,0,1,'765000.0'),(77,27,38,0,1,'90000.0'),(78,32,39,0,1,'89100.0'),(79,35,39,0,1,'22500.0'),(80,33,40,0,1,'7200000.0');

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `sc` */

insert  into `sc`(`id`,`item_id`,`user_id`) values (17,27,3),(18,28,3),(21,33,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`passWord`,`phone`,`realName`,`sex`,`address`,`email`) values (1,'1','2','3','4','1','3','22'),(2,'dd','dd','dd',NULL,NULL,NULL,NULL),(3,'zs','111111','12345678933','测试33','女','这里是','1133'),(6,'huang1','123456','18888888',NULL,NULL,NULL,NULL),(7,'huang1','123456','18888888',NULL,NULL,NULL,NULL),(8,'1111112','11','11',NULL,NULL,NULL,'111@qq.com'),(9,'','','',NULL,NULL,NULL,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

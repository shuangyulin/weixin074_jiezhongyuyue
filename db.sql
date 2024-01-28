/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot4h114
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot4h114` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot4h114`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot4h114/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot4h114/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot4h114/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussyimiaoxinxi` */

DROP TABLE IF EXISTS `discussyimiaoxinxi`;

CREATE TABLE `discussyimiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='疫苗信息评论表';

/*Data for the table `discussyimiaoxinxi` */

insert  into `discussyimiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-05-02 02:14:26',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussyimiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-05-02 02:14:26',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussyimiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-05-02 02:14:26',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussyimiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-05-02 02:14:26',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussyimiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-05-02 02:14:26',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussyimiaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-05-02 02:14:26',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `ertongjiezhong` */

DROP TABLE IF EXISTS `ertongjiezhong`;

CREATE TABLE `ertongjiezhong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jianhurenxingming` varchar(200) DEFAULT NULL COMMENT '监护人姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `jiezhongbianhao` varchar(200) DEFAULT NULL COMMENT '接种编号',
  `yimiaomingcheng` varchar(200) DEFAULT NULL COMMENT '疫苗名称',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `jiezhongzhenshu` varchar(200) DEFAULT NULL COMMENT '接种针数',
  `yimiaotupian` varchar(200) DEFAULT NULL COMMENT '疫苗图片',
  `jiezhongshijian` datetime DEFAULT NULL COMMENT '接种时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619893119556 DEFAULT CHARSET=utf8 COMMENT='儿童接种';

/*Data for the table `ertongjiezhong` */

insert  into `ertongjiezhong`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`shouji`,`ertongxingming`,`jiezhongbianhao`,`yimiaomingcheng`,`shengchanshang`,`jiezhongzhenshu`,`yimiaotupian`,`jiezhongshijian`,`mingcheng`,`dizhi`,`dianhua`) values (41,'2021-05-02 02:14:25','账号1','监护人姓名1','手机1','儿童姓名1','接种编号1','疫苗名称1','生产商1','接种针数1','http://localhost:8080/springboot4h114/upload/ertongjiezhong_yimiaotupian1.jpg','2021-05-02 02:14:25','名称1','地址1','电话1');
insert  into `ertongjiezhong`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`shouji`,`ertongxingming`,`jiezhongbianhao`,`yimiaomingcheng`,`shengchanshang`,`jiezhongzhenshu`,`yimiaotupian`,`jiezhongshijian`,`mingcheng`,`dizhi`,`dianhua`) values (42,'2021-05-02 02:14:25','账号2','监护人姓名2','手机2','儿童姓名2','接种编号2','疫苗名称2','生产商2','接种针数2','http://localhost:8080/springboot4h114/upload/ertongjiezhong_yimiaotupian2.jpg','2021-05-02 02:14:25','名称2','地址2','电话2');
insert  into `ertongjiezhong`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`shouji`,`ertongxingming`,`jiezhongbianhao`,`yimiaomingcheng`,`shengchanshang`,`jiezhongzhenshu`,`yimiaotupian`,`jiezhongshijian`,`mingcheng`,`dizhi`,`dianhua`) values (43,'2021-05-02 02:14:25','账号3','监护人姓名3','手机3','儿童姓名3','接种编号3','疫苗名称3','生产商3','接种针数3','http://localhost:8080/springboot4h114/upload/ertongjiezhong_yimiaotupian3.jpg','2021-05-02 02:14:25','名称3','地址3','电话3');
insert  into `ertongjiezhong`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`shouji`,`ertongxingming`,`jiezhongbianhao`,`yimiaomingcheng`,`shengchanshang`,`jiezhongzhenshu`,`yimiaotupian`,`jiezhongshijian`,`mingcheng`,`dizhi`,`dianhua`) values (44,'2021-05-02 02:14:25','账号4','监护人姓名4','手机4','儿童姓名4','接种编号4','疫苗名称4','生产商4','接种针数4','http://localhost:8080/springboot4h114/upload/ertongjiezhong_yimiaotupian4.jpg','2021-05-02 02:14:25','名称4','地址4','电话4');
insert  into `ertongjiezhong`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`shouji`,`ertongxingming`,`jiezhongbianhao`,`yimiaomingcheng`,`shengchanshang`,`jiezhongzhenshu`,`yimiaotupian`,`jiezhongshijian`,`mingcheng`,`dizhi`,`dianhua`) values (45,'2021-05-02 02:14:25','账号5','监护人姓名5','手机5','儿童姓名5','接种编号5','疫苗名称5','生产商5','接种针数5','http://localhost:8080/springboot4h114/upload/ertongjiezhong_yimiaotupian5.jpg','2021-05-02 02:14:25','名称5','地址5','电话5');
insert  into `ertongjiezhong`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`shouji`,`ertongxingming`,`jiezhongbianhao`,`yimiaomingcheng`,`shengchanshang`,`jiezhongzhenshu`,`yimiaotupian`,`jiezhongshijian`,`mingcheng`,`dizhi`,`dianhua`) values (46,'2021-05-02 02:14:25','账号6','监护人姓名6','手机6','儿童姓名6','接种编号6','疫苗名称6','生产商6','接种针数6','http://localhost:8080/springboot4h114/upload/ertongjiezhong_yimiaotupian6.jpg','2021-05-02 02:14:25','名称6','地址6','电话6');
insert  into `ertongjiezhong`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`shouji`,`ertongxingming`,`jiezhongbianhao`,`yimiaomingcheng`,`shengchanshang`,`jiezhongzhenshu`,`yimiaotupian`,`jiezhongshijian`,`mingcheng`,`dizhi`,`dianhua`) values (1619893119555,'2021-05-02 02:18:39','1','null','null','null','null','疫苗名称4','生产商4','接种针数4','http://localhost:8080/springboot4h114/upload/yimiaoxinxi_yimiaotupian4.jpg','2020-05-01 02:18:23','名称2','地址2','电话2');

/*Table structure for table `ertongjiezhongshi` */

DROP TABLE IF EXISTS `ertongjiezhongshi`;

CREATE TABLE `ertongjiezhongshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `jiezhongbianhao` varchar(200) DEFAULT NULL COMMENT '接种编号',
  `jianhurenxingming` varchar(200) DEFAULT NULL COMMENT '监护人姓名',
  `chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `yimiaomingcheng` varchar(200) DEFAULT NULL COMMENT '疫苗名称',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `shengchanpici` varchar(200) DEFAULT NULL COMMENT '生产批次',
  `jiezhongzhenshu` varchar(200) DEFAULT NULL COMMENT '接种针数',
  `jiezhongshijian` datetime DEFAULT NULL COMMENT '接种时间',
  `buliangfanying` varchar(200) DEFAULT NULL COMMENT '不良反应',
  `xiacijiezhong` datetime DEFAULT NULL COMMENT '下次接种',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='儿童接种史';

/*Data for the table `ertongjiezhongshi` */

insert  into `ertongjiezhongshi`(`id`,`addtime`,`zhanghao`,`ertongxingming`,`jiezhongbianhao`,`jianhurenxingming`,`chushengriqi`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`jiezhongzhenshu`,`jiezhongshijian`,`buliangfanying`,`xiacijiezhong`,`tupian`) values (51,'2021-05-02 02:14:25','账号1','儿童姓名1','接种编号1','监护人姓名1','出生日期1','疫苗名称1','生产商1','生产批次1','接种针数1','2021-05-02 02:14:25','不良反应1','2021-05-02 02:14:25','http://localhost:8080/springboot4h114/upload/ertongjiezhongshi_tupian1.jpg');
insert  into `ertongjiezhongshi`(`id`,`addtime`,`zhanghao`,`ertongxingming`,`jiezhongbianhao`,`jianhurenxingming`,`chushengriqi`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`jiezhongzhenshu`,`jiezhongshijian`,`buliangfanying`,`xiacijiezhong`,`tupian`) values (52,'2021-05-02 02:14:25','账号2','儿童姓名2','接种编号2','监护人姓名2','出生日期2','疫苗名称2','生产商2','生产批次2','接种针数2','2021-05-02 02:14:25','不良反应2','2021-05-02 02:14:25','http://localhost:8080/springboot4h114/upload/ertongjiezhongshi_tupian2.jpg');
insert  into `ertongjiezhongshi`(`id`,`addtime`,`zhanghao`,`ertongxingming`,`jiezhongbianhao`,`jianhurenxingming`,`chushengriqi`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`jiezhongzhenshu`,`jiezhongshijian`,`buliangfanying`,`xiacijiezhong`,`tupian`) values (53,'2021-05-02 02:14:25','账号3','儿童姓名3','接种编号3','监护人姓名3','出生日期3','疫苗名称3','生产商3','生产批次3','接种针数3','2021-05-02 02:14:25','不良反应3','2021-05-02 02:14:25','http://localhost:8080/springboot4h114/upload/ertongjiezhongshi_tupian3.jpg');
insert  into `ertongjiezhongshi`(`id`,`addtime`,`zhanghao`,`ertongxingming`,`jiezhongbianhao`,`jianhurenxingming`,`chushengriqi`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`jiezhongzhenshu`,`jiezhongshijian`,`buliangfanying`,`xiacijiezhong`,`tupian`) values (54,'2021-05-02 02:14:25','账号4','儿童姓名4','接种编号4','监护人姓名4','出生日期4','疫苗名称4','生产商4','生产批次4','接种针数4','2021-05-02 02:14:25','不良反应4','2021-05-02 02:14:25','http://localhost:8080/springboot4h114/upload/ertongjiezhongshi_tupian4.jpg');
insert  into `ertongjiezhongshi`(`id`,`addtime`,`zhanghao`,`ertongxingming`,`jiezhongbianhao`,`jianhurenxingming`,`chushengriqi`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`jiezhongzhenshu`,`jiezhongshijian`,`buliangfanying`,`xiacijiezhong`,`tupian`) values (55,'2021-05-02 02:14:25','账号5','儿童姓名5','接种编号5','监护人姓名5','出生日期5','疫苗名称5','生产商5','生产批次5','接种针数5','2021-05-02 02:14:25','不良反应5','2021-05-02 02:14:25','http://localhost:8080/springboot4h114/upload/ertongjiezhongshi_tupian5.jpg');
insert  into `ertongjiezhongshi`(`id`,`addtime`,`zhanghao`,`ertongxingming`,`jiezhongbianhao`,`jianhurenxingming`,`chushengriqi`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`jiezhongzhenshu`,`jiezhongshijian`,`buliangfanying`,`xiacijiezhong`,`tupian`) values (56,'2021-05-02 02:14:25','账号6','儿童姓名6','接种编号6','监护人姓名6','出生日期6','疫苗名称6','生产商6','生产批次6','接种针数6','2021-05-02 02:14:25','不良反应6','2021-05-02 02:14:25','http://localhost:8080/springboot4h114/upload/ertongjiezhongshi_tupian6.jpg');

/*Table structure for table `ertongxinxi` */

DROP TABLE IF EXISTS `ertongxinxi`;

CREATE TABLE `ertongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jianhurenxingming` varchar(200) DEFAULT NULL COMMENT '监护人姓名',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `jiezhongbianhao` varchar(200) DEFAULT NULL COMMENT '接种编号',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `ertongxingbie` varchar(200) DEFAULT NULL COMMENT '儿童性别',
  `yunqizhoushu` varchar(200) DEFAULT NULL COMMENT '孕期周数',
  `chushengshengao` varchar(200) DEFAULT NULL COMMENT '出生身高',
  `chushengtizhong` varchar(200) DEFAULT NULL COMMENT '出生体重',
  `ertongguominshi` varchar(200) DEFAULT NULL COMMENT '儿童过敏史',
  `jianhurendianhua` varchar(200) DEFAULT NULL COMMENT '监护人电话',
  `ertongguanxi` varchar(200) DEFAULT NULL COMMENT '儿童关系',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='儿童信息';

/*Data for the table `ertongxinxi` */

insert  into `ertongxinxi`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`chushengriqi`,`ertongxingbie`,`yunqizhoushu`,`chushengshengao`,`chushengtizhong`,`ertongguominshi`,`jianhurendianhua`,`ertongguanxi`,`jiatingzhuzhi`,`zhaopian`) values (21,'2021-05-02 02:14:25','账号1','监护人姓名1','儿童姓名1','接种编号1','2021-05-02','男','孕期周数1','出生身高1','出生体重1','儿童过敏史1','监护人电话1','儿童关系1','家庭住址1','http://localhost:8080/springboot4h114/upload/ertongxinxi_zhaopian1.jpg');
insert  into `ertongxinxi`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`chushengriqi`,`ertongxingbie`,`yunqizhoushu`,`chushengshengao`,`chushengtizhong`,`ertongguominshi`,`jianhurendianhua`,`ertongguanxi`,`jiatingzhuzhi`,`zhaopian`) values (22,'2021-05-02 02:14:25','账号2','监护人姓名2','儿童姓名2','接种编号2','2021-05-02','男','孕期周数2','出生身高2','出生体重2','儿童过敏史2','监护人电话2','儿童关系2','家庭住址2','http://localhost:8080/springboot4h114/upload/ertongxinxi_zhaopian2.jpg');
insert  into `ertongxinxi`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`chushengriqi`,`ertongxingbie`,`yunqizhoushu`,`chushengshengao`,`chushengtizhong`,`ertongguominshi`,`jianhurendianhua`,`ertongguanxi`,`jiatingzhuzhi`,`zhaopian`) values (23,'2021-05-02 02:14:25','账号3','监护人姓名3','儿童姓名3','接种编号3','2021-05-02','男','孕期周数3','出生身高3','出生体重3','儿童过敏史3','监护人电话3','儿童关系3','家庭住址3','http://localhost:8080/springboot4h114/upload/ertongxinxi_zhaopian3.jpg');
insert  into `ertongxinxi`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`chushengriqi`,`ertongxingbie`,`yunqizhoushu`,`chushengshengao`,`chushengtizhong`,`ertongguominshi`,`jianhurendianhua`,`ertongguanxi`,`jiatingzhuzhi`,`zhaopian`) values (24,'2021-05-02 02:14:25','账号4','监护人姓名4','儿童姓名4','接种编号4','2021-05-02','男','孕期周数4','出生身高4','出生体重4','儿童过敏史4','监护人电话4','儿童关系4','家庭住址4','http://localhost:8080/springboot4h114/upload/ertongxinxi_zhaopian4.jpg');
insert  into `ertongxinxi`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`chushengriqi`,`ertongxingbie`,`yunqizhoushu`,`chushengshengao`,`chushengtizhong`,`ertongguominshi`,`jianhurendianhua`,`ertongguanxi`,`jiatingzhuzhi`,`zhaopian`) values (25,'2021-05-02 02:14:25','账号5','监护人姓名5','儿童姓名5','接种编号5','2021-05-02','男','孕期周数5','出生身高5','出生体重5','儿童过敏史5','监护人电话5','儿童关系5','家庭住址5','http://localhost:8080/springboot4h114/upload/ertongxinxi_zhaopian5.jpg');
insert  into `ertongxinxi`(`id`,`addtime`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`chushengriqi`,`ertongxingbie`,`yunqizhoushu`,`chushengshengao`,`chushengtizhong`,`ertongguominshi`,`jianhurendianhua`,`ertongguanxi`,`jiatingzhuzhi`,`zhaopian`) values (26,'2021-05-02 02:14:25','账号6','监护人姓名6','儿童姓名6','接种编号6','2021-05-02','男','孕期周数6','出生身高6','出生体重6','儿童过敏史6','监护人电话6','儿童关系6','家庭住址6','http://localhost:8080/springboot4h114/upload/ertongxinxi_zhaopian6.jpg');

/*Table structure for table `quxiaoyuyue` */

DROP TABLE IF EXISTS `quxiaoyuyue`;

CREATE TABLE `quxiaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jianhurenxingming` varchar(200) DEFAULT NULL COMMENT '监护人姓名',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `jiezhongbianhao` varchar(200) DEFAULT NULL COMMENT '接种编号',
  `quxiaoyuyue` varchar(200) NOT NULL COMMENT '取消预约',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619893230653 DEFAULT CHARSET=utf8 COMMENT='取消预约';

/*Data for the table `quxiaoyuyue` */

insert  into `quxiaoyuyue`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`quxiaoyuyue`) values (81,'2021-05-02 02:14:25','名称1','地址1','账号1','监护人姓名1','儿童姓名1','接种编号1','取消预约');
insert  into `quxiaoyuyue`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`quxiaoyuyue`) values (82,'2021-05-02 02:14:25','名称2','地址2','账号2','监护人姓名2','儿童姓名2','接种编号2','取消预约');
insert  into `quxiaoyuyue`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`quxiaoyuyue`) values (83,'2021-05-02 02:14:25','名称3','地址3','账号3','监护人姓名3','儿童姓名3','接种编号3','取消预约');
insert  into `quxiaoyuyue`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`quxiaoyuyue`) values (84,'2021-05-02 02:14:25','名称4','地址4','账号4','监护人姓名4','儿童姓名4','接种编号4','取消预约');
insert  into `quxiaoyuyue`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`quxiaoyuyue`) values (85,'2021-05-02 02:14:25','名称5','地址5','账号5','监护人姓名5','儿童姓名5','接种编号5','取消预约');
insert  into `quxiaoyuyue`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`quxiaoyuyue`) values (86,'2021-05-02 02:14:25','名称6','地址6','账号6','监护人姓名6','儿童姓名6','接种编号6','取消预约');
insert  into `quxiaoyuyue`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`quxiaoyuyue`) values (1619893180338,'2021-05-02 02:19:39','名称2','地址2','1','null','null','null','取消预约');
insert  into `quxiaoyuyue`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`quxiaoyuyue`) values (1619893230652,'2021-05-02 02:20:30','名称1','地址1','1','null','null','null','取消预约');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619893029913,'1','yonghu','用户','u7o9eyf3jbpaf32lxx51c8d67o4lnmby','2021-05-02 02:17:18','2021-05-02 03:17:18');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-02 02:14:26');

/*Table structure for table `yiliaojigou` */

DROP TABLE IF EXISTS `yiliaojigou`;

CREATE TABLE `yiliaojigou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `farendaibiao` varchar(200) DEFAULT NULL COMMENT '法人代表',
  `zhandimianji` varchar(200) DEFAULT NULL COMMENT '占地面积',
  `keyuyuerenshu` varchar(200) DEFAULT NULL COMMENT '可预约人数',
  `gongzuorenyuan` varchar(200) DEFAULT NULL COMMENT '工作人员',
  `jigoutupian` varchar(200) DEFAULT NULL COMMENT '机构图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='医疗机构';

/*Data for the table `yiliaojigou` */

insert  into `yiliaojigou`(`id`,`addtime`,`mingcheng`,`dizhi`,`dianhua`,`farendaibiao`,`zhandimianji`,`keyuyuerenshu`,`gongzuorenyuan`,`jigoutupian`) values (61,'2021-05-02 02:14:25','名称1','地址1','电话1','法人代表1','占地面积1','可预约人数1','工作人员1','http://localhost:8080/springboot4h114/upload/yiliaojigou_jigoutupian1.jpg');
insert  into `yiliaojigou`(`id`,`addtime`,`mingcheng`,`dizhi`,`dianhua`,`farendaibiao`,`zhandimianji`,`keyuyuerenshu`,`gongzuorenyuan`,`jigoutupian`) values (62,'2021-05-02 02:14:25','名称2','地址2','电话2','法人代表2','占地面积2','可预约人数2','工作人员2','http://localhost:8080/springboot4h114/upload/yiliaojigou_jigoutupian2.jpg');
insert  into `yiliaojigou`(`id`,`addtime`,`mingcheng`,`dizhi`,`dianhua`,`farendaibiao`,`zhandimianji`,`keyuyuerenshu`,`gongzuorenyuan`,`jigoutupian`) values (63,'2021-05-02 02:14:25','名称3','地址3','电话3','法人代表3','占地面积3','可预约人数3','工作人员3','http://localhost:8080/springboot4h114/upload/yiliaojigou_jigoutupian3.jpg');
insert  into `yiliaojigou`(`id`,`addtime`,`mingcheng`,`dizhi`,`dianhua`,`farendaibiao`,`zhandimianji`,`keyuyuerenshu`,`gongzuorenyuan`,`jigoutupian`) values (64,'2021-05-02 02:14:25','名称4','地址4','电话4','法人代表4','占地面积4','可预约人数4','工作人员4','http://localhost:8080/springboot4h114/upload/yiliaojigou_jigoutupian4.jpg');
insert  into `yiliaojigou`(`id`,`addtime`,`mingcheng`,`dizhi`,`dianhua`,`farendaibiao`,`zhandimianji`,`keyuyuerenshu`,`gongzuorenyuan`,`jigoutupian`) values (65,'2021-05-02 02:14:25','名称5','地址5','电话5','法人代表5','占地面积5','可预约人数5','工作人员5','http://localhost:8080/springboot4h114/upload/yiliaojigou_jigoutupian5.jpg');
insert  into `yiliaojigou`(`id`,`addtime`,`mingcheng`,`dizhi`,`dianhua`,`farendaibiao`,`zhandimianji`,`keyuyuerenshu`,`gongzuorenyuan`,`jigoutupian`) values (66,'2021-05-02 02:14:25','名称6','地址6','电话6','法人代表6','占地面积6','可预约人数6','工作人员6','http://localhost:8080/springboot4h114/upload/yiliaojigou_jigoutupian6.jpg');

/*Table structure for table `yimiaoanquanjiaoyu` */

DROP TABLE IF EXISTS `yimiaoanquanjiaoyu`;

CREATE TABLE `yimiaoanquanjiaoyu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `neirong` longtext NOT NULL COMMENT '内容',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `riqi` datetime NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='疫苗安全教育';

/*Data for the table `yimiaoanquanjiaoyu` */

insert  into `yimiaoanquanjiaoyu`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`riqi`) values (91,'2021-05-02 02:14:25','标题1','内容1','http://localhost:8080/springboot4h114/upload/yimiaoanquanjiaoyu_tupian1.jpg','2021-05-02 02:14:25');
insert  into `yimiaoanquanjiaoyu`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`riqi`) values (92,'2021-05-02 02:14:25','标题2','内容2','http://localhost:8080/springboot4h114/upload/yimiaoanquanjiaoyu_tupian2.jpg','2021-05-02 02:14:25');
insert  into `yimiaoanquanjiaoyu`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`riqi`) values (93,'2021-05-02 02:14:26','标题3','内容3','http://localhost:8080/springboot4h114/upload/yimiaoanquanjiaoyu_tupian3.jpg','2021-05-02 02:14:26');
insert  into `yimiaoanquanjiaoyu`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`riqi`) values (94,'2021-05-02 02:14:26','标题4','内容4','http://localhost:8080/springboot4h114/upload/yimiaoanquanjiaoyu_tupian4.jpg','2021-05-02 02:14:26');
insert  into `yimiaoanquanjiaoyu`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`riqi`) values (95,'2021-05-02 02:14:26','标题5','内容5','http://localhost:8080/springboot4h114/upload/yimiaoanquanjiaoyu_tupian5.jpg','2021-05-02 02:14:26');
insert  into `yimiaoanquanjiaoyu`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`riqi`) values (96,'2021-05-02 02:14:26','标题6','内容6','http://localhost:8080/springboot4h114/upload/yimiaoanquanjiaoyu_tupian6.jpg','2021-05-02 02:14:26');

/*Table structure for table `yimiaoxinxi` */

DROP TABLE IF EXISTS `yimiaoxinxi`;

CREATE TABLE `yimiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yimiaomingcheng` varchar(200) DEFAULT NULL COMMENT '疫苗名称',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `shengchanpici` varchar(200) DEFAULT NULL COMMENT '生产批次',
  `cunchutiaojian` varchar(200) DEFAULT NULL COMMENT '存储条件',
  `yongfa` varchar(200) DEFAULT NULL COMMENT '用法',
  `yimiaoleixing` varchar(200) DEFAULT NULL COMMENT '疫苗类型',
  `fufeifangshi` varchar(200) DEFAULT NULL COMMENT '付费方式',
  `jiezhongzhenshu` varchar(200) DEFAULT NULL COMMENT '接种针数',
  `jiezhongjiange` varchar(200) DEFAULT NULL COMMENT '接种间隔',
  `changjianfanying` varchar(200) DEFAULT NULL COMMENT '常见反应',
  `jiezhongqianjinji` varchar(200) DEFAULT NULL COMMENT '接种前禁忌',
  `yimiaojieshao` longtext COMMENT '疫苗介绍',
  `yimiaotupian` varchar(200) DEFAULT NULL COMMENT '疫苗图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='疫苗信息';

/*Data for the table `yimiaoxinxi` */

insert  into `yimiaoxinxi`(`id`,`addtime`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`cunchutiaojian`,`yongfa`,`yimiaoleixing`,`fufeifangshi`,`jiezhongzhenshu`,`jiezhongjiange`,`changjianfanying`,`jiezhongqianjinji`,`yimiaojieshao`,`yimiaotupian`,`thumbsupnum`,`crazilynum`) values (31,'2021-05-02 02:14:25','疫苗名称1','生产商1','生产批次1','存储条件1','用法1','一类','自费','接种针数1','接种间隔1','常见反应1','接种前禁忌1','疫苗介绍1','http://localhost:8080/springboot4h114/upload/yimiaoxinxi_yimiaotupian1.jpg',1,1);
insert  into `yimiaoxinxi`(`id`,`addtime`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`cunchutiaojian`,`yongfa`,`yimiaoleixing`,`fufeifangshi`,`jiezhongzhenshu`,`jiezhongjiange`,`changjianfanying`,`jiezhongqianjinji`,`yimiaojieshao`,`yimiaotupian`,`thumbsupnum`,`crazilynum`) values (32,'2021-05-02 02:14:25','疫苗名称2','生产商2','生产批次2','存储条件2','用法2','一类','自费','接种针数2','接种间隔2','常见反应2','接种前禁忌2','疫苗介绍2','http://localhost:8080/springboot4h114/upload/yimiaoxinxi_yimiaotupian2.jpg',2,2);
insert  into `yimiaoxinxi`(`id`,`addtime`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`cunchutiaojian`,`yongfa`,`yimiaoleixing`,`fufeifangshi`,`jiezhongzhenshu`,`jiezhongjiange`,`changjianfanying`,`jiezhongqianjinji`,`yimiaojieshao`,`yimiaotupian`,`thumbsupnum`,`crazilynum`) values (33,'2021-05-02 02:14:25','疫苗名称3','生产商3','生产批次3','存储条件3','用法3','一类','自费','接种针数3','接种间隔3','常见反应3','接种前禁忌3','疫苗介绍3','http://localhost:8080/springboot4h114/upload/yimiaoxinxi_yimiaotupian3.jpg',3,3);
insert  into `yimiaoxinxi`(`id`,`addtime`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`cunchutiaojian`,`yongfa`,`yimiaoleixing`,`fufeifangshi`,`jiezhongzhenshu`,`jiezhongjiange`,`changjianfanying`,`jiezhongqianjinji`,`yimiaojieshao`,`yimiaotupian`,`thumbsupnum`,`crazilynum`) values (34,'2021-05-02 02:14:25','疫苗名称4','生产商4','生产批次4','存储条件4','用法4','一类','自费','接种针数4','接种间隔4','常见反应4','接种前禁忌4','疫苗介绍4','http://localhost:8080/springboot4h114/upload/yimiaoxinxi_yimiaotupian4.jpg',4,4);
insert  into `yimiaoxinxi`(`id`,`addtime`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`cunchutiaojian`,`yongfa`,`yimiaoleixing`,`fufeifangshi`,`jiezhongzhenshu`,`jiezhongjiange`,`changjianfanying`,`jiezhongqianjinji`,`yimiaojieshao`,`yimiaotupian`,`thumbsupnum`,`crazilynum`) values (35,'2021-05-02 02:14:25','疫苗名称5','生产商5','生产批次5','存储条件5','用法5','一类','自费','接种针数5','接种间隔5','常见反应5','接种前禁忌5','疫苗介绍5','http://localhost:8080/springboot4h114/upload/yimiaoxinxi_yimiaotupian5.jpg',5,5);
insert  into `yimiaoxinxi`(`id`,`addtime`,`yimiaomingcheng`,`shengchanshang`,`shengchanpici`,`cunchutiaojian`,`yongfa`,`yimiaoleixing`,`fufeifangshi`,`jiezhongzhenshu`,`jiezhongjiange`,`changjianfanying`,`jiezhongqianjinji`,`yimiaojieshao`,`yimiaotupian`,`thumbsupnum`,`crazilynum`) values (36,'2021-05-02 02:14:25','疫苗名称6','生产商6','生产批次6','存储条件6','用法6','一类','自费','接种针数6','接种间隔6','常见反应6','接种前禁忌6','疫苗介绍6','http://localhost:8080/springboot4h114/upload/yimiaoxinxi_yimiaotupian6.jpg',6,6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jianhurenxingming` varchar(200) DEFAULT NULL COMMENT '监护人姓名',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `jiezhongbianhao` varchar(200) DEFAULT NULL COMMENT '接种编号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619893029914 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`shouji`,`zhaopian`,`youxiang`) values (11,'2021-05-02 02:14:25','用户1','123456','监护人姓名1','儿童姓名1','接种编号1','13823888881','http://localhost:8080/springboot4h114/upload/yonghu_zhaopian1.jpg','773890001@qq.com');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`shouji`,`zhaopian`,`youxiang`) values (12,'2021-05-02 02:14:25','用户2','123456','监护人姓名2','儿童姓名2','接种编号2','13823888882','http://localhost:8080/springboot4h114/upload/yonghu_zhaopian2.jpg','773890002@qq.com');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`shouji`,`zhaopian`,`youxiang`) values (13,'2021-05-02 02:14:25','用户3','123456','监护人姓名3','儿童姓名3','接种编号3','13823888883','http://localhost:8080/springboot4h114/upload/yonghu_zhaopian3.jpg','773890003@qq.com');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`shouji`,`zhaopian`,`youxiang`) values (14,'2021-05-02 02:14:25','用户4','123456','监护人姓名4','儿童姓名4','接种编号4','13823888884','http://localhost:8080/springboot4h114/upload/yonghu_zhaopian4.jpg','773890004@qq.com');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`shouji`,`zhaopian`,`youxiang`) values (15,'2021-05-02 02:14:25','用户5','123456','监护人姓名5','儿童姓名5','接种编号5','13823888885','http://localhost:8080/springboot4h114/upload/yonghu_zhaopian5.jpg','773890005@qq.com');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`shouji`,`zhaopian`,`youxiang`) values (16,'2021-05-02 02:14:25','用户6','123456','监护人姓名6','儿童姓名6','接种编号6','13823888886','http://localhost:8080/springboot4h114/upload/yonghu_zhaopian6.jpg','773890006@qq.com');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`shouji`,`zhaopian`,`youxiang`) values (1619893029913,'2021-05-02 02:17:09','1','1',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `yuyuejiezhong` */

DROP TABLE IF EXISTS `yuyuejiezhong`;

CREATE TABLE `yuyuejiezhong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jianhurenxingming` varchar(200) DEFAULT NULL COMMENT '监护人姓名',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `jiezhongbianhao` varchar(200) DEFAULT NULL COMMENT '接种编号',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619893213824 DEFAULT CHARSET=utf8 COMMENT='预约接种';

/*Data for the table `yuyuejiezhong` */

insert  into `yuyuejiezhong`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`yuyueshijian`) values (71,'2021-05-02 02:14:25','名称1','地址1','账号1','监护人姓名1','儿童姓名1','接种编号1','2021-05-02 02:14:25');
insert  into `yuyuejiezhong`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`yuyueshijian`) values (72,'2021-05-02 02:14:25','名称2','地址2','账号2','监护人姓名2','儿童姓名2','接种编号2','2021-05-02 02:14:25');
insert  into `yuyuejiezhong`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`yuyueshijian`) values (73,'2021-05-02 02:14:25','名称3','地址3','账号3','监护人姓名3','儿童姓名3','接种编号3','2021-05-02 02:14:25');
insert  into `yuyuejiezhong`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`yuyueshijian`) values (74,'2021-05-02 02:14:25','名称4','地址4','账号4','监护人姓名4','儿童姓名4','接种编号4','2021-05-02 02:14:25');
insert  into `yuyuejiezhong`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`yuyueshijian`) values (75,'2021-05-02 02:14:25','名称5','地址5','账号5','监护人姓名5','儿童姓名5','接种编号5','2021-05-02 02:14:25');
insert  into `yuyuejiezhong`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`yuyueshijian`) values (76,'2021-05-02 02:14:25','名称6','地址6','账号6','监护人姓名6','儿童姓名6','接种编号6','2021-05-02 02:14:25');
insert  into `yuyuejiezhong`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`yuyueshijian`) values (1619893159825,'2021-05-02 02:19:19','名称2','地址2','1','null','null','null','2020-05-01 02:19:15');
insert  into `yuyuejiezhong`(`id`,`addtime`,`mingcheng`,`dizhi`,`zhanghao`,`jianhurenxingming`,`ertongxingming`,`jiezhongbianhao`,`yuyueshijian`) values (1619893213823,'2021-05-02 02:20:13','名称1','地址1','1','null','null','null','2020-05-01 02:20:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

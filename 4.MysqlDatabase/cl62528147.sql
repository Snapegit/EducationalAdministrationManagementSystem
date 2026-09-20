-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl62528147
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl62528147`
--

/*!40000 DROP DATABASE IF EXISTS `cl62528147`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl62528147` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl62528147`;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `banjimingdan` longtext COMMENT '班级名单',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (101,'2024-03-28 14:23:03','班级1','班级名单1'),(102,'2024-03-28 14:23:03','班级2','班级名单2'),(103,'2024-03-28 14:23:03','班级3','班级名单3'),(104,'2024-03-28 14:23:03','班级4','班级名单4'),(105,'2024-03-28 14:23:03','班级5','班级名单5'),(106,'2024-03-28 14:23:03','班级6','班级名单6');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (41,'2024-03-28 14:23:03','教师工号1','123456','教师姓名1','file/jiaoshiTouxiang1.jpg','19819881111','男'),(42,'2024-03-28 14:23:03','教师工号2','123456','教师姓名2','file/jiaoshiTouxiang2.jpg','19819881112','男'),(43,'2024-03-28 14:23:03','教师工号3','123456','教师姓名3','file/jiaoshiTouxiang3.jpg','19819881113','男'),(44,'2024-03-28 14:23:03','教师工号4','123456','教师姓名4','file/jiaoshiTouxiang4.jpg','19819881114','男'),(45,'2024-03-28 14:23:03','教师工号5','123456','教师姓名5','file/jiaoshiTouxiang5.jpg','19819881115','男'),(46,'2024-03-28 14:23:03','教师工号6','123456','教师姓名6','file/jiaoshiTouxiang6.jpg','19819881116','男');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxuefankui`
--

DROP TABLE IF EXISTS `jiaoxuefankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxuefankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `fankuibiaoti` varchar(200) NOT NULL COMMENT '反馈标题',
  `fankuineirong` longtext NOT NULL COMMENT '反馈内容',
  `fankuishijian` datetime DEFAULT NULL COMMENT '反馈时间',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='教学反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxuefankui`
--

LOCK TABLES `jiaoxuefankui` WRITE;
/*!40000 ALTER TABLE `jiaoxuefankui` DISABLE KEYS */;
INSERT INTO `jiaoxuefankui` VALUES (161,'2024-03-28 14:23:03','教师工号1','教师姓名1','反馈标题1','反馈内容1','2024-03-28 22:23:03',''),(162,'2024-03-28 14:23:03','教师工号2','教师姓名2','反馈标题2','反馈内容2','2024-03-28 22:23:03',''),(163,'2024-03-28 14:23:03','教师工号3','教师姓名3','反馈标题3','反馈内容3','2024-03-28 22:23:03',''),(164,'2024-03-28 14:23:03','教师工号4','教师姓名4','反馈标题4','反馈内容4','2024-03-28 22:23:03',''),(165,'2024-03-28 14:23:03','教师工号5','教师姓名5','反馈标题5','反馈内容5','2024-03-28 22:23:03',''),(166,'2024-03-28 14:23:03','教师工号6','教师姓名6','反馈标题6','反馈内容6','2024-03-28 22:23:03','');
/*!40000 ALTER TABLE `jiaoxuefankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxuepinggu`
--

DROP TABLE IF EXISTS `jiaoxuepinggu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxuepinggu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `jiaoxuetaidu` varchar(200) DEFAULT NULL COMMENT '教学态度',
  `jiaoxueneirong` varchar(200) DEFAULT NULL COMMENT '教学内容',
  `jiaoxuejindu` varchar(200) DEFAULT NULL COMMENT '教学进度',
  `jiaoxuechuangxin` varchar(200) DEFAULT NULL COMMENT '教学创新',
  `jiaoxueshuiping` varchar(200) DEFAULT NULL COMMENT '教学水平',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `pinggushijian` datetime DEFAULT NULL COMMENT '评估时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='教学评估';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxuepinggu`
--

LOCK TABLES `jiaoxuepinggu` WRITE;
/*!40000 ALTER TABLE `jiaoxuepinggu` DISABLE KEYS */;
INSERT INTO `jiaoxuepinggu` VALUES (171,'2024-03-28 14:23:03','教师工号1','教师姓名1','课程名称1','课程类型1','教学态度1','教学内容1','教学进度1','教学创新1','教学水平1','学号1','学生姓名1','2024-03-28 22:23:03'),(172,'2024-03-28 14:23:03','教师工号2','教师姓名2','课程名称2','课程类型2','教学态度2','教学内容2','教学进度2','教学创新2','教学水平2','学号2','学生姓名2','2024-03-28 22:23:03'),(173,'2024-03-28 14:23:03','教师工号3','教师姓名3','课程名称3','课程类型3','教学态度3','教学内容3','教学进度3','教学创新3','教学水平3','学号3','学生姓名3','2024-03-28 22:23:03'),(174,'2024-03-28 14:23:03','教师工号4','教师姓名4','课程名称4','课程类型4','教学态度4','教学内容4','教学进度4','教学创新4','教学水平4','学号4','学生姓名4','2024-03-28 22:23:03'),(175,'2024-03-28 14:23:03','教师工号5','教师姓名5','课程名称5','课程类型5','教学态度5','教学内容5','教学进度5','教学创新5','教学水平5','学号5','学生姓名5','2024-03-28 22:23:03'),(176,'2024-03-28 14:23:03','教师工号6','教师姓名6','课程名称6','课程类型6','教学态度6','教学内容6','教学进度6','教学创新6','教学水平6','学号6','学生姓名6','2024-03-28 22:23:03');
/*!40000 ALTER TABLE `jiaoxuepinggu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfengmian` longtext COMMENT '课程封面',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `kechengjianjie` longtext COMMENT '课程简介',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (51,'2024-03-28 14:23:03','课程名称1','file/kechengxinxiKechengfengmian1.jpg,file/kechengxinxiKechengfengmian2.jpg,file/kechengxinxiKechengfengmian3.jpg','班级1','选修课','课程简介1','上课时间1','2024-03-28 22:23:03','教师工号1','教师姓名1',1),(52,'2024-03-28 14:23:03','课程名称2','file/kechengxinxiKechengfengmian2.jpg,file/kechengxinxiKechengfengmian3.jpg,file/kechengxinxiKechengfengmian4.jpg','班级2','选修课','课程简介2','上课时间2','2024-03-28 22:23:03','教师工号2','教师姓名2',2),(53,'2024-03-28 14:23:03','课程名称3','file/kechengxinxiKechengfengmian3.jpg,file/kechengxinxiKechengfengmian4.jpg,file/kechengxinxiKechengfengmian5.jpg','班级3','选修课','课程简介3','上课时间3','2024-03-28 22:23:03','教师工号3','教师姓名3',3),(54,'2024-03-28 14:23:03','课程名称4','file/kechengxinxiKechengfengmian4.jpg,file/kechengxinxiKechengfengmian5.jpg,file/kechengxinxiKechengfengmian6.jpg','班级4','选修课','课程简介4','上课时间4','2024-03-28 22:23:03','教师工号4','教师姓名4',4),(55,'2024-03-28 14:23:03','课程名称5','file/kechengxinxiKechengfengmian5.jpg,file/kechengxinxiKechengfengmian6.jpg,file/kechengxinxiKechengfengmian7.jpg','班级5','选修课','课程简介5','上课时间5','2024-03-28 22:23:03','教师工号5','教师姓名5',5),(56,'2024-03-28 14:23:03','课程名称6','file/kechengxinxiKechengfengmian6.jpg,file/kechengxinxiKechengfengmian7.jpg,file/kechengxinxiKechengfengmian8.jpg','班级6','选修课','课程简介6','上课时间6','2024-03-28 22:23:03','教师工号6','教师姓名6',6);
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoshikechengbiao`
--

DROP TABLE IF EXISTS `laoshikechengbiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoshikechengbiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xingqi` varchar(200) DEFAULT NULL COMMENT '星期',
  `dijijie` varchar(200) DEFAULT NULL COMMENT '第几节',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='老师课程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoshikechengbiao`
--

LOCK TABLES `laoshikechengbiao` WRITE;
/*!40000 ALTER TABLE `laoshikechengbiao` DISABLE KEYS */;
INSERT INTO `laoshikechengbiao` VALUES (91,'2024-03-28 14:23:03','课程名称1','星期一','第几节1','班级1',1,'上课时间1','教师工号1','教师姓名1'),(92,'2024-03-28 14:23:03','课程名称2','星期一','第几节2','班级2',2,'上课时间2','教师工号2','教师姓名2'),(93,'2024-03-28 14:23:03','课程名称3','星期一','第几节3','班级3',3,'上课时间3','教师工号3','教师姓名3'),(94,'2024-03-28 14:23:03','课程名称4','星期一','第几节4','班级4',4,'上课时间4','教师工号4','教师姓名4'),(95,'2024-03-28 14:23:03','课程名称5','星期一','第几节5','班级5',5,'上课时间5','教师工号5','教师姓名5'),(96,'2024-03-28 14:23:03','课程名称6','星期一','第几节6','班级6',6,'上课时间6','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `laoshikechengbiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-28 14:23:03','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common25\",\"menu\":\"管理员管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"院系统计\",\"首页总数\"],\"menu\":\"学生\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\"},{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"教师学院统计\",\"首页总数\"],\"menu\":\"教师\",\"menuJump\":\"列表\",\"tableName\":\"jiaoshi\"}],\"fontClass\":\"icon-user2\",\"menu\":\"用户\",\"unicode\":\"&#xef98;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"班级\",\"menuJump\":\"列表\",\"tableName\":\"banji\"}],\"fontClass\":\"icon-common26\",\"menu\":\"班级管理\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"教学评估\",\"menuJump\":\"列表\",\"tableName\":\"jiaoxuepinggu\"}],\"fontClass\":\"icon-common6\",\"menu\":\"教学评估管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学籍信息\",\"menuJump\":\"列表\",\"tableName\":\"xuejixinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"学籍信息管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"教学反馈\",\"menuJump\":\"列表\",\"tableName\":\"jiaoxuefankui\"}],\"fontClass\":\"icon-common13\",\"menu\":\"教学反馈管理\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学生成绩\",\"menuJump\":\"列表\",\"tableName\":\"xueshengchengji\"}],\"fontClass\":\"icon-common33\",\"menu\":\"学生成绩管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学生选课\",\"menuJump\":\"列表\",\"tableName\":\"xueshengxuanke\"}],\"fontClass\":\"icon-common15\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"老师课程表\",\"menuJump\":\"列表\",\"tableName\":\"laoshikechengbiao\"}],\"fontClass\":\"icon-common4\",\"menu\":\"课程表管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学习资料\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\"},{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"资料类型\",\"menuJump\":\"列表\",\"tableName\":\"ziliaoleixing\"},{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"资料下载\",\"menuJump\":\"列表\",\"tableName\":\"ziliaoxiazai\"}],\"fontClass\":\"icon-common13\",\"menu\":\"学习资料管理\",\"unicode\":\"&#xedf7;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"选课\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"下载\"],\"menu\":\"学习资料\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\"}],\"menu\":\"学习资料管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学籍信息\",\"menuJump\":\"列表\",\"tableName\":\"xuejixinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"学籍信息管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教学评估\",\"menuJump\":\"列表\",\"tableName\":\"jiaoxuepinggu\"}],\"fontClass\":\"icon-common6\",\"menu\":\"教学评估管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学生成绩\",\"menuJump\":\"列表\",\"tableName\":\"xueshengchengji\"}],\"fontClass\":\"icon-common33\",\"menu\":\"学生成绩管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学生选课\",\"menuJump\":\"列表\",\"tableName\":\"xueshengxuanke\"}],\"fontClass\":\"icon-common15\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"资料下载\",\"menuJump\":\"列表\",\"tableName\":\"ziliaoxiazai\"}],\"fontClass\":\"icon-common13\",\"menu\":\"学习资料管理\",\"unicode\":\"&#xedf7;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"选课\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"下载\"],\"menu\":\"学习资料\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\"}],\"menu\":\"学习资料管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"否\",\"roleName\":\"学生\",\"tableName\":\"xuesheng\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教学反馈\",\"menuJump\":\"列表\",\"tableName\":\"jiaoxuefankui\"}],\"fontClass\":\"icon-common13\",\"menu\":\"教学反馈管理\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"教学评估\",\"menuJump\":\"列表\",\"tableName\":\"jiaoxuepinggu\"}],\"fontClass\":\"icon-common6\",\"menu\":\"教学评估管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学籍信息\",\"menuJump\":\"列表\",\"tableName\":\"xuejixinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"学籍信息管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学生选课\",\"menuJump\":\"列表\",\"tableName\":\"xueshengxuanke\"}],\"fontClass\":\"icon-common15\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"老师课程表\",\"menuJump\":\"列表\",\"tableName\":\"laoshikechengbiao\"}],\"fontClass\":\"icon-common4\",\"menu\":\"课程表管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"分数统计\",\"首页总数\",\"首页统计\"],\"menu\":\"学生成绩\",\"menuJump\":\"列表\",\"tableName\":\"xueshengchengji\"}],\"fontClass\":\"icon-common33\",\"menu\":\"学生成绩管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学习资料\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\"},{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"资料类型\",\"menuJump\":\"列表\",\"tableName\":\"ziliaoleixing\"},{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"资料下载\",\"menuJump\":\"列表\",\"tableName\":\"ziliaoxiazai\"}],\"fontClass\":\"icon-common13\",\"menu\":\"学习资料管理\",\"unicode\":\"&#xedf7;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"选课\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"下载\"],\"menu\":\"学习资料\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziliao\"}],\"menu\":\"学习资料管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"教师\",\"tableName\":\"jiaoshi\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2024-03-28 14:23:03','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(132,'2024-03-28 14:23:03','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(133,'2024-03-28 14:23:03','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(134,'2024-03-28 14:23:03','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(135,'2024-03-28 14:23:03','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(136,'2024-03-28 14:23:03','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','c0t6vh8lqwvwquy9b7541b8y21jc0wrl','2024-03-28 14:31:26','2024-03-28 15:31:26');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-28 14:23:03','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuejixinxi`
--

DROP TABLE IF EXISTS `xuejixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuejixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganbianhao` varchar(200) DEFAULT NULL COMMENT '档案编号',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `ruxueshijian` date NOT NULL COMMENT '入学时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danganbianhao` (`danganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='学籍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuejixinxi`
--

LOCK TABLES `xuejixinxi` WRITE;
/*!40000 ALTER TABLE `xuejixinxi` DISABLE KEYS */;
INSERT INTO `xuejixinxi` VALUES (151,'2024-03-28 14:23:03','1111111111','学号1','学生姓名1','性别1','手机号码1','班级1','441622200101010001','民族1','籍贯1','家庭住址1','2024-03-28','备注1'),(152,'2024-03-28 14:23:03','2222222222','学号2','学生姓名2','性别2','手机号码2','班级2','441622200202020002','民族2','籍贯2','家庭住址2','2024-03-28','备注2'),(153,'2024-03-28 14:23:03','3333333333','学号3','学生姓名3','性别3','手机号码3','班级3','441622200303030003','民族3','籍贯3','家庭住址3','2024-03-28','备注3'),(154,'2024-03-28 14:23:03','4444444444','学号4','学生姓名4','性别4','手机号码4','班级4','441622200404040004','民族4','籍贯4','家庭住址4','2024-03-28','备注4'),(155,'2024-03-28 14:23:03','5555555555','学号5','学生姓名5','性别5','手机号码5','班级5','441622200505050005','民族5','籍贯5','家庭住址5','2024-03-28','备注5'),(156,'2024-03-28 14:23:03','6666666666','学号6','学生姓名6','性别6','手机号码6','班级6','441622200606060006','民族6','籍贯6','家庭住址6','2024-03-28','备注6');
/*!40000 ALTER TABLE `xuejixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (31,'2024-03-28 14:23:03','学号1','123456','学生姓名1','file/xueshengTouxiang1.jpg','男','19819881111','班级1'),(32,'2024-03-28 14:23:03','学号2','123456','学生姓名2','file/xueshengTouxiang2.jpg','男','19819881112','班级2'),(33,'2024-03-28 14:23:03','学号3','123456','学生姓名3','file/xueshengTouxiang3.jpg','男','19819881113','班级3'),(34,'2024-03-28 14:23:03','学号4','123456','学生姓名4','file/xueshengTouxiang4.jpg','男','19819881114','班级4'),(35,'2024-03-28 14:23:03','学号5','123456','学生姓名5','file/xueshengTouxiang5.jpg','男','19819881115','班级5'),(36,'2024-03-28 14:23:03','学号6','123456','学生姓名6','file/xueshengTouxiang6.jpg','男','19819881116','班级6');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengchengji`
--

DROP TABLE IF EXISTS `xueshengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `chengji` double NOT NULL COMMENT '成绩',
  `chengjileixing` varchar(200) DEFAULT NULL COMMENT '成绩类型',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='学生成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengchengji`
--

LOCK TABLES `xueshengchengji` WRITE;
/*!40000 ALTER TABLE `xueshengchengji` DISABLE KEYS */;
INSERT INTO `xueshengchengji` VALUES (81,'2024-03-28 14:23:03','课程名称1','学期1',1,'考试成绩','学号1','学生姓名1','教师工号1','教师姓名1'),(82,'2024-03-28 14:23:03','课程名称2','学期2',2,'考试成绩','学号2','学生姓名2','教师工号2','教师姓名2'),(83,'2024-03-28 14:23:03','课程名称3','学期3',3,'考试成绩','学号3','学生姓名3','教师工号3','教师姓名3'),(84,'2024-03-28 14:23:03','课程名称4','学期4',4,'考试成绩','学号4','学生姓名4','教师工号4','教师姓名4'),(85,'2024-03-28 14:23:03','课程名称5','学期5',5,'考试成绩','学号5','学生姓名5','教师工号5','教师姓名5'),(86,'2024-03-28 14:23:03','课程名称6','学期6',6,'考试成绩','学号6','学生姓名6','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `xueshengchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxuanke`
--

DROP TABLE IF EXISTS `xueshengxuanke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `kechengjianjie` varchar(200) DEFAULT NULL COMMENT '课程简介',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `xuankeshijian` datetime DEFAULT NULL COMMENT '选课时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='学生选课';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxuanke`
--

LOCK TABLES `xueshengxuanke` WRITE;
/*!40000 ALTER TABLE `xueshengxuanke` DISABLE KEYS */;
INSERT INTO `xueshengxuanke` VALUES (71,'2024-03-28 14:23:03','课程名称1','课程类型1','课程简介1','教师工号1','教师姓名1','学号1','学生姓名1','院系1','2024-03-28 22:23:03',1,1),(72,'2024-03-28 14:23:03','课程名称2','课程类型2','课程简介2','教师工号2','教师姓名2','学号2','学生姓名2','院系2','2024-03-28 22:23:03',2,2),(73,'2024-03-28 14:23:03','课程名称3','课程类型3','课程简介3','教师工号3','教师姓名3','学号3','学生姓名3','院系3','2024-03-28 22:23:03',3,3),(74,'2024-03-28 14:23:03','课程名称4','课程类型4','课程简介4','教师工号4','教师姓名4','学号4','学生姓名4','院系4','2024-03-28 22:23:03',4,4),(75,'2024-03-28 14:23:03','课程名称5','课程类型5','课程简介5','教师工号5','教师姓名5','学号5','学生姓名5','院系5','2024-03-28 22:23:03',5,5),(76,'2024-03-28 14:23:03','课程名称6','课程类型6','课程简介6','教师工号6','教师姓名6','学号6','学生姓名6','院系6','2024-03-28 22:23:03',6,6);
/*!40000 ALTER TABLE `xueshengxuanke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiziliao`
--

DROP TABLE IF EXISTS `xuexiziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaomingcheng` varchar(200) NOT NULL COMMENT '资料名称',
  `ziliaoleixing` varchar(200) DEFAULT NULL COMMENT '资料类型',
  `tupian` longtext COMMENT '图片',
  `ziliaojianjie` longtext COMMENT '资料简介',
  `ziliaowenjian` longtext NOT NULL COMMENT '资料文件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='学习资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiziliao`
--

LOCK TABLES `xuexiziliao` WRITE;
/*!40000 ALTER TABLE `xuexiziliao` DISABLE KEYS */;
INSERT INTO `xuexiziliao` VALUES (121,'2024-03-28 14:23:03','资料名称1','资料类型1','file/xuexiziliaoTupian1.jpg,file/xuexiziliaoTupian2.jpg,file/xuexiziliaoTupian3.jpg','资料简介1','','2024-03-28 22:23:03','教师工号1','教师姓名1',1),(122,'2024-03-28 14:23:03','资料名称2','资料类型2','file/xuexiziliaoTupian2.jpg,file/xuexiziliaoTupian3.jpg,file/xuexiziliaoTupian4.jpg','资料简介2','','2024-03-28 22:23:03','教师工号2','教师姓名2',2),(123,'2024-03-28 14:23:03','资料名称3','资料类型3','file/xuexiziliaoTupian3.jpg,file/xuexiziliaoTupian4.jpg,file/xuexiziliaoTupian5.jpg','资料简介3','','2024-03-28 22:23:03','教师工号3','教师姓名3',3),(124,'2024-03-28 14:23:03','资料名称4','资料类型4','file/xuexiziliaoTupian4.jpg,file/xuexiziliaoTupian5.jpg,file/xuexiziliaoTupian6.jpg','资料简介4','','2024-03-28 22:23:03','教师工号4','教师姓名4',4),(125,'2024-03-28 14:23:03','资料名称5','资料类型5','file/xuexiziliaoTupian5.jpg,file/xuexiziliaoTupian6.jpg,file/xuexiziliaoTupian7.jpg','资料简介5','','2024-03-28 22:23:03','教师工号5','教师姓名5',5),(126,'2024-03-28 14:23:03','资料名称6','资料类型6','file/xuexiziliaoTupian6.jpg,file/xuexiziliaoTupian7.jpg,file/xuexiziliaoTupian8.jpg','资料简介6','','2024-03-28 22:23:03','教师工号6','教师姓名6',6);
/*!40000 ALTER TABLE `xuexiziliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziliaoleixing`
--

DROP TABLE IF EXISTS `ziliaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziliaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaoleixing` varchar(200) NOT NULL COMMENT '资料类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziliaoleixing` (`ziliaoleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='资料类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziliaoleixing`
--

LOCK TABLES `ziliaoleixing` WRITE;
/*!40000 ALTER TABLE `ziliaoleixing` DISABLE KEYS */;
INSERT INTO `ziliaoleixing` VALUES (111,'2024-03-28 14:23:03','资料类型1'),(112,'2024-03-28 14:23:03','资料类型2'),(113,'2024-03-28 14:23:03','资料类型3'),(114,'2024-03-28 14:23:03','资料类型4'),(115,'2024-03-28 14:23:03','资料类型5'),(116,'2024-03-28 14:23:03','资料类型6');
/*!40000 ALTER TABLE `ziliaoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziliaoxiazai`
--

DROP TABLE IF EXISTS `ziliaoxiazai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziliaoxiazai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaomingcheng` varchar(200) NOT NULL COMMENT '资料名称',
  `ziliaojianjie` longtext COMMENT '资料简介',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xiazaishijian` datetime DEFAULT NULL COMMENT '下载时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='资料下载';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziliaoxiazai`
--

LOCK TABLES `ziliaoxiazai` WRITE;
/*!40000 ALTER TABLE `ziliaoxiazai` DISABLE KEYS */;
INSERT INTO `ziliaoxiazai` VALUES (141,'2024-03-28 14:23:03','资料名称1','资料简介1','学号1','学生姓名1','教师工号1','教师姓名1','2024-03-28 22:23:03'),(142,'2024-03-28 14:23:03','资料名称2','资料简介2','学号2','学生姓名2','教师工号2','教师姓名2','2024-03-28 22:23:03'),(143,'2024-03-28 14:23:03','资料名称3','资料简介3','学号3','学生姓名3','教师工号3','教师姓名3','2024-03-28 22:23:03'),(144,'2024-03-28 14:23:03','资料名称4','资料简介4','学号4','学生姓名4','教师工号4','教师姓名4','2024-03-28 22:23:03'),(145,'2024-03-28 14:23:03','资料名称5','资料简介5','学号5','学生姓名5','教师工号5','教师姓名5','2024-03-28 22:23:03'),(146,'2024-03-28 14:23:03','资料名称6','资料简介6','学号6','学生姓名6','教师工号6','教师姓名6','2024-03-28 22:23:03');
/*!40000 ALTER TABLE `ziliaoxiazai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01 14:55:22

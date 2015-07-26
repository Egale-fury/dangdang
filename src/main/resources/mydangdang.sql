/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : mydangdang

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-07-26 10:13:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for d_book
-- ----------------------------
DROP TABLE IF EXISTS `d_book`;
CREATE TABLE `d_book` (
  `author` varchar(255) NOT NULL,
  `author_summary` longtext,
  `catalogue` longtext,
  `isbn` varchar(255) DEFAULT NULL,
  `print_num` int(11) DEFAULT NULL,
  `print_time` int(11) DEFAULT NULL,
  `publisth_time` datetime NOT NULL,
  `publishing` varchar(255) NOT NULL,
  `total_page` int(11) DEFAULT NULL,
  `which_edition` varchar(255) DEFAULT NULL,
  `word_number` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `FK_cmll0ml8ponb3jl145plkn46h` FOREIGN KEY (`product_id`) REFERENCES `d_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_book
-- ----------------------------
INSERT INTO `d_book` VALUES ('南派三叔 ', '著名网络小说家', '《盗墓笔记（1-8）（套装共9册）（六周年纪念版）》：\r\n包括\r\n《盗墓笔记1七星鲁王宫》\r\n《盗墓笔记2秦岭神树》\r\n《盗墓笔记3云顶天宫》\r\n《盗墓笔记4蛇沼鬼城》\r\n《盗墓笔记5谜海归巢》\r\n《盗墓笔记6阴山古楼》\r\n《盗墓笔记7邛笼石影》\r\n《盗墓笔记.8 大结局（上、下套装）》\r\n独家附送三大精美周边：《盗墓帝国·公民谱》（一册）、盗墓妖怪拟人画明信片（十二张）、盗墓之旅主题卡贴（六张）。', '9787807407270', '500', '120', '1995-07-19 15:10:47', '上海文化出版社', '156', '1', '25万', '1');
INSERT INTO `d_book` VALUES ('（法）圣埃克苏佩里　著，李继宏　译', '法国当代著名小说家', '导读小王子', '9787201077642', '4000', '100', '2015-07-19 10:21:43', '天津人民出版社', '100', '1', '20万', '2');
INSERT INTO `d_book` VALUES ('王树增', '王树增，1952年生于北京。中国非虚构文学第一人，中国战争题材第一作家。著有长篇纪实文学《长征》《 朝鲜战争》《解放战争》，非虚构中国近代史系列《1901》、《1911》等。作品曾获中国人民解放军文艺大奖、中国图书政府奖、全国五个一工程奖、鲁迅文学奖、中国人民解放军文艺奖、曹禺戏剧文学奖。', '《抗日战争》第一卷\r\n序章\r\n世界上还有另外一种逻辑？\r\n第一章\r\n最后关头\r\n第二章\r\n中国决不放弃领土之任何部分\r\n第三章\r\n寇深矣！祸急矣！\r\n第四章\r\n丧师失地未有如是之速者\r\n第五章\r\n八路军上来了\r\n第六章\r\n从滑稽故事的迷雾中脱颖而出', '9787020110032', '300', '150', '2015-06-01 08:36:01', '人民文学出版社', '150', '1', '10万', '3');
INSERT INTO `d_book` VALUES ('路遥　', '　路遥（1949-1992）原名王卫国，1949年12月3日生于陕西榆林市清涧县一个贫困的农民家庭，7岁时因为家里困难被过继给延川县农村的伯父。曾在延川县立中学学习，1969年回乡务农。这段时间里他做过许多临时性的工作，并在农村一小学中教过一年书。1973年进入延安大学中文系学习。', '第一部\r\n第二部\r\n第三部', '9787530212004', '100', '150', '2013-12-01 08:44:45', '北京十月文艺出版社', '200', '1', '15万', '4');

-- ----------------------------
-- Table structure for d_category
-- ----------------------------
DROP TABLE IF EXISTS `d_category`;
CREATE TABLE `d_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l7y3df7r3fv2488oan3gubjxg` (`parent_id`),
  CONSTRAINT `FK_l7y3df7r3fv2488oan3gubjxg` FOREIGN KEY (`parent_id`) REFERENCES `d_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_category
-- ----------------------------
INSERT INTO `d_category` VALUES ('1', '图书', 'Novel', '1', '小说', null);
INSERT INTO `d_category` VALUES ('2', '图书', 'Literature and art', '1', '文艺', null);
INSERT INTO `d_category` VALUES ('3', '图书', 'Youth', '1', '青春', null);
INSERT INTO `d_category` VALUES ('4', '图书', 'Humanity And Social Science', '1', '人文社科', null);
INSERT INTO `d_category` VALUES ('5', '图书', 'Commen Management', '1', '经管', null);
INSERT INTO `d_category` VALUES ('6', '图书', 'Novel', '2', '小说', '1');
INSERT INTO `d_category` VALUES ('7', '图书', 'Literature', '2', '文学', '2');
INSERT INTO `d_category` VALUES ('8', '图书', 'Biography', '2', '传记', '2');
INSERT INTO `d_category` VALUES ('9', '图书', 'Art', '2', '艺术', '2');
INSERT INTO `d_category` VALUES ('10', '图书', 'Photography', '2', '摄影', '2');
INSERT INTO `d_category` VALUES ('11', '图书', 'Chinese Contemporary Novels', '3', '中国当代小说', '6');
INSERT INTO `d_category` VALUES ('12', '图书', 'Chinese modern novel', '3', '中国近代小说', '6');
INSERT INTO `d_category` VALUES ('13', '图书', 'Chinese classical novel', '3', '中国古典小说', '6');
INSERT INTO `d_category` VALUES ('14', '图书', 'Four famous works', '3', '四大名著', '6');
INSERT INTO `d_category` VALUES ('15', '图书', 'Foreign novels', '3', '外国小说', '6');
INSERT INTO `d_category` VALUES ('16', '图书', 'The corpus', '3', '文集', '7');
INSERT INTO `d_category` VALUES ('17', '图书', 'Documentary literature', '3', '纪实文学', '7');
INSERT INTO `d_category` VALUES ('18', '图书', 'Literary theory', '3', '文学理论', '7');
INSERT INTO `d_category` VALUES ('19', '图书', 'Chinese poetry', '3', '中国古诗词', '7');
INSERT INTO `d_category` VALUES ('20', '图书', 'China\'s modern poetry', '3', '中国现代诗', '7');

-- ----------------------------
-- Table structure for d_category_d_book
-- ----------------------------
DROP TABLE IF EXISTS `d_category_d_book`;
CREATE TABLE `d_category_d_book` (
  `D_CATEGORY_id` bigint(20) NOT NULL,
  `books_product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`D_CATEGORY_id`,`books_product_id`),
  KEY `FK_4wuiqbifgrjfet2io10ex5skp` (`books_product_id`),
  CONSTRAINT `FK_4wuiqbifgrjfet2io10ex5skp` FOREIGN KEY (`books_product_id`) REFERENCES `d_book` (`product_id`),
  CONSTRAINT `FK_hhlnkmc851a1pj2nkwm1do5ny` FOREIGN KEY (`D_CATEGORY_id`) REFERENCES `d_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_category_d_book
-- ----------------------------
INSERT INTO `d_category_d_book` VALUES ('1', '1');
INSERT INTO `d_category_d_book` VALUES ('6', '1');
INSERT INTO `d_category_d_book` VALUES ('1', '2');
INSERT INTO `d_category_d_book` VALUES ('6', '2');
INSERT INTO `d_category_d_book` VALUES ('2', '3');
INSERT INTO `d_category_d_book` VALUES ('7', '3');
INSERT INTO `d_category_d_book` VALUES ('17', '3');
INSERT INTO `d_category_d_book` VALUES ('2', '4');

-- ----------------------------
-- Table structure for d_order
-- ----------------------------
DROP TABLE IF EXISTS `d_order`;
CREATE TABLE `d_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_desc` bit(1) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `total_price` double DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5svulh5x73mw5hrexlnxucxeq` (`address_id`),
  KEY `FK_l7hfolyfuxf4e59q597j98t2h` (`user_id`),
  CONSTRAINT `FK_5svulh5x73mw5hrexlnxucxeq` FOREIGN KEY (`address_id`) REFERENCES `d_receive_address` (`id`),
  CONSTRAINT `FK_l7hfolyfuxf4e59q597j98t2h` FOREIGN KEY (`user_id`) REFERENCES `d_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_order
-- ----------------------------
INSERT INTO `d_order` VALUES ('1', '\0', '2015-07-25 20:42:58', '已付款', '0', null, '1');
INSERT INTO `d_order` VALUES ('2', '\0', '2015-07-25 20:54:28', '已付款', '0', null, '1');

-- ----------------------------
-- Table structure for d_orderline
-- ----------------------------
DROP TABLE IF EXISTS `d_orderline`;
CREATE TABLE `d_orderline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `product_num` int(11) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gvhxin4dmxj6hyjij6dft59du` (`product_id`),
  CONSTRAINT `FK_gvhxin4dmxj6hyjij6dft59du` FOREIGN KEY (`product_id`) REFERENCES `d_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_orderline
-- ----------------------------
INSERT INTO `d_orderline` VALUES ('1', '44.2', '2', '1');

-- ----------------------------
-- Table structure for d_order_d_orderline
-- ----------------------------
DROP TABLE IF EXISTS `d_order_d_orderline`;
CREATE TABLE `d_order_d_orderline` (
  `d_ORDER_id` bigint(20) NOT NULL,
  `orderLines_id` bigint(20) NOT NULL,
  PRIMARY KEY (`d_ORDER_id`,`orderLines_id`),
  UNIQUE KEY `UK_lu7cpib903r4l05bcv911lnre` (`orderLines_id`),
  CONSTRAINT `FK_ewncatcnu1sdt050h5xol8olt` FOREIGN KEY (`d_ORDER_id`) REFERENCES `d_order` (`id`),
  CONSTRAINT `FK_lu7cpib903r4l05bcv911lnre` FOREIGN KEY (`orderLines_id`) REFERENCES `d_orderline` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_order_d_orderline
-- ----------------------------
INSERT INTO `d_order_d_orderline` VALUES ('2', '1');

-- ----------------------------
-- Table structure for d_product
-- ----------------------------
DROP TABLE IF EXISTS `d_product`;
CREATE TABLE `d_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `dang_price` double DEFAULT NULL,
  `fixed_price` double DEFAULT NULL,
  `has_deleted` bit(1) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_pic` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_product
-- ----------------------------
INSERT INTO `d_product` VALUES ('1', '2015-07-19 10:17:56', '22.1', '32', '\0', '超级畅销书', '小王子（法国“圣埃克苏佩里基金会”唯一官方认可简体中文译本）', '1.jpg', '');
INSERT INTO `d_product` VALUES ('2', '2015-07-19 15:02:53', '36', '45', '\0', '好书啊', '小王子（法国“圣埃克苏佩里基金会”唯一官方认可简体中文译本）', '2.png', '');
INSERT INTO `d_product` VALUES ('3', '2015-07-25 08:34:19', '44.9', '66', '\0', '抗日', '王树增战争系列丛书', '3.png', '');
INSERT INTO `d_product` VALUES ('4', '2015-07-25 08:45:35', '54', '79.8', '\0', '茅盾文学奖获得者', '平凡的世界（全三册）', '4.png', '');

-- ----------------------------
-- Table structure for d_receive_address
-- ----------------------------
DROP TABLE IF EXISTS `d_receive_address`;
CREATE TABLE `d_receive_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `full_address` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) NOT NULL,
  `receive_name` varchar(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d6lrse04uwap8jdifji26paxn` (`user_id`),
  CONSTRAINT `FK_d6lrse04uwap8jdifji26paxn` FOREIGN KEY (`user_id`) REFERENCES `d_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_receive_address
-- ----------------------------
INSERT INTO `d_receive_address` VALUES ('1', '江苏省苏州市高新区科锐路一号', '15606135595', '0515-85269480', '224200', '杜鹏程', '1');

-- ----------------------------
-- Table structure for d_user
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `email_verify_code` varchar(255) DEFAULT NULL,
  `is_email_verify` bit(1) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_integral` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pbe67nvqcwkuarmpcjr7s26e6` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES ('1', '978364051@qq.com', '597b777d-ea4e-47c6-9856-9923b507c665', '', '127.0.0.1', '2015-07-18 17:15:04', '逆天斩月', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('2', '79812641@qq.com', '9514627c-96db-43a8-a369-e32d6bb32786', '', '127.0.0.1', '2015-07-18 09:57:09', '逆天斩月', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('3', '18896583964@qq.com', null, '\0', null, null, '傻吊', 'zwd123', '0');
INSERT INTO `d_user` VALUES ('4', '15606135595@gmail.com', null, '\0', null, null, 'dpc', 'dpc123', '0');
INSERT INTO `d_user` VALUES ('5', '15606135695@qq.com', null, '\0', null, null, 'duweiwei', 'dpc123', '0');
INSERT INTO `d_user` VALUES ('6', '15606135595@firefox.com', null, '\0', null, null, 'Gin', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('7', '798728019@123.com', null, '\0', null, null, 'GIN', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('8', '798728019@qq.net', null, '\0', null, null, 'GIN', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('9', '798728019@gmail.com', null, '\0', null, null, 'GIN', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('10', '798728019@haha.com', 'fd2736f9-c598-43c1-8a04-4b225cb99e99', '\0', null, null, '琴酒', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('12', '18896583964@gmail.com', '684fded7-7202-4f0e-ab20-2ae2dcf3c239', '\0', null, null, '杜松子', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('13', '123456789@qq.com', 'd6241dfa-37ac-44e3-ba85-faa3edba9159', '\0', null, null, '琴', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('14', '15606135595@sina.com', '9e319652-83d3-44b8-96b0-cb512eb4ceb8', '\0', null, null, 'dpc', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('15', '798728019@sina.cn', '5321f030-74f6-425b-a34b-0de1ccb04716', '\0', null, null, 'qin', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('16', '798728019@fire.com', 'deb44f2e-1a63-4ff0-96e4-39d8100772da', '\0', null, null, 'qin', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('17', '852147963@123.com', '8f514977-f1e8-48be-a01d-0a34b2be29c0', '\0', null, null, 'dpc123', 'j6FM3XVPkcxlVMnnGSnM5w==', '0');
INSERT INTO `d_user` VALUES ('18', '987364261@qq.com', '7aa7af6d-8831-4b12-8d43-6ee4ebe9373f', '\0', null, null, 'qin', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('19', '654321789@qq.com', '3344d741-ca63-46be-9591-1b85da832d97', '', null, null, 'GIn', 'GModEUs/ooibJskJFUtzPw==', '0');
INSERT INTO `d_user` VALUES ('20', '798728019@qq.com', 'c6ef2048-396d-424e-94df-9d3a29675969', '\0', null, null, '琴酒', 'GModEUs/ooibJskJFUtzPw==', '0');

/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50709
Source Host           : 127.0.0.1:3306
Source Database       : huaweidb

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-06-12 13:14:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gsbdb
-- ----------------------------
DROP TABLE IF EXISTS `gsbdb`;
CREATE TABLE `gsbdb` (
  `gsid` int(11) NOT NULL COMMENT '公司id',
  `gsname` varchar(50) NOT NULL COMMENT '公司名称',
  `gsjianjie` varchar(2000) NOT NULL COMMENT '公司简介',
  `gsphone` varchar(50) NOT NULL COMMENT '公司电话',
  `gsemail` varchar(50) NOT NULL COMMENT '公司邮箱',
  `gsdz` varchar(50) NOT NULL,
  PRIMARY KEY (`gsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gsbdb
-- ----------------------------
INSERT INTO `gsbdb` VALUES ('1', '华为技术有限公司', '华为是全球领先的ICT（信息与通信）基础设施和智能终端提供商，致力于把数字世界带入每个人、每个家庭、每个组织，构建万物互联的智能世界。我们在通信网络、IT、智能终端和云服务等领域为客户提供有竞争力、安全可信赖的产品、解决方案与服务，与生态伙伴开放合作，持续为客户创造价值，释放个人潜能，丰富家庭生活，激发组织创新。华为坚持围绕客户需求持续创新，加大基础研究投入，厚积薄发，推动世界进步。华为成立于1987年，是一家由员工持有全部股份的民营企业，目前有18万员工，业务遍及170多个国家和地区。', '400-830-8300', 'corporate.comms@huawei.com', '中国广东省深圳市龙岗区坂田');

-- ----------------------------
-- Table structure for htglydb
-- ----------------------------
DROP TABLE IF EXISTS `htglydb`;
CREATE TABLE `htglydb` (
  `htygid` int(11) NOT NULL COMMENT '后台管理员id',
  `htuser` varchar(11) NOT NULL COMMENT '后台管理员用户',
  `htpassword` varchar(11) NOT NULL COMMENT '后台管理员密码',
  PRIMARY KEY (`htygid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of htglydb
-- ----------------------------
INSERT INTO `htglydb` VALUES ('1', '王鹏吉', 'admin');
INSERT INTO `htglydb` VALUES ('2', '刘明菲', 'admin');
INSERT INTO `htglydb` VALUES ('3', '卢长宽', 'admin');
INSERT INTO `htglydb` VALUES ('4', '闫首阳', 'admin');
INSERT INTO `htglydb` VALUES ('5', '李普', 'admin');

-- ----------------------------
-- Table structure for lydb
-- ----------------------------
DROP TABLE IF EXISTS `lydb`;
CREATE TABLE `lydb` (
  `lyid` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言的id',
  `lyname` varchar(10) NOT NULL COMMENT '留言名称',
  `lytime` varchar(10) DEFAULT NULL COMMENT '留言时间',
  `lyhao` varchar(11) NOT NULL COMMENT '留言手机号',
  `lyeamil` varchar(20) NOT NULL COMMENT '留言邮箱',
  `lyneirong` varchar(45) NOT NULL COMMENT '留言内容',
  `lyzhuangtai` varchar(11) DEFAULT '未回复' COMMENT '留言状态',
  PRIMARY KEY (`lyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lydb
-- ----------------------------
INSERT INTO `lydb` VALUES ('1', 'haha', '2019-5-20', '13512343456', '1234@163.com', '体验很棒', '回复');
INSERT INTO `lydb` VALUES ('2', '王也', '2019-5-12', '17612345678', '1567@qq.com', '体验很不错', '未回复');
INSERT INTO `lydb` VALUES ('3', 'qq', null, 'qqqqq', 'qqqqq', 'qqqqqqqq', '回复');

-- ----------------------------
-- Table structure for spdb
-- ----------------------------
DROP TABLE IF EXISTS `spdb`;
CREATE TABLE `spdb` (
  `spid` int(11) NOT NULL AUTO_INCREMENT,
  `spname` varchar(20) NOT NULL,
  `spcolor` varchar(10) NOT NULL,
  `spxinghao` varchar(20) NOT NULL,
  `spchucun` varchar(10) NOT NULL,
  `spneicun` varchar(10) NOT NULL,
  `spchuliqi` varchar(20) NOT NULL,
  `spjiage` varchar(10) DEFAULT NULL,
  `splbid` int(11) NOT NULL,
  `spsrc` varchar(45) DEFAULT NULL,
  `Spsrca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`spid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spdb
-- ----------------------------
INSERT INTO `spdb` VALUES ('1', 'HUWEI MATE 20 pro', '银', 'pro', '256GB', '6GB', '麒麟980', '5499', '1', 'images/mate-20-pro.png', 'images/mate20pro.jpg');
INSERT INTO `spdb` VALUES ('2', 'HUAWEI p30', '赤茶橘', 'pro', '256GB', '8GB', '麒麟980', '5488', '1', 'images/p30pros.png', 'images/p30pro.jpg');
INSERT INTO `spdb` VALUES ('3', 'HUAWEI  nova 4', '蜜语红', ' nova', '128GB', '8GB', '麒麟980', '2699', '1', 'images/nova4.png', 'images/nova4.jpg');
INSERT INTO `spdb` VALUES ('4', '华为畅享 9s', '极光蓝', 's', '128GB', '4GB', 'Kirin 710', '1499', '1', 'images/changxiang9s.png', 'images/changxiang9s.jpg');
INSERT INTO `spdb` VALUES ('5', 'HUAWE mate Book x', '樱粉金', 'pro', '1TB', '16GB', '酷睿™', '8999', '2', 'images/matebook.png', 'images/MateBook-X-Pro.jpg');
INSERT INTO `spdb` VALUES ('6', 'HUAWE mate Book 14', '深空灰', ' nova', '8GB', '512GB', '酷睿™', '5999', '2', 'images/matebook14.png', 'images/MateBook-14.png');
INSERT INTO `spdb` VALUES ('7', 'HUAWE mate Book E', '钛金灰', 'pro', '8GB ', '512GB', '骁龙™850', '4999', '2', 'images/matebook-e.png', 'images/matebook-es.jpg');
INSERT INTO `spdb` VALUES ('8', 'HUAWE mate Book 13', '皓月银 ', 'nav', '8GB', '256GB ', ' 酷睿™', '4999', '2', 'images/matebook-13.png', 'images/matebook-13-s.png');
INSERT INTO `spdb` VALUES ('9', '华为平 M5青春版', '香槟金', 'lit', '3GB', '32GB', '麒麟710', '1199', '3', 'images/W5qingchun.png', 'images/mediapad-W5-lite-8.png');
INSERT INTO `spdb` VALUES ('10', '华为平板M青春', '香槟金', 'lit', '4GB', '64GB', '麒麟710', '1899', '3', 'images/m5_qingchun.png', 'images/m5_qingchun.jpg');
INSERT INTO `spdb` VALUES ('11', '华为平板M58', '香槟金', 'lit', '4GB', '32GB', '麒麟710', '2088', '3', 'images/m5-8-gold.png', 'images/section1-banner.jpg');
INSERT INTO `spdb` VALUES ('12', '华为平板M510', '香槟金', 'lit', '4GB', '64GB', '麒麟710', '2888', '3', 'images/m5-10-gold.png', 'images/m5-10-dimension.jpg');
INSERT INTO `spdb` VALUES ('13', 'HUAWE WATCH GH', '黑色', 'GH', '2GB', '2GB', 'WATCH', '1288', '4', 'images/watch-gt-v2.png', 'images/watch-gt-v2.png');

-- ----------------------------
-- Table structure for splbdb
-- ----------------------------
DROP TABLE IF EXISTS `splbdb`;
CREATE TABLE `splbdb` (
  `splbid` int(11) NOT NULL AUTO_INCREMENT,
  `splbname` varchar(20) NOT NULL,
  `splbsrc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`splbid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of splbdb
-- ----------------------------
INSERT INTO `splbdb` VALUES ('1', '手机', 'images/mate-20-pro.png');
INSERT INTO `splbdb` VALUES ('2', '笔记本电脑', null);
INSERT INTO `splbdb` VALUES ('3', '精品平板', 'images/W5qingchun.png');
INSERT INTO `splbdb` VALUES ('4', '智能佩戴', 'images/watch-gt-v2.png');

-- ----------------------------
-- Table structure for xwdb
-- ----------------------------
DROP TABLE IF EXISTS `xwdb`;
CREATE TABLE `xwdb` (
  `xwid` int(11) NOT NULL AUTO_INCREMENT,
  `xwname` varchar(50) NOT NULL,
  PRIMARY KEY (`xwid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xwdb
-- ----------------------------
INSERT INTO `xwdb` VALUES ('1', '行业新闻');
INSERT INTO `xwdb` VALUES ('2', '公司新闻');
INSERT INTO `xwdb` VALUES ('3', '产品新闻');

-- ----------------------------
-- Table structure for xwzxdb
-- ----------------------------
DROP TABLE IF EXISTS `xwzxdb`;
CREATE TABLE `xwzxdb` (
  `zxid` int(11) NOT NULL AUTO_INCREMENT,
  `zxname` varchar(100) DEFAULT NULL,
  `zxneirong` varchar(900) DEFAULT NULL,
  `zxtime` varchar(12) DEFAULT NULL,
  `xwid` int(11) NOT NULL,
  PRIMARY KEY (`zxid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xwzxdb
-- ----------------------------
INSERT INTO `xwzxdb` VALUES ('1', '打造智慧出行新体验', '[中国，上海，2019年4月18日]第十八届上海国际汽车工业展览会（简称：2019上海国际车展）', '2019-4-8', '1');
INSERT INTO `xwzxdb` VALUES ('2', '华为荣获“最高端中国品牌奖”', '在本次榜单中，BrandZ 最具价值中国品牌100强的品牌总价值创新高，达8,897亿美元，增长了30％，是自2011年榜单推出以来的最高单年涨幅。其中，科技领域上榜品牌占据了100强榜单的11个席位，贡献了百强品牌总品牌价值的26％。华为以332亿美元的品牌价值再创新高，较2018年提升了38%，位列总榜单第六，连续四年位列十强。', '2019-5-6', '1');
INSERT INTO `xwzxdb` VALUES ('3', '提出对美好数字生活的十大发现', '[深圳，中国 - 2019年4月16日]今日，以“构建无处不在的智能体验”为主题的第十六届华为全球分析师大会在深圳开幕，并正式发布2018华为终端云服务白皮书（以下简称白皮书）。', '2019-4-16', '2');
INSERT INTO `xwzxdb` VALUES ('4', '华为“耀星计划”进展加速，持续助力开发者创新！', '“耀星计划”重点激励对象包括全场景的数字服务创新，', '2019-2-28', '2');

-- ----------------------------
-- Table structure for ygdb
-- ----------------------------
DROP TABLE IF EXISTS `ygdb`;
CREATE TABLE `ygdb` (
  `ygid` int(11) NOT NULL AUTO_INCREMENT,
  `ygname` varchar(45) NOT NULL,
  `ygsex` varchar(45) NOT NULL,
  `ygphone` varchar(45) DEFAULT NULL,
  `ygphoto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ygid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ygdb
-- ----------------------------
INSERT INTO `ygdb` VALUES ('1', '李普', '男', '1345677', 'images/lp.jpg');
INSERT INTO `ygdb` VALUES ('2', '王鹏吉', '男', '1575489', 'images/wpj.jpg');
INSERT INTO `ygdb` VALUES ('3', '卢长宽', '男', '1234456', 'images/lck.jpg');
INSERT INTO `ygdb` VALUES ('4', '刘明菲', '女', '3456786', 'images/lmf.jpg');
INSERT INTO `ygdb` VALUES ('5', '闫守阳', '男', '7345678', 'images/ysy.jpg');

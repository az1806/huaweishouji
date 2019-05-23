/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : huaweidb

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-05-24 00:37:58
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
  PRIMARY KEY (`gsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gsbdb
-- ----------------------------
INSERT INTO `gsbdb` VALUES ('1', '华为技术有限公司', '华为是全球领先的ICT（信息与通信）基础设施和智能终端提供商，致力于把数字世界带入每个人、每个家庭、每个组织，构建万物互联的智能世界。我们在通信网络、IT、智能终端和云服务等领域为客户提供有竞争力、安全可信赖的产品、解决方案与服务，与生态伙伴开放合作，持续为客户创造价值，释放个人潜能，丰富家庭生活，激发组织创新。华为坚持围绕客户需求持续创新，加大基础研究投入，厚积薄发，推动世界进步。华为成立于1987年，是一家由员工持有全部股份的民营企业，目前有18万员工，业务遍及170多个国家和地区。', '400-830-8300', 'corporate.comms@huawei.com');

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
  `lyzhuangtai` varchar(11) DEFAULT NULL COMMENT '留言状态',
  PRIMARY KEY (`lyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lydb
-- ----------------------------
INSERT INTO `lydb` VALUES ('1', 'haha', '2019-5-20', '13512343456', '1234@163.com', '体验很棒', '在线');
INSERT INTO `lydb` VALUES ('2', '王也', '2019-5-12', '17612345678', '1567@qq.com', '体验很不错', '离线');
INSERT INTO `lydb` VALUES ('3', 'qq', null, 'qqqqq', 'qqqqq', 'qqqqqqqq', null);

-- ----------------------------
-- Table structure for spdb
-- ----------------------------
DROP TABLE IF EXISTS `spdb`;
CREATE TABLE `spdb` (
  `spid` int(11) NOT NULL,
  `spname` varchar(20) NOT NULL,
  `spcolor` varchar(10) NOT NULL,
  `spxinghao` varchar(20) NOT NULL,
  `spchucun` varchar(10) DEFAULT NULL,
  `spneicun` varchar(10) DEFAULT NULL,
  `spchuliqi` varchar(20) DEFAULT NULL,
  `spjiage` varchar(10) NOT NULL,
  `splbid` int(11) NOT NULL,
  PRIMARY KEY (`spid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spdb
-- ----------------------------
INSERT INTO `spdb` VALUES ('1', 'huawei mate20', '亮黑色', 'pro', '128gb', '6gb', '麒麟980', '5499', '1');
INSERT INTO `spdb` VALUES ('2', 'huawei p30', '赤茶橘', 'pro', '256gb', '8gb', '麒麟980', '3988', '1');

-- ----------------------------
-- Table structure for splbdb
-- ----------------------------
DROP TABLE IF EXISTS `splbdb`;
CREATE TABLE `splbdb` (
  `splbid` int(11) NOT NULL,
  `splbname` varchar(20) NOT NULL,
  PRIMARY KEY (`splbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of splbdb
-- ----------------------------
INSERT INTO `splbdb` VALUES ('1', '手机');
INSERT INTO `splbdb` VALUES ('2', '笔记本电脑');
INSERT INTO `splbdb` VALUES ('3', '精品平板');
INSERT INTO `splbdb` VALUES ('4', '智能穿戴');
INSERT INTO `splbdb` VALUES ('5', '智能家居');
INSERT INTO `splbdb` VALUES ('6', '精选配件');
INSERT INTO `splbdb` VALUES ('7', '生态精品');

-- ----------------------------
-- Table structure for xwdb
-- ----------------------------
DROP TABLE IF EXISTS `xwdb`;
CREATE TABLE `xwdb` (
  `xwid` int(11) NOT NULL,
  `xwname` varchar(50) NOT NULL,
  PRIMARY KEY (`xwid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `zxid` int(11) NOT NULL,
  `zxname` varchar(100) NOT NULL,
  `zxneirong` varchar(900) NOT NULL,
  `zxtime` varchar(12) NOT NULL,
  `xwid` int(11) NOT NULL,
  PRIMARY KEY (`zxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xwzxdb
-- ----------------------------
INSERT INTO `xwzxdb` VALUES ('1', '打造智慧出行新体验', '[中国，上海，2019年4月18日]第十八届上海国际汽车工业展览会（简称：2019上海国际车展）', '2019-4-8', '1');
INSERT INTO `xwzxdb` VALUES ('2', '华为荣获“最高端中国品牌奖”', '在本次榜单中，BrandZ 最具价值中国品牌100强的品牌总价值创新高，达8,897亿美元，增长了30％，是自2011年榜单推出以来的最高单年涨幅。其中，科技领域上榜品牌占据了100强榜单的11个席位，贡献了百强品牌总品牌价值的26％。华为以332亿美元的品牌价值再创新高，较2018年提升了38%，位列总榜单第六，连续四年位列十强。', '2019-5-6', '1');
INSERT INTO `xwzxdb` VALUES ('3', '提出对美好数字生活的十大发现', '[深圳，中国 - 2019年4月16日]今日，以“构建无处不在的智能体验”为主题的第十六届华为全球分析师大会在深圳开幕，并正式发布2018华为终端云服务白皮书（以下简称白皮书）。', '2019-4-16', '2');
INSERT INTO `xwzxdb` VALUES ('4', '华为“耀星计划”进展加速，持续助力开发者创新！', '“耀星计划”重点激励对象包括全场景的数字服务创新，', '2019-2-28', '2');
INSERT INTO `xwzxdb` VALUES ('5', '华为Mate 20 Pro获MWC2019“最佳智能手机”', 'MWC作为通信行业最具影响力的盛会，其最受关注的地方还是手机类产品。', '2019-2-27', '3');

-- ----------------------------
-- Table structure for ygdb
-- ----------------------------
DROP TABLE IF EXISTS `ygdb`;
CREATE TABLE `ygdb` (
  `ygid` int(11) NOT NULL COMMENT '员工id',
  `ygname` varchar(11) NOT NULL COMMENT '员工姓名',
  `ygsex` varchar(10) NOT NULL COMMENT '员工性别',
  `ygphone` varchar(11) NOT NULL COMMENT '员工的联系方式',
  PRIMARY KEY (`ygid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ygdb
-- ----------------------------
INSERT INTO `ygdb` VALUES ('1', '1', '1', '1');

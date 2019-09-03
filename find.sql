/*
Navicat MySQL Data Transfer

Source Server         : kang
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : find

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2019-08-20 17:50:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_apply
-- ----------------------------
DROP TABLE IF EXISTS `t_apply`;
CREATE TABLE `t_apply` (
  `applyId` int(11) NOT NULL AUTO_INCREMENT,
  `applyName` varchar(32) COLLATE utf8_bin NOT NULL,
  `applyInfor` varchar(255) COLLATE utf8_bin NOT NULL,
  `applyTel` varchar(32) COLLATE utf8_bin NOT NULL,
  `applyImage` varchar(255) COLLATE utf8_bin NOT NULL,
  `userId` int(11) NOT NULL,
  `goodId` int(11) NOT NULL,
  PRIMARY KEY (`applyId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_apply
-- ----------------------------
INSERT INTO `t_apply` VALUES ('1', '李四', '有一个小矮人', '12345678901', 'yaoshi01.jpg', '1', '2');
INSERT INTO `t_apply` VALUES ('3', '大哥', '这是我的', '12345678901', 'yongpin01.jpg', '1', '3');
INSERT INTO `t_apply` VALUES ('4', '章三三', '白色的', '15179454511', 'yanjing01.jpg', '8', '8');

-- ----------------------------
-- Table structure for t_good
-- ----------------------------
DROP TABLE IF EXISTS `t_good`;
CREATE TABLE `t_good` (
  `goodId` int(11) NOT NULL AUTO_INCREMENT,
  `goodName` varchar(32) COLLATE utf8_bin NOT NULL,
  `goodInfor` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodTel` varchar(32) COLLATE utf8_bin NOT NULL,
  `goodDate` date NOT NULL,
  `goodLocal` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodImage` varchar(255) COLLATE utf8_bin NOT NULL,
  `userId` int(11) NOT NULL,
  `typeId` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`goodId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_good
-- ----------------------------
INSERT INTO `t_good` VALUES ('2', '张三', '一串钥匙', '13412345123', '2019-08-01', '学校食堂', 'yaoshi01.jpg', '2', '00000000001');
INSERT INTO `t_good` VALUES ('3', '旺旺', '在学校捡到的', '12312345123', '2019-08-02', '学校宿舍', 'yongpin01.jpg', '3', '00000000010');
INSERT INTO `t_good` VALUES ('5', '艺术', '一卡通', '微信号：dhsau', '2019-08-03', '宿舍一楼', 'ka01.jpg', '4', '00000000002');
INSERT INTO `t_good` VALUES ('6', '撒U啊', '丢失了饭卡', 'QQ号:123123', '2019-08-06', '理工楼下', 'fanka01.jpg', '5', '00000000003');
INSERT INTO `t_good` VALUES ('7', '哈哈', '雨伞一个', '微信号：dhsajkq123', '2019-08-07', '湖边', 'yusan01.jpg', '6', '00000000004');
INSERT INTO `t_good` VALUES ('8', 'dsaa', '黑色眼镜', '12345623456', '2019-07-02', '食堂一楼', 'yanjing01.jpg', '7', '00000000007');
INSERT INTO `t_good` VALUES ('9', '撒旦', '黑色书包', '12345671234', '2019-08-08', '教室一楼', 'shubao01.jpg', '2', '00000000008');
INSERT INTO `t_good` VALUES ('10', '及家', '身份证', '12345217890', '2019-08-03', '教室二楼', 'zheng01.jpg', '3', '00000000009');
INSERT INTO `t_good` VALUES ('18', '李sirs', '小书包', '12345678901', '2019-08-03', '操场', 'shubao01.jpg', '1', '00000000008');
INSERT INTO `t_good` VALUES ('19', '李思', '白色钥匙', '12345679801', '2019-08-03', '操场', 'yaoshi02.jpg', '1', '00000000001');
INSERT INTO `t_good` VALUES ('21', '小陈', '红白色雨伞', '13478945601', '2019-08-07', '操场', 'yusan02.jpg', '1', '00000000004');
INSERT INTO `t_good` VALUES ('22', '章三三', '钥匙三个', '12345678901', '2019-08-08', '操场', 'yaoshi03.jpg', '8', '00000000001');
INSERT INTO `t_good` VALUES ('23', '利达', '银行卡一张', '15145786911', '2019-08-14', '操场', 'ka01.jpg', '1', '00000000002');
INSERT INTO `t_good` VALUES ('24', '小小', '黑色雨伞', '12345678901', '2019-08-03', '食堂', 'yusan02.jpg', '1', '00000000004');
INSERT INTO `t_good` VALUES ('25', '丽丽', '饭卡', '12345674125', '2019-08-01', '操场', '111.jpg', '1', '00000000003');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '钥匙');
INSERT INTO `t_type` VALUES ('2', '银行卡');
INSERT INTO `t_type` VALUES ('3', '饭卡');
INSERT INTO `t_type` VALUES ('4', '雨伞');
INSERT INTO `t_type` VALUES ('5', '钱包');
INSERT INTO `t_type` VALUES ('6', '书本');
INSERT INTO `t_type` VALUES ('7', '眼镜');
INSERT INTO `t_type` VALUES ('8', '书包');
INSERT INTO `t_type` VALUES ('9', '身份证');
INSERT INTO `t_type` VALUES ('10', '生活用品');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(32) COLLATE utf8_bin NOT NULL,
  `userEmail` varchar(32) COLLATE utf8_bin NOT NULL,
  `userTel` varchar(32) COLLATE utf8_bin NOT NULL,
  `userPass` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'aaaa', '123@qq.com', '13133726299', '12345678');
INSERT INTO `t_user` VALUES ('2', '张三', '1234@qq.com', '15179434811', '12345678');
INSERT INTO `t_user` VALUES ('3', 'lisi', '158@qq.com', '12345678902', '12345678');
INSERT INTO `t_user` VALUES ('4', '张三一', '1581038984@qq.com', '12345678901', '12345678');
INSERT INTO `t_user` VALUES ('5', '张三2', '1581038984@qq.com', '12345678901', '12345678');
INSERT INTO `t_user` VALUES ('6', '李四一', '134@qq.com', '12345678901', '12345678');
INSERT INTO `t_user` VALUES ('7', 'loal', '123@123.com', '12345', '12345678');
INSERT INTO `t_user` VALUES ('8', '章三三', '123@qq.com', '15112345601', '12345678');

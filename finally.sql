/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : finally

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2022-01-05 18:09:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `produceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品编号',
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '颜色',
  `colorId` int(11) DEFAULT NULL COMMENT '颜色编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES ('1', '1', '黑色', '1');
INSERT INTO `color` VALUES ('2', '1', '蓝色', '2');
INSERT INTO `color` VALUES ('3', '1', '白色', '3');
INSERT INTO `color` VALUES ('4', '1', '紫色（素皮）', '4');
INSERT INTO `color` VALUES ('5', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '蓝色', '1');
INSERT INTO `color` VALUES ('6', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '黑色', '2');
INSERT INTO `color` VALUES ('7', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '紫色', '3');
INSERT INTO `color` VALUES ('8', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '原野绿（素皮）', '4');
INSERT INTO `color` VALUES ('9', '457c9929ec464f1ea0ea4063295b24bb', '闪闪黑', '1');
INSERT INTO `color` VALUES ('10', '457c9929ec464f1ea0ea4063295b24bb', '轻轻蓝', '2');
INSERT INTO `color` VALUES ('11', '457c9929ec464f1ea0ea4063295b24bb', '怦怦粉', '3');
INSERT INTO `color` VALUES ('12', '40faee1c1ef04d518c1330df6d614e01', '亮黑色', '1');
INSERT INTO `color` VALUES ('13', '40faee1c1ef04d518c1330df6d614e01', '釉白色', '2');
INSERT INTO `color` VALUES ('14', '40faee1c1ef04d518c1330df6d614e01', '秘银色', '3');
INSERT INTO `color` VALUES ('15', '40faee1c1ef04d518c1330df6d614e01', '夏日胡杨', '4');
INSERT INTO `color` VALUES ('16', '40faee1c1ef04d518c1330df6d614e01', '秋日胡杨', '5');
INSERT INTO `color` VALUES ('17', 'f996496de303406d964c478aef59f127', '远峰蓝色', '1');
INSERT INTO `color` VALUES ('18', 'f996496de303406d964c478aef59f127', '银色', '2');
INSERT INTO `color` VALUES ('19', 'f996496de303406d964c478aef59f127', '金色', '3');
INSERT INTO `color` VALUES ('20', 'f996496de303406d964c478aef59f127', '石墨色', '4');
INSERT INTO `color` VALUES ('29', 'd3682232626c43e2b2c8a983ea8ba9c0', '星夜黑', '1');
INSERT INTO `color` VALUES ('38', '8531539ca4bb4742a70e26cc45267908', '陨石绿', '1');
INSERT INTO `color` VALUES ('24', '80d721c4872747ddb91a5a57f9b30c8a', '粉色', '1');
INSERT INTO `color` VALUES ('25', '80d721c4872747ddb91a5a57f9b30c8a', '蓝色', '2');
INSERT INTO `color` VALUES ('26', '80d721c4872747ddb91a5a57f9b30c8a', '午夜色', '3');
INSERT INTO `color` VALUES ('27', '80d721c4872747ddb91a5a57f9b30c8a', '星光色', '4');
INSERT INTO `color` VALUES ('28', '80d721c4872747ddb91a5a57f9b30c8a', '红色', '5');
INSERT INTO `color` VALUES ('31', 'd3682232626c43e2b2c8a983ea8ba9c0', '星雨心愿', '2');
INSERT INTO `color` VALUES ('32', 'd3682232626c43e2b2c8a983ea8ba9c0', '暮雪金', '3');
INSERT INTO `color` VALUES ('39', '8531539ca4bb4742a70e26cc45267908', '幽谷蓝', '2');
INSERT INTO `color` VALUES ('35', 'fedffdf5204941e89b009699b365feeb', '独白', '1');
INSERT INTO `color` VALUES ('36', 'fedffdf5204941e89b009699b365feeb', '至黑', '2');
INSERT INTO `color` VALUES ('37', 'fedffdf5204941e89b009699b365feeb', '星云', '3');
INSERT INTO `color` VALUES ('40', '8531539ca4bb4742a70e26cc45267908', '雪川银', '3');

-- ----------------------------
-- Table structure for introduceimgpath
-- ----------------------------
DROP TABLE IF EXISTS `introduceimgpath`;
CREATE TABLE `introduceimgpath` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of introduceimgpath
-- ----------------------------
INSERT INTO `introduceimgpath` VALUES ('1', '1', 'img/xiaomiDescribe/xiaomi11.jpg');
INSERT INTO `introduceimgpath` VALUES ('2', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412154566641.jpg');
INSERT INTO `introduceimgpath` VALUES ('3', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412154625312.jpg');
INSERT INTO `introduceimgpath` VALUES ('4', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412154684513.jpg');
INSERT INTO `introduceimgpath` VALUES ('5', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412154733404.jpg');
INSERT INTO `introduceimgpath` VALUES ('6', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412154785665.jpg');
INSERT INTO `introduceimgpath` VALUES ('7', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412154849716.jpg');
INSERT INTO `introduceimgpath` VALUES ('8', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412154936847.jpg');
INSERT INTO `introduceimgpath` VALUES ('9', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412154985348.jpg');
INSERT INTO `introduceimgpath` VALUES ('10', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\16412155053469.jpg');
INSERT INTO `introduceimgpath` VALUES ('11', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\164121551341510.jpg');
INSERT INTO `introduceimgpath` VALUES ('12', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\164121554450611.jpg');
INSERT INTO `introduceimgpath` VALUES ('13', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\164121555105912.jpg');
INSERT INTO `introduceimgpath` VALUES ('14', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\164121555895813.jpg');
INSERT INTO `introduceimgpath` VALUES ('15', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\164121556456314.jpg');
INSERT INTO `introduceimgpath` VALUES ('16', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\164121557142615.jpg');
INSERT INTO `introduceimgpath` VALUES ('17', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170153942.jpg');
INSERT INTO `introduceimgpath` VALUES ('18', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170196021.jpg');
INSERT INTO `introduceimgpath` VALUES ('19', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170248033.jpg');
INSERT INTO `introduceimgpath` VALUES ('20', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170291054.jpg');
INSERT INTO `introduceimgpath` VALUES ('21', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170354095.jpg');
INSERT INTO `introduceimgpath` VALUES ('22', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170402596.jpg');
INSERT INTO `introduceimgpath` VALUES ('23', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170456937.jpg');
INSERT INTO `introduceimgpath` VALUES ('24', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170502888.jpg');
INSERT INTO `introduceimgpath` VALUES ('25', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170553719.jpg');
INSERT INTO `introduceimgpath` VALUES ('26', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986514291.jpg');
INSERT INTO `introduceimgpath` VALUES ('27', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986555712.jpg');
INSERT INTO `introduceimgpath` VALUES ('28', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986600853.jpg');
INSERT INTO `introduceimgpath` VALUES ('29', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986648254.jpg');
INSERT INTO `introduceimgpath` VALUES ('30', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986695585.jpg');
INSERT INTO `introduceimgpath` VALUES ('31', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986742526.jpg');
INSERT INTO `introduceimgpath` VALUES ('32', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986785937.jpg');
INSERT INTO `introduceimgpath` VALUES ('33', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986841578.jpg');
INSERT INTO `introduceimgpath` VALUES ('34', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986899719.jpg');
INSERT INTO `introduceimgpath` VALUES ('35', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129869596310.jpg');
INSERT INTO `introduceimgpath` VALUES ('36', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129870358111.jpg');
INSERT INTO `introduceimgpath` VALUES ('37', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129870938112.jpg');
INSERT INTO `introduceimgpath` VALUES ('38', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129871487713.jpg');
INSERT INTO `introduceimgpath` VALUES ('39', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129872089314.jpg');
INSERT INTO `introduceimgpath` VALUES ('40', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129872583715.jpg');
INSERT INTO `introduceimgpath` VALUES ('41', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129873144116.jpg');
INSERT INTO `introduceimgpath` VALUES ('42', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129873672517.jpg');
INSERT INTO `introduceimgpath` VALUES ('43', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\164129874250818.jpg');
INSERT INTO `introduceimgpath` VALUES ('44', 'f996496de303406d964c478aef59f127', 'img\\addImg\\16413004396801.png');
INSERT INTO `introduceimgpath` VALUES ('45', 'f996496de303406d964c478aef59f127', 'img\\addImg\\16413004489212.png');
INSERT INTO `introduceimgpath` VALUES ('46', 'f996496de303406d964c478aef59f127', 'img\\addImg\\16413004527443.png');
INSERT INTO `introduceimgpath` VALUES ('47', 'f996496de303406d964c478aef59f127', 'img\\addImg\\16413004573034.png');
INSERT INTO `introduceimgpath` VALUES ('48', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011694451.png');
INSERT INTO `introduceimgpath` VALUES ('49', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011782282.png');
INSERT INTO `introduceimgpath` VALUES ('50', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011827073.jpg');
INSERT INTO `introduceimgpath` VALUES ('51', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011876254.png');
INSERT INTO `introduceimgpath` VALUES ('52', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025312171.jpg');
INSERT INTO `introduceimgpath` VALUES ('53', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025352192.jpg');
INSERT INTO `introduceimgpath` VALUES ('54', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025393503.jpg');
INSERT INTO `introduceimgpath` VALUES ('55', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025429674.jpg');
INSERT INTO `introduceimgpath` VALUES ('56', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025464655.jpg');
INSERT INTO `introduceimgpath` VALUES ('57', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025497266.jpg');
INSERT INTO `introduceimgpath` VALUES ('58', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025529137.jpg');
INSERT INTO `introduceimgpath` VALUES ('59', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025565808.jpg');
INSERT INTO `introduceimgpath` VALUES ('60', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025606259.jpg');
INSERT INTO `introduceimgpath` VALUES ('61', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\164130256572710.jpg');
INSERT INTO `introduceimgpath` VALUES ('62', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\164130257192811.jpg');
INSERT INTO `introduceimgpath` VALUES ('63', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\164130257647512.jpg');
INSERT INTO `introduceimgpath` VALUES ('64', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\164130258057013.jpg');
INSERT INTO `introduceimgpath` VALUES ('65', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\164130258503514.jpg');
INSERT INTO `introduceimgpath` VALUES ('66', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\164130258986815.jpg');
INSERT INTO `introduceimgpath` VALUES ('67', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\164130259466716.jpg');
INSERT INTO `introduceimgpath` VALUES ('68', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035342671.jpg');
INSERT INTO `introduceimgpath` VALUES ('69', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035400022.jpg');
INSERT INTO `introduceimgpath` VALUES ('70', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035447393.jpg');
INSERT INTO `introduceimgpath` VALUES ('71', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035495904.jpg');
INSERT INTO `introduceimgpath` VALUES ('72', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035552955.jpg');
INSERT INTO `introduceimgpath` VALUES ('73', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035596776.jpg');
INSERT INTO `introduceimgpath` VALUES ('74', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035710017.jpg');
INSERT INTO `introduceimgpath` VALUES ('75', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035783258.jpg');
INSERT INTO `introduceimgpath` VALUES ('76', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035867409.jpg');
INSERT INTO `introduceimgpath` VALUES ('77', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045291291.jpg');
INSERT INTO `introduceimgpath` VALUES ('78', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045346412.jpg');
INSERT INTO `introduceimgpath` VALUES ('79', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045401313.jpg');
INSERT INTO `introduceimgpath` VALUES ('80', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045462894.jpg');
INSERT INTO `introduceimgpath` VALUES ('81', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045506465.jpg');
INSERT INTO `introduceimgpath` VALUES ('82', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045541656.jpg');
INSERT INTO `introduceimgpath` VALUES ('83', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045598917.jpg');
INSERT INTO `introduceimgpath` VALUES ('84', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045639208.jpg');
INSERT INTO `introduceimgpath` VALUES ('85', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045689149.jpg');
INSERT INTO `introduceimgpath` VALUES ('86', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\164130457306510.jpg');
INSERT INTO `introduceimgpath` VALUES ('87', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\164130457866111.jpg');
INSERT INTO `introduceimgpath` VALUES ('88', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\164130458587712.jpg');
INSERT INTO `introduceimgpath` VALUES ('89', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\164130459165613.jpg');
INSERT INTO `introduceimgpath` VALUES ('90', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\164130459632814.jpg');
INSERT INTO `introduceimgpath` VALUES ('91', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\164130460083715.jpg');
INSERT INTO `introduceimgpath` VALUES ('92', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\164130460436216.jpg');
INSERT INTO `introduceimgpath` VALUES ('93', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\164130460901817.jpg');

-- ----------------------------
-- Table structure for lunboimgpath
-- ----------------------------
DROP TABLE IF EXISTS `lunboimgpath`;
CREATE TABLE `lunboimgpath` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lunboimgpath
-- ----------------------------
INSERT INTO `lunboimgpath` VALUES ('1', '1', 'img/xiaomiColor/xiaomi11_1.jpg');
INSERT INTO `lunboimgpath` VALUES ('2', '1', 'img/xiaomiColor/xiaomi11_2.jpg');
INSERT INTO `lunboimgpath` VALUES ('3', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\1641215424386pms_1640680536.47346782.png');
INSERT INTO `lunboimgpath` VALUES ('4', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\1641215430988pms_1640680536.43667057.png');
INSERT INTO `lunboimgpath` VALUES ('5', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\1641215435752pms_1640680536.45871364.png');
INSERT INTO `lunboimgpath` VALUES ('6', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\1641215440591pms_1640680536.46638970.png');
INSERT INTO `lunboimgpath` VALUES ('7', '37c9eba8fc0544e493c7e4f1dcfd6c3e', 'img\\addImg\\1641215445052pms_1640680536.53886043.png');
INSERT INTO `lunboimgpath` VALUES ('8', '457c9929ec464f1ea0ea4063295b24bb', 'img\\addImg\\16412170039751.jpg');
INSERT INTO `lunboimgpath` VALUES ('9', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986248802.png');
INSERT INTO `lunboimgpath` VALUES ('10', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986289563.png');
INSERT INTO `lunboimgpath` VALUES ('11', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986332764.png');
INSERT INTO `lunboimgpath` VALUES ('12', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986386115.png');
INSERT INTO `lunboimgpath` VALUES ('13', '40faee1c1ef04d518c1330df6d614e01', 'img\\addImg\\16412986429866.png');
INSERT INTO `lunboimgpath` VALUES ('14', 'f996496de303406d964c478aef59f127', 'img\\addImg\\16413004097661.png');
INSERT INTO `lunboimgpath` VALUES ('15', 'f996496de303406d964c478aef59f127', 'img\\addImg\\16413004151432.png');
INSERT INTO `lunboimgpath` VALUES ('16', 'f996496de303406d964c478aef59f127', 'img\\addImg\\16413004203853.png');
INSERT INTO `lunboimgpath` VALUES ('17', 'f996496de303406d964c478aef59f127', 'img\\addImg\\16413004254494.png');
INSERT INTO `lunboimgpath` VALUES ('18', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011383051.png');
INSERT INTO `lunboimgpath` VALUES ('19', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011434582.png');
INSERT INTO `lunboimgpath` VALUES ('20', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011484203.png');
INSERT INTO `lunboimgpath` VALUES ('21', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011531394.png');
INSERT INTO `lunboimgpath` VALUES ('22', '80d721c4872747ddb91a5a57f9b30c8a', 'img\\addImg\\16413011581595.png');
INSERT INTO `lunboimgpath` VALUES ('23', 'd3682232626c43e2b2c8a983ea8ba9c0', 'img\\addImg\\16413025124911.jpg');
INSERT INTO `lunboimgpath` VALUES ('24', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035218751.jpg');
INSERT INTO `lunboimgpath` VALUES ('25', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035250132.jpg');
INSERT INTO `lunboimgpath` VALUES ('26', 'fedffdf5204941e89b009699b365feeb', 'img\\addImg\\16413035277763.jpg');
INSERT INTO `lunboimgpath` VALUES ('27', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045123011.jpg');
INSERT INTO `lunboimgpath` VALUES ('28', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045159505.jpg');
INSERT INTO `lunboimgpath` VALUES ('29', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045194936.jpg');
INSERT INTO `lunboimgpath` VALUES ('30', '8531539ca4bb4742a70e26cc45267908', 'img\\addImg\\16413045225477.jpg');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `orderId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `produceName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '颜色',
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内存',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `orderTime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品编号',
  `orderMoney` decimal(10,0) DEFAULT NULL COMMENT '订单金额',
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品图片',
  `isPay` int(11) NOT NULL DEFAULT '0' COMMENT '是否支付，1表示已支付，0表示未支付',
  `produceTypeNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('51', '49404a2a0c1b41b1a93ca20496b74f35', 'vivo X70', '独白', '8GB+128GB', 'echo', '2022-01-05 06:10:14.768', 'fedffdf5204941e89b009699b365feeb', '3099', 'img\\addImg\\16413033671681.jpg', '1', '6');
INSERT INTO `orders` VALUES ('37', 'c4e488150598497bb7482b6098073258', 'Xiaomi Civi', '怦怦粉', '8GB+128GB', 'echo', '2022-01-04 09:28:21.69', '457c9929ec464f1ea0ea4063295b24bb', '2499', 'img\\addImg\\16412168627421.jpg', '1', '2');
INSERT INTO `orders` VALUES ('38', '7f464cdd5f06426580da9d29df22b00e', 'vivo X70', '独白', '8GB+128GB', 'fx', '2022-01-04 15:33:48.149', 'fedffdf5204941e89b009699b365feeb', '3099', 'img\\addImg\\16413033671681.jpg', '1', '6');
INSERT INTO `orders` VALUES ('39', '8a2800381a0e48edb18bf6e895b3cc70', 'Galaxy Z Fold3', '陨石绿', '12GB+512GB', 'fx', '2022-01-04 15:38:56.825', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', '7');
INSERT INTO `orders` VALUES ('40', 'e5b713badcf44e99abb42b0be7c332d7', 'OPPO Reno7 Pro', '星雨心愿', '再赴传奇', 'fx', '2022-01-05 00:42:15.449', 'd3682232626c43e2b2c8a983ea8ba9c0', '3999', 'img\\addImg\\16413023020431.jpg', '1', '5');
INSERT INTO `orders` VALUES ('41', '8a1d429759274221b269b264ef26aa1e', 'HUAWEI Mate 40 Pro', '秋日胡杨', '8GB+128GB', 'fx', '2022-01-05 01:09:36.669', '40faee1c1ef04d518c1330df6d614e01', '6099', 'img\\addImg\\16412984722241.png', '1', '3');
INSERT INTO `orders` VALUES ('42', '4b1fa2894d004f5781f4b96786ee4598', 'iPhone 13 Pro', '远峰蓝色', '128GB', 'echo', '2022-01-05 01:14:58.153', 'f996496de303406d964c478aef59f127', '7999', 'img\\addImg\\16413001925071.png', '1', '4');
INSERT INTO `orders` VALUES ('43', 'cff1625bb21f41df88bdff8a8acbe645', 'Galaxy Z Fold3', '雪川银', '12GB+512GB', 'echo', '2022-01-05 01:16:19.688', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', '7');
INSERT INTO `orders` VALUES ('44', 'd84b2eb40aff42f782baadb9977854fc', 'vivo X70', '独白', '8GB+128GB', 'echo', '2022-01-05 01:26:28.12', 'fedffdf5204941e89b009699b365feeb', '3099', 'img\\addImg\\16413033671681.jpg', '1', '6');
INSERT INTO `orders` VALUES ('45', '1968d2801f2e4f87b447f0194bf4bb2a', 'Xiaomi Civi', '怦怦粉', '8GB+128GB', '李华', '2022-01-05 03:06:35.989', '457c9929ec464f1ea0ea4063295b24bb', '2499', 'img\\addImg\\16412168627421.jpg', '1', '2');
INSERT INTO `orders` VALUES ('46', '1b6a2809715f4e608053735fc00a16c4', 'Galaxy Z Fold3', '陨石绿', '12GB+512GB', '李华', '2022-01-05 03:13:14.954', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', '7');
INSERT INTO `orders` VALUES ('47', '0bbf3fc6963d4f3c9f6f99f1f715d4bb', 'Galaxy Z Fold3', '陨石绿', '12GB+512GB', 'ss', '2022-01-05 03:32:40.792', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', '7');
INSERT INTO `orders` VALUES ('48', '29f5c96a5ea148dfaf302b8a766be677', 'Xiaomi 11', '黑色', '8GB+128GB', 'ss', '2022-01-05 03:33:33.993', '1', '1999', 'img/xiaomi/xiaomi11.jpg', '1', '2');
INSERT INTO `orders` VALUES ('49', '38264fc7f297455a96108a7adabff266', 'Galaxy Z Fold3', '陨石绿', '12GB+512GB', 'ww', '2022-01-05 04:03:02.125', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', '7');
INSERT INTO `orders` VALUES ('50', 'a963efcf585d4979b51cbc39f2887787', 'Galaxy Z Fold3', '雪川银', '12GB+512GB', 'echo', '2022-01-05 06:04:28.226', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', '4');
INSERT INTO `orders` VALUES ('52', '2d462d79797c456cb1eaf43235e02616', 'iPhone 13', '星光色', '128GB', 'echo', '2022-01-05 06:17:30.269', '80d721c4872747ddb91a5a57f9b30c8a', '5999', 'img\\addImg\\16413009752761.jpg', '1', '4');
INSERT INTO `orders` VALUES ('53', '16cbbdfc44a74cf8a0442a498b7b5661', 'HUAWEI Mate 40 Pro', '秋日胡杨', '8GB+128GB', 'echo', '2022-01-05 06:18:41.349', '40faee1c1ef04d518c1330df6d614e01', '6099', 'img\\addImg\\16412984722241.png', '0', '3');
INSERT INTO `orders` VALUES ('55', '98827ae848e7456a96423e2e69f526cd', 'OPPO Reno7 Pro', '暮雪金', '再赴传奇', 'aaa', '2022-01-05 08:42:49.457', 'd3682232626c43e2b2c8a983ea8ba9c0', '3999', 'img\\addImg\\16413023020431.jpg', '1', '5');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `imgPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片地址',
  `produceName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `miaoshu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `produceTypeNo` int(11) DEFAULT NULL COMMENT '产品类型编号',
  `produceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'img/xiaomi/xiaomi11.jpg', 'Xiaomi 11', '120Hz流速屏，全速热爱', '1999.00', '2', '1', '骁龙888｜2K AMOLED 四曲面柔性屏｜1亿像素三摄｜时尚轻薄机身｜55W 有线闪充｜50W 无线闪充｜10W 无线反充｜LPDDR5｜WiFi6（增强版）｜视频「超级夜景」｜哈曼卡顿音频认证｜立体声双扬声器');
INSERT INTO `products` VALUES ('18', 'img\\addImg\\16413001925071.png', 'iPhone 13 Pro', '13香', '7999.00', '4', 'f996496de303406d964c478aef59f127', 'iPhone 13Pro搭载A15 Bionic芯片，拥有两个新的性能核心和4个新的能效核心，拥有全新5核GPU，和定制的显示引擎。 iPhone 13Pro支持ProMotion技术，支持10-120HZ刷新率智能切换。 iPhone 13Pro搭载了三摄像头，其中超广角摄像头支持f1.8大光圈，广角镜头支持f1.5光圈，77mm长焦镜头支持3倍光学变焦，支持风格摄影。');
INSERT INTO `products` VALUES ('17', 'img\\addImg\\16412984722241.png', 'HUAWEI Mate 40 Pro', '跃见非凡', '6099.00', '3', '40faee1c1ef04d518c1330df6d614e01', '麒麟 9000 5G SoC 芯片，体验震撼超前  超感知徕卡电影影像，硬件实时视频 HDR  66 W 有线超级快充，50 W 无线超级快充');
INSERT INTO `products` VALUES ('15', 'img\\addImg\\16412168627421.jpg', 'Xiaomi Civi', '轻薄潮流设计', '2499.00', '2', '457c9929ec464f1ea0ea4063295b24bb', '轻薄潮流设计 | 丝绒AG工艺 | 原生美肌人像 | 像素级肌肤焕新技术 | 3200万高清质感自拍 | 双柔光灯+自动对焦 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 4500mAh 大电量 | 55W有线闪充 | 立体声双扬声器 | 多功能NFC');
INSERT INTO `products` VALUES ('14', 'img\\16412152542991.png', 'Xiaomi 12 Pro', '全新一代 骁龙8 移动平台', '4699.00', '2', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '全新一代 骁龙8 移动平台｜2K AMOLED 屏幕｜5000万超清三主摄 | CyberFocus 万物追焦｜全焦段夜景｜120W 澎湃秒充');
INSERT INTO `products` VALUES ('19', 'img\\addImg\\16413009752761.jpg', 'iPhone 13', '13香', '5999.00', '4', '80d721c4872747ddb91a5a57f9b30c8a', 'iPhone 13屏幕采用6.1英寸OLED屏幕；iPhone 13具有IP68级防水，采用独家超瓷晶面板  。搭载1200万广角镜头+1200万超广角镜头后置摄像系统，前置为1200万像素摄像头。搭载A15 Bionic芯片，支持5G。');
INSERT INTO `products` VALUES ('20', 'img\\addImg\\16413023020431.jpg', 'OPPO Reno7 Pro', '英雄联盟手游限定版', '3999.00', '5', 'd3682232626c43e2b2c8a983ea8ba9c0', '【冷静输出】3D恒冷中央散热系统；【超长续航】65W超级闪充，4500mAh大电池；【疾速性能组合】天玑 1200-MAX芯片，12GB+256GB大内存。');
INSERT INTO `products` VALUES ('21', 'img\\addImg\\16413033671681.jpg', 'vivo X70', '超逆光纯净夜景', '3499.00', '6', 'fedffdf5204941e89b009699b365feeb', '超逆光纯净夜景|蔡司专业影像|独家旗舰芯片');
INSERT INTO `products` VALUES ('22', 'img\\addImg\\16413044273771.jpg', 'Galaxy Z Fold3', '人气推荐', '14999.00', '7', '8531539ca4bb4742a70e26cc45267908', 'CPU主频 2.84GHz, 2.4GHz, 1.8GHz  尺寸（折叠屏） 7.6英寸(直角)/7.4英寸(圆角)色彩 1600万色类型（外屏） 第二代动态AMOLED');

-- ----------------------------
-- Table structure for ram
-- ----------------------------
DROP TABLE IF EXISTS `ram`;
CREATE TABLE `ram` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `produceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品编号',
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内存大小',
  `ramId` int(11) DEFAULT NULL COMMENT 'ram编号',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ram
-- ----------------------------
INSERT INTO `ram` VALUES ('1', '1', '8GB+128GB', '1', '1999.00');
INSERT INTO `ram` VALUES ('2', '1', '8GB+256GB', '2', '2299.00');
INSERT INTO `ram` VALUES ('3', '1', '12GB+256GB', '3', '2599.00');
INSERT INTO `ram` VALUES ('4', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '8GB+128GB', '1', '4699.00');
INSERT INTO `ram` VALUES ('5', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '8GB+256GB', '2', '4999.00');
INSERT INTO `ram` VALUES ('6', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '12GB+256GB', '3', '5399.00');
INSERT INTO `ram` VALUES ('7', '457c9929ec464f1ea0ea4063295b24bb', '8GB+128GB', '1', '2499.00');
INSERT INTO `ram` VALUES ('8', '457c9929ec464f1ea0ea4063295b24bb', '8GB+256GB', '2', '2799.00');
INSERT INTO `ram` VALUES ('9', '457c9929ec464f1ea0ea4063295b24bb', '12GB+256GB', '3', '3099.00');
INSERT INTO `ram` VALUES ('10', '40faee1c1ef04d518c1330df6d614e01', '8GB+128GB', '1', '6099.00');
INSERT INTO `ram` VALUES ('11', '40faee1c1ef04d518c1330df6d614e01', '8GB+256GB', '2', '6599.00');
INSERT INTO `ram` VALUES ('12', 'f996496de303406d964c478aef59f127', '128GB', '1', '7999.00');
INSERT INTO `ram` VALUES ('13', 'f996496de303406d964c478aef59f127', '256GB', '2', '8799.00');
INSERT INTO `ram` VALUES ('14', 'f996496de303406d964c478aef59f127', '512GB', '3', '10399.00');
INSERT INTO `ram` VALUES ('15', 'f996496de303406d964c478aef59f127', '1TB', '4', '11999.00');
INSERT INTO `ram` VALUES ('16', '80d721c4872747ddb91a5a57f9b30c8a', '128GB', '1', '5999.00');
INSERT INTO `ram` VALUES ('17', '80d721c4872747ddb91a5a57f9b30c8a', '256GB', '2', '6799.00');
INSERT INTO `ram` VALUES ('18', '80d721c4872747ddb91a5a57f9b30c8a', '512GB', '3', '8399.00');
INSERT INTO `ram` VALUES ('19', 'd3682232626c43e2b2c8a983ea8ba9c0', '再赴传奇', '1', '3999.00');
INSERT INTO `ram` VALUES ('20', 'fedffdf5204941e89b009699b365feeb', '8GB+128GB', '1', '3099.00');
INSERT INTO `ram` VALUES ('21', 'fedffdf5204941e89b009699b365feeb', '8GB+256GB', '2', '3499.00');
INSERT INTO `ram` VALUES ('22', 'fedffdf5204941e89b009699b365feeb', '12GB+256GB', '3', '3799.00');
INSERT INTO `ram` VALUES ('23', '8531539ca4bb4742a70e26cc45267908', '12GB+512GB', '1', '14999.00');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `produceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品编号',
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '推荐图片地址',
  `imgId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('1', '2', 'img/recommend/1.jpg', '1');
INSERT INTO `recommend` VALUES ('2', '2', 'img/recommend/2.jpg', '4');

-- ----------------------------
-- Table structure for tureorders
-- ----------------------------
DROP TABLE IF EXISTS `tureorders`;
CREATE TABLE `tureorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produceName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderTime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderMoney` decimal(10,0) DEFAULT NULL,
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isPay` int(11) NOT NULL,
  `produceTypeNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tureorders
-- ----------------------------
INSERT INTO `tureorders` VALUES ('5', '7f464cdd5f06426580da9d29df22b00e', 'vivo X70', '独白', '8GB+128GB', 'fx', '2022-01-04 15:33:48.149', 'fedffdf5204941e89b009699b365feeb', '3099', 'img\\addImg\\16413033671681.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('4', 'c4e488150598497bb7482b6098073258', 'Xiaomi Civi', '怦怦粉', '8GB+128GB', 'echo', '2022-01-04 09:28:21.69', '457c9929ec464f1ea0ea4063295b24bb', '2499', 'img\\addImg\\16412168627421.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('3', '139e99e8a45c4cd190c95e78f56d3c8f', 'Xiaomi 12 Pro', '原野绿（素皮）', '8GB+128GB', 'echo', '2022-01-04 08:41:18.993', '37c9eba8fc0544e493c7e4f1dcfd6c3e', '4699', 'img\\16412152542991.png', '1', null);
INSERT INTO `tureorders` VALUES ('6', '8a2800381a0e48edb18bf6e895b3cc70', 'Galaxy Z Fold3', '陨石绿', '12GB+512GB', 'fx', '2022-01-04 15:38:56.825', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('7', 'e5b713badcf44e99abb42b0be7c332d7', 'OPPO Reno7 Pro', '星雨心愿', '再赴传奇', 'fx', '2022-01-05 00:42:15.449', 'd3682232626c43e2b2c8a983ea8ba9c0', '3999', 'img\\addImg\\16413023020431.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('8', '8a1d429759274221b269b264ef26aa1e', 'HUAWEI Mate 40 Pro', '秋日胡杨', '8GB+128GB', 'fx', '2022-01-05 01:09:36.669', '40faee1c1ef04d518c1330df6d614e01', '6099', 'img\\addImg\\16412984722241.png', '1', null);
INSERT INTO `tureorders` VALUES ('9', '4b1fa2894d004f5781f4b96786ee4598', 'iPhone 13 Pro', '远峰蓝色', '128GB', 'echo', '2022-01-05 01:14:58.153', 'f996496de303406d964c478aef59f127', '7999', 'img\\addImg\\16413001925071.png', '1', null);
INSERT INTO `tureorders` VALUES ('10', 'cff1625bb21f41df88bdff8a8acbe645', 'Galaxy Z Fold3', '雪川银', '12GB+512GB', 'echo', '2022-01-05 01:16:19.688', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('11', 'd84b2eb40aff42f782baadb9977854fc', 'vivo X70', '独白', '8GB+128GB', 'echo', '2022-01-05 01:26:28.12', 'fedffdf5204941e89b009699b365feeb', '3099', 'img\\addImg\\16413033671681.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('12', '1968d2801f2e4f87b447f0194bf4bb2a', 'Xiaomi Civi', '怦怦粉', '8GB+128GB', '李华', '2022-01-05 03:06:35.989', '457c9929ec464f1ea0ea4063295b24bb', '2499', 'img\\addImg\\16412168627421.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('13', '1b6a2809715f4e608053735fc00a16c4', 'Galaxy Z Fold3', '陨石绿', '12GB+512GB', '李华', '2022-01-05 03:13:14.954', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('14', '0bbf3fc6963d4f3c9f6f99f1f715d4bb', 'Galaxy Z Fold3', '陨石绿', '12GB+512GB', 'ss', '2022-01-05 03:32:40.792', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('15', '29f5c96a5ea148dfaf302b8a766be677', 'Xiaomi 11', '黑色', '8GB+128GB', 'ss', '2022-01-05 03:33:33.993', '1', '1999', 'img/xiaomi/xiaomi11.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('16', '38264fc7f297455a96108a7adabff266', 'Galaxy Z Fold3', '陨石绿', '12GB+512GB', 'ww', '2022-01-05 04:03:02.125', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('17', 'a963efcf585d4979b51cbc39f2887787', 'Galaxy Z Fold3', '雪川银', '12GB+512GB', 'echo', '2022-01-05 06:04:28.226', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', null);
INSERT INTO `tureorders` VALUES ('18', '49404a2a0c1b41b1a93ca20496b74f35', 'vivo X70', '独白', '8GB+128GB', 'echo', '2022-01-05 06:10:14.768', 'fedffdf5204941e89b009699b365feeb', '3099', 'img\\addImg\\16413033671681.jpg', '1', '6');
INSERT INTO `tureorders` VALUES ('19', '2d462d79797c456cb1eaf43235e02616', 'iPhone 13', '星光色', '128GB', 'echo', '2022-01-05 06:17:30.269', '80d721c4872747ddb91a5a57f9b30c8a', '5999', 'img\\addImg\\16413009752761.jpg', '1', '4');
INSERT INTO `tureorders` VALUES ('20', '672ff0aeedfe42fea4f37dc3b3733c42', 'Galaxy Z Fold3', '雪川银', '12GB+512GB', 'aaa', '2022-01-05 08:41:34.889', '8531539ca4bb4742a70e26cc45267908', '14999', 'img\\addImg\\16413044273771.jpg', '1', '7');
INSERT INTO `tureorders` VALUES ('21', '98827ae848e7456a96423e2e69f526cd', 'OPPO Reno7 Pro', '暮雪金', '再赴传奇', 'aaa', '2022-01-05 08:42:49.457', 'd3682232626c43e2b2c8a983ea8ba9c0', '3999', 'img\\addImg\\16413023020431.jpg', '1', '5');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeNo` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produceTypeNo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', 'img/logo/xiaomi2.jpg', '小米', '0', 'index/produce', '2');
INSERT INTO `type` VALUES ('2', 'img/logo/huawei.jpg', '华为', '0', 'index/produce', '3');
INSERT INTO `type` VALUES ('3', 'img/logo/apple.jpg', '苹果', '0', 'index/produce', '4');
INSERT INTO `type` VALUES ('4', 'img/logo/oppo.jpg', 'OPPO', '0', 'index/produce', '5');
INSERT INTO `type` VALUES ('5', 'img/logo/vivo.jpg', 'VIVO', '0', 'index/produce', '6');
INSERT INTO `type` VALUES ('6', 'img/logo/sx.jpg', '三星', '0', 'index/produce', '7');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话号码',
  `isAdmin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'echo', '123456', '17100391064', '0');
INSERT INTO `user` VALUES ('9', 'www', '123', '17100391064', '0');
INSERT INTO `user` VALUES ('2', 'fx', '123', '18256069021', '0');
INSERT INTO `user` VALUES ('10', 'ww', '123', '123', '0');
INSERT INTO `user` VALUES ('12', 'admin', 'admin', '123', '0');
INSERT INTO `user` VALUES ('13', 'adc', '123', '10086', '0');
INSERT INTO `user` VALUES ('14', '李华', '123456', '10086', '0');
INSERT INTO `user` VALUES ('15', 'vv', '123', '123456', '0');
INSERT INTO `user` VALUES ('16', 'ss', '123', '17100391064', '0');
INSERT INTO `user` VALUES ('17', 'aaa', '123', '123456789', '0');

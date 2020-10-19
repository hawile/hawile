/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : keydom

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 14/10/2020 14:50:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for soft_drive
-- ----------------------------
DROP TABLE IF EXISTS `soft_drive`;
CREATE TABLE `soft_drive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '软件名称',
  `version` varchar(100) DEFAULT NULL COMMENT '版本号',
  `reason` varchar(255) DEFAULT NULL COMMENT '注释',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `size` int(11) DEFAULT '0' COMMENT '软件大小',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of soft_drive
-- ----------------------------
BEGIN;
INSERT INTO `soft_drive` VALUES (1, 'DocuCentre_S1810_Driver', '1.0', 'S1810打印机驱动', 'DocuCentre_S1810_Driver.zip', 10738, '2019-04-24 16:45:25');
INSERT INTO `soft_drive` VALUES (2, 'L565', '1.0', 'L565打印机驱动32位', 'L565_Win32.zip', 52256, '2019-04-24 16:45:43');
INSERT INTO `soft_drive` VALUES (3, 'L565', '1.0', 'L565打印机驱动64位', 'L565_Win64.zip', 55744, '2019-04-24 16:46:01');
INSERT INTO `soft_drive` VALUES (4, 'R330', '1.0', 'R330打印机驱动', 'R330.zip', 27488, '2019-04-24 16:46:16');
INSERT INTO `soft_drive` VALUES (5, 'S1810', '1.0', 'S1810打印机驱动', 'S1810 Driver.zip', 8074, '2019-06-12 15:28:57');
INSERT INTO `soft_drive` VALUES (6, 'TOSHIBA e-STUDIO2830C XPS', '1.0', '2830C打印机驱动', 'TOSHIBA e-STUDIO2830C XPS.zip', 41546, '2019-04-24 16:46:42');
INSERT INTO `soft_drive` VALUES (7, '固网1008_2008标准版', '1.0', '固网1008_2008标准版', '1008_2008Stand.zip', 12372, '2019-06-12 15:29:29');
INSERT INTO `soft_drive` VALUES (8, '驱动人生网卡版', '7.1', '驱动人生版', 'dtl7_net_7.1.21.68.zip', 211356, '2019-06-12 15:34:01');
INSERT INTO `soft_drive` VALUES (9, 'Xerox_DocuCentre_S2220_S2420', '1.0', '前台打印机', 'Xerox_DocuCentre_S2220_S2420.exe', 27319, '2020-05-12 15:34:37');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

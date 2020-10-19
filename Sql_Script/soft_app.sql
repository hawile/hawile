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

 Date: 14/10/2020 14:50:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for soft_app
-- ----------------------------
DROP TABLE IF EXISTS `soft_app`;
CREATE TABLE `soft_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '软件名称',
  `version` varchar(100) DEFAULT NULL COMMENT '版本号',
  `reason` varchar(255) DEFAULT NULL COMMENT '注释',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `size` int(11) DEFAULT '0' COMMENT '软件大小',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of soft_app
-- ----------------------------
BEGIN;
INSERT INTO `soft_app` VALUES (1, 'PGP加密软件', '1.0', '加密软件', '063B229CEDD44DD3.zip', 85797, '2020-10-13 16:56:14');
INSERT INTO `soft_app` VALUES (2, 'Serv-U', '15.2.0', 'FTP服务端', 'Serv-U_15.2.0.zip', 16868, '2020-06-29 11:11:44');
INSERT INTO `soft_app` VALUES (3, 'TortoiseSVN', '1.8.1', 'SVN客户端', 'TortoiseSVN v1.8.1.zip', 24224, '2019-04-24 14:48:36');
INSERT INTO `soft_app` VALUES (4, 'TortoiseSVN', '1.9.4', 'SVN客户端', 'TortoiseSVN v1.9.4.zip', 42670, '2019-04-24 14:48:49');
INSERT INTO `soft_app` VALUES (5, 'FlashFXP', '4.4.2', 'FTP浏览器', 'FlashFXP v4.4.2.zip', 3395, '2019-04-24 14:47:37');
INSERT INTO `soft_app` VALUES (6, 'SafeShare', '10.2', '文件系统', 'SafeShare v10.2.zip', 56802, '2019-04-24 14:49:08');
INSERT INTO `soft_app` VALUES (7, 'Navicat Premium', '12.0', '数据库连接软件', 'Navicat v12.0.zip', 52445, '2019-06-12 10:53:10');
INSERT INTO `soft_app` VALUES (8, 'KMSAuto Net', '1.3.7', '系统及Office激活软件', 'KMSAuto Net.zip', 4232, '2019-04-24 14:50:02');
INSERT INTO `soft_app` VALUES (9, 'Microsoft  Visual C++运行库', '1.0', '运行某些软件必须组件', 'Microsoft  Visual C++.zip', 59697, '2019-06-12 15:21:47');
INSERT INTO `soft_app` VALUES (10, '.Net运行库', '1.0', '运行某些软件必须组件', 'donetRepair.zip', 453252, '2019-04-24 14:51:23');
INSERT INTO `soft_app` VALUES (11, 'DiskGenius', '5.1.1', '磁盘处理工具', 'DiskGenius v5.1.1.zip', 65429, '2019-06-12 16:17:34');
INSERT INTO `soft_app` VALUES (12, 'Microsoft Office Pro', '2013', 'Office办公软件', 'Microsoft Office 2013.zip', 1675460, '2019-04-24 15:10:50');
INSERT INTO `soft_app` VALUES (13, 'Adobe Photoshop', 'CC 2014', '图像处理软件', 'Adobe Photoshop CC 2014.zip', 787366, '2019-04-24 16:27:26');
INSERT INTO `soft_app` VALUES (14, 'Adobe Photoshop', 'CS6', '图像处理软件', 'Adobe Photoshop CS6.zip', 114605, '2019-04-24 14:52:21');
INSERT INTO `soft_app` VALUES (15, 'Adobe Acrobat Pro', '9', 'PDF处理软件', 'Adobe Acrobat 9 Pro.zip', 633150, '2019-04-24 15:16:34');
INSERT INTO `soft_app` VALUES (16, 'Adobe Acrobat Pro DC', '2019 SP', 'PDF阅读软件', 'Adobe Acrobat Pro DC 2019 SP.zip', 709634, '2019-06-13 09:31:30');
INSERT INTO `soft_app` VALUES (17, 'CorelDRAW Graphics Suite', 'X6', '图像处理软件', 'CorelDRAW Graphics Suite X6.zip', 466090, '2019-04-24 16:36:35');
INSERT INTO `soft_app` VALUES (18, 'AutoCad', '2017', '图像处理软件', 'AutoCad 2017 x64.zip', 2353769, '2019-04-24 16:43:18');
INSERT INTO `soft_app` VALUES (19, 'PDF转换器', '1.0', 'PDF转换格式软件', 'PDF Convert.zip', 20305, '2019-06-12 15:22:39');
INSERT INTO `soft_app` VALUES (20, '用友U8+', '12.0', '管理与电子商务平台', 'YongyouU8+ v12.0.zip', 6346330, '2019-06-12 15:23:51');
INSERT INTO `soft_app` VALUES (21, 'iNode', '5.2', '网络管理智能客户端', 'iNode v5.2.zip', 50332, '2019-04-24 14:53:15');
INSERT INTO `soft_app` VALUES (22, '飞鸽传书', '5.1', '局域网即时沟通聊天软件', 'Feige v5.1.zip', 6538, '2019-06-12 15:24:52');
INSERT INTO `soft_app` VALUES (23, 'Adobe Illustrator', 'CS6', '矢量图形设计软件', 'Adobe Illustrator CS6.zip', 1993885, '2019-04-24 16:49:03');
INSERT INTO `soft_app` VALUES (24, '360极速浏览器', '9.5', '网络浏览器', '360cse v9.5.zip', 44852, '2019-04-24 16:49:05');
INSERT INTO `soft_app` VALUES (25, '搜狗拼音输入法', '9.0', '输入法', 'Sogou pinyin v9.0.zip', 43121, '2019-04-24 16:49:07');
INSERT INTO `soft_app` VALUES (26, 'WinRAR', '5.6', '压缩解压软件', 'WinRAR v5.6.zip', 5814, '2019-04-24 16:49:08');
INSERT INTO `soft_app` VALUES (27, 'XShell', '6.0', 'SSH连接工具', 'Xshell6.zip', 36549, '2019-04-24 16:49:10');
INSERT INTO `soft_app` VALUES (28, 'XFtp', '6.0', 'FTP浏览器', 'XFtp6.zip', 25229, '2019-04-24 16:49:12');
INSERT INTO `soft_app` VALUES (29, 'MySQL', '5.7.25', '数据库软件', 'mysql-installer-community-5.7.25.0.msi', 396968, '2019-06-11 15:07:57');
INSERT INTO `soft_app` VALUES (30, 'MySQL', '5.7.26', 'Linux64位', 'mysql-5.7.26-linux-glibc2.12-x86_64.tar', 660340, '2019-06-11 15:03:19');
INSERT INTO `soft_app` VALUES (31, 'SecureCRT', '8.5', 'SSH连接软件 64位', 'SecureCRT_x64_v8.5.zip', 29631, '2019-06-12 15:11:14');
INSERT INTO `soft_app` VALUES (32, 'Corel VideoStudio Pro', 'X8', '会声会影 视频编辑软件 ', 'Corel VideoStudio Pro X8.zip', 1271698, '2019-06-12 15:17:38');
INSERT INTO `soft_app` VALUES (33, 'PotPlayer', '1.7', '本地视频播放软件', 'PotPlayer v1.7.zip', 54395, '2019-06-12 16:01:39');
INSERT INTO `soft_app` VALUES (34, 'FileZilla', '4.2', 'FTP访问工具', 'FileZilla_v3.42.zip', 42333, '2019-06-12 16:24:49');
INSERT INTO `soft_app` VALUES (35, 'CPU-Z', '1.87', 'CPU信息查看工具', 'CPU-Z_v1.87.zip', 2747, '2019-06-12 16:35:03');
INSERT INTO `soft_app` VALUES (36, 'AIDA64', '6.0', '系统工具', 'AIDA64 v6.0.zip', 155141, '2019-06-13 15:54:10');
INSERT INTO `soft_app` VALUES (37, 'System Spec', '3.07', '系统信息查看工具', 'SysSpec.zip', 909, '2019-11-07 15:27:59');
INSERT INTO `soft_app` VALUES (38, '注册机', '1.0', '各类注册机', 'Keygen.zip', 44306, '2020-06-19 09:55:44');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

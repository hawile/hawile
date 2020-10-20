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

 Date: 20/10/2020 23:48:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `first_type` int(11) DEFAULT '0',
  `second_type` int(11) DEFAULT '0',
  `third_type` int(11) DEFAULT '0',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, '信息管理', 'information', 0, 0, 0, '2020-10-20 23:01:16');
INSERT INTO `role` VALUES (2, '厂商信息', 'contact', 1, 0, 0, '2020-10-20 23:01:19');
INSERT INTO `role` VALUES (3, '账号信息', 'account', 1, 0, 0, '2020-10-20 23:01:36');
INSERT INTO `role` VALUES (4, '客户账号信息', 'csr', 1, 0, 0, '2020-10-20 23:01:40');
INSERT INTO `role` VALUES (5, '售货机订单信息', 'atm', 1, 0, 0, '2020-10-20 23:01:45');
INSERT INTO `role` VALUES (6, '工作报表', 'work', 1, 0, 0, '2020-10-20 23:01:49');
INSERT INTO `role` VALUES (7, '文件管理', 'files', 0, 0, 0, '2020-10-20 23:01:52');
INSERT INTO `role` VALUES (8, '表单信息', 'form', 7, 0, 0, '2020-10-20 23:02:16');
INSERT INTO `role` VALUES (9, '文件信息', 'file', 7, 0, 0, '2020-10-20 23:02:19');
INSERT INTO `role` VALUES (10, '软件管理', 'soft', 0, 0, 0, '2020-10-20 23:02:25');
INSERT INTO `role` VALUES (11, '应用软件', 'softApp', 10, 0, 0, '2020-10-20 23:02:30');
INSERT INTO `role` VALUES (12, '驱动软件', 'softDrive', 10, 0, 0, '2020-10-20 23:02:34');
INSERT INTO `role` VALUES (13, '系统软件', 'softOs', 10, 0, 0, '2020-10-20 23:02:38');
INSERT INTO `role` VALUES (14, '系统管理', 'system', 0, 0, 0, '2020-10-20 23:02:40');
INSERT INTO `role` VALUES (15, '系统日志', 'log', 14, 0, 0, '2020-10-20 23:02:43');
INSERT INTO `role` VALUES (16, '用户管理', 'users', 0, 0, 0, '2020-10-20 23:02:46');
INSERT INTO `role` VALUES (17, '权限管理', 'role', 16, 0, 0, '2020-10-20 23:02:50');
INSERT INTO `role` VALUES (18, '职位管理', 'post', 16, 0, 0, '2020-10-20 23:03:02');
INSERT INTO `role` VALUES (19, '用户管理', 'user', 16, 0, 0, '2020-10-20 23:03:06');
INSERT INTO `role` VALUES (20, '用户申请管理', 'userSign', 16, 0, 0, '2020-10-20 23:03:18');
INSERT INTO `role` VALUES (21, '个人信息', 'userInfo', 16, 0, 0, '2020-10-20 23:03:21');
INSERT INTO `role` VALUES (22, '添加信息', 'contact-add', 1, 2, 0, '2020-10-20 23:03:34');
INSERT INTO `role` VALUES (23, '编辑信息', 'contact-edit', 1, 2, 0, '2020-10-20 23:03:38');
INSERT INTO `role` VALUES (24, '删除信息', 'contact-delete', 1, 2, 0, '2020-10-20 23:03:41');
INSERT INTO `role` VALUES (25, '添加账号', 'account-add', 1, 3, 0, '2020-10-20 23:03:50');
INSERT INTO `role` VALUES (26, '编辑账号', 'account-edit', 1, 3, 0, '2020-10-20 23:03:59');
INSERT INTO `role` VALUES (27, '删除账号', 'account-delete', 1, 3, 0, '2020-10-20 23:04:02');
INSERT INTO `role` VALUES (28, '添加账号', 'csr-add', 1, 4, 0, '2020-10-20 23:04:09');
INSERT INTO `role` VALUES (29, '编辑账号', 'csr-edit', 1, 4, 0, '2020-10-20 23:04:11');
INSERT INTO `role` VALUES (30, '删除账号', 'csr-delete', 1, 4, 0, '2020-10-20 23:04:16');
INSERT INTO `role` VALUES (31, '打印列表', 'csr-print', 1, 4, 0, '2020-10-20 23:04:19');
INSERT INTO `role` VALUES (32, '添加订单', 'atm-add', 1, 5, 0, '2020-10-20 23:04:25');
INSERT INTO `role` VALUES (33, '编辑订单', 'atm-edit', 1, 5, 0, '2020-10-20 23:04:28');
INSERT INTO `role` VALUES (34, '删除订单', 'atm-delete', 1, 5, 0, '2020-10-20 23:04:31');
INSERT INTO `role` VALUES (35, '添加商品', 'goods-add', 1, 5, 0, '2020-10-20 23:05:07');
INSERT INTO `role` VALUES (36, '编辑商品', 'goods-edit', 1, 5, 0, '2020-10-20 23:05:10');
INSERT INTO `role` VALUES (37, '删除商品', 'goods-delete', 1, 5, 0, '2020-10-20 23:05:15');
INSERT INTO `role` VALUES (38, '添加内容', 'work-add', 1, 6, 0, '2020-10-20 23:05:23');
INSERT INTO `role` VALUES (39, '编辑内容', 'work-edit', 1, 6, 0, '2020-10-20 23:05:27');
INSERT INTO `role` VALUES (40, '删除内容', 'work-delete', 1, 6, 0, '2020-10-20 23:05:31');
INSERT INTO `role` VALUES (41, '打印列表', 'work-print', 1, 6, 0, '2020-10-20 23:05:35');
INSERT INTO `role` VALUES (42, '添加表单', 'form-add', 7, 8, 0, '2020-10-20 23:05:42');
INSERT INTO `role` VALUES (43, '编辑表单', 'form-edit', 7, 8, 0, '2020-10-20 23:05:46');
INSERT INTO `role` VALUES (44, '删除表单', 'form-delete', 7, 8, 0, '2020-10-20 23:05:49');
INSERT INTO `role` VALUES (45, '填写表单', 'form-input', 7, 8, 0, '2020-10-20 23:05:53');
INSERT INTO `role` VALUES (46, '下载表单', 'form-download', 7, 8, 0, '2020-10-20 23:05:57');
INSERT INTO `role` VALUES (47, '添加文件', 'file-add', 7, 9, 0, '2020-10-20 23:06:01');
INSERT INTO `role` VALUES (48, '编辑文件', 'file-edit', 7, 9, 0, '2020-10-20 23:06:04');
INSERT INTO `role` VALUES (49, '删除文件', 'file-delete', 7, 9, 0, '2020-10-20 23:06:07');
INSERT INTO `role` VALUES (50, '下载文件', 'file-download', 7, 9, 0, '2020-10-20 23:06:10');
INSERT INTO `role` VALUES (51, '添加软件', 'softApp-add', 10, 11, 0, '2020-10-20 23:06:19');
INSERT INTO `role` VALUES (52, '编辑软件', 'softApp-edit', 10, 11, 0, '2020-10-20 23:06:22');
INSERT INTO `role` VALUES (53, '删除软件', 'softApp-delete', 10, 11, 0, '2020-10-20 23:06:24');
INSERT INTO `role` VALUES (54, '下载软件', 'softApp-download', 10, 11, 0, '2020-10-20 23:06:28');
INSERT INTO `role` VALUES (55, '添加软件', 'softDrive-add', 10, 12, 0, '2020-10-20 23:06:35');
INSERT INTO `role` VALUES (56, '编辑软件', 'softDrive-edit', 10, 12, 0, '2020-10-20 23:06:38');
INSERT INTO `role` VALUES (57, '删除软件', 'softDrive-delete', 10, 12, 0, '2020-10-20 23:06:41');
INSERT INTO `role` VALUES (58, '下载软件', 'softDrive-download', 10, 12, 0, '2020-10-20 23:06:44');
INSERT INTO `role` VALUES (59, '添加软件', 'softOs-add', 10, 13, 0, '2020-10-20 23:06:48');
INSERT INTO `role` VALUES (60, '编辑软件', 'softOs-edit', 10, 13, 0, '2020-10-20 23:06:51');
INSERT INTO `role` VALUES (61, '删除软件', 'softOs-delete', 10, 13, 0, '2020-10-20 23:06:54');
INSERT INTO `role` VALUES (62, '浏览地址', 'softOs-view', 10, 13, 0, '2020-10-20 23:07:04');
INSERT INTO `role` VALUES (63, '添加权限', 'role-add', 16, 17, 0, '2020-10-20 23:07:10');
INSERT INTO `role` VALUES (64, '编辑权限', 'role-edit', 16, 17, 0, '2020-10-20 23:07:14');
INSERT INTO `role` VALUES (65, '删除权限', 'role-delete', 16, 17, 0, '2020-10-20 23:07:19');
INSERT INTO `role` VALUES (66, '添加职位', 'job-add', 16, 18, 0, '2020-10-20 23:07:50');
INSERT INTO `role` VALUES (67, '编辑职位', 'job-edit', 16, 18, 0, '2020-10-20 23:07:55');
INSERT INTO `role` VALUES (68, '删除职位', 'job-delete', 16, 18, 0, '2020-10-20 23:07:58');
INSERT INTO `role` VALUES (69, '添加部门', 'dept-add', 16, 18, 0, '2020-10-20 23:08:01');
INSERT INTO `role` VALUES (70, '编辑部门', 'dept-edit', 16, 18, 0, '2020-10-20 23:08:04');
INSERT INTO `role` VALUES (71, '删除部门', 'dept-delete', 16, 18, 0, '2020-10-20 23:08:07');
INSERT INTO `role` VALUES (72, '添加用户', 'user-add', 16, 19, 0, '2020-10-20 23:08:10');
INSERT INTO `role` VALUES (73, '编辑用户', 'user-edit', 16, 19, 0, '2020-10-20 23:08:14');
INSERT INTO `role` VALUES (74, '删除用户', 'user-delete', 16, 19, 0, '2020-10-20 23:08:18');
INSERT INTO `role` VALUES (75, '操作申请', 'userSign-edit', 16, 20, 0, '2020-10-20 23:08:27');
INSERT INTO `role` VALUES (76, '编辑信息', 'userInfo-edit', 16, 21, 0, '2020-10-20 23:08:33');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

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

 Date: 21/10/2020 16:57:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, '信息管理', 'information', 0, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (2, '厂商信息', 'contact', 1, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (3, '账号信息', 'account', 1, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (4, '客户账号信息', 'csr', 1, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (5, '售货机订单信息', 'atm', 1, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (6, '工作报表', 'work', 1, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (7, '文件管理', 'files', 0, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (8, '表单信息', 'form', 7, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (9, '文件信息', 'file', 7, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (10, '软件管理', 'soft', 0, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (11, '应用软件', 'softApp', 10, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (12, '驱动软件', 'softDrive', 10, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (13, '系统软件', 'softOs', 10, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (14, '系统管理', 'system', 0, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (15, '系统日志', 'log', 14, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (16, '用户管理', 'users', 0, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (17, '权限管理', 'role', 16, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (18, '职位管理', 'post', 16, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (19, '用户管理', 'user', 16, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (20, '用户申请管理', 'userSign', 16, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (21, '个人信息', 'userInfo', 16, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (22, '添加信息', 'contact-add', 2, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (23, '编辑信息', 'contact-edit', 2, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (24, '删除信息', 'contact-delete', 2, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (25, '添加账号', 'account-add', 3, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (26, '编辑账号', 'account-edit', 3, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (27, '删除账号', 'account-delete', 3, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (28, '添加账号', 'csr-add', 4, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (29, '编辑账号', 'csr-edit', 4, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (30, '删除账号', 'csr-delete', 4, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (31, '打印列表', 'csr-print', 4, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (32, '添加订单', 'atm-add', 5, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (33, '编辑订单', 'atm-edit', 5, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (34, '删除订单', 'atm-delete', 5, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (35, '添加商品', 'goods-add', 5, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (36, '编辑商品', 'goods-edit', 5, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (37, '删除商品', 'goods-delete', 5, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (38, '添加内容', 'work-add', 6, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (39, '编辑内容', 'work-edit', 6, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (40, '删除内容', 'work-delete', 6, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (41, '打印列表', 'work-print', 6, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (42, '添加表单', 'form-add', 8, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (43, '编辑表单', 'form-edit', 8, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (44, '删除表单', 'form-delete', 8, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (45, '填写表单', 'form-input', 8, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (46, '下载表单', 'form-download', 8, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (47, '添加文件', 'file-add', 9, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (48, '编辑文件', 'file-edit', 9, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (49, '删除文件', 'file-delete', 9, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (50, '下载文件', 'file-download', 9, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (51, '添加软件', 'softApp-add', 11, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (52, '编辑软件', 'softApp-edit', 11, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (53, '删除软件', 'softApp-delete', 11, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (54, '下载软件', 'softApp-download', 11, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (55, '添加软件', 'softDrive-add', 12, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (56, '编辑软件', 'softDrive-edit', 12, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (57, '删除软件', 'softDrive-delete', 12, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (58, '下载软件', 'softDrive-download', 12, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (59, '添加软件', 'softOs-add', 13, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (60, '编辑软件', 'softOs-edit', 13, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (61, '删除软件', 'softOs-delete', 13, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (62, '浏览地址', 'softOs-view', 13, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (63, '添加权限', 'role-add', 17, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (64, '编辑权限', 'role-edit', 17, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (65, '删除权限', 'role-delete', 17, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (66, '添加职位', 'job-add', 18, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (67, '编辑职位', 'job-edit', 18, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (68, '删除职位', 'job-delete', 18, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (69, '添加部门', 'dept-add', 18, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (70, '编辑部门', 'dept-edit', 18, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (71, '删除部门', 'dept-delete', 18, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (72, '添加用户', 'user-add', 19, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (73, '编辑用户', 'user-edit', 19, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (74, '删除用户', 'user-delete', 19, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (75, '操作申请', 'userSign-edit', 20, '2020-10-21 16:00:14', 0);
INSERT INTO `role` VALUES (76, '编辑信息', 'userInfo-edit', 21, '2020-10-21 16:00:14', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : hawile

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 20/10/2020 21:33:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

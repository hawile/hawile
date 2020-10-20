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

 Date: 20/10/2020 21:34:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`),
  CONSTRAINT `fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_value` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

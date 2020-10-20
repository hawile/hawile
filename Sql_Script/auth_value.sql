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

 Date: 20/10/2020 21:34:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_value
-- ----------------------------
DROP TABLE IF EXISTS `auth_value`;
CREATE TABLE `auth_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL DEFAULT '0',
  `value` int(1) DEFAULT '0',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_auth_id` (`auth_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `fk_auth_id` FOREIGN KEY (`auth_id`) REFERENCES `auth` (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_value
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

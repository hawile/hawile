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

 Date: 22/10/2020 19:21:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for role_to_user
-- ----------------------------
DROP TABLE IF EXISTS `role_to_user`;
CREATE TABLE `role_to_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `value` int(1) DEFAULT '0',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_auth_id` (`role_id`),
  KEY `group_id` (`user_id`),
  CONSTRAINT `fk_auth_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_to_user
-- ----------------------------
BEGIN;
INSERT INTO `role_to_user` VALUES (1, 1, 1, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (2, 1, 7, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (3, 1, 10, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (4, 1, 14, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (5, 1, 16, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (6, 1, 2, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (7, 1, 3, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (8, 1, 4, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (9, 1, 5, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (10, 1, 6, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (11, 1, 22, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (12, 1, 23, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (13, 1, 24, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (14, 1, 25, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (15, 1, 26, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (16, 1, 27, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (17, 1, 28, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (18, 1, 29, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (19, 1, 30, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (20, 1, 31, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (21, 1, 32, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (22, 1, 33, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (23, 1, 34, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (24, 1, 35, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (25, 1, 36, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (26, 1, 37, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (27, 1, 38, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (28, 1, 39, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (29, 1, 40, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (30, 1, 41, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (31, 1, 8, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (32, 1, 9, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (33, 1, 42, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (34, 1, 43, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (35, 1, 44, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (36, 1, 45, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (37, 1, 46, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (38, 1, 47, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (39, 1, 48, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (40, 1, 49, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (41, 1, 50, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (42, 1, 11, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (43, 1, 12, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (44, 1, 13, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (45, 1, 51, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (46, 1, 52, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (47, 1, 53, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (48, 1, 54, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (49, 1, 55, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (50, 1, 56, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (51, 1, 57, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (52, 1, 58, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (53, 1, 59, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (54, 1, 60, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (55, 1, 61, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (56, 1, 62, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (57, 1, 15, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (58, 1, 17, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (59, 1, 18, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (60, 1, 19, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (61, 1, 20, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (62, 1, 21, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (63, 1, 63, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (64, 1, 64, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (65, 1, 65, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (66, 1, 66, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (67, 1, 67, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (68, 1, 68, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (69, 1, 69, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (70, 1, 70, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (71, 1, 71, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (72, 1, 72, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (73, 1, 73, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (74, 1, 74, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (75, 1, 75, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (76, 1, 76, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (77, 3, 1, 1, '2020-10-22 09:46:45');
INSERT INTO `role_to_user` VALUES (78, 3, 7, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (79, 3, 10, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (80, 3, 14, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (81, 3, 16, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (82, 3, 2, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (83, 3, 3, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (84, 3, 4, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (85, 3, 5, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (86, 3, 6, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (87, 3, 22, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (88, 3, 23, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (89, 3, 24, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (90, 3, 25, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (91, 3, 26, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (92, 3, 27, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (93, 3, 28, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (94, 3, 29, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (95, 3, 30, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (96, 3, 31, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (97, 3, 32, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (98, 3, 33, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (99, 3, 34, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (100, 3, 35, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (101, 3, 36, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (102, 3, 37, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (103, 3, 38, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (104, 3, 39, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (105, 3, 40, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (106, 3, 41, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (107, 3, 8, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (108, 3, 9, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (109, 3, 42, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (110, 3, 43, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (111, 3, 44, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (112, 3, 45, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (113, 3, 46, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (114, 3, 47, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (115, 3, 48, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (116, 3, 49, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (117, 3, 50, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (118, 3, 11, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (119, 3, 12, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (120, 3, 13, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (121, 3, 51, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (122, 3, 52, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (123, 3, 53, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (124, 3, 54, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (125, 3, 55, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (126, 3, 56, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (127, 3, 57, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (128, 3, 58, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (129, 3, 59, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (130, 3, 60, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (131, 3, 61, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (132, 3, 62, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (133, 3, 15, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (134, 3, 17, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (135, 3, 18, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (136, 3, 19, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (137, 3, 20, 1, '2020-10-22 09:53:58');
INSERT INTO `role_to_user` VALUES (138, 3, 21, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (139, 3, 63, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (140, 3, 64, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (141, 3, 65, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (142, 3, 66, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (143, 3, 67, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (144, 3, 68, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (145, 3, 69, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (146, 3, 70, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (147, 3, 71, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (148, 3, 72, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (149, 3, 73, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (150, 3, 74, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (151, 3, 75, 1, '2020-10-22 09:29:50');
INSERT INTO `role_to_user` VALUES (152, 3, 76, 1, '2020-10-22 09:29:50');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

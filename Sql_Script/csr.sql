/*
 Navicat Premium Data Transfer

 Source Server         : Linux
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 192.168.11.11:3306
 Source Schema         : keydom

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 16/10/2020 17:11:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for csr
-- ----------------------------
DROP TABLE IF EXISTS `csr`;
CREATE TABLE `csr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vpn_name` varchar(255) DEFAULT NULL,
  `ftp_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of csr
-- ----------------------------
BEGIN;
INSERT INTO `csr` VALUES (3, 'dpc', 'dpc', '四川省居民健康卡', '2017-01-20', 'D:/数据接收主目录/dpc', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (4, 'scdy00520150813', 'dy005', '四川省德阳市邮政储蓄银行', '2015-08-12', 'D:/数据接收主目录/dy005', '注销', '长时间未使用', '2020-01-03 15:31:36');
INSERT INTO `csr` VALUES (5, 'scdy20150813', 'dy20150813', '四川省德阳市德阳银行', '2015-08-12', 'D:/数据接收主目录/dy20150813', '注销', '', '2020-10-16 11:08:18');
INSERT INTO `csr` VALUES (9, 'szjingking1', 'szjingking1', '深圳精工', '2015-08-10', 'D:/数据接收主目录/szjingking1', '注销', '', '2020-10-16 11:08:23');
INSERT INTO `csr` VALUES (10, 'shujushi1', 'shujushi1', '生产中心数据', '2016-01-15', 'D:/数据接收主目录/xiongl', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (11, 'shujushi2', 'shujushi2', '生产中心数据', '2017-04-24', 'D:/数据接收主目录', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (12, 'sczy00920150615', 'zy009', '四川省资阳市人力资源和社会保障局', '2015-06-13', 'D:/数据接收主目录/zy009', '注销', '长时间未使用', '2020-01-03 15:31:46');
INSERT INTO `csr` VALUES (13, 'test', NULL, '精工测试', '2017-06-23', NULL, '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (14, '物理专线', '18003', '四川省中国银行', '2017-07-21', 'D:/数据接收主目录/18003', '注销', '', '2020-01-03 15:31:52');
INSERT INTO `csr` VALUES (15, 'scwjw', 'scwjw', '四川省卫计委', '2017-07-24', 'D:/数据接收主目录/scwjw', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (16, '1815013', '1815013', '达州银行', '2017-07-28', 'D:/数据接收主目录/1815013', '注销', '', '2020-10-16 11:08:29');
INSERT INTO `csr` VALUES (17, 'szjgxx20170817', 'szjgxx20170817', '深圳精工伟达信息科技有限公司', '2017-08-17', 'D:/数据接收主目录/szjgxx20170817', '注销', '', '2020-10-16 11:08:34');
INSERT INTO `csr` VALUES (18, 'soyuan20171123', 'soyuan20171123', '成都数智睿卡科技有限公司', '2017-11-23', 'D:/数据接收主目录/soyuan20171123', '注销', '', '2020-01-03 15:32:00');
INSERT INTO `csr` VALUES (19, 'huah20171229', 'huah20171229', '北京华虹集成电路设计有限公司', '2017-12-24', 'D:/数据接收主目录/huah20171229', '注销', '', '2020-10-16 11:08:40');
INSERT INTO `csr` VALUES (20, '物理专线', 'tianfutong20180307', '天府通', '2018-03-07', 'D:/tianfutong', '正常', '天府通正式专线', '2019-02-27 13:57:58');
INSERT INTO `csr` VALUES (22, 'jishubu20180409', 'jishubu20180409', '技术部', '2018-04-09', 'D:/数据接收主目录/jishubu20180409', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (25, 'xzdxdzxsz80511', 'xzdxdzxsz80511', '徐州电信电子学生证', '2018-05-11', 'D:/数据接收主目录/xzdxdzxsz80511', '注销', '', '2020-10-16 11:08:45');
INSERT INTO `csr` VALUES (26, 'mulingyh20180517', 'mulingyh20180517', '穆棱银行', '2018-05-17', 'D:/数据接收主目录/mulingyh20180517', '注销', '', '2020-01-03 15:32:07');
INSERT INTO `csr` VALUES (27, 'yh20180524', 'yh20180524', '永辉超市', '2018-05-24', 'D:/数据接收主目录/yh20180524', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (28, 'providusbank', 'providusbank', 'providusbank', '2018-06-01', 'D:/数据接收主目录/providusbank', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (29, 'scmy009', 'scmy009', '四川绵阳人力资源和社会保障局', '2018-05-23', 'D:/数据接收主目录/scmy009', '注销', '', '2020-01-03 15:32:13');
INSERT INTO `csr` VALUES (30, 'cdnongshang20180620', 'cdnongshang20180620', '成都农村商业银行', '2018-06-20', 'D:/数据接收主目录/cdnongshang20180620', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (31, '181500820180702', '181500820180702', '达州市商业银行', '2018-07-02', 'D:/数据接收主目录/181500820180702', '注销', '', '2020-10-16 11:08:49');
INSERT INTO `csr` VALUES (32, 'scsn20180808', 'scsn20180808', '四川遂宁银行', '2018-08-08', 'D:/数据接收主目录/scsn20180808', '注销', '', '2020-10-16 11:08:54');
INSERT INTO `csr` VALUES (33, 'myailian20181008', 'myailian20181008', '四川爱联科技有限公司', '2018-10-08', 'D:/数据接收主目录/myailian20181008', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (34, 'gzthcbh20181128', 'gzthcbh20181128', '广州天河城百货', '2018-11-28', 'D:/数据接收主目录/gzthcbh20181128', '正常', '', '2020-06-17 15:11:37');
INSERT INTO `csr` VALUES (35, 'xxt20181206', 'xxt20181206', '校芯通', '2018-12-06', 'D:/数据接收主目录/xxt', '注销', '', '2020-10-16 11:08:59');
INSERT INTO `csr` VALUES (36, 'xxt20181210', 'xxt20181210', '校芯通', '2018-12-11', 'D:/数据接收主目录/xxt', '注销', '', '2020-10-16 11:09:03');
INSERT INTO `csr` VALUES (37, 'xxt20181211', 'xxt20181211', '校芯通', '2018-12-11', 'D:/数据接收主目录/xxt', '注销', '', '2020-10-16 11:09:08');
INSERT INTO `csr` VALUES (38, '物理专线', 'tianfutongtest', '天府通', '2018-03-07', 'D:/tianfutongtest', '正常', '天府通测试专线', '2019-03-04 09:20:27');
INSERT INTO `csr` VALUES (39, 'ykh20190228', 'ykh20190228', '壹卡会', '2019-02-28', 'D:/数据接收主目录/ykh20190228', '正常', '', '2019-03-01 11:05:51');
INSERT INTO `csr` VALUES (40, 'hrzd20190402', 'hrzd20190402', '华润置地鞍山万象汇', '2019-04-02', 'D:/数据接收主目录/hrzd20190402', '注销', '', '2020-10-16 11:09:15');
INSERT INTO `csr` VALUES (41, 'dzsb20190613', 'dzsb20190613', '四川省达州市人力资源和社会保障局', '2019-06-13', 'D:/数据接收主目录/dzsb20190613', '注销', '', '2020-10-16 11:09:20');
INSERT INTO `csr` VALUES (42, 'njyh20191115', 'njyh20191115', '南京银行', '2019-11-15', 'D:/数据接收主目录/njyh20191115', '注销', '', '2020-10-16 11:09:25');
INSERT INTO `csr` VALUES (43, '无', 'sasData', 'SAS数据接收', '2019-11-18', 'D:/数据接收主目录/SAS', '正常', '', '2019-11-20 13:49:12');
INSERT INTO `csr` VALUES (44, '', 'backup', '日志备份', '2020-01-03', 'D:/数据接收日志/', '正常', '', '2020-06-05 09:26:19');
INSERT INTO `csr` VALUES (45, 'scdx20200407', 'scdx20200407', '四川电信', '2020-04-07', 'D:/数据接收主目录/scdx20200407', '正常', '', '2020-05-25 15:53:07');
INSERT INTO `csr` VALUES (46, 'snyc20200525', 'snyc20200525', '遂宁邮政储蓄银行', '2020-05-25', 'D:/数据接收主目录/snyc20200525', '正常', '', '2020-05-25 15:53:33');
INSERT INTO `csr` VALUES (47, 'bnbh20190614', 'bnbh20190614', '宝能百货零售有限公司', '2019-06-14', 'D:/数据接收主目录/bnbh20190614', '注销', '', '2020-10-16 11:09:34');
INSERT INTO `csr` VALUES (48, 'mdgj', 'mdgj', '缅甸公交', '2019-10-12', 'D:/数据接收主目录/mdgj', '注销', '', '2020-10-16 11:09:40');
INSERT INTO `csr` VALUES (49, 'lzyh20200525', 'lzyh20200525', '泸州银行', '2020-05-25', 'D:/数据接收主目录/lzyh20200525', '正常', '', '2020-06-05 09:37:08');
INSERT INTO `csr` VALUES (50, 'mdjk20200608', 'mdjk20200608', '迈德金卡', '2020-06-08', 'D:/数据接收主目录/mdjk20200608', '正常', '', '2020-06-11 08:49:39');
INSERT INTO `csr` VALUES (51, 'lzyc20200701', 'lzyc20200701', '泸州邮政储蓄银行', '2020-07-01', 'D:/数据接收主目录/lzyc20200701', '正常', '', '2020-07-01 10:52:14');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

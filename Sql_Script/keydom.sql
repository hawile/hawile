/*
 Navicat Premium Data Transfer

 Source Server         : Linux
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 192.168.11.11:3306
 Source Schema         : keydom

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 13/10/2020 13:59:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acc_num
-- ----------------------------
DROP TABLE IF EXISTS `acc_num`;
CREATE TABLE `acc_num` (
  `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `area` varchar(50) DEFAULT ' ' COMMENT '区域',
  `name` varchar(50) DEFAULT ' ' COMMENT '设备名称',
  `type` varchar(50) DEFAULT ' ' COMMENT '设备型号',
  `ip` varchar(255) DEFAULT ' ' COMMENT 'IP地址',
  `user` varchar(50) DEFAULT ' ' COMMENT '用户名',
  `password` varchar(50) DEFAULT ' ' COMMENT '密码',
  `remark` varchar(255) DEFAULT ' ' COMMENT '备注',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of acc_num
-- ----------------------------
BEGIN;
INSERT INTO `acc_num` VALUES (1, '生产中心', '防火墙', 'H3C SecPath F100-S-G', 'https://10.255.3.1:9998', 'administrator', 'Jksmart.112127', '', '2018-07-19 11:27:48');
INSERT INTO `acc_num` VALUES (2, '生产中心', '防火墙', 'H3C SecPath F100-S-G', 'http://10.255.3.1:9999', 'administrator', 'Jksmart.112127', '', '2018-07-19 11:27:48');
INSERT INTO `acc_num` VALUES (3, '生产中心', '防火墙', 'H3C SecPath F1000-E-SI', 'https://192.168.1.1:9998', 'administrator', 'Jksmart.112127', '', '2018-07-19 11:27:48');
INSERT INTO `acc_num` VALUES (4, '生产中心', '防火墙', 'H3C SecPath F1000-E-SI', 'http://192.168.1.1:9999', 'administrator', 'Jksmart.112127', '', '2018-07-19 11:27:48');
INSERT INTO `acc_num` VALUES (5, '生产中心', '入侵防御', 'H3C T1000-C', '', 'admin', 'Jksmart.112127', 'IDS/IPS', '2018-07-19 11:31:25');
INSERT INTO `acc_num` VALUES (6, ' 生产中心', ' LLiveupdate', ' Symantec', ' ', 'admin', ' JKsmart.112127', ' symantec更新服务器，双击桌面上的快捷方式即可打开管理界面', '2018-07-19 11:30:48');
INSERT INTO `acc_num` VALUES (7, '  生产中心', ' Sepm', '  Symantec', ' ', ' admin', '  JKsmart.112127', '  symantec更新服务器，双击桌面上的快捷方式即可打开管理界面', '2018-07-19 11:31:07');
INSERT INTO `acc_num` VALUES (8, '生产中心', '卫计委服务器', 'Lenovo 3650 M5', 'SSH://192.168.4.100:22', 'root', 'Jksmart.112127', 'DPC', '2018-07-24 09:20:36');
INSERT INTO `acc_num` VALUES (9, '生产中心', '卫计委服务器', 'Lenovo 3650 M5', 'SSH://192.168.4.100:22', 'dpc', 'dpc', 'DPC', '2018-07-24 09:20:41');
INSERT INTO `acc_num` VALUES (10, '生产中心', '所有服务器', '', '', 'keydom', '222222Aa', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (11, '生产中心', '所有服务器', '', '', 'zhanght', '222222Aa', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (12, '生产中心', '所有服务器', '', '', 'huangw', '666666Aa', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (13, '生产中心', '办公区电脑', '本地管理员', '', 'administrator', '222222Aa', '', '2018-07-19 11:31:44');
INSERT INTO `acc_num` VALUES (14, '生产中心', '办公域', '域管理员', '', 'administrator', '222222Aa', 'jingkingsmart.com', '2018-07-19 11:31:55');
INSERT INTO `acc_num` VALUES (15, '生产中心', '所有机台', '', '', 'keydom', '222222Aa', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (16, '生产中心', '所有机台', '', '', 'zhanght', '222222Aa', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (17, '生产中心', '所有机台', '', '', 'huangw', '666666Aa', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (18, '生产中心', '生产网交换机', 'H3C S2052TP-EA(SI)', '', 'jgdz', 'jgdz@123,./123', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (19, '生产中心', '防毒墙', '网康', '', 'admin', 'jgdz@123,./123', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (20, '生产中心', '网闸', '北京安盟', '', 'superman', 'talent', '必须通过管理口用专用客户端登陆', '2018-07-19 11:32:02');
INSERT INTO `acc_num` VALUES (21, '生产中心', 'Uker网防火墙', 'H3C SecPath F1000-E-SI', 'https://171.221.205.63:10080/', 'admin', 'Temp@win2013', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (22, '生产中心', 'Uker网防火墙', 'H3C SecPath F1000-E-SI', 'https://171.221.205.67:10080/', 'admin', 'Temp@win2013', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (23, '生产中心', '办公网路由器', 'H3C ER3260', 'http://10.10.10.1', 'admin', 'Temp@win2013', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (24, '生产中心', '办公网控制网关', '网康NI3000', 'https://10.10.10.2', 'ns25000', 'jksmart.80141120', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (25, '生产中心', '办公网核心交换机', 'H3C S5500', 'http://10.10.10.3', 'jinggong', 'h3c', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (26, '生产中心', '360网管版', '360管理地址：', 'http://192.168.4.248:8800/', 'admin', 'jk82002999', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (27, '生产中心', '360网管版', '360下载地址：', 'http://192.168.4.248:8080/', 'admin', 'jk82002999', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (28, '生产中心', '办公无线网', '前台keydom-1', '', 'admin', 'admin', '', '2018-07-19 11:32:10');
INSERT INTO `acc_num` VALUES (29, '生产中心', '办公无线网', '向老师办公室keydom-2', '', 'admin', 'admin', '', '2018-07-19 11:32:17');
INSERT INTO `acc_num` VALUES (30, '生产中心', '办公无线网', '综合办公室keydom-3', '', 'admin', 'admin', '', '2018-07-19 11:32:30');
INSERT INTO `acc_num` VALUES (31, '生产中心', '办公无线网', '逻辑安全办公室keydom-1L', '', 'admin', 'admin', '', '2018-07-19 11:32:55');
INSERT INTO `acc_num` VALUES (32, '生产中心', '生产中心文件系统', 'safeshare', '', 'admin', '111111Aa', '所有的制度文件，体系文件', '2018-07-19 11:33:00');
INSERT INTO `acc_num` VALUES (33, '生产中心', '办公电脑', '', '', 'jingkingsmart\\luoj', '222222Aa', '', '2018-07-19 11:27:22');
INSERT INTO `acc_num` VALUES (34, '生产中心', '备份服务器', 'DELL', '', 'administrator', 'Aa123456', '虚机备份', '2018-07-19 11:33:08');
INSERT INTO `acc_num` VALUES (35, '生产中心', '备份客户端', 'DELL', '', 'dl4300', 'abc@123', '备份服务客户端', '2018-07-19 11:33:15');
INSERT INTO `acc_num` VALUES (36, '总部', '精工智能OA', '', 'http://171.221.205.63:5080/eoms_base/account/login.do', 'guolg', 'g@111111', '正在使用', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (37, '总部', '精工智能OA', '', 'http://171.221.205.63:5080/eoms_base/account/login.do', 'admin', '8ik,(OL>w6106', '正在使用', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (38, '总部', '精工学网', '', 'http://jingking.21tb.com/login/login.init.do?returnUrl=http%3A%2F%2Fjingking.21tb.com%2Fos%2Fhtml%2Findex.init.do&elnScreen=1280*800elnScreen', '郭林刚', '000000', '', '2018-07-19 11:55:11');
INSERT INTO `acc_num` VALUES (39, '总部', '精工学网', '', 'http://jingking.21tb.com/login/login.init.do?returnUrl=http%3A%2F%2Fjingking.21tb.com%2Fos%2Fhtml%2Findex.init.do&elnScreen=1280*800elnScreen', '王川', 'wang44110', '', '2018-07-19 11:55:11');
INSERT INTO `acc_num` VALUES (40, '总部', '邮箱', '', 'http://mail.95omno.com/', 'guolg@95omno.com', 'GUOlg@123602', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (41, '总部', '邮箱', '', 'http://mail.jingkingsmart.com/', 'guolg@jingkingsmart.com', 'GUOlg@123602', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (42, '总部', '防火墙', 'H3C', '', 'admin ', 'jk82002999', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (43, '总部', '杀毒软件', 'Symantec', '', 'admin ', 'Jk201701', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (44, '总部', '网康上网行为管理', '', 'https://192.168.5.3/user/main/', 'administrator', '8ik,(OL>0p;/', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (45, '总部', '通达OA', '', 'http://192.168.1.200/', 'admin', 'Temp@win2015', '未上线', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (46, '总部', '通达OA', '', 'http://192.168.1.200/', '角色与权限管理', '8ik,(OL>0p;/', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (47, '总部', '监控', '', '', 'admin', '', '23', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (48, '总部', '监控', '', '', 'admin', '888888', '22', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (49, '总部', '交换机', 'H3C WA1208E-GP-H20', '', 'admin', 'jk82002999', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (50, '总部', '防火墙网页管理口', 'U200-CS', 'http://221.237.156.124:10000/wcn/frame/.x', 'admin', 'Temp@win2015', '', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (51, '总部', '防火墙管理口g0/0', 'U200-CS', '192.168.0.1', 'admin', '82002999', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (52, '总部', '防火墙外接口g0/1', 'U201-CS', '192.168.5.1', 'admin', '82002999', '接S5500交换机', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (53, '总部', '交换机', 'S5500', '192.168.1.1(1-4和13-23端口属于192.168.1.0网段,网关:192.168.1.1   5-8端口属于192.168.2.0网段,网关:192.168.2.1    9-12端口属于192.168.3.0网段,网关:192.168.3.1 )', 'JKCD1', '82002999', '192.168.5.2', '2018-07-19 11:55:11');
INSERT INTO `acc_num` VALUES (54, '总部', '公司wifi', '', '', 'JKCD1', '82002999', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (55, '总部', '公司wifi', '', '', 'JKCD2', '82002999', '储物间', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (56, '总部', '公司wifi', '', '', 'JKCD3', '82002999', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (57, '总部', '公司wifi', '', '', 'JKCDCW', '12345679', '财务室', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (58, '总部', '公司wifi', '', '', 'JKCD-huiyishi', '12345679', '会议室专用', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (59, '总部', '公司wifi', '', '192.168.9.1', 'admin', 'jk.12345', 'D-LINK', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (60, '总部', '公司wifi', '', '', 'JKCD5', '82002999', '数网中心', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (61, '总部', '公司wifi', '', 'seapai 300M无线路由器', 'JKCD7', 'jk123456', '朱总办公室', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (62, '总部', '公司wifi', '', '192.168.9.1', 'admin', 'jk.12345', '路由器账号', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (63, '总部', '公司wifi', '', '', 'FAST', 'root@123', '技术部', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (64, '总部', 'fuji xerox打印机', '', '192.168.1.250（租用）', '11111', 'x-admin', '黄13880979849', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (65, '总部', '通达OA服务器', '', '192.168.1.200(6899)', 'admin', '8ik,(OL>0p;/', 'OA和杀毒软件', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (66, '总部', '通达OA服务器', '', '192.168.1.200(6899)', 'administrator', '1qaz@WSX3edc', 'OA和杀毒软件', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (67, '总部', 'SVN服务器', '', '192.168.1.180(6899)', 'admin', '8ik,(OL>0p;/', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (68, '总部', 'SVN服务器', '', 'https://192.168.1.180/svn/jkbackup/战略市场部', 'administrator', '1qaz@WSX3edc', '', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (69, '总部', 'SVN技术部服务器', '', '192.168.1.104(6899)', 'admin', '8ik,(OL>0p;/', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (70, '总部', 'SVN技术部服务器', '', 'https://192.168.1.104:8443/svn/work_doc/信息安全部', 'administrator', '1qaz@WSX3edc', '', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (71, '总部', 'redmine', '', 'http://221.237.156.124:8083/redmine/', 'admin', 'jk=!@#$%^', '', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (72, '总部', 'qq企业邮箱', '腾讯企业邮箱', 'http://exmail.qq.com/login', 'jingkingsmart ', '8ik,(OL>w6106', '刘工:15168289072  qq:2923735312', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (73, '总部', 'qq企业邮箱', '腾讯企业邮箱', 'http://exmail.qq.com/login', '95omno', '8ik,(OL>jk6106', '刘工:15168289072  qq:2923735312', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (74, '总部', 'U8', '用友服务器', '192.168.1.254', 'administrator', 'Liu7149', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (75, '总部', '今目标', '今目标', 'https://web.jingoal.com/index.html?uid=7031052&spm=d&cid=1841454&url=MGT_MA#workbench~type=timeline', '17708070013', '17708070013', '', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (76, '总部', '', '今目标', '手机登录管网m.jingoal.com', '', '', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (77, '总部', '今目标', '今目标', 'https://web.jingoal.com/index.html?uid=7031052&spm=d&cid=1841454&url=MGT_MA#workbench~type=timeline', ' guolg@5966797', 'g@111111', '', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (78, '总部', '程控交换机', '中联通信设备有限公司', '菜工 13980748009   宋工 18980010663  13980005650', 'DK1208', 'DDKMB1237005', '', '2018-07-19 11:51:33');
INSERT INTO `acc_num` VALUES (79, '总部', '域管理员', 'jingkingsmart.com', '', 'administrator', '2wsx#EDC4rfv', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (80, '总部', '官网服务器', '171.221.205.63 22/1022', '启动官网：httpd -k start', 'root/admin', 'jksmart.com', '启动命令/etc/init.d/httpd', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (81, '总部', '360企业管理软件', '', '', 'admin', 'admin', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (82, '总部', '公司域名', '', 'http://www.nwabc.cn/', 'keydom.cn', 'Xm3283666~', '厦门富士达网络 15960240255', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (83, '总部', '公司域名', '', 'http://www.nwabc.cn/', 'keydom.com.cn', 'xmfsd666~', '厦门富士达网络 15960240255', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (84, '总部', '域名', '工厂VPN专线', 'http://domain.cnolnic.com', 'keydomvpn.com', 'xm3283666', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (85, '总部', '公司uker平台防火墙', '', 'https://171.221.205.63:10080', 'admin', 'Temp@win2013', '', '2018-07-19 11:48:55');
INSERT INTO `acc_num` VALUES (86, '总部', '阿里云会员', '', 'https://ecs-buy.aliyun.com/#/prepay?data=eyJjb21wb25lbnRzIjp7InZtX3JlZ2lvbl9ubyI6ImNuLXNoZW56aGVuLXN0My1hMDEifX0%3D', 'keydom3', 'Jk@123', '序列号:210235A0F7H152000039', '2018-07-19 11:55:11');
INSERT INTO `acc_num` VALUES (87, '总部', 'ECS云服务器', '', '119.23.37.97', 'administrator', 'Jk@12345', '1核2G、1M带宽、40G系统盘、10G数据盘、windows server r2 64位企业版、深圳服务点', '2018-08-21 10:13:55');
INSERT INTO `acc_num` VALUES (88, '服务器', '63服务器', ' ', 'http://171.221.205.63:1022', 'root', 'jksmart.com', ' ', '2018-07-19 11:59:59');
INSERT INTO `acc_num` VALUES (89, '服务器', '精工OA系统服务器', ' ', 'http://171.221.205.63:22', 'root', 'jksmart.com', ' ', '2018-07-19 11:59:59');
INSERT INTO `acc_num` VALUES (90, '服务器', '67服务器', ' ', 'http://171.221.205.63:34', 'root', 'jk@ilife&ENRISING_2015', ' ', '2018-07-19 11:59:59');
INSERT INTO `acc_num` VALUES (91, '服务器', '应用服务器', ' ', 'http://171.221.205.63:2222', 'root', 'jk@ilife&ENRISING_2016', ' ', '2018-07-19 12:00:00');
INSERT INTO `acc_num` VALUES (92, '服务器', 'TSM服务器', ' ', 'http://171.221.205.63:2222', 'tsm', 'tsm@jk()_+2015', ' ', '2018-07-19 12:00:00');
INSERT INTO `acc_num` VALUES (93, '服务器', 'KMS服务器', ' ', 'http://171.221.205.63:33', 'tsm', 'tsm', ' ', '2018-07-19 12:00:00');
INSERT INTO `acc_num` VALUES (94, '生产中心', '卫计委服务器', 'DPC客户端', '192.168.4.100:7203', 'xiongl', 'xiongl', '普通用户', '2018-07-24 09:18:13');
INSERT INTO `acc_num` VALUES (95, '生产中心', '卫计委服务器', 'DPC客户端', '192.168.4.100:7203', 'wenzy', 'wenzy', '超级管理员用户', '2018-08-22 11:25:40');
COMMIT;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(3) DEFAULT '0',
  `group` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fj_number` varchar(255) DEFAULT '0',
  `number` varchar(255) DEFAULT '0',
  `num` varchar(255) DEFAULT '0',
  `channel` varchar(255) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `job_num` varchar(255) DEFAULT NULL,
  `id_num` varchar(255) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK755wl22vb0vvy3xjpc04t8spe` (`job_id`) USING BTREE,
  CONSTRAINT `FK755wl22vb0vvy3xjpc04t8spe` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` VALUES (1, 1, '总部', '总部总机', '——', '028-82002999', '', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (2, 1, '生产中心', '生产中心总机', '——', '028-85803777，028-61918323', '8000', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (3, 1, '生产中心', '监控室', '8045', '——', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (4, 5, '总经办', '陈为明', '8029', '13971752835', '6501', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (5, 5, '总经办', '杜强林', '8043', '18983629300', '6515', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (6, 5, '总经办', '向老师', '8022', '18981923727', '6516', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (7, 6, '销售部', '谢辉', '8008', '13880840910', '6808', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (8, 7, '销售部', '邓娜', '8008', '13678295251', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (9, 8, '销售部', '宗小林', '8008', '18008201947', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (10, 9, '销售部', '蔡懿', '8008', '18982707195', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (11, 10, '客户服务部', '李朝霞', '8047', '13320779665', '6538', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (12, 11, '客户服务部', '周继萱', '8047', '18227641836', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (13, 12, '客户服务部', '何维', '8008', '13882107710', '6661', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (14, 13, '客户服务部', '张锦文', '8024', '15928060670', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (15, 14, '质量安全部', '刘劲松', '8016', '18980072233', '6699', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (16, 15, '物理安全组', '郭明', '8000/8045', '15828330286', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (17, 16, '物理安全组', '刘龙华', '8000/8045', '18349167369', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (18, 16, '物理安全组', '王道安', '8000/8045', '13108106113', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (19, 17, '逻辑安全组', '王建勋', '8016', '18080448813', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (20, 18, '逻辑安全组', '黄伟', '8016', '19940801701', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (21, 19, '质量部', '郑培丽', '8011', '15982844995', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (22, 20, '质量部', '张莎莎', '8011', '13438482460', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (23, 21, '质量部', '何书海', '8001', '13551825786', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (24, 22, '人力行政部', '秦川', '8019', '18011533592，13730630229', '6511', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (25, 23, '人力行政部', '孙玉芬', '8019', '18780505475', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (26, 24, '后勤部', '肖辉', '8025', '18981996508', '6507', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (27, 25, '后勤部', '徐春兰', '8024', '13219070377', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (28, 26, '后勤部', '唐木林', '——', '13890338024', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (29, 27, '后勤部', '赵洪元', '——', '13458548646', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (30, 28, '仓储管理室', '屈红波', '——', '13408565693', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (31, 28, '仓储管理室', '杨俊森', '仓库8003，金库8044', '15928065659', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (32, 29, '采购部', '秦川', '8033', '18011533592', '6511', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (33, 30, '财务部', '牟挪雅', '8040', '18981890122', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (34, 31, '生产计划部', '唐联果', '8042', '18927462885', '6508', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (35, 32, '生产计划部', '胡廷军', '8027', '19949484833', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (36, 33, '设备管理部', '彭淼', '8007', '18571494440', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (37, 34, '设备管理部', '杨彦青', '——', '13666218525', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (38, 35, '工艺技术部', '刘玄', '8013', '18672340170', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (39, 36, '工艺技术部', '王涛', '8013', '13438973451', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (40, 37, '工艺技术部', '龚宇东', '8010', '13452067942', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (41, 38, '数据室', '熊磊', '8039', '18980597964', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (42, 39, '数据室', '陈小渝', '8039', '18328568535', '6526', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (43, 39, '数据室', '余维', '8039', '13658073479', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (44, 39, '数据室', '赵冯蓉', '8015——8018', '18981740558', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (45, 40, '卡基生产部', '彭淼', '8007', '18571494440', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (46, 41, '印刷车间', '伍晶晶', '8004', '15224016603', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (47, 42, '印刷车间', '周川棱', '8004', '13551375534', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (48, 43, '印刷车间', '陈柏铨', '8004', '15181798193', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (49, 43, '印刷车间', '张龙', '8004', '17628663536', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (50, 43, '印刷车间', '高鹏', '8004', '18841085854', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (51, 43, '数码印刷', '郭简华', '8020', '18280016204', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (52, 44, '制卡车间', '向国林', '8007', '15182912702', '——', '0', NULL, '2019-04-29 09:31:37', NULL, NULL, NULL);
INSERT INTO `address` VALUES (53, 43, '制卡车间', '王影', '8007', '15882062484', '——', '0', NULL, '2019-04-29 09:37:21', NULL, NULL, NULL);
INSERT INTO `address` VALUES (54, 43, '制卡车间', '张蓉', '8007', '13880285416', '——', '0', NULL, '2019-04-29 09:37:23', NULL, NULL, NULL);
INSERT INTO `address` VALUES (55, 43, '制卡车间', '李群', '8007', '18508286097', '——', '0', NULL, '2019-04-29 09:37:23', NULL, NULL, NULL);
INSERT INTO `address` VALUES (56, 43, '制卡车间', '游薛', '8007', '13550284942', '——', '0', NULL, '2019-04-29 09:37:23', NULL, NULL, NULL);
INSERT INTO `address` VALUES (57, 43, '制卡车间', '姚红', '8007', '13980499306', '——', '0', NULL, '2019-04-29 09:37:24', NULL, NULL, NULL);
INSERT INTO `address` VALUES (58, 43, '制卡车间', '杜昌明', '8007', '13764038618', '——', '0', NULL, '2019-04-29 09:37:25', NULL, NULL, NULL);
INSERT INTO `address` VALUES (59, 43, '制卡车间', '郑霁峰', '8007', '18141365387', '——', '0', NULL, '2019-04-29 09:37:25', NULL, NULL, NULL);
INSERT INTO `address` VALUES (60, 43, '制卡车间', '杨小川', '8007', '15820239488', '——', '0', NULL, '2019-04-29 09:37:26', NULL, NULL, NULL);
INSERT INTO `address` VALUES (61, 43, '制卡车间', '何成庆', '8007', '18382002830', '——', '0', NULL, '2019-04-29 09:37:26', NULL, NULL, NULL);
INSERT INTO `address` VALUES (62, 43, '制卡车间', '邱涛', '8007', '15208279738', '——', '0', NULL, '2019-04-29 09:37:28', NULL, NULL, NULL);
INSERT INTO `address` VALUES (63, 43, '制卡车间', '邱玉琼', '8007', '18284969659', '——', '0', NULL, '2019-04-29 09:37:45', NULL, NULL, NULL);
INSERT INTO `address` VALUES (64, 45, '检验车间', '何荣珍', '8006', '15881168380', '——', '0', '', '2019-04-29 10:03:33', '', '', NULL);
INSERT INTO `address` VALUES (65, 45, '检验车间', '胡明琴', '8006', '18708184062', '——', '0', '', '2019-04-29 10:03:43', '', '', NULL);
INSERT INTO `address` VALUES (66, 45, '检验车间', '卢惠', '8006', '15102869856', '——', '0', '', '2019-04-29 10:03:52', '', '', NULL);
INSERT INTO `address` VALUES (67, 46, '封装车间', '黎青红', '8009', '15928729706', '——', '0', NULL, '2019-04-29 09:38:11', NULL, NULL, NULL);
INSERT INTO `address` VALUES (68, 47, '封装车间', '郑洪龙', '8009', '18282851038', '——', '0', NULL, '2019-04-29 09:38:13', NULL, NULL, NULL);
INSERT INTO `address` VALUES (69, 47, '封装车间', '唐艳', '8009', '18708207119', '——', '0', NULL, '2019-04-29 09:38:13', NULL, NULL, NULL);
INSERT INTO `address` VALUES (70, 47, '封装车间', '冷霞', '8009', '15760608200', '——', '0', NULL, '2019-04-29 09:38:14', NULL, NULL, NULL);
INSERT INTO `address` VALUES (71, 47, '封装车间', '孙守彬', '8009', '13566610279', '——', '0', NULL, '2019-04-29 09:38:15', NULL, NULL, NULL);
INSERT INTO `address` VALUES (72, 48, '个人化车间', '何杨', '8017', '15884485640', '——', '0', NULL, '2019-04-29 09:38:16', NULL, NULL, NULL);
INSERT INTO `address` VALUES (73, 49, '个人化车间', '邓晖', '8017', '18990796409', '——', '0', NULL, '2019-04-29 09:38:19', NULL, NULL, NULL);
INSERT INTO `address` VALUES (74, 50, '个人化车间', '周荣春', '8017', '13882114959', '——', '0', NULL, '2019-04-29 09:38:21', NULL, NULL, NULL);
INSERT INTO `address` VALUES (75, 50, '个人化车间', '崇波', '8017', '18292558854', '——', '0', NULL, '2019-04-29 09:38:22', NULL, NULL, NULL);
INSERT INTO `address` VALUES (76, 50, '个人化车间', '徐纳', '8017', '18140017275', '——', '0', NULL, '2019-04-29 09:38:22', NULL, NULL, NULL);
INSERT INTO `address` VALUES (77, 50, '个人化车间', '李丹', '8017', '13699475047', '——', '0', NULL, '2019-04-29 09:38:23', NULL, NULL, NULL);
INSERT INTO `address` VALUES (78, 50, '个人化车间', '柯玲', '8017', '18982230866', '——', '0', NULL, '2019-04-29 09:38:23', NULL, NULL, NULL);
INSERT INTO `address` VALUES (79, 50, '个人化车间', '郭仕华', '8017', '18048746469', '——', '0', NULL, '2019-04-29 09:38:24', NULL, NULL, NULL);
INSERT INTO `address` VALUES (80, 50, '个人化车间', '欧华军', '8017', '18123290510', '——', '0', NULL, '2019-04-29 09:38:25', NULL, NULL, NULL);
INSERT INTO `address` VALUES (81, 50, '个人化车间', '郑倩', '8017', '18180985406', '——', '0', NULL, '2019-04-29 09:38:29', NULL, NULL, NULL);
INSERT INTO `address` VALUES (82, 50, '个人化车间', '向琳', '8017', '18328082410', '——', '0', NULL, '2019-04-29 09:38:30', NULL, NULL, NULL);
INSERT INTO `address` VALUES (83, 51, '包装车间', '何杨', '——', '15884485640', '——', '0', NULL, '2019-04-29 09:38:32', NULL, NULL, NULL);
INSERT INTO `address` VALUES (84, 50, '包装车间', '肖凯', '——', '18282551176', '——', '0', NULL, '2019-04-29 09:38:35', NULL, NULL, NULL);
INSERT INTO `address` VALUES (85, 50, '包装车间', '李艳平', '——', '15378121840', '——', '0', NULL, '2019-04-29 09:38:35', NULL, NULL, NULL);
INSERT INTO `address` VALUES (86, 50, '包装车间', '唐玉春', '——', '17313795866', '——', '0', NULL, '2019-04-29 09:38:36', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for atm
-- ----------------------------
DROP TABLE IF EXISTS `atm`;
CREATE TABLE `atm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `name` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `number` int(10) NOT NULL COMMENT '订单数量',
  `total` double(10,2) DEFAULT '0.00' COMMENT '订单总额',
  `total2` double(10,2) DEFAULT '0.00',
  `remark` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `state` varchar(255) DEFAULT NULL COMMENT '订单状态',
  `factory_total` double(10,2) DEFAULT '0.00' COMMENT '工厂总额',
  `factory_number` int(11) DEFAULT '0',
  `factory_profit` double(10,2) DEFAULT '0.00',
  `headoffice_total` double(10,2) DEFAULT '0.00' COMMENT '总部总额',
  `headoffice_number` int(11) DEFAULT '0',
  `headoffice_profit` double(10,2) DEFAULT '0.00',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of atm
-- ----------------------------
BEGIN;
INSERT INTO `atm` VALUES (1, '2019-08-28', '进货单', 525, 1911.00, 1482.30, '单号：No.0145090', '进货', 1911.00, 525, 428.70, 0.00, 0, 0.00, '2019-09-05 11:17:45');
INSERT INTO `atm` VALUES (2, '2019-08-30', '上货单', 264, 930.00, 712.68, '【工厂】上货到自动售货柜', '上货', 930.00, 264, 217.32, 0.00, 0, 0.00, '2019-09-05 11:20:45');
INSERT INTO `atm` VALUES (3, '2019-08-31', '2019年8月销售报表', 457, 1662.00, 1291.85, '', '统计', 922.50, 264, 217.40, 739.50, 193, 152.75, '2019-09-05 11:48:37');
INSERT INTO `atm` VALUES (4, '2019-09-09', '上货单', 40, 160.00, 126.80, '【工厂】上货到自动售货柜', '上货', 160.00, 40, 33.20, 0.00, 0, 0.00, '2019-09-09 10:42:22');
INSERT INTO `atm` VALUES (5, '2019-09-11', '上货单', 45, 157.50, 124.05, '【工厂】上货到自动售货柜', '上货', 157.50, 45, 33.45, 0.00, 0, 0.00, '2019-09-11 11:05:29');
INSERT INTO `atm` VALUES (6, '2019-09-11', '调货单', 168, 631.50, 493.41, '从【工厂】调货到【总部】', '调货', 0.00, 0, 0.00, 631.50, 168, 138.09, '2019-09-11 11:06:28');
INSERT INTO `atm` VALUES (7, '2019-09-30', '2019年9月销售报表', 362, 1324.00, 1029.86, '', '统计', 847.00, 233, 191.05, 477.00, 129, 103.09, '2019-10-14 17:14:22');
INSERT INTO `atm` VALUES (9, '2019-11-05', '进货单', 372, 1362.00, 1061.04, '单号：No.0677211', '进货', 1362.00, 372, 300.96, 0.00, 0, 0.00, '2019-11-05 16:21:01');
INSERT INTO `atm` VALUES (10, '2019-11-05', '上货单', 228, 841.50, 659.61, '【工厂】上货到自动售货柜', '上货', 841.50, 228, 181.89, 0.00, 0, 0.00, '2019-11-05 16:22:32');
INSERT INTO `atm` VALUES (11, '2019-11-01', '2019年10月销售报表', 128, 439.00, 336.01, '', '统计', 250.50, 76, 61.03, 188.50, 52, 41.96, '2019-11-05 16:31:05');
INSERT INTO `atm` VALUES (12, '2019-11-28', '上货单', 36, 144.00, 114.12, '【工厂】上货到自动售货柜', '上货', 144.00, 36, 29.88, 0.00, 0, 0.00, '2019-11-28 08:46:34');
INSERT INTO `atm` VALUES (13, '2019-12-01', '2019年11月销售报表', 140, 532.50, 419.00, '', '统计', 453.00, 117, 93.31, 79.50, 23, 20.19, '2020-02-28 16:21:53');
INSERT INTO `atm` VALUES (14, '2019-12-31', '2019年12月销售报表', 172, 624.50, 481.49, '', '统计', 418.00, 113, 91.05, 206.50, 59, 51.96, '2020-02-28 16:27:27');
INSERT INTO `atm` VALUES (15, '2020-01-31', '2020年1月销售报表', 23, 84.50, 65.65, '', '统计', 37.50, 10, 7.88, 47.00, 13, 10.97, '2020-02-28 16:32:32');
INSERT INTO `atm` VALUES (16, '2020-02-29', '2020年2月销售报表', 0, 0.00, 0.00, '', '统计', 0.00, 0, 0.00, 0.00, 0, 0.00, '2020-05-13 16:00:38');
INSERT INTO `atm` VALUES (17, '2020-03-31', '2020年3月销售报表', 0, 0.00, 0.00, '', '统计', 0.00, 0, 0.00, 0.00, 0, 0.00, '2020-05-13 16:00:59');
INSERT INTO `atm` VALUES (18, '2020-04-30', '2020年4月销售报表', 11, 36.00, 26.57, '', '统计', 0.00, 0, 0.00, 36.00, 11, 9.43, '2020-05-13 16:02:11');
INSERT INTO `atm` VALUES (19, '2020-07-03', '进货单', 180, 663.00, 516.60, '', '进货', 663.00, 180, 146.40, 0.00, 0, 0.00, '2020-07-06 15:41:53');
INSERT INTO `atm` VALUES (20, '2020-09-14', '2020年7-9月销售报表', 276, 724.50, 562.23, '', '统计', 699.00, 192, 156.36, 25.50, 84, 5.91, '2020-09-14 16:58:15');
COMMIT;

-- ----------------------------
-- Table structure for atm_goods
-- ----------------------------
DROP TABLE IF EXISTS `atm_goods`;
CREATE TABLE `atm_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT '' COMMENT '商品名称',
  `price` double(10,2) DEFAULT NULL COMMENT '商品单价',
  `price2` double(10,2) DEFAULT '0.00',
  `specs` varchar(255) DEFAULT '' COMMENT '商品规格',
  `pcs` varchar(255) DEFAULT '' COMMENT '商品单位',
  `number` int(10) DEFAULT NULL COMMENT '商品数量',
  `total` double(10,2) DEFAULT NULL COMMENT '商品总额',
  `total2` double(10,2) DEFAULT '0.00',
  `position` varchar(255) DEFAULT '' COMMENT '商品位置',
  `remark` varchar(255) DEFAULT '' COMMENT '商品备注',
  `order_id` int(10) NOT NULL COMMENT '订单ID',
  PRIMARY KEY (`id`),
  KEY `FK1297xvmu53l480k0svaccmdwd` (`order_id`),
  CONSTRAINT `FK1297xvmu53l480k0svaccmdwd` FOREIGN KEY (`order_id`) REFERENCES `atm` (`id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `atm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of atm_goods
-- ----------------------------
BEGIN;
INSERT INTO `atm_goods` VALUES (1, '可口可乐', 3.00, 2.17, '500ml', '瓶', 48, 144.00, 104.16, '工厂', '无', 1);
INSERT INTO `atm_goods` VALUES (2, '百事可乐', 3.00, 2.17, '600ml', '瓶', 48, 144.00, 104.16, '工厂', '无', 1);
INSERT INTO `atm_goods` VALUES (3, '方便面', 4.00, 3.17, '106g', '桶', 96, 384.00, 304.32, '工厂', '无', 1);
INSERT INTO `atm_goods` VALUES (4, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 90, 270.00, 198.00, '工厂', '无', 1);
INSERT INTO `atm_goods` VALUES (5, '营养快线', 4.00, 3.00, '450g', '瓶', 45, 180.00, 135.00, '工厂', '无', 1);
INSERT INTO `atm_goods` VALUES (6, '脉动', 4.00, 3.07, '600ml', '瓶', 60, 240.00, 184.20, '工厂', '无', 1);
INSERT INTO `atm_goods` VALUES (7, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 90, 405.00, 348.30, '工厂', '无', 1);
INSERT INTO `atm_goods` VALUES (8, '雪碧', 3.00, 2.17, '500ml', '瓶', 48, 144.00, 104.16, '工厂', '无', 1);
INSERT INTO `atm_goods` VALUES (9, '百事可乐', 3.00, 2.17, '600ml', '瓶', 48, 144.00, 104.16, '工厂', '无', 2);
INSERT INTO `atm_goods` VALUES (10, '方便面', 4.00, 3.17, '106g', '桶', 48, 192.00, 152.16, '工厂', '无', 2);
INSERT INTO `atm_goods` VALUES (11, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 45, 135.00, 99.00, '工厂', '无', 2);
INSERT INTO `atm_goods` VALUES (12, '营养快线', 4.00, 3.00, '450g', '瓶', 15, 60.00, 45.00, '工厂', '无', 2);
INSERT INTO `atm_goods` VALUES (13, '脉动', 4.00, 3.07, '600ml', '瓶', 30, 120.00, 92.10, '工厂', '无', 2);
INSERT INTO `atm_goods` VALUES (14, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 30, 135.00, 116.10, '工厂', '无', 2);
INSERT INTO `atm_goods` VALUES (15, '雪碧', 3.00, 2.17, '500ml', '瓶', 48, 144.00, 104.16, '工厂', '无', 2);
INSERT INTO `atm_goods` VALUES (16, '雪碧', 3.00, 2.17, '500ml', '瓶', 7, 21.00, 15.19, '总部', '无', 3);
INSERT INTO `atm_goods` VALUES (17, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 27, 81.00, 59.40, '总部', '无', 3);
INSERT INTO `atm_goods` VALUES (18, '营养快线', 4.00, 3.00, '450g', '瓶', 21, 84.00, 63.00, '总部', '无', 3);
INSERT INTO `atm_goods` VALUES (19, '脉动', 4.00, 3.07, '600ml', '瓶', 36, 144.00, 110.52, '总部', '无', 3);
INSERT INTO `atm_goods` VALUES (20, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 69, 310.50, 267.03, '总部', '无', 3);
INSERT INTO `atm_goods` VALUES (21, '可口可乐', 3.00, 2.17, '500ml', '瓶', 33, 99.00, 71.61, '总部', '无', 3);
INSERT INTO `atm_goods` VALUES (22, '可口可乐', 3.00, 2.17, '500ml', '瓶', 23, 69.00, 49.91, '工厂', '无', 3);
INSERT INTO `atm_goods` VALUES (23, '百事可乐', 3.00, 2.17, '600ml', '瓶', 40, 120.00, 86.80, '工厂', '无', 3);
INSERT INTO `atm_goods` VALUES (24, '方便面', 4.00, 3.17, '106g', '桶', 39, 156.00, 123.63, '工厂', '无', 3);
INSERT INTO `atm_goods` VALUES (25, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 45, 135.00, 99.00, '工厂', '无', 3);
INSERT INTO `atm_goods` VALUES (26, '营养快线', 4.00, 3.00, '450g', '瓶', 9, 36.00, 27.00, '工厂', '无', 3);
INSERT INTO `atm_goods` VALUES (27, '脉动', 4.00, 3.07, '600ml', '瓶', 39, 156.00, 119.73, '工厂', '无', 3);
INSERT INTO `atm_goods` VALUES (28, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 29, 130.50, 112.23, '工厂', '无', 3);
INSERT INTO `atm_goods` VALUES (29, '雪碧', 3.00, 2.17, '500ml', '瓶', 40, 120.00, 86.80, '工厂', '无', 3);
INSERT INTO `atm_goods` VALUES (30, '方便面', 4.00, 3.17, '106g', '桶', 40, 160.00, 126.80, '工厂', '无', 4);
INSERT INTO `atm_goods` VALUES (31, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 30, 90.00, 66.00, '工厂', '无', 5);
INSERT INTO `atm_goods` VALUES (32, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 15, 67.50, 58.05, '工厂', '无', 5);
INSERT INTO `atm_goods` VALUES (33, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 15, 45.00, 33.00, '总部', '无', 6);
INSERT INTO `atm_goods` VALUES (34, '营养快线', 4.00, 3.00, '450g', '瓶', 30, 120.00, 90.00, '总部', '无', 6);
INSERT INTO `atm_goods` VALUES (35, '脉动', 4.00, 3.07, '600ml', '瓶', 30, 120.00, 92.10, '总部', '无', 6);
INSERT INTO `atm_goods` VALUES (36, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 45, 202.50, 174.15, '总部', '无', 6);
INSERT INTO `atm_goods` VALUES (37, '可口可乐', 3.00, 2.17, '500ml', '瓶', 48, 144.00, 104.16, '总部', '无', 6);
INSERT INTO `atm_goods` VALUES (38, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 29, 87.00, 63.80, '总部', '无', 7);
INSERT INTO `atm_goods` VALUES (39, '营养快线', 4.00, 3.00, '450g', '瓶', 7, 28.00, 21.00, '总部', '无', 7);
INSERT INTO `atm_goods` VALUES (40, '脉动', 4.00, 3.07, '600ml', '瓶', 29, 116.00, 89.03, '总部', '无', 7);
INSERT INTO `atm_goods` VALUES (41, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 36, 162.00, 139.32, '总部', '无', 7);
INSERT INTO `atm_goods` VALUES (42, '可口可乐', 3.00, 2.17, '500ml', '瓶', 28, 84.00, 60.76, '总部', '无', 7);
INSERT INTO `atm_goods` VALUES (43, '可口可乐', 3.00, 2.17, '500ml', '瓶', 11, 33.00, 23.87, '工厂', '无', 7);
INSERT INTO `atm_goods` VALUES (44, '百事可乐', 3.00, 2.17, '600ml', '瓶', 33, 99.00, 71.61, '工厂', '无', 7);
INSERT INTO `atm_goods` VALUES (45, '方便面', 4.00, 3.17, '106g', '桶', 69, 276.00, 218.73, '工厂', '无', 7);
INSERT INTO `atm_goods` VALUES (46, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 45, 135.00, 99.00, '工厂', '无', 7);
INSERT INTO `atm_goods` VALUES (47, '营养快线', 4.00, 3.00, '450g', '瓶', 13, 52.00, 39.00, '工厂', '无', 7);
INSERT INTO `atm_goods` VALUES (48, '脉动', 4.00, 3.07, '600ml', '瓶', 24, 96.00, 73.68, '工厂', '无', 7);
INSERT INTO `atm_goods` VALUES (49, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 28, 126.00, 108.36, '工厂', '无', 7);
INSERT INTO `atm_goods` VALUES (50, '雪碧', 3.00, 2.17, '500ml', '瓶', 10, 30.00, 21.70, '工厂', '无', 7);
INSERT INTO `atm_goods` VALUES (57, '百事可乐', 3.00, 2.17, '600ml', '瓶', 48, 144.00, 104.16, '工厂', '无', 9);
INSERT INTO `atm_goods` VALUES (58, '方便面', 4.00, 3.17, '106g', '桶', 96, 384.00, 304.32, '工厂', '无', 9);
INSERT INTO `atm_goods` VALUES (59, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 60, 180.00, 132.00, '工厂', '无', 9);
INSERT INTO `atm_goods` VALUES (60, '脉动', 4.00, 3.07, '600ml', '瓶', 60, 240.00, 184.20, '工厂', '无', 9);
INSERT INTO `atm_goods` VALUES (61, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 60, 270.00, 232.20, '工厂', '无', 9);
INSERT INTO `atm_goods` VALUES (62, '雪碧', 3.00, 2.17, '500ml', '瓶', 48, 144.00, 104.16, '工厂', '无', 9);
INSERT INTO `atm_goods` VALUES (63, '百事可乐', 3.00, 2.17, '600ml', '瓶', 24, 72.00, 52.08, '工厂', '无', 10);
INSERT INTO `atm_goods` VALUES (64, '方便面', 4.00, 3.17, '106g', '桶', 60, 240.00, 190.20, '工厂', '无', 10);
INSERT INTO `atm_goods` VALUES (65, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 45, 135.00, 99.00, '工厂', '无', 10);
INSERT INTO `atm_goods` VALUES (66, '脉动', 4.00, 3.07, '600ml', '瓶', 30, 120.00, 92.10, '工厂', '无', 10);
INSERT INTO `atm_goods` VALUES (67, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 45, 202.50, 174.15, '工厂', '无', 10);
INSERT INTO `atm_goods` VALUES (68, '雪碧', 3.00, 2.17, '500ml', '瓶', 24, 72.00, 52.08, '工厂', '无', 10);
INSERT INTO `atm_goods` VALUES (69, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 6, 18.00, 13.20, '总部', '无', 11);
INSERT INTO `atm_goods` VALUES (70, '营养快线', 4.00, 3.00, '450g', '瓶', 4, 16.00, 12.00, '总部', '无', 11);
INSERT INTO `atm_goods` VALUES (71, '脉动', 4.00, 3.07, '600ml', '瓶', 9, 36.00, 27.63, '总部', '无', 11);
INSERT INTO `atm_goods` VALUES (72, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 13, 58.50, 50.31, '总部', '无', 11);
INSERT INTO `atm_goods` VALUES (73, '可口可乐', 3.00, 2.17, '500ml', '瓶', 20, 60.00, 43.40, '总部', '无', 11);
INSERT INTO `atm_goods` VALUES (74, '可口可乐', 3.00, 2.17, '500ml', '瓶', 2, 6.00, 4.34, '工厂', '无', 11);
INSERT INTO `atm_goods` VALUES (75, '百事可乐', 3.00, 2.17, '600ml', '瓶', 7, 21.00, 15.19, '工厂', '无', 11);
INSERT INTO `atm_goods` VALUES (76, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 15, 45.00, 33.00, '工厂', '无', 11);
INSERT INTO `atm_goods` VALUES (77, '脉动', 4.00, 3.07, '600ml', '瓶', 6, 24.00, 18.42, '工厂', '无', 11);
INSERT INTO `atm_goods` VALUES (78, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 11, 49.50, 42.57, '工厂', '无', 11);
INSERT INTO `atm_goods` VALUES (79, '雪碧', 3.00, 2.17, '500ml', '瓶', 35, 105.00, 75.95, '工厂', '无', 11);
INSERT INTO `atm_goods` VALUES (80, '方便面', 4.00, 3.17, '106g', '桶', 36, 144.00, 114.12, '工厂', '无', 12);
INSERT INTO `atm_goods` VALUES (81, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 3, 9.00, 6.60, '总部', '无', 13);
INSERT INTO `atm_goods` VALUES (82, '营养快线', 4.00, 3.00, '450g', '瓶', 7, 28.00, 21.00, '总部', '无', 13);
INSERT INTO `atm_goods` VALUES (83, '脉动', 4.00, 3.07, '600ml', '瓶', 2, 8.00, 6.14, '总部', '无', 13);
INSERT INTO `atm_goods` VALUES (84, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 1, 4.50, 3.87, '总部', '无', 13);
INSERT INTO `atm_goods` VALUES (85, '可口可乐', 3.00, 2.17, '500ml', '瓶', 10, 30.00, 21.70, '总部', '无', 13);
INSERT INTO `atm_goods` VALUES (86, '百事可乐', 3.00, 2.17, '600ml', '瓶', 11, 33.00, 23.87, '工厂', '无', 13);
INSERT INTO `atm_goods` VALUES (87, '方便面', 4.00, 3.17, '106g', '桶', 67, 268.00, 212.39, '工厂', '无', 13);
INSERT INTO `atm_goods` VALUES (88, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 10, 30.00, 22.00, '工厂', '无', 13);
INSERT INTO `atm_goods` VALUES (89, '脉动', 4.00, 3.07, '600ml', '瓶', 5, 20.00, 15.35, '工厂', '无', 13);
INSERT INTO `atm_goods` VALUES (90, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 20, 90.00, 77.40, '工厂', '无', 13);
INSERT INTO `atm_goods` VALUES (91, '雪碧', 3.00, 2.17, '500ml', '瓶', 4, 12.00, 8.68, '工厂', '无', 13);
INSERT INTO `atm_goods` VALUES (92, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 8, 24.00, 17.60, '总部', '无', 14);
INSERT INTO `atm_goods` VALUES (93, '营养快线', 4.00, 3.00, '450g', '瓶', 19, 76.00, 57.00, '总部', '无', 14);
INSERT INTO `atm_goods` VALUES (94, '脉动', 4.00, 3.07, '600ml', '瓶', 6, 24.00, 18.42, '总部', '无', 14);
INSERT INTO `atm_goods` VALUES (95, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 3, 13.50, 11.61, '总部', '无', 14);
INSERT INTO `atm_goods` VALUES (96, '可口可乐', 3.00, 2.17, '500ml', '瓶', 23, 69.00, 49.91, '总部', '无', 14);
INSERT INTO `atm_goods` VALUES (97, '方便面', 4.00, 3.17, '106g', '桶', 28, 112.00, 88.76, '工厂', '无', 14);
INSERT INTO `atm_goods` VALUES (98, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 28, 84.00, 61.60, '工厂', '无', 14);
INSERT INTO `atm_goods` VALUES (99, '脉动', 4.00, 3.07, '600ml', '瓶', 21, 84.00, 64.47, '工厂', '无', 14);
INSERT INTO `atm_goods` VALUES (100, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 20, 90.00, 77.40, '工厂', '无', 14);
INSERT INTO `atm_goods` VALUES (101, '雪碧', 3.00, 2.17, '500ml', '瓶', 16, 48.00, 34.72, '工厂', '无', 14);
INSERT INTO `atm_goods` VALUES (102, '雪碧', 3.00, 2.17, '500ml', '瓶', 1, 3.00, 2.17, '总部', '无', 15);
INSERT INTO `atm_goods` VALUES (103, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 2, 6.00, 4.40, '总部', '无', 15);
INSERT INTO `atm_goods` VALUES (104, '营养快线', 4.00, 3.00, '450g', '瓶', 2, 8.00, 6.00, '总部', '无', 15);
INSERT INTO `atm_goods` VALUES (105, '脉动', 4.00, 3.07, '600ml', '瓶', 3, 12.00, 9.21, '总部', '无', 15);
INSERT INTO `atm_goods` VALUES (106, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 2, 9.00, 7.74, '总部', '无', 15);
INSERT INTO `atm_goods` VALUES (107, '可口可乐', 3.00, 2.17, '500ml', '瓶', 3, 9.00, 6.51, '总部', '无', 15);
INSERT INTO `atm_goods` VALUES (108, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 4, 12.00, 8.80, '工厂', '无', 15);
INSERT INTO `atm_goods` VALUES (109, '脉动', 4.00, 3.07, '600ml', '瓶', 3, 12.00, 9.21, '工厂', '无', 15);
INSERT INTO `atm_goods` VALUES (110, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 3, 13.50, 11.61, '工厂', '无', 15);
INSERT INTO `atm_goods` VALUES (111, '雪碧', 3.00, 2.17, '500ml', '瓶', 8, 24.00, 17.36, '总部', '无', 18);
INSERT INTO `atm_goods` VALUES (112, '脉动', 4.00, 3.07, '600ml', '瓶', 3, 12.00, 9.21, '总部', '无', 18);
INSERT INTO `atm_goods` VALUES (113, '雪碧', 3.00, 2.17, '500ml', '瓶', 0, 0.00, 0.00, '总部', '无', 19);
INSERT INTO `atm_goods` VALUES (114, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 0, 0.00, 0.00, '总部', '无', 19);
INSERT INTO `atm_goods` VALUES (115, '营养快线', 4.00, 3.00, '450g', '瓶', 0, 0.00, 0.00, '总部', '无', 19);
INSERT INTO `atm_goods` VALUES (116, '脉动', 4.00, 3.07, '600ml', '瓶', 0, 0.00, 0.00, '总部', '无', 19);
INSERT INTO `atm_goods` VALUES (117, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 0, 0.00, 0.00, '总部', '无', 19);
INSERT INTO `atm_goods` VALUES (118, '可口可乐', 3.00, 2.17, '500ml', '瓶', 0, 0.00, 0.00, '总部', '无', 19);
INSERT INTO `atm_goods` VALUES (119, '可口可乐', 3.00, 2.17, '500ml', '瓶', 0, 0.00, 0.00, '工厂', '无', 19);
INSERT INTO `atm_goods` VALUES (120, '百事可乐', 3.00, 2.17, '600ml', '瓶', 48, 144.00, 104.16, '工厂', '无', 19);
INSERT INTO `atm_goods` VALUES (121, '方便面', 4.00, 3.17, '106g', '桶', 48, 192.00, 152.16, '工厂', '无', 19);
INSERT INTO `atm_goods` VALUES (122, '鲜橙多', 3.00, 2.20, '450ml', '瓶', 0, 0.00, 0.00, '工厂', '无', 19);
INSERT INTO `atm_goods` VALUES (123, '营养快线', 4.00, 3.00, '450g', '瓶', 0, 0.00, 0.00, '工厂', '无', 19);
INSERT INTO `atm_goods` VALUES (124, '脉动', 4.00, 3.07, '600ml', '瓶', 30, 120.00, 92.10, '工厂', '无', 19);
INSERT INTO `atm_goods` VALUES (125, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 30, 135.00, 116.10, '工厂', '无', 19);
INSERT INTO `atm_goods` VALUES (126, '雪碧', 3.00, 2.17, '500ml', '瓶', 24, 72.00, 52.08, '工厂', '无', 19);
INSERT INTO `atm_goods` VALUES (127, '雪碧', 3.00, 2.17, '500ml', '瓶', 24, 72.00, 52.08, '生产中心', '无', 20);
INSERT INTO `atm_goods` VALUES (128, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 30, 135.00, 116.10, '生产中心', '无', 20);
INSERT INTO `atm_goods` VALUES (129, '脉动', 4.00, 3.07, '600ml', '瓶', 30, 120.00, 92.10, '生产中心', '无', 20);
INSERT INTO `atm_goods` VALUES (130, '方便面', 4.00, 3.17, '106g', '桶', 48, 192.00, 152.16, '生产中心', '无', 20);
INSERT INTO `atm_goods` VALUES (131, '百事可乐', 3.00, 2.17, '600ml', '瓶', 60, 180.00, 130.20, '生产中心', '无', 20);
INSERT INTO `atm_goods` VALUES (132, '雪碧', 3.00, 2.17, '500ml', '瓶', 3, 9.00, 6.51, '总部', '无', 20);
INSERT INTO `atm_goods` VALUES (133, '农夫茶π', 4.50, 3.87, '600ml', '瓶', 1, 4.50, 3.87, '总部', '无', 20);
INSERT INTO `atm_goods` VALUES (134, '脉动', 4.00, 3.07, '600ml', '瓶', 3, 12.00, 9.21, '总部', '无', 20);
COMMIT;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `auth_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `auth_name` varchar(255) DEFAULT NULL COMMENT '用户组名称',
  `auth_update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `xxgl` int(1) DEFAULT '0' COMMENT '信息管理',
  `csxx` int(1) DEFAULT '0' COMMENT '厂商信息',
  `zhxx` int(1) DEFAULT '0' COMMENT '账号信息',
  `itgdzcxx` int(1) DEFAULT '0' COMMENT 'IT固定资产信息',
  `pzgl` int(1) DEFAULT '0' COMMENT '配置管理',
  `wltpt` int(1) DEFAULT '0' COMMENT '网络拓扑图',
  `f100` int(1) DEFAULT '0' COMMENT 'F100策略配置',
  `f1000` int(1) DEFAULT '0' COMMENT 'F1000策略配置',
  `wjgl` int(1) DEFAULT '0' COMMENT '文件管理',
  `bdxx` int(1) DEFAULT '0' COMMENT '表单信息',
  `wj` int(1) DEFAULT '0' COMMENT '一二级文件',
  `rjxt` int(1) DEFAULT '0' COMMENT '软件系统',
  `yyrj` int(1) DEFAULT '0' COMMENT '应用软件',
  `xtxz` int(1) DEFAULT '0' COMMENT '系统下载',
  `qdxz` int(1) DEFAULT '0' COMMENT '驱动下载',
  `xtgl` int(1) DEFAULT '0' COMMENT '系统管理',
  `xtrz` int(1) DEFAULT '0' COMMENT '系统日志',
  `yhgl` int(1) DEFAULT '0' COMMENT '用户管理',
  `qxlb` int(1) DEFAULT '0' COMMENT '权限管理',
  `yhlb` int(1) DEFAULT '0' COMMENT '用户列表',
  `grxx` int(1) DEFAULT '0' COMMENT '个人信息',
  `csxx_add` int(1) DEFAULT '0',
  `csxx_up` int(1) unsigned zerofill DEFAULT '0',
  `csxx_del` int(1) DEFAULT '0',
  `zhxx_add` int(1) DEFAULT '0',
  `zhxx_up` int(1) DEFAULT '0',
  `zhxx_del` int(1) DEFAULT '0',
  `itgdzcxx_add` int(1) DEFAULT '0',
  `itgdzcxx_up` int(1) DEFAULT '0',
  `itgdzcxx_del` int(1) DEFAULT '0',
  `f100_add` int(1) DEFAULT '0',
  `f100_up` int(1) DEFAULT '0',
  `f100_del` int(1) DEFAULT '0',
  `f1000_add` int(1) DEFAULT '0',
  `f1000_up` int(1) DEFAULT '0',
  `f1000_del` int(1) DEFAULT '0',
  `bdxx_add` int(1) DEFAULT '0',
  `bdxx_up` int(1) DEFAULT '0',
  `bdxx_del` int(1) DEFAULT '0',
  `wj_add` int(1) DEFAULT '0',
  `wj_up` int(1) DEFAULT '0',
  `wj_del` int(1) DEFAULT '0',
  `yyrj_add` int(1) DEFAULT '0',
  `yyrj_up` int(1) DEFAULT '0',
  `yyrj_del` int(1) DEFAULT '0',
  `yyrj_dl` int(1) DEFAULT '0',
  `xtxz_add` int(1) DEFAULT '0',
  `xtxz_up` int(1) DEFAULT '0',
  `xtxz_del` int(1) DEFAULT '0',
  `xtxz_dl` int(1) DEFAULT '0',
  `qdxz_add` int(1) DEFAULT '0',
  `qdxz_up` int(1) DEFAULT '0',
  `qdxz_del` int(1) DEFAULT '0',
  `qdxz_dl` int(1) DEFAULT '0',
  `qxlb_add` int(1) DEFAULT '0',
  `qxlb_up` int(1) DEFAULT '0',
  `qxlb_del` int(1) DEFAULT '0',
  `yhlb_add` int(1) DEFAULT '0',
  `yhlb_up` int(1) DEFAULT '0',
  `yhlb_del` int(1) DEFAULT '0',
  `grxx_pwd` int(1) DEFAULT '0',
  `grxx_info` int(1) DEFAULT '0',
  `txl_add` int(1) DEFAULT '0',
  `txl_up` int(1) DEFAULT '0',
  `txl_del` int(1) DEFAULT '0',
  `txl` int(1) DEFAULT '0',
  `wj_dl` int(1) DEFAULT '0',
  `bdxx_dl` int(1) DEFAULT '0',
  `yhlb_en` int(1) DEFAULT '0',
  `ddxx` int(1) DEFAULT '0',
  `ddxx_add` int(1) DEFAULT '0',
  `ddxx_up` int(1) DEFAULT '0',
  `ddxx_del` int(1) DEFAULT '0',
  `ddxx_gl` int(1) DEFAULT '0',
  `khzh` int(1) DEFAULT '0',
  `khzh_add` int(1) DEFAULT '0',
  `khzh_up` int(1) DEFAULT '0',
  `khzh_del` int(1) DEFAULT '0',
  `bmlb` int(1) DEFAULT '0',
  `bmlb_add` int(1) DEFAULT '0',
  `bmlb_up` int(1) DEFAULT '0',
  `bmlb_del` int(1) DEFAULT '0',
  `zwlb_add` int(1) DEFAULT '0',
  `zwlb_up` int(1) DEFAULT '0',
  `zwlb_del` int(1) DEFAULT '0',
  `atm` int(1) DEFAULT '0',
  `atm_add` int(1) DEFAULT '0',
  `atm_del` int(1) DEFAULT '0',
  `atm_goods_up` int(1) DEFAULT '0',
  `work` int(1) DEFAULT '0',
  `work_add` int(1) DEFAULT '0',
  `work_up` int(1) DEFAULT '0',
  `work_del` int(1) DEFAULT '0',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of authority
-- ----------------------------
BEGIN;
INSERT INTO `authority` VALUES (1, '超级管理员', '2020-10-13 11:22:55', 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `authority` VALUES (5, '安全策略部', NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_name` varchar(100) DEFAULT ' ' COMMENT '厂商名称',
  `device` varchar(100) DEFAULT ' ' COMMENT '设备名称',
  `contacts` varchar(50) DEFAULT ' ' COMMENT '联系人',
  `number` varchar(20) DEFAULT ' ' COMMENT '联系电话',
  `email` varchar(100) DEFAULT '@' COMMENT '电子邮件',
  `qq` varchar(11) DEFAULT '0' COMMENT 'qq号码',
  `remark` varchar(255) DEFAULT ' ' COMMENT '备注',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of contact
-- ----------------------------
BEGIN;
INSERT INTO `contact` VALUES (1, '江南科友', '加密机', '400电话专线', '400-6888-046', '@', '0', ' ', '2018-07-20 11:12:25');
INSERT INTO `contact` VALUES (2, '江南科友', '加密机', '范工', '15300063252', '@', '0', ' ', '2018-07-20 11:12:25');
INSERT INTO `contact` VALUES (3, 'H3C', '防火墙', '400电话专线', '400-810-0504', '@', '0', ' ', '2018-07-20 11:12:25');
INSERT INTO `contact` VALUES (4, 'H3C', '防火墙', 'H3C经理（王通）', '18980882595', '@', '0', ' ', '2018-07-20 11:12:34');
INSERT INTO `contact` VALUES (5, 'H3C', '防火墙', '设备供应商（谭）', '13880234992', '330712621@qq.com', '330712621', ' ', '2018-07-20 11:11:54');
INSERT INTO `contact` VALUES (6, '明森', '工控机', '吴伟文（博士）', '13580431597', '@', '0', ' ', '2018-07-20 11:12:35');
INSERT INTO `contact` VALUES (7, '明森', '工控机', '工程师（郑工）', '18124296186', '@', '0', ' ', '2018-07-20 11:12:36');
INSERT INTO `contact` VALUES (8, '卫计委', '卫计委设备', '技术人员（邢杰）', '13811783482', '@', '0', ' ', '2018-07-20 11:12:47');
INSERT INTO `contact` VALUES (9, 'DELL', '数据准备/接收服务器', '技术人员（李树国）', '18782031183', '@', '0', ' ', '2018-07-20 11:12:37');
INSERT INTO `contact` VALUES (10, '中国电信', '宽带、SSLVPN、', '故障处理工程师（李宽）', '18982238000', '@', '0', '卫计委专线IP：118.123.172.249', '2018-07-20 11:12:37');
INSERT INTO `contact` VALUES (11, '中国电信', '宽带、SSLVPN、', '客户经理（胥经理）', '18108233166', '@', '0', ' ', '2018-07-20 11:12:38');
INSERT INTO `contact` VALUES (12, '中国电信', '宽带、SSLVPN、', '线路处理（陈工）', '18080041415', '@', '0', ' ', '2018-07-20 11:12:39');
INSERT INTO `contact` VALUES (13, '中国电信', '宽带、SSLVPN、', '线路处理（陈工）', '18111637273', '@', '0', ' ', '2018-07-20 11:12:32');
INSERT INTO `contact` VALUES (14, '中国电信', '宽带、SSLVPN、', '电信设备处理（黄工)', '18181939898', '@', '0', ' ', '2018-07-20 11:12:32');
INSERT INTO `contact` VALUES (15, '中国电信', '宽带、SSLVPN、', '电信值班电话', '85898000', '@', '0', ' ', '2018-07-20 11:12:31');
INSERT INTO `contact` VALUES (16, '中国电信', '宽带、SSLVPN、', '电信169', '18030410384', '@', '0', ' ', '2018-07-20 11:12:31');
INSERT INTO `contact` VALUES (17, '中国电信', '宽带缴费号码', '宿舍169套餐', '85877216', '@', '0', ' ', '2019-10-21 12:32:15');
INSERT INTO `contact` VALUES (18, '中国电信', '宽带缴费号码', '办公169套餐', '61918502', '@', '0', ' ', '2018-07-20 11:12:30');
INSERT INTO `contact` VALUES (19, '中国电信', '宽带缴费号码', '生产网1专线', '80001081', '@', '0', ' ', '2018-07-20 11:12:29');
INSERT INTO `contact` VALUES (20, '中国电信', '宽带缴费号码', '三楼大机房专线', '744000019148', '@', '0', ' ', '2018-07-20 11:12:29');
INSERT INTO `contact` VALUES (21, '中国电信', '宽带缴费号码', '工厂座机1', '61918323', '@', '0', ' ', '2018-07-20 11:12:28');
INSERT INTO `contact` VALUES (22, '中国电信', '宽带缴费号码', '工厂座机2', '85790333', '@', '0', ' ', '2018-07-20 11:12:28');
INSERT INTO `contact` VALUES (23, '中国电信', '宽带缴费号码', '工厂座机3', '81529555', '@', '0', ' ', '2018-07-20 11:12:28');
INSERT INTO `contact` VALUES (24, '中国电信', '宽带缴费号码', '工厂座机4', '85803777', '@', '0', ' ', '2018-07-20 11:12:27');
INSERT INTO `contact` VALUES (25, '中国电信', '宽带缴费号码', '卫计委专线', '820001081', '@', '0', ' ', '2018-07-20 11:12:27');
INSERT INTO `contact` VALUES (26, 'DPC', '', '邹美兰(商务)', '13552904915', '', '', '', '2018-07-24 09:14:24');
INSERT INTO `contact` VALUES (27, 'DPC', '', '温振宇（技术）', '18612246818', '', '', '', '2018-07-24 09:15:27');
INSERT INTO `contact` VALUES (28, 'DPC', '', '邢杰（技术）', '13811783482', '', '', '', '2018-07-24 09:16:14');
INSERT INTO `contact` VALUES (29, '世图兹', '精密空调', '成都办事处', '028-85137876', '', '', '', '2018-07-24 09:19:02');
INSERT INTO `contact` VALUES (30, '世图兹', '精密空调', '技术', '18030526962', '', '', '', '2019-04-24 14:47:10');
INSERT INTO `contact` VALUES (31, '中国电信', '宽带缴费号码', '省中行专线', '770100410400', '', '', ' ', '2019-03-04 09:19:28');
COMMIT;

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
INSERT INTO `csr` VALUES (5, 'scdy20150813', 'dy20150813', '四川省德阳市德阳银行', '2015-08-12', 'D:/数据接收主目录/dy20150813', '锁定', '', '2020-06-05 09:27:53');
INSERT INTO `csr` VALUES (9, 'szjingking1', 'szjingking1', '深圳精工', '2015-08-10', 'D:/数据接收主目录/szjingking1', '锁定', '', '2020-06-05 09:29:35');
INSERT INTO `csr` VALUES (10, 'shujushi1', 'shujushi1', '生产中心数据', '2016-01-15', 'D:/数据接收主目录/xiongl', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (11, 'shujushi2', 'shujushi2', '生产中心数据', '2017-04-24', 'D:/数据接收主目录', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (12, 'sczy00920150615', 'zy009', '四川省资阳市人力资源和社会保障局', '2015-06-13', 'D:/数据接收主目录/zy009', '注销', '长时间未使用', '2020-01-03 15:31:46');
INSERT INTO `csr` VALUES (13, 'test', NULL, '精工测试', '2017-06-23', NULL, '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (14, '物理专线', '18003', '四川省中国银行', '2017-07-21', 'D:/数据接收主目录/18003', '注销', '', '2020-01-03 15:31:52');
INSERT INTO `csr` VALUES (15, 'scwjw', 'scwjw', '四川省卫计委', '2017-07-24', 'D:/数据接收主目录/scwjw', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (16, '1815013', '1815013', '达州银行', '2017-07-28', 'D:/数据接收主目录/1815013', '锁定', '', '2020-06-05 09:26:58');
INSERT INTO `csr` VALUES (17, 'szjgxx20170817', 'szjgxx20170817', '深圳精工伟达信息科技有限公司', '2017-08-17', 'D:/数据接收主目录/szjgxx20170817', '锁定', '', '2020-06-05 09:29:44');
INSERT INTO `csr` VALUES (18, 'soyuan20171123', 'soyuan20171123', '成都数智睿卡科技有限公司', '2017-11-23', 'D:/数据接收主目录/soyuan20171123', '注销', '', '2020-01-03 15:32:00');
INSERT INTO `csr` VALUES (19, 'huah20171229', 'huah20171229', '北京华虹集成电路设计有限公司', '2017-12-24', 'D:/数据接收主目录/huah20171229', '锁定', '', '2020-06-05 09:28:33');
INSERT INTO `csr` VALUES (20, '物理专线', 'tianfutong20180307', '天府通', '2018-03-07', 'D:/tianfutong', '正常', '天府通正式专线', '2019-02-27 13:57:58');
INSERT INTO `csr` VALUES (22, 'jishubu20180409', 'jishubu20180409', '技术部', '2018-04-09', 'D:/数据接收主目录/jishubu20180409', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (25, 'xzdxdzxsz80511', 'xzdxdzxsz80511', '徐州电信电子学生证', '2018-05-11', 'D:/数据接收主目录/xzdxdzxsz80511', '锁定', '', '2020-06-05 09:30:28');
INSERT INTO `csr` VALUES (26, 'mulingyh20180517', 'mulingyh20180517', '穆棱银行', '2018-05-17', 'D:/数据接收主目录/mulingyh20180517', '注销', '', '2020-01-03 15:32:07');
INSERT INTO `csr` VALUES (27, 'yh20180524', 'yh20180524', '永辉超市', '2018-05-24', 'D:/数据接收主目录/yh20180524', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (28, 'providusbank', 'providusbank', 'providusbank', '2018-06-01', 'D:/数据接收主目录/providusbank', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (29, 'scmy009', 'scmy009', '四川绵阳人力资源和社会保障局', '2018-05-23', 'D:/数据接收主目录/scmy009', '注销', '', '2020-01-03 15:32:13');
INSERT INTO `csr` VALUES (30, 'cdnongshang20180620', 'cdnongshang20180620', '成都农村商业银行', '2018-06-20', 'D:/数据接收主目录/cdnongshang20180620', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (31, '181500820180702', '181500820180702', '达州市商业银行', '2018-07-02', 'D:/数据接收主目录/181500820180702', '锁定', '', '2020-06-05 09:26:45');
INSERT INTO `csr` VALUES (32, 'scsn20180808', 'scsn20180808', '四川遂宁银行', '2018-08-08', 'D:/数据接收主目录/scsn20180808', '锁定', '', '2020-06-05 09:29:24');
INSERT INTO `csr` VALUES (33, 'myailian20181008', 'myailian20181008', '四川爱联科技有限公司', '2018-10-08', 'D:/数据接收主目录/myailian20181008', '正常', NULL, '2018-09-27 00:00:00');
INSERT INTO `csr` VALUES (34, 'gzthcbh20181128', 'gzthcbh20181128', '广州天河城百货', '2018-11-28', 'D:/数据接收主目录/gzthcbh20181128', '正常', '', '2020-06-17 15:11:37');
INSERT INTO `csr` VALUES (35, 'xxt20181206', 'xxt20181206', '校芯通', '2018-12-06', 'D:/数据接收主目录/xxt', '锁定', '', '2020-06-05 09:29:58');
INSERT INTO `csr` VALUES (36, 'xxt20181210', 'xxt20181210', '校芯通', '2018-12-11', 'D:/数据接收主目录/xxt', '锁定', '', '2020-06-05 09:30:03');
INSERT INTO `csr` VALUES (37, 'xxt20181211', 'xxt20181211', '校芯通', '2018-12-11', 'D:/数据接收主目录/xxt', '锁定', '', '2020-06-05 09:30:11');
INSERT INTO `csr` VALUES (38, '物理专线', 'tianfutongtest', '天府通', '2018-03-07', 'D:/tianfutongtest', '正常', '天府通测试专线', '2019-03-04 09:20:27');
INSERT INTO `csr` VALUES (39, 'ykh20190228', 'ykh20190228', '壹卡会', '2019-02-28', 'D:/数据接收主目录/ykh20190228', '正常', '', '2019-03-01 11:05:51');
INSERT INTO `csr` VALUES (40, 'hrzd20190402', 'hrzd20190402', '华润置地鞍山万象汇', '2019-04-02', 'D:/数据接收主目录/hrzd20190402', '锁定', '', '2020-06-05 09:28:20');
INSERT INTO `csr` VALUES (41, 'dzsb20190613', 'dzsb20190613', '四川省达州市人力资源和社会保障局', '2019-06-13', 'D:/数据接收主目录/dzsb20190613', '锁定', '', '2020-06-05 09:28:04');
INSERT INTO `csr` VALUES (42, 'njyh20191115', 'njyh20191115', '南京银行', '2019-11-15', 'D:/数据接收主目录/njyh20191115', '锁定', '', '2020-06-05 09:29:04');
INSERT INTO `csr` VALUES (43, '无', 'sasData', 'SAS数据接收', '2019-11-18', 'D:/数据接收主目录/SAS', '正常', '', '2019-11-20 13:49:12');
INSERT INTO `csr` VALUES (44, '', 'backup', '日志备份', '2020-01-03', 'D:/数据接收日志/', '正常', '', '2020-06-05 09:26:19');
INSERT INTO `csr` VALUES (45, 'scdx20200407', 'scdx20200407', '四川电信', '2020-04-07', 'D:/数据接收主目录/scdx20200407', '正常', '', '2020-05-25 15:53:07');
INSERT INTO `csr` VALUES (46, 'snyc20200525', 'snyc20200525', '遂宁邮政储蓄银行', '2020-05-25', 'D:/数据接收主目录/snyc20200525', '正常', '', '2020-05-25 15:53:33');
INSERT INTO `csr` VALUES (47, 'bnbh20190614', 'bnbh20190614', '宝能百货零售有限公司', '2019-06-14', 'D:/数据接收主目录/bnbh20190614', '锁定', '', '2020-06-05 09:32:50');
INSERT INTO `csr` VALUES (48, 'mdgj', 'mdgj', '缅甸公交', '2019-10-12', 'D:/数据接收主目录/mdgj', '锁定', '', '2020-06-05 09:33:25');
INSERT INTO `csr` VALUES (49, 'lzyh20200525', 'lzyh20200525', '泸州银行', '2020-05-25', 'D:/数据接收主目录/lzyh20200525', '正常', '', '2020-06-05 09:37:08');
INSERT INTO `csr` VALUES (50, 'mdjk20200608', 'mdjk20200608', '迈德金卡', '2020-06-08', 'D:/数据接收主目录/mdjk20200608', '正常', '', '2020-06-11 08:49:39');
INSERT INTO `csr` VALUES (51, 'lzyc20200701', 'lzyc20200701', '泸州邮政储蓄银行', '2020-07-01', 'D:/数据接收主目录/lzyc20200701', '正常', '', '2020-07-01 10:52:14');
COMMIT;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `form_no` int(11) DEFAULT NULL COMMENT '文件编码',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
BEGIN;
INSERT INTO `department` VALUES (1, '公司', NULL);
INSERT INTO `department` VALUES (2, '总经办', NULL);
INSERT INTO `department` VALUES (3, '营销部', NULL);
INSERT INTO `department` VALUES (4, '质量安全部', 99);
INSERT INTO `department` VALUES (5, '支撑部', NULL);
INSERT INTO `department` VALUES (6, '财务部', NULL);
INSERT INTO `department` VALUES (7, '生产部', NULL);
INSERT INTO `department` VALUES (8, '卡基生产部', NULL);
INSERT INTO `department` VALUES (9, 'IC芯片封装部', NULL);
INSERT INTO `department` VALUES (10, '个人化部', NULL);
COMMIT;

-- ----------------------------
-- Table structure for f100
-- ----------------------------
DROP TABLE IF EXISTS `f100`;
CREATE TABLE `f100` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `p_d` varchar(100) DEFAULT NULL,
  `ip_source` varchar(100) DEFAULT NULL,
  `ip_source_mask` varchar(100) DEFAULT NULL,
  `ip_destination` varchar(100) DEFAULT NULL,
  `ip_destination_mask` varchar(100) DEFAULT NULL,
  `port` varchar(100) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of f100
-- ----------------------------
BEGIN;
INSERT INTO `f100` VALUES (1, 'UnTrust', 'DataPrepare', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝来自外部网络的任何访问。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (2, 'UnTrust', 'SAS', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝来自外部网络的任何访问。', '2019-09-18 11:26:44');
INSERT INTO `f100` VALUES (3, 'UnTrust', 'Personalization', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝来自外部网络的任何访问。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (4, 'UnTrust', 'Management', 'Permit', '10.255.1.10', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许数据接收服务器通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2019-09-18 11:17:50');
INSERT INTO `f100` VALUES (5, 'UnTrust', 'Management', 'Permit', '10.255.2.254', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许CA、WSUS服务器通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2019-09-18 11:18:02');
INSERT INTO `f100` VALUES (6, 'UnTrust', 'Management', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (7, 'UnTrust', 'Local', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝登录防火墙。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (8, 'DataPrepare', 'SAS', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝数据准备区到数码打印区的任何访问。', '2019-09-18 11:26:44');
INSERT INTO `f100` VALUES (9, 'DataPrepare', 'Personalization', 'Permit', '192.168.4.102-106', '0.0.0.0', '192.168.2.11', '0.0.0.0', '0_ftp,mysql', '允许数据处理PC通过FTP，mysql服务访问CPS数据库备份服务器', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (10, 'DataPrepare', 'Personalization', 'Permit', '192.168.4.104', '0.0.0.0', '192.168.2.154', '0.0.0.0', 'ping,8', '允许数据主管PC访问154加密机', '2019-09-18 11:21:10');
INSERT INTO `f100` VALUES (11, 'DataPrepare', 'Personalization', 'Permit', '192.168.4.100', '0.0.0.0', '192.168.2.161', '0.0.0.0', 'ping,8', '允许DPC数据准备服务器访问DPC加密机', '2019-09-18 11:21:22');
INSERT INTO `f100` VALUES (12, 'DataPrepare', 'Personalization', 'Permit', '192.168.4.100', '0.0.0.0', '192.168.2.75-100', '0.0.0.0', 'Any', '允许DPC数据准备服务器访问个人化设备', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (13, 'DataPrepare', 'Personalization', 'Permit', '192.168.4.102-106', '0.0.0.0', '192.168.2.247-250', '0.0.0.0', 'cps,kms,mysql', '仅允许数据处理PC通过cps,kms,mysql服务访问CPS应用服务器', '2019-09-18 11:20:36');
INSERT INTO `f100` VALUES (14, 'DataPrepare', 'Personalization', 'Permit', '192.168.4.110', '0.0.0.0', '192.168.2.247-250', '0.0.0.0', 'cps,kms,mysql', '仅允许数据准备服务器通过cps,kms,mysql服务访问CPS应用服务器', '2019-09-18 11:20:47');
INSERT INTO `f100` VALUES (15, 'DataPrepare', 'Personalization', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (16, 'DataPrepare', 'Management', 'Permit', '192.168.4.110', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许数据准备服务器通过通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2019-09-18 11:24:53');
INSERT INTO `f100` VALUES (17, 'DataPrepare', 'Management', 'Permit', '192.168.4.102-106', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许数据处理PC通过通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2019-09-18 11:25:02');
INSERT INTO `f100` VALUES (18, 'DataPrepare', 'Management', 'Permit', '192.168.4.110', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'ntp,syslog', '仅允许数据准备服务器通过ntp,syslog服务访问日志服务器。', '2019-09-18 11:24:40');
INSERT INTO `f100` VALUES (19, 'DataPrepare', 'Management', 'Permit', '192.168.4.102-106', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'ntp.syslog', '仅允许数据处理PC通过ntp,syslog服务访问日志服务器。', '2019-09-18 11:24:18');
INSERT INTO `f100` VALUES (20, 'DataPrepare', 'Management', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (21, 'DataPrepare', 'UnTrust', 'Permit', '192.168.4.104', '0.0.0.0', '10.255.1.10', '0.0.0.0', 'FTP', '仅允许数据主管的PC、数据准备服务器通过FTP服务访问数据接收服务器。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (22, 'DataPrepare', 'UnTrust', 'Permit', '192.168.4.110', '0.0.0.0', '10.255.1.10', '0.0.0.0', 'FTP', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (23, 'DataPrepare', 'UnTrust', 'Permit', '192.168.4.102-106', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'Symantec', '仅允许数据处理PC、数据准备服务器通过Symantec服务访问CA、WSUS服务器。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (24, 'DataPrepare', 'UnTrust', 'Permit', '192.168.4.110', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'Symantec', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (25, 'DataPrepare', 'UnTrust', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝任何计算机访问到外部网络。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (26, 'DataPrepare', 'Local', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝任何计算机登录防火墙。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (27, 'SAS', 'UnTrust', 'Permit', '192.168.3.250-253', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'Symantec', '仅允许Sas区域电脑通过Symantec服务访问CA、WSUS服务器。', '2019-09-18 11:27:41');
INSERT INTO `f100` VALUES (28, 'SAS', 'UnTrust', 'Deny', 'Any', '0.0.0.0', 'Any', '0.0.0.0', 'Any', '拒绝访问到外部网络。', '2019-09-18 11:26:21');
INSERT INTO `f100` VALUES (29, 'SAS', 'Personalization', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝访问到个人化区。', '2019-09-18 11:26:44');
INSERT INTO `f100` VALUES (30, 'SAS', 'Management', 'Permit', '192.168.3.250-253', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping,telnet', '仅允许Sas区域电脑通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2019-09-18 11:31:30');
INSERT INTO `f100` VALUES (31, 'SAS', 'Management', 'Permit', '192.168.3.250-253', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'ntp,syslog', '仅允许Sas区域电脑通过NTP，Syslog服务访问日志服务器。', '2019-09-18 11:29:58');
INSERT INTO `f100` VALUES (32, 'SAS', 'Management', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2019-09-18 11:26:44');
INSERT INTO `f100` VALUES (34, 'SAS', 'DataPrepare', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2019-09-18 11:26:44');
INSERT INTO `f100` VALUES (35, 'SAS', 'Local', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝登录防火墙。', '2019-09-18 11:26:44');
INSERT INTO `f100` VALUES (36, 'Management', 'SAS', 'Permit', '192.168.1.253', '0.0.0.0', '192.168.3.250-253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping服务访问Sas区域电脑', '2019-09-18 11:32:05');
INSERT INTO `f100` VALUES (37, 'Management', 'SAS', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2019-09-18 11:26:44');
INSERT INTO `f100` VALUES (38, 'Management', 'DataPrepare', 'Permit', '192.168.1.253', '0.0.0.0', '192.168.4.102-106', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping服务访问数据处理PC。', '2019-09-18 11:33:45');
INSERT INTO `f100` VALUES (39, 'Management', 'DataPrepare', 'Permit', '192.168.1.253', '0.0.0.0', '192.168.4.110', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping服务访问数据准备服务器。', '2019-09-18 11:33:59');
INSERT INTO `f100` VALUES (40, 'Management', 'DataPrepare', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (41, 'Management', 'UnTrust', 'Permit', '192.168.1.253', '0.0.0.0', '10.255.1.10', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping服务访问数据接收服务器。', '2019-09-18 11:35:10');
INSERT INTO `f100` VALUES (42, 'Management', 'UnTrust', 'Permit', '192.168.1.253', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping服务访问CA、WSUS服务器。', '2019-09-18 11:35:23');
INSERT INTO `f100` VALUES (43, 'Management', 'UnTrust', 'Permit', '192.168.1.253', '0.0.0.0', '10.255.3.1', '0.0.0.0', '0_firewall_manage', '仅允许管理服务器登录到F1000防火墙。', '2019-09-18 11:34:54');
INSERT INTO `f100` VALUES (44, 'Management', 'UnTrust', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (45, 'Management', 'Personalization', 'Permit', '192.168.1.253', '0.0.0.0', '192.168.2..75-100', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping服务访问到个人化区。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (46, 'Management', 'Personalization', 'Permit', '192.168.1.253', '0.0.0.0', '192.168.2.11', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping服务访问到CPS数据库备份服务器。', '2018-08-15 09:20:40');
INSERT INTO `f100` VALUES (48, 'Management', 'Personalization', 'Permit', '192.168.1.253', '0.0.0.0', '192.168.2.247-250', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping,cps,kms', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping,cps，kms服务访问CPS应用服务器', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (49, 'Management', 'Personalization', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (50, 'Management', 'Local', 'Permit', '192.168.1.253', '0.0.0.0', '192.168.1.1', '0.0.0.0', '0_firewall_manage', '仅允许管理服务器登录到F100防火墙。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (51, 'Management', 'Local', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (52, 'Personalization', 'SAS', 'Deny', 'Any', '0.0.0.0', 'Any', '0.0.0.0', 'Any', '拒绝访问SAS区。', '2019-09-18 11:36:12');
INSERT INTO `f100` VALUES (53, 'Personalization', 'Management', 'Permit', '192.168.2.75-100', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许个人化电脑通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2019-09-18 11:37:26');
INSERT INTO `f100` VALUES (54, 'Personalization', 'Management', 'Permit', '192.168.2.247-250', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许CPS应用服务器通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2019-09-18 11:37:05');
INSERT INTO `f100` VALUES (55, 'Personalization', 'Management', 'Permit', '192.168.2.11', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许CPS数据库服务器通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2019-09-18 11:37:42');
INSERT INTO `f100` VALUES (57, 'Personalization', 'Management', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (58, 'Personalization', 'Management', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (59, 'Personalization', 'DataPrepare', 'Permit', '192.168.2.75-100', '0.0.0.0', '192.168.4.110', '0.0.0.0', '0_ftp', '仅允许个人化机台PC通过FTP服务访问数据准备服务器。 允许个人化设备访问DPC数据准备服务器。', '2018-07-30 11:15:19');
INSERT INTO `f100` VALUES (60, 'Personalization', 'DataPrepare', 'Permit', '192.168.2.75-100', '0.0.0.0', '192.168.4.100', '0.0.0.0', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (61, 'Personalization', 'DataPrepare', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (62, 'Personalization', 'Local', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝所有计算机登录防火墙。', '2018-07-26 10:41:35');
INSERT INTO `f100` VALUES (63, 'UnTrust', 'Management', 'Permit', '10.255.1.10', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'syslog', '仅允许数据接收服务器通过syslog服务访问日志服务器。', '2019-09-18 11:19:08');
INSERT INTO `f100` VALUES (64, 'UnTrust', 'Management', 'Permit', '10.255.2.254', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'syslog', '仅允许CA、WSUS服务器通过syslog服务访问日志服务器。', '2019-09-18 11:20:03');
INSERT INTO `f100` VALUES (65, 'SAS', 'UnTrust', 'Permit', '192.168.3.251', '0.0.0.0', '10.255.1.10', '0.0.0.0', 'FTP', '仅允许SAS数据处理PC通过FTP服务访问数据接收服务器。', '2019-09-18 11:28:56');
INSERT INTO `f100` VALUES (66, 'Personalization', 'Management', 'Permit', '192.168.2.75-100', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'ntp,syslog', '仅允许个人化电脑通过NTP,Syslog服务访问日志服务器。', '2019-09-18 11:38:52');
INSERT INTO `f100` VALUES (67, 'Personalization', 'Management', 'Permit', '192.168.2.247-250', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'ntp,syslog', '仅允许CPS应用服务器通过NTP,Syslog服务访问日志服务器。', '2019-09-18 11:40:17');
INSERT INTO `f100` VALUES (68, 'Personalization', 'Management', 'Permit', '192.168.2.11', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'ntp,syslog', '仅允许CPS数据库服务器通过NTP,Syslog服务访问日志服务器。', '2019-09-18 11:41:34');
COMMIT;

-- ----------------------------
-- Table structure for f1000
-- ----------------------------
DROP TABLE IF EXISTS `f1000`;
CREATE TABLE `f1000` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `p_d` varchar(100) DEFAULT NULL,
  `ip_source` varchar(100) DEFAULT NULL,
  `ip_source_mask` varchar(100) DEFAULT NULL,
  `ip_destination` varchar(100) DEFAULT NULL,
  `ip_destination_mask` varchar(100) DEFAULT NULL,
  `port` varchar(100) DEFAULT NULL,
  `reason` varchar(255) DEFAULT ' ',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of f1000
-- ----------------------------
BEGIN;
INSERT INTO `f1000` VALUES (1, 'Server', 'UnTrust', 'Permit', '10.255.1.10', '0.0.0.0', '192.168.0.88', '0.0.0.0', 'Any', '仅允许卫计委与本地防火墙建立VPN连接，拒绝访问Internet', '2019-02-27 13:58:38');
INSERT INTO `f1000` VALUES (2, 'Server', 'UnTrust', 'Permit', '10.255.1.10', '0.0.0.0', '182.150.13.131', '0.0.0.0', 'Any', '仅允许卫计委与本地防火墙建立VPN连接，拒绝访问Internet', '2019-02-27 13:58:48');
INSERT INTO `f1000` VALUES (3, 'Server', 'UnTrust', 'Permit', '10.255.1.10', '0.0.0.0', '10.50.7.7', '0.0.0.0', 'Any', '仅允许天府通与本地防火墙建立VPN连接，拒绝访问Internet', '2019-02-27 13:58:55');
INSERT INTO `f1000` VALUES (4, 'Server', 'UnTrust', 'Permit', '10.255.1.10', '0.0.0.0', '172.16.2.15', '0.0.0.0', 'Any', '仅允许天府通与本地防火墙建立VPN连接，拒绝访问Internet', '2019-02-27 13:59:00');
INSERT INTO `f1000` VALUES (5, 'Server', 'UnTrust', 'Permit', '10.255.1.10', '0.0.0.0', '182.140.133.54', '0.0.0.0', 'Any', '仅允许天府通与本地防火墙建立VPN连接，拒绝访问Internet', '2019-02-27 13:59:07');
INSERT INTO `f1000` VALUES (6, 'Server', 'UnTrust', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (7, 'Server', 'DMZ', 'Permit', '10.255.1.10', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'symantec,ntp', '仅允许数据接收服务器通过symantec，ntp服务访问CA、WSUS服务器', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (8, 'Server', 'DMZ', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (9, 'Server', 'Trust', 'Permit', '10.255.1.10', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (10, 'Server', 'Trust', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (15, 'UnTrust', 'Server', 'Permit', '182.150.13.131', '0.0.0.0', '10.255.1.10', '0.0.0.0', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (16, 'UnTrust', 'Server', 'Permit', '10.255.4.0', '0.0.0.255', '10.255.1.10', '0.0.0.0', '0_ftp', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (17, 'UnTrust', 'Server', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (18, 'UnTrust', 'DMZ', 'Permit', 'Any', '', '10.255.2.254', '0.0.0.0', 'https', '仅允许外部计算机访问CA证书服务器以申请证书。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (19, 'UnTrust', 'DMZ', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (20, 'UnTrust', 'Trust', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝访问到内部网络。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (21, 'UnTrust', 'Local', 'Permit', 'Any', '', '118.123.172.249', '0.0.0.0', 'https,ping', '仅允许远端PC连接SSL-VPN\n拒绝登录防火墙。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (22, 'UnTrust', 'Local', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (23, 'UnTrust', 'Local', 'Permit', '10.50.7.7', '0.0.0.0', '118.123.172.249', '0.0.0.0', 'esp', '', '2019-09-18 11:05:09');
INSERT INTO `f1000` VALUES (24, 'DMZ', 'UnTrust', 'Permit', '10.255.2.254', '0.0.0.0', 'Any', '', 'Any', '仅允许访问Internet以获取更新。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (25, 'DMZ', 'UnTrust', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (26, 'DMZ', 'Server', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝访问数据接收服务器。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (27, 'DMZ', 'Trust', 'Permit', '10.255.2.254', '0.0.0.0', '192.168.1.253', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许通过百络网警,imc,symantec,wsus,ping服务访问管理服务器。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (28, 'DMZ', 'Trust', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (29, 'DMZ', 'Local', 'Deny', 'Any', '', 'Any', '', 'Any', '拒绝登录防火墙。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (30, 'Trust', 'Server', 'Permit', '192.168.4.104 - 192.168.4.110', '0.0.0.0', '10.255.1.10', '0.0.0.0', '0_ftp', '仅允许主管的PC、数据准备服务器访问数据接收服务器的FTP服务。 仅允许管理服务器通过百络网警,imc,symantec,wsus,ping服务访问数据接收服务器', '2018-07-30 11:12:28');
INSERT INTO `f1000` VALUES (31, 'Trust', 'Server', 'Permit', '192.168.1.253', '0.0.0.0', '10.255.1.10', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (32, 'Trust', 'Server', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (33, 'Trust', 'DMZ', 'Permit', '192.168.1.253', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'bailuo,imc,symantec,wsus,ping', '仅允许管理服务器通过百络网警,imc,symantec,wsus,ping,服务访问CA、WSUS服务器。', '2019-09-18 11:09:33');
INSERT INTO `f1000` VALUES (34, 'Trust', 'DMZ', 'Permit', '192.168.1.252', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'symantec，ntp', '仅允许日志服务器通过symantec，ntp服务访问CA、WSUS服务器', '2019-09-18 11:08:14');
INSERT INTO `f1000` VALUES (35, 'Trust', 'DMZ', 'Permit', '192.168.2.11', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'symantec', '仅允许CPS数据库服务器通过symantec访问CA、WSUS服务器。', '2019-09-18 11:12:59');
INSERT INTO `f1000` VALUES (37, 'Trust', 'DMZ', 'Permit', '192.168.2.75-100', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'symantec', '仅允许个人化电脑通过symantec访问CA、WSUS服务器。', '2019-09-18 11:13:07');
INSERT INTO `f1000` VALUES (38, 'Trust', 'DMZ', 'Permit', '192.168.2.247-250', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'symantec', '仅允许CPS应用服务器通过symantec访问CA、WSUS服务器。', '2019-09-18 11:13:16');
INSERT INTO `f1000` VALUES (39, 'Trust', 'DMZ', 'Permit', '192.168.3.250-253', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'symantec', '仅允许Sas区域电脑通过Symantec服务访问CA、WSUS服务器', '2019-09-18 11:12:44');
INSERT INTO `f1000` VALUES (40, 'Trust', 'DMZ', 'Permit', '192.168.4.102-106', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'symantec', '仅允许数据处理电脑通过symantec访问CA、WSUS服务器。', '2019-09-18 11:13:48');
INSERT INTO `f1000` VALUES (41, 'Trust', 'DMZ', 'Permit', '192.168.4.110', '0.0.0.0', '10.255.2.254', '0.0.0.0', 'symantec', '仅允许数据准备服务器通过symantec访问CA、WSUS服务器。', '2019-09-18 11:14:18');
INSERT INTO `f1000` VALUES (42, 'Trust', 'DMZ', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (43, 'Trust', 'UnTrust', 'Deny', 'Any', '', 'Any', '', 'Any', '禁止任何内部网络计算机访问Internet。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (44, 'Trust', 'Local', 'Permit', '192.168.1.253', '0.0.0.0', '10.255.3.1', '0.0.0.0', '0_firewall_manage', '仅允许管理服务器登录F1000防火墙。', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (45, 'Trust', 'Local', 'Deny', 'Any', '', 'Any', '', 'Any', '', '2018-07-26 10:41:53');
INSERT INTO `f1000` VALUES (46, 'UnTrust', 'Server', 'Permit', '192.168.0.88', '0.0.0.0', '10.255.1.10', '0.0.0.0', '0_ftp', '仅允许卫计委通过FTP服务访问数据接收服务器', '2019-02-27 14:01:58');
INSERT INTO `f1000` VALUES (47, 'UnTrust', 'Server', 'Permit', '182.150.13.131', '0.0.0.0', '10.255.1.10', '0.0.0.0', '0_ftp', '仅允许卫计委通过FTP服务访问数据接收服务器', '2019-02-27 14:02:46');
INSERT INTO `f1000` VALUES (48, 'UnTrust', 'Server', 'Permit', '10.50.7.7', '0.0.0.0', '10.255.1.10', '0.0.0.0', '0_ftp', '仅允许天府通通过FTP服务访问数据接收服务器', '2019-02-27 14:03:31');
INSERT INTO `f1000` VALUES (49, 'UnTrust', 'Server', 'Permit', '172.16.2.15', '0.0.0.0', '10.255.1.10', '0.0.0.0', '0_ftp', '仅允许天府通通过FTP服务访问数据接收服务器', '2019-02-27 14:43:43');
INSERT INTO `f1000` VALUES (50, 'UnTrust', 'Server', 'Permit', '182.140.133.54', '0.0.0.0', '10.255.1.10', '0.0.0.0', '0_ftp', '仅允许天府通通过FTP服务访问数据接收服务器', '2019-02-27 14:44:12');
INSERT INTO `f1000` VALUES (51, 'Server', 'Trust', 'Permit', '10.255.1.10', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'syslog', '仅允许数据接收服务器通过Syslog服务访问日志服务器', '2019-09-18 11:03:51');
INSERT INTO `f1000` VALUES (52, 'UnTrust', 'Local', 'Permit', '172.16.2.15', '0.0.0.0', '118.123.172.249', '0.0.0.0', 'esp', '', '2019-09-18 11:06:03');
INSERT INTO `f1000` VALUES (53, 'UnTurst', 'Local', 'Permit', '182.140.133.54', '0.0.0.0', '118.123.172.249', '0.0.0.0', 'esp', '', '2019-09-18 11:06:38');
INSERT INTO `f1000` VALUES (54, 'DMZ', 'Trust', 'Permit', '10.255.2.254', '0.0.0.0', '192.168.1.252', '0.0.0.0', 'syslog', '仅允许CA、WSUS服务器通过syslog服务访问日志服务器。', '2019-09-18 11:16:22');
COMMIT;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件序号',
  `serial` varchar(100) DEFAULT '' COMMENT '文件编号',
  `name` varchar(100) DEFAULT '' COMMENT '文件名',
  `path` varchar(255) DEFAULT '' COMMENT '文件路径',
  `download` varchar(255) DEFAULT NULL COMMENT '下载地址',
  `file_size` int(255) DEFAULT '0' COMMENT '文件大小',
  `version` varchar(10) DEFAULT '' COMMENT '版本',
  `dept_id` int(10) DEFAULT '1' COMMENT '所属部门',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `img_number` int(5) DEFAULT '0' COMMENT '文件图像数量',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK42a59xl9xb87es7wkuu49elmi` (`dept_id`) USING BTREE,
  CONSTRAINT `FK42a59xl9xb87es7wkuu49elmi` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of file
-- ----------------------------
BEGIN;
INSERT INTO `file` VALUES (1, 'KD-M-001', '安全手册', 'KD-M-001.pdf', 'KD-M-001.docx', 200, 'A1', 1, '安全管理一级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (2, 'KD-MLJ-01', '系统安全程序', 'KD-MLJ-01.pdf', 'KD-MLJ-01.docx', 128, 'A11', 4, '逻辑安全二级文件', '2020-05-20 11:09:30', 0);
INSERT INTO `file` VALUES (3, 'KD-MLJ-02', '存储介质管理标准', 'KD-MLJ-02.pdf', 'KD-MLJ-02.docx', 85, 'A5', 4, '逻辑安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (4, 'KD-MLJ-03', '数据备份策略', 'KD-MLJ-03.pdf', 'KD-MLJ-03.docx', 81, 'A5', 4, '逻辑安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (5, 'KD-MLJ-04', '逻辑安全人员管理标准', 'KD-MLJ-04.pdf', 'KD-MLJ-04.docx', 83, 'A5', 4, '逻辑安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (6, 'KD-MMY-01', '密钥管理标准', 'KD-MMY-01.pdf', 'KD-MMY-01.docx', 134, 'A9', 4, '密钥管理二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (7, 'KD-MFX-01', '安全风险评估管理标准', 'KD-MFX-01.pdf', 'KD-MFX-01.docx', 431, 'A1', 1, '风险管理二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (8, 'KD-MFX-02', '信息资产安全管理标准', 'KD-MFX-02.pdf', 'KD-MFX-02.docx', 253, 'A1', 1, '风险管理二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (9, 'KD-MFX-03', '安全事故报告及处置管理标准', 'KD-MFX-03.pdf', 'KD-MFX-03.doc', 401, 'A1', 1, '风险管理二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (10, 'KD-MSC-01', '生产中心卡及敏感组件安全管理标准', 'KD-MSC-01.pdf', 'KD-MSC-01.docx', 104, 'A1', 7, '生产安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (11, 'KD-MSC-02', '生产数据安全管理标准', 'KD-MSC-02.pdf', 'KD-MSC-02.doc', 313, 'A1', 7, '生产安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (12, 'KD-MSC-03', '生产中心产品实现过程安全管理标准', 'KD-MSC-03.pdf', 'KD-MSC-03.docx', 116, 'A1', 7, '生产安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (13, 'KD-MWL-01', '安全控制变更管理标准', 'KD-MWL-01.pdf', 'KD-MWL-01.docx', 100, 'A1', 4, '物理安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (14, 'KD-MWL-02', '安防控制管理标准', 'KD-MWL-02.pdf', 'KD-MWL-02.doc', 215, 'A1', 4, '物理安全二级文件', '2020-01-10 16:22:30', 0);
INSERT INTO `file` VALUES (15, 'KD-MWL-03', '人员安全管理标准', 'KD-MWL-03.pdf', 'KD-MWL-03.docx', 94, 'A1', 4, '物理安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (16, 'KD-MWL-04', '产品安全运输管理标准', 'KD-MWL-04.pdf', 'KD-MWL-04.docx', 111, 'A1', 4, '物理安全二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (17, 'KD-MCX-01', '业务连续性管理标准', 'KD-MCX-01.pdf', 'KD-MCX-01.doc', 256, 'A1', 1, '业务持续性二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (18, 'KD-MZL-01', '文件控制标准', 'KD-MZL-01.pdf', 'KD-MZL-01.doc', 203, 'B0', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (19, 'KD-MZL-02', '记录控制标准', 'KD-MZL-02.pdf', 'KD-MZL-02.doc', 102, 'A2', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (20, 'KD-MZL-03', '管理评审控制标准', 'KD-MZL-03.pdf', 'KD-MZL-03.doc', 122, 'B0', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (21, 'KD-MZL-04', '内部审核控制标准', 'KD-MZL-04.pdf', 'KD-MZL-04.doc', 126, 'B0', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (22, 'KD-MZL-05', '过程及产品的监测和测量控制标准', 'KD-MZL-05.pdf', 'KD-MZL-05.doc', 103, 'A2', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (23, 'KD-MZL-06', '不合格品控制标准', 'KD-MZL-06.pdf', 'KD-MZL-06.doc', 134, 'A1', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (24, 'KD-MZL-07', '纠正和预防措施控制标准', 'KD-MZL-07.pdf', 'KD-MZL-07.doc', 113, 'A1', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (25, 'KD-MZL-08', '产品标识和可追溯控制标准', 'KD-MZL-08.pdf', 'KD-MZL-08.doc', 111, 'A2', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (26, 'KD-MZL-09', '体系考核管理标准', 'KD-MZL-09.pdf', 'KD-MZL-09.doc', 122, 'B1', 4, '质量管控二级文件', '2020-01-10 16:11:30', 0);
INSERT INTO `file` VALUES (27, 'KD-LJ01-001', 'IT设备进出流程', 'KD-LJ01-001.pdf', 'KD-LJ01-001.docx', 153, 'A4', 4, '逻辑安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (28, 'KD-LJ01-002', '机房管理制度', 'KD-LJ01-002.pdf', 'KD-LJ01-002.docx', 75, 'A4', 4, '逻辑安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (29, 'KD-LJ01-003', '网络配置授权书', 'KD-LJ01-003.pdf', 'KD-LJ01-003.zip', 1754, 'C2', 4, '逻辑安全三级文件', '2020-03-02 09:51:52', 0);
INSERT INTO `file` VALUES (30, 'KD-MY01-001', '外部加密机接收流程', 'KD-MY01-001.pdf', 'KD-MY01-001.docx', 205, 'A2', 4, '密钥管理三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (31, 'KD-MY01-002', '密钥加载演练流程', 'KD-MY01-002.pdf', 'KD-MY01-002.docx', 121, 'A9', 4, '密钥管理三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (32, 'KD-SC03-001', '计划管理部管理制度', 'KD-SC03-001.pdf', 'KD-SC03-001.docx', 86, 'B1', 7, '生产安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (33, 'KD-SC03-002', '产品投放管理制度', 'KD-SC03-002.pdf', 'KD-SC03-002.doc', 192, 'A6', 7, '生产安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (34, 'KD-SC03-003', '订单管理作业指导书', 'KD-SC03-003.pdf', 'KD-SC03-003.doc', 147, 'A2', 7, '生产安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (35, 'KD-SC03-004', '生产数字化管理规定', 'KD-SC03-004.pdf', 'KD-SC03-004.docx', 41, 'A2', 7, '生产安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (36, 'KD-SC03-005', '生产部审单作业指导书', 'KD-SC03-005.pdf', 'KD-SC03-005.doc', 149, 'A1', 7, '生产安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (37, 'KD-WL01-001', '保安员作业指导书', 'KD-WL01-001.pdf', 'KD-WL01-001.doc', 234, 'A1', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (38, 'KD-WL01-002', '内部安全检查作业指导书', 'KD-WL01-002.pdf', 'KD-WL01-002.doc', 184, 'A1', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (39, 'KD-WL03-001', '培训管理制度', 'KD-WL03-001.pdf', 'KD-WL03-001.docx', 62, 'A3', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (40, 'KD-WL03-002', '人力资源应急预案', 'KD-WL03-002.pdf', 'KD-WL03-002.doc', 136, 'A1', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (41, 'KD-WL03-003', '离职管理制度', 'KD-WL03-003.pdf', 'KD-WL03-003.docx', 59, 'A3', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (42, 'KD-WL03-004', '人事档案管理制度', 'KD-WL03-004.pdf', 'KD-WL03-004.docx', 57, 'A2', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (43, 'KD-WL03-005', '招聘和录用管理制度', 'KD-WL03-005.pdf', 'KD-WL03-005.docx', 65, 'A5', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (44, 'KD-WL03-006', '门禁通道及员工门禁卡管理规范', 'KD-WL03-006.pdf', 'KD-WL03-006.doc', 101, 'A5', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (45, 'KD-WL03-007', '人力资源部内部审核管理规定', 'KD-WL03-007.pdf', 'KD-WL03-007.docx', 57, 'A2', 4, '物理安全三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (46, 'KD-CX01-001', '安全事故类应急预案', 'KD-CX01-001.pdf', 'KD-CX01-001.docx', 272, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (47, 'KD-CX01-002', '关键信息保密性缺失类应急预案', 'KD-CX01-002.pdf', 'KD-CX01-002.docx', 334, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (48, 'KD-CX01-003', '产品生产类应急预案', 'KD-CX01-003.pdf', 'KD-CX01-003.docx', 183, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (49, 'KD-CX01-004', '电源故障应急预案', 'KD-CX01-004.pdf', 'KD-CX01-004.docx', 66, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (50, 'KD-CX01-005', '个人化数据传输线路故障应急预案', 'KD-CX01-005.pdf', 'KD-CX01-005.docx', 72, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (51, 'KD-CX01-006', '个人化数据泄密、丢失应急预案', 'KD-CX01-006.pdf', 'KD-CX01-006.docx', 71, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (52, 'KD-CX01-007', '个人化网络设备故障应急预案', 'KD-CX01-007.pdf', 'KD-CX01-007.docx', 71, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (53, 'KD-CX01-008', '个人化系统故障应急预案', 'KD-CX01-008.pdf', 'KD-CX01-008.docx', 69, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
INSERT INTO `file` VALUES (54, 'KD-CX01-009', '个人化通讯线路故障应急预案', 'KD-CX01-009.pdf', 'KD-CX01-009.docx', 65, 'A1', 1, '业务持续性三级文件', '2020-01-10 16:59:02', 0);
COMMIT;

-- ----------------------------
-- Table structure for file_browser
-- ----------------------------
DROP TABLE IF EXISTS `file_browser`;
CREATE TABLE `file_browser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_serial` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `time_num` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_browser
-- ----------------------------
BEGIN;
INSERT INTO `file_browser` VALUES (1, '2020-01-10 16:17:51', '2020-01-10 16:17:51', '安全手册', 'KD-M-001', '黄伟', 'E5D6EEE59330663E0FD7CFDEEDC7CB12', 0, 'hawile');
INSERT INTO `file_browser` VALUES (2, '2020-01-13 11:22:57', '2020-01-13 11:22:57', '系统安全程序', 'KD-MLJ-01', '黄伟', 'B54013442D95043623FAD952CAEEE1D6', 0, 'hawile');
INSERT INTO `file_browser` VALUES (3, '2020-01-13 11:23:33', '2020-01-13 11:23:33', '系统安全程序', 'KD-MLJ-01', '黄伟', 'E73A4A0677883CB4F02E70330165C5BA', 0, 'hawile');
INSERT INTO `file_browser` VALUES (4, '2020-01-13 11:26:38', '2020-01-13 11:26:38', '系统安全程序', 'KD-MLJ-01', '黄伟', 'E73A4A0677883CB4F02E70330165C5BA', 0, 'hawile');
INSERT INTO `file_browser` VALUES (5, '2020-01-19 16:43:56', '2020-01-19 16:48:57', '网络配置授权书', 'KD-LJ01-003', '黄伟', '1C4FBDDA54FCF8AAD867CB852039C758', 5, 'hawile');
INSERT INTO `file_browser` VALUES (6, '2020-01-19 16:50:08', '2020-01-19 16:50:08', '网络配置授权书', 'KD-LJ01-003', '黄伟', '02D10E6D4B7F23D854B45ACBA262B01D', 0, 'hawile');
INSERT INTO `file_browser` VALUES (7, '2020-01-19 16:50:35', '2020-01-19 16:50:35', '网络配置授权书', 'KD-LJ01-003', '黄伟', '07DD5D3B7E27A2AC78995CD30B3CC448', 0, 'hawile');
INSERT INTO `file_browser` VALUES (8, '2020-03-02 09:51:58', '2020-03-02 09:52:58', '网络配置授权书', 'KD-LJ01-003', '黄伟', 'DB2A68479C962C8BEAD965A405AFBCCD', 1, 'hawile');
INSERT INTO `file_browser` VALUES (9, '2020-05-20 11:09:36', '2020-05-20 11:09:36', '系统安全程序', 'KD-MLJ-01', '黄伟', 'BCAD751A62F173F389C1DE4A14693CEE', 0, 'hawile');
COMMIT;

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件序号',
  `serial` varchar(100) DEFAULT '' COMMENT '文件编号',
  `name` varchar(100) DEFAULT '' COMMENT '文件名',
  `path` varchar(255) DEFAULT '' COMMENT '文件路径',
  `download` varchar(255) DEFAULT NULL COMMENT '下载地址',
  `file_size` int(255) DEFAULT '0' COMMENT '文件大小',
  `version` varchar(10) DEFAULT '' COMMENT '版本',
  `dept_id` int(10) DEFAULT '1' COMMENT '所属部门',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `file_xlsx` varchar(255) DEFAULT NULL COMMENT '表单模板路径',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKkmkqn318bjaa46hc5lvxdqrip` (`dept_id`) USING BTREE,
  CONSTRAINT `FKkmkqn318bjaa46hc5lvxdqrip` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of form
-- ----------------------------
BEGIN;
INSERT INTO `form` VALUES (1, 'KD-LJ01-BD00001', 'IT故障维护记录表', 'KD-LJ01-BD00001.pdf', 'KD-LJ01-BD00001.xlsx', 504, 'A4', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (2, 'KD-LJ01-BD00002', 'IT日常检查记录表', 'KD-LJ01-BD00002.pdf', 'KD-LJ01-BD00002.xlsm', 506, 'A4', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (3, 'KD-LJ01-BD00003', 'IT设备交接函', 'KD-LJ01-BD00003.pdf', 'KD-LJ01-BD00003.xlsm', 509, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (4, 'KD-LJ01-BD00004', 'IT设备安装及变更申请表', 'KD-LJ01-BD00004.pdf', 'KD-LJ01-BD00004.xlsm', 505, 'A3', 4, '逻辑安全受控表单', 'Form095', '2020-01-10 15:35:09');
INSERT INTO `form` VALUES (5, 'KD-LJ01-BD00005', 'IT设备安装及变更记录表', 'KD-LJ01-BD00005.pdf', 'KD-LJ01-BD00005.xlsm', 503, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (6, 'KD-LJ01-BD00006', 'IT设备检查报告', 'KD-LJ01-BD00006.pdf', 'KD-LJ01-BD00006.xlsm', 504, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (7, 'KD-LJ01-BD00007', 'IT设备运输申请表', 'KD-LJ01-BD00007.pdf', 'KD-LJ01-BD00007.xlsm', 504, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (8, 'KD-LJ01-BD00008', 'IT账号开通及变更申请表', 'KD-LJ01-BD00008.pdf', 'KD-LJ01-BD00008.xlsm', 505, 'A3', 4, '逻辑安全受控表单', 'Form101', '2020-01-10 15:35:22');
INSERT INTO `form` VALUES (9, 'KD-LJ01-BD00009', 'IT账号管理记录表', 'KD-LJ01-BD00009.pdf', 'KD-LJ01-BD00009.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (10, 'KD-LJ01-BD00010', '关键设备审查记录', 'KD-LJ01-BD00010.pdf', 'KD-LJ01-BD00010.xlsx', 629, 'A8', 4, '逻辑安全受控表单', NULL, '2020-03-02 10:08:37');
INSERT INTO `form` VALUES (11, 'KD-LJ01-BD00011', '安全区设备密码修改登记表', 'KD-LJ01-BD00011.pdf', 'KD-LJ01-BD00011.xlsm', 584, 'A2', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (12, 'KD-LJ01-BD00012', '客户账号管理记录表', 'KD-LJ01-BD00012.pdf', 'KD-LJ01-BD00012.xlsm', 585, 'A1', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (13, 'KD-LJ01-BD00013', '无线热点扫描统计表', 'KD-LJ01-BD00013.pdf', 'KD-LJ01-BD00013.xlsm', 503, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (14, 'KD-LJ01-BD00014', '日志销毁记录表', 'KD-LJ01-BD00014.pdf', 'KD-LJ01-BD00014.xlsm', 584, 'A2', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (15, 'KD-LJ01-BD00015', '时间校对记录表', 'KD-LJ01-BD00015.pdf', 'KD-LJ01-BD00015.xlsm', 503, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (16, 'KD-LJ01-BD00016', '病毒及补丁更新记录表', 'KD-LJ01-BD00016.pdf', 'KD-LJ01-BD00016.xlsx', 53, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (17, 'KD-LJ01-BD00017', '计算机档案记录表', 'KD-LJ01-BD00017.pdf', 'KD-LJ01-BD00017.xlsm', 504, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (18, 'KD-LJ01-BD00018', '逻辑安全内部审计、审查报告', 'KD-LJ01-BD00018.pdf', 'KD-LJ01-BD00018.xlsm', 506, 'A5', 4, '逻辑安全受控表单', 'Form085', '2020-01-10 15:34:45');
INSERT INTO `form` VALUES (19, 'KD-LJ01-BD00019', 'Windows操作系统登陆权限记录表', 'KD-LJ01-BD00019.pdf', 'KD-LJ01-BD00019.xlsx', 580, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (20, 'KD-LJ01-BD00020', '生产网络设备IP登记表', 'KD-LJ01-BD00020.pdf', 'KD-LJ01-BD00020.xlsx', 504, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (21, 'KD-LJ01-BD00021', '生产区域IT设备清单', 'KD-LJ01-BD00021.pdf', 'KD-LJ01-BD00021.xlsx', 596, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (22, 'KD-LJ01-BD00022', '加密机统计清单', 'KD-LJ01-BD00022.pdf', 'KD-LJ01-BD00022.xlsx', 581, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (23, 'KD-LJ01-BD00023', '逻辑安全检查记录单（SAS 周）', 'KD-LJ01-BD00023.pdf', 'KD-LJ01-BD00023.xlsx', 506, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (24, 'KD-LJ01-BD00024', '逻辑安全检查记录单（SAS 月）', 'KD-LJ01-BD00024.pdf', 'KD-LJ01-BD00024.xlsx', 510, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (25, 'KD-LJ01-BD00025', '报废硬盘数据安全处理记录表', 'KD-LJ01-BD00025.pdf', 'KD-LJ01-BD00025.xlsx', 504, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (26, 'KD-LJ01-BD00026', 'IT固定资产统计表', 'KD-LJ01-BD00026.pdf', 'KD-LJ01-BD00026.xlsx', 53, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (27, 'KD-LJ01-BD00201', '日常机房巡检记录表', 'KD-LJ01-BD00201.pdf', 'KD-LJ01-BD00201.xlsm', 589, 'A2', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (28, 'KD-LJ01-BD00202', '机房人员、物品进出登记表', 'KD-LJ01-BD00202.pdf', 'KD-LJ01-BD00202.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (29, 'KD-LJ01-BD00203', '机房进出申请表', 'KD-LJ01-BD00203.pdf', 'KD-LJ01-BD00203.xlsm', 504, 'A3', 4, '逻辑安全受控表单', 'Form104', '2020-01-10 15:35:37');
INSERT INTO `form` VALUES (30, 'KD-LJ02-BD00001', '媒介及Psam卡使用申请表', 'KD-LJ02-BD00001.pdf', 'KD-LJ02-BD00001.xlsm', 505, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (31, 'KD-LJ02-BD00002', '存储介质信息记录表', 'KD-LJ02-BD00002.pdf', 'KD-LJ02-BD00002.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (32, 'KD-LJ02-BD00003', '存储介质数据删除及销毁记录表', 'KD-LJ02-BD00003.pdf', 'KD-LJ02-BD00003.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (33, 'KD-LJ03-BD00001', '数据备份记录表', 'KD-LJ03-BD00001.pdf', 'KD-LJ03-BD00001.xlsm', 584, 'A5', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (34, 'KD-LJ03-BD00002', '数据恢复报告', 'KD-LJ03-BD00002.pdf', 'KD-LJ03-BD00002.xlsm', 505, 'A2', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (35, 'KD-MY01-BD00001', 'HSM、密钥管理系统检查表', 'KD-MY01-BD00001.pdf', 'KD-MY01-BD00001.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (36, 'KD-MY01-BD00002', 'HSM转运登记表', 'KD-MY01-BD00002.pdf', 'KD-MY01-BD00002.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (37, 'KD-MY01-BD00003', 'HSM销毁申请表', 'KD-MY01-BD00003.pdf', 'KD-MY01-BD00003.xlsm', 508, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (38, 'KD-MY01-BD00004', 'HSM销毁记录表', 'KD-MY01-BD00004.pdf', 'KD-MY01-BD00004.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (39, 'KD-MY01-BD00005', '保险箱存取记录表', 'KD-MY01-BD00005.pdf', 'KD-MY01-BD00005.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (40, 'KD-MY01-BD00006', '密钥传输记录表', 'KD-MY01-BD00006.pdf', 'KD-MY01-BD00006.xlsm', 510, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (41, 'KD-MY01-BD00007', '密钥停用申请表', 'KD-MY01-BD00007.pdf', 'KD-MY01-BD00007.xlsm', 508, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (42, 'KD-MY01-BD00008', '密钥停用记录表', 'KD-MY01-BD00008.pdf', 'KD-MY01-BD00008.xlsm', 508, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (43, 'KD-MY01-BD00009', '密钥储存记录表', 'KD-MY01-BD00009.pdf', 'KD-MY01-BD00009.xlsm', 509, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (44, 'KD-MY01-BD00010', '密钥加载记录表', 'KD-MY01-BD00010.pdf', 'KD-MY01-BD00010.xlsm', 509, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (45, 'KD-MY01-BD00011', '密钥备份申请表', 'KD-MY01-BD00011.pdf', 'KD-MY01-BD00011.xlsm', 508, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (46, 'KD-MY01-BD00012', '密钥存取记录表', 'KD-MY01-BD00012.pdf', 'KD-MY01-BD00012.xlsm', 509, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (47, 'KD-MY01-BD00013', '密钥对接方信息表', 'KD-MY01-BD00013.pdf', 'KD-MY01-BD00013.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (48, 'KD-MY01-BD00014', '密钥异常情况记录表', 'KD-MY01-BD00014.pdf', 'KD-MY01-BD00014.xlsm', 508, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (49, 'KD-MY01-BD00015', '密钥清单', 'KD-MY01-BD00015.pdf', 'KD-MY01-BD00015.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (50, 'KD-MY01-BD00016', '密钥生成记录表', 'KD-MY01-BD00016.pdf', 'KD-MY01-BD00016.xlsm', 509, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (51, 'KD-MY01-BD00017', '密钥管理员记录表', 'KD-MY01-BD00017.pdf', 'KD-MY01-BD00017.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (52, 'KD-MY01-BD00018', '密钥访问日志', 'KD-MY01-BD00018.pdf', 'KD-MY01-BD00018.xlsm', 584, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (53, 'KD-MY01-BD00019', '密钥销毁申请表', 'KD-MY01-BD00019.pdf', 'KD-MY01-BD00019.xlsm', 508, 'A3', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (54, 'KD-MY01-BD00020', '密钥销毁记录表', 'KD-MY01-BD00020.pdf', 'KD-MY01-BD00020.xlsm', 508, 'A2', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (55, 'KD-MY01-BD00021', '密钥人员任命终止表', 'KD-MY01-BD00021.pdf', 'KD-MY01-BD00021.xlsx', 506, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (56, 'KD-MY01-BD00022', '密钥管理员任命终止表', 'KD-MY01-BD00022.pdf', 'KD-MY01-BD00022.xlsx', 506, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
INSERT INTO `form` VALUES (57, 'KD-MY01-BD00023', '密钥组任命清单', 'KD-MY01-BD00023.pdf', 'KD-MY01-BD00023.xlsx', 503, 'A0', 4, '逻辑安全受控表单', NULL, '2020-01-10 15:33:08');
COMMIT;

-- ----------------------------
-- Table structure for form_input
-- ----------------------------
DROP TABLE IF EXISTS `form_input`;
CREATE TABLE `form_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `form_no` int(255) DEFAULT NULL,
  `form_path` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of form_input
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `specs` varchar(255) DEFAULT '' COMMENT '规格',
  `pcs` varchar(255) DEFAULT '' COMMENT '单位',
  `price` double(10,2) DEFAULT '0.00' COMMENT '价格',
  `price2` double(10,2) DEFAULT '0.00' COMMENT '批发价',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` VALUES (1, '可口可乐', '500ml', '瓶', 3.00, 2.17, '无', '2019-09-04 16:24:13');
INSERT INTO `goods` VALUES (2, '雪碧', '500ml', '瓶', 3.00, 2.17, '无', '2020-09-07 17:01:31');
INSERT INTO `goods` VALUES (3, '农夫茶π', '600ml', '瓶', 4.50, 3.87, '无', '2020-09-07 17:01:32');
INSERT INTO `goods` VALUES (4, '脉动', '600ml', '瓶', 4.00, 3.07, '无', '2020-09-07 17:01:33');
INSERT INTO `goods` VALUES (5, '营养快线', '450g', '瓶', 4.00, 3.00, '无', '2020-09-07 17:01:33');
INSERT INTO `goods` VALUES (6, '鲜橙多', '450ml', '瓶', 3.00, 2.20, '无', '2020-09-07 17:01:34');
INSERT INTO `goods` VALUES (7, '方便面', '106g', '桶', 4.00, 3.17, '无', '2020-09-07 17:01:34');
INSERT INTO `goods` VALUES (8, '百事可乐', '600ml', '瓶', 3.00, 2.17, '无', '2020-09-07 17:01:35');
COMMIT;

-- ----------------------------
-- Table structure for it_property
-- ----------------------------
DROP TABLE IF EXISTS `it_property`;
CREATE TABLE `it_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `it_id` varchar(100) DEFAULT NULL,
  `it_type` varchar(100) DEFAULT ' ' COMMENT '设备类型',
  `it_name` varchar(100) DEFAULT ' ' COMMENT '设备名称',
  `it_brand` varchar(100) DEFAULT ' ' COMMENT '设备品牌',
  `it_model` varchar(100) DEFAULT ' ' COMMENT '设备型号',
  `it_serial` varchar(100) DEFAULT ' ' COMMENT '序列号',
  `it_position` varchar(100) DEFAULT ' ' COMMENT '位置',
  `it_user` varchar(100) DEFAULT ' ' COMMENT '使用人',
  `it_use` varchar(100) DEFAULT ' ' COMMENT '用途',
  `it_ip` varchar(50) DEFAULT ' ' COMMENT 'IP',
  `it_network` varchar(100) DEFAULT NULL,
  `it_remark` varchar(255) DEFAULT ' ' COMMENT '备注',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of it_property
-- ----------------------------
BEGIN;
INSERT INTO `it_property` VALUES (1, 'CDJK(密)-S01-05-003-062', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4550-N000', '', '保密室', '刘劲松', '', '', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (2, 'CDJK(密)-S01-05-003-063', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4550-N000', '', '保密室', '刘劲松', '', '', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (3, 'CDJK(密)-S01-05-003-064', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4550-N000', '', '保密室', '刘劲松', '', '', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (4, 'CDJK(密)-S01-05-004-062', '液晶显示器', '液晶显示器', 'Lenovo', 'T1024F', 'U1P0CH7B', '保密室', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (5, 'CDJK(密)-S01-05-004-063', '液晶显示器', '液晶显示器', 'Lenovo', 'T1024F', 'U1P0CKMZ', '保密室', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (6, 'CDJK(密)-S01-05-004-064', '液晶显示器', '液晶显示器', 'Lenovo', 'T1024F', 'U1P0CH9C', '保密室', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (7, 'CDJK(密)-S01-05-011-019', '其它设备', '碎纸机', '', 'BM-SZ03', '922026', '保密室', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (8, 'CDJK-S01-05-001-001', '服务器', '服务器', 'Dell', 'PowerEdge R220', '5TW7C52', '生产机房', '王建勋', '管理服务器', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (9, 'CDJK-S01-05-001-002', '服务器', '服务器', 'Dell', 'PowerEdge R220', '1ZTVF52', '大数据机房', '王建勋', '', '', '100M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (10, 'CDJK-S01-05-001-003', '服务器', '服务器', 'Dell', 'PowerEdge R420', 'JW3TZ42', '大数据机房', '王建勋', '', '', '100M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (11, 'CDJK-S01-05-001-004', '服务器', '服务器', 'Dell', 'PowerEdge R720', '386SQ42', '大数据机房', '王建勋', '', '192.168.4.250', '100M光宽', '', '2018-12-25 10:56:31');
INSERT INTO `it_property` VALUES (12, 'CDJK-S01-05-001-005', '服务器', '服务器', 'Dell', 'PowerEdge R720', 'J2M4Z42', '大数据机房', '王建勋', '', '192.168.4.252', '100M光宽', '', '2018-12-25 10:56:51');
INSERT INTO `it_property` VALUES (13, 'CDJK-S01-05-001-006', '服务器', '服务器', 'Dell', 'PowerEdge R720', '196SQ42', '大数据机房', '王建勋', '', '192.168.4.253', '100M光宽', '', '2018-12-25 10:57:03');
INSERT INTO `it_property` VALUES (14, 'CDJK-S01-05-001-007', '服务器', '服务器', 'Dell', 'PowerEdge R720', 'F3M4Z42', '大数据机房', '王建勋', '', '192.168.4.254', '100M光宽', '', '2018-12-25 10:57:16');
INSERT INTO `it_property` VALUES (15, 'CDJK-S01-05-001-008', '服务器', '服务器', 'Dell', 'PowerEdge R220', '8DF9C52', '生产机房', '王建勋', 'CA、WUSU服务器', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (16, 'CDJK-S01-05-001-009', '服务器', '服务器', 'Dell', 'PowerEdge R220', '1ZF9Q52', '生产机房', '王建勋', 'CPS应用服务器4', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (17, 'CDJK-S01-05-001-010', '服务器', '服务器', 'Dell', 'PowerEdge R220', '68F9C52', '生产机房', '王建勋', 'CPS应用服务器3', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (18, 'CDJK-S01-05-001-011', '服务器', '服务器', 'Dell', 'PowerEdge R220', '1ZD3Q52', '生产机房', '王建勋', 'CPS应用服务器2', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (19, 'CDJK-S01-05-001-012', '服务器', '服务器', 'Dell', 'PowerEdge R220', '1ZV4Q52', '生产机房', '王建勋', 'CPS应用服务器1', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (20, 'CDJK-S01-05-001-013', '服务器', '服务器', 'Lenovo', 'ThinkServer RD640', 'NC01299352', '生产机房', '王建勋', 'CPS数据库1', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (21, 'CDJK-S01-05-001-014', '服务器', '服务器', 'Lenovo', 'ThinkServer TS530', 'NC01306706', '生产机房', '王建勋', '日志服务器', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (22, 'CDJK-S01-05-001-015', '服务器', '服务器', 'Lenovo', 'ThinkServer RD640', 'NC01711994', '生产机房', '王建勋', 'CPS数据库2', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (23, 'CDJK-S01-05-001-016', '服务器', '服务器', '组装', '无', '无', '大数据机房', '王建勋', '动环监控服务器', '', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (24, 'CDJK-S01-05-001-018', '服务器', '服务器', 'Lenovo', '3650M5', 'J30GFA9', '生产机房', '王建勋', 'DPC', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (25, 'CDJK-S01-05-001-019', '服务器', '服务器', 'Dell', 'PowerEdge R730', 'DGFXLG2', '生产机房', '王建勋', '数据准备服务器', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (26, 'CDJK-S01-05-001-020', '服务器', '服务器', 'Dell', 'PowerEdge R730', 'DGGXLG2', '生产机房', '王建勋', '数据接收服务器', '', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (27, 'CDJK-S01-05-001-021', '服务器', '服务器', 'DELL', '无', 'CSS5YM2', '大数据机房', '王建勋', '主VG', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (28, 'CDJK-S01-05-001-022', '服务器', '服务器', 'DELL', '无', 'CN36YM2', '大数据机房', '王建勋', '主控制器一', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (29, 'CDJK-S01-05-001-023', '服务器', '服务器', 'DELL', '无', 'CSZ9YM2', '大数据机房', '王建勋', '主控制器二', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (30, 'CDJK-S01-05-001-024', '服务器', '服务器', 'DELL', '无', 'CS05YM2', '大数据机房', '王建勋', '主计算节点一', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (31, 'CDJK-S01-05-001-025', '服务器', '服务器', 'DELL', '无', 'CKW3YM2', '大数据机房', '王建勋', '主计算节点二', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (32, 'CDJK-S01-05-001-026', '服务器', '服务器', 'DELL', '无', 'CST3YM2', '大数据机房', '王建勋', '备份VG', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (33, 'CDJK-S01-05-001-027', '服务器', '服务器', 'DELL', '无', 'CN5BYM2', '大数据机房', '王建勋', '备份控制器一', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (34, 'CDJK-S01-05-001-028', '服务器', '服务器', 'DELL', '无', 'CSZBYM2', '大数据机房', '王建勋', '备份控制器二', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (35, 'CDJK-S01-05-001-029', '服务器', '服务器', 'DELL', '无', 'CRX8YM2', '大数据机房', '王建勋', '备份计算节点一', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (36, 'CDJK-S01-05-001-030', '服务器', '服务器', 'DELL', '无', 'CRZ4YM2', '大数据机房', '王建勋', '备份计算节点二', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (37, 'CDJK-S01-05-001-031', '服务器', '服务器', 'DELL', '无', 'FDRVHD2', '大数据机房', '王建勋', '备份服务器', '', '300M光宽', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (38, 'CDJK-S01-05-001-032\n~CDJK-S01-05-001-081', '服务器', '服务器机壳', '', '', '', '', '王建勋', '', '', '', '50个', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (39, 'CDJK-S01-05-003-001', '台式电脑主机', '台式电脑主机', 'HP', 'Pro 3335 Micro Tower', '4CV31284YG', '安全策略部办公室', '王建勋', NULL, '6C-3B-E5-30-7A-19', '闲置', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (40, 'CDJK-S01-05-003-002', '台式电脑主机', '台式电脑主机', 'HP', 'Pro 3335 Micro Tower', '4CV31284YM', '监控室', '郭明', '门禁系统管理', '6C-3B-E5-1B-BB-CF', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (41, 'CDJK-S01-05-003-003', '台式电脑主机', '台式电脑主机', 'Dell', 'OPTIPLEX 9020', 'B572S62', '监控室', '郭明', '报警系统管理', '64-00-6A-5D-0F-F3', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (42, 'CDJK-S01-05-003-004', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', 'BA01499192', '监控室', '郭明', '监控系统管理', '44-37-E6-D4-F7-77', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (43, 'CDJK-S01-05-003-005', '台式电脑主机', '台式电脑主机', '组装机', '游戏炫风 机箱', '', '封装车间', '彭淼', '数据传输', '00-E0-66-D2-DB-C3', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (44, 'CDJK-S01-05-003-006', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '物控部办公室', '屈红波', '办公', '00-E0-66-FD-1D-5E', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (45, 'CDJK-S01-05-003-007', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '安全策略部办公室', '王建勋', '办公', '00-E0-66-FD-1E-C8', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (46, 'CDJK-S01-05-003-009', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '综合办公室', '向琳', '办公', '1C-87-2C-D1-F1-13', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (47, 'CDJK-S01-05-003-010', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', 'BA01497658', '副总经理办公室', '陈为明', '办公', NULL, '办公网', NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (48, 'CDJK-S01-05-003-011', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', '周继萱', '办公', '00-E0-66-FD-1D-2D', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (49, 'CDJK-S01-05-003-012', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', 'BA01499232', '数据处理室', '熊磊', '数据处理', '44-37-E6-D4-AD-E8', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (50, 'CDJK-S01-05-003-013', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '数据处理室', '郑倩', '数据处理', '1C-87-2C-64-C3-80', '生产网', '', '2019-11-07 10:17:34');
INSERT INTO `it_property` VALUES (51, 'CDJK-S01-05-003-014', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', 'BA01491071', '数据处理室', '余维', '数据处理', 'C0-3F-D5-38-BE-2A', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (52, 'CDJK-S01-05-003-015', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '数据处理室', '赵冯蓉', '数据处理', '1C-87-2C-64-E8-0C', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (53, 'CDJK-S01-05-003-016', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', 'BA01499224', '个人化车间', '胡廷军', '卡片个人化检查', '44-37-E6-D4-BF-40', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (54, 'CDJK-S01-05-003-017', '台式电脑主机', '台式电脑主机', '组装机', '游戏炫风 机箱', '', '安全策略部办公室', '王建勋', NULL, '00-E0-66-D2-E0-15', '已坏', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (55, 'CDJK-S01-05-003-018', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '实验室', '郑培丽', '办公', '1C-87-2C-D1-F0-FD', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (56, 'CDJK-S01-05-003-019', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', '秦川', '办公', '00-E0-4C-02-88-15', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (57, 'CDJK-S01-05-003-020', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '制卡车间', '向国林', '办公', '00-E0-4C-02-87-E2', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (58, 'CDJK-S01-05-003-021', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '实验室', '郑培丽', NULL, '', '闲置', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (59, 'CDJK-S01-05-003-022', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '三楼库房', '', NULL, '1C-87-2C-D1-F0-84', '闲置', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (60, 'CDJK-S01-05-003-023', '台式电脑主机', '台式电脑主机', '组装机', 'Power Train机箱', '', '二楼人力行政部', '秦川', '充值', '00-E0-4C-02-8C-F6', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (61, 'CDJK-S01-05-003-024', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '物控部办公室', '屈红波', '办公', '00-E0-4C-02-8C-5C', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (62, 'CDJK-S01-05-003-025', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '综合办公室', '孙玉芬', '办公', '1C-87-2C-D1-F1-0C', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (63, 'CDJK-S01-05-003-026', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '一楼前台', '郭明', '办公', '00-E0-66-FD-1D-65', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (64, 'CDJK-S01-05-003-027', '台式电脑主机', '台式电脑主机', '组装机', '游戏炫风 机箱', '', '大数据机房', '王建勋', '备用FTP服务器', '00-E0-66-D2-E0-A2', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (65, 'CDJK-S01-05-003-028', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '实验室', '郑培丽', '办公', '1C-87-2C-D1-F1-29', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (66, 'CDJK-S01-05-003-029', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '安全策略部办公室', '刘劲松', '办公', '00-E0-66-FD-1D-4D', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (67, 'CDJK-S01-05-003-030', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '综合办公室', '彭淼', '办公', '1C-87-2C-D1-EE-44', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (68, 'CDJK-S01-05-003-031', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '综合办公室', '牟挪雅', '办公', '1C-87-2C-D1-F1-53', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (69, 'CDJK-S01-05-003-032', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '实验室', '郑培丽', '办公', '00-E0-4C-02-87-DE', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (70, 'CDJK-S01-05-003-033', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '综合办公室', NULL, NULL, '1C-87-2C-D1-EF-08', '闲置', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (71, 'CDJK-S01-05-003-034', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '个人化车间', '胡廷军', '办公', '00-E0-4C-02-87-E4', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (72, 'CDJK-S01-05-003-035', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', '胡廷军', '办公', '00-E0-66-FD-16-01', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (73, 'CDJK-S01-05-003-036', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', NULL, NULL, '00-E0-66-FD-26-90', '闲置', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (74, 'CDJK-S01-05-003-037', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', '赵冯蓉', '办公', '00-E0-4C-02-87-E1', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (75, 'CDJK-S01-05-003-038', '台式电脑主机', '台式电脑主机', '组装机', '游戏炫风 机箱', '', '综合办公室', '陈小渝', '办公', '00-E0-66-D2-DF-3F', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (76, 'CDJK-S01-05-003-039', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '综合办公室', '熊磊', '办公', '1C-87-2C-64-D4-A3', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (77, 'CDJK-S01-05-003-040', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', NULL, '设备部办公室', '杨彦青', '办公', NULL, '办公网', NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (78, 'CDJK-S01-05-003-041', '台式电脑主机', '台式电脑主机', '组装机', 'View Sonic机箱', '', '综合办公室', '余维', '办公', '1C-87-2C-64-E8-11', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (79, 'CDJK-S01-05-003-043', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', NULL, NULL, '00-E0-66-FD-15-F8', '闲置', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (80, 'CDJK-S01-05-003-044', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', '李朝霞', '办公', '00-E0-66-FD-1D-68', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (81, 'CDJK-S01-05-003-045', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', NULL, NULL, '00-E0-4C-02-87-E5', '闲置', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (82, 'CDJK-S01-05-003-047', '台式电脑主机', '台式电脑主机', '组装机', 'Power Train机箱', '', '二楼大办公室', '杜强林', '办公', '00-E0-66-FD-1D-4C', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (83, 'CDJK-S01-05-003-048', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '综合办公室', '孙玉芬', '办公', '00-E0-66-FD-2A-75', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (84, 'CDJK-S01-05-003-049', '台式电脑主机', '台式电脑主机', 'Dell', 'OPTIPLEX 7020', 'GHWZ252', '展厅', '刘劲松', '展厅签名主机', '', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (85, 'CDJK-S01-05-003-050', '台式电脑主机', '台式电脑主机', 'Dell', 'OPTIPLEX 7020', 'CJWZ252', '展厅', '刘劲松', '展厅第三部分', '', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (86, 'CDJK-S01-05-003-051', '台式电脑主机', '台式电脑主机', 'Dell', 'OPTIPLEX 7020', '6GWZ252', '展厅', '刘劲松', '展厅第二部分', '', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (87, 'CDJK-S01-05-003-052', '台式电脑主机', '台式电脑主机', 'Dell', 'OPTIPLEX 7020', 'D814352', '展厅', '刘劲松', '展厅第三部分核心', '', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (88, 'CDJK-S01-05-003-053', '台式电脑主机', '台式电脑主机', 'Dell', 'OPTIPLEX 7020', 'HGWZ252', '展厅', '刘劲松', '展厅拼接屏', '', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (89, 'CDJK-S01-05-003-054', '台式电脑主机', '台式电脑主机', '组装机', 'Power Train机箱', '', '生产机房', '王建勋', '闲置', '00-E0-4C-02-88-1A', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (90, 'CDJK-S01-05-003-055', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', 'BA01499172', '综合办公室', '张锦文', '办公', '44-37-E6-D4-C9-19', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (91, 'CDJK-S01-05-003-056', '台式电脑主机', '台式电脑主机', '组装机', 'Power Train机箱', '', '检验车间', '何杨', '', '00-E0-4C-02-87-D9', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (92, 'CDJK-S01-05-003-057', '台式电脑主机', '台式电脑主机', '组装机', '游戏炫风 机箱', '', '生产机房', '王建勋', '个人化动态链接库', '00-E0-66-D2-E0-08', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (93, 'CDJK-S01-05-003-058', '台式电脑主机', '台式电脑主机', '组装机', '刀锋3机箱', '', '数码打印室', NULL, '数码打印', '00-E0-66-FD-1D-69', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (94, 'CDJK-S01-05-003-059', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4550-N000', 'BA03970528', 'CTP制版室', '龚宇东', '图文数据接收', 'D8-CB-8A-23-D8-1C\n00-E0-4C-18-02-DA', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (95, 'CDJK-S01-05-003-060', '台式电脑主机', '台式电脑主机', 'Lenovo', '扬天T4900v-00', 'BS02799764', 'CTP制版室', '龚宇东', '图文数据传输', '44-8A-5B-E4-BB-36', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (96, 'CDJK-S01-05-003-061', '台式电脑主机', '台式电脑主机', '组装机', '无', '', '数据处理室', '熊磊', '数据处理', 'D8-CB-8A-CB-ED-FE', '生产网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (97, 'CDJK-S01-05-003-065', '台式电脑主机', '台式电脑主机', 'Lenovo', '扬天A6800F-10', '', '三楼机房', '王建勋', 'LED大屏显示控制', '', '无', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (98, 'CDJK-S01-05-003-066', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4550-N000', 'M701K61L', '保密室', '何书海', '办公', NULL, '办公网', NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (99, 'CDJK-S01-05-003-067', '台式电脑主机', '台式电脑主机', 'Lenovo', '扬天M6200R-00', '', '综合办公室', '周继萱', '办公', '', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (100, 'CDJK-S01-05-003-068', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4550-N000', '', '综合办公室', '孙玉芬', '办公', '', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (101, 'CDJK-S01-05-003-069', '台式电脑主机', '台式电脑主机', 'Lenovo', 'H430', '', '综合办公室', '李朝霞', '打印', '', '办公网', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (102, 'CDJK-S01-05-004-001', '液晶显示器', '液晶显示器', 'HP', 'Compaq LE1902x', '3CQ3090228', '一楼前台', '郭明', '办公', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (103, 'CDJK-S01-05-004-002', '液晶显示器', '液晶显示器', 'Dell', 'Dz015Hf', 'CN-0VG31Y-72872-4A7-C6MI', '监控室', '郭明', '门禁系统管理', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (104, 'CDJK-S01-05-004-003', '液晶显示器', '液晶显示器', 'Lenovo', 'LT1953wF', '6M05544D5114420', '监控室', '郭明', '报警系统管理', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (105, 'CDJK-S01-05-004-004', '液晶显示器', '液晶显示器', 'HP', 'Compaq LE1902x', '3CQ3090211', '监控室', '郭明', '监控系统管理', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (106, 'CDJK-S01-05-004-005', '液晶显示器', '液晶显示器', 'Lenovo', 'LT1953wF', '6M05544D5116401', '封装车间', '彭淼', '数据传输', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (107, 'CDJK-S01-05-004-006', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810024', '物控部办公室', '屈红波', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (108, 'CDJK-S01-05-004-007', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810465', '安全策略部办公室', '王建勋', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (109, 'CDJK-S01-05-004-008', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810508', '综合办公室', '张锦文', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (110, 'CDJK-S01-05-004-009', '液晶显示器', '液晶显示器', 'PHILIPS', '203V5L', 'UHBA1512005033', '综合办公室', '向琳', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (111, 'CDJK-S01-05-004-010', '液晶显示器', '液晶显示器', 'Hanns-G', 'HW173A', '840DY3NA02489', '制卡车间', '向国林', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (112, 'CDJK-S01-05-004-011', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810488', '综合办公室', '孙玉芬', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (113, 'CDJK-S01-05-004-012', '液晶显示器', '液晶显示器', 'HKC', 'S932i', 'HLAR8011450502101', '数据处理室', '熊磊', '数据处理', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (114, 'CDJK-S01-05-004-013', '液晶显示器', '液晶显示器', 'Lenovo', 'LT1953wF', '6M05544D5116418', '数据处理室', '陈小渝', '数据处理', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (115, 'CDJK-S01-05-004-014', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5Q', 'ZV0A1513005455KF2', '数据处理室', '余维', '数据处理', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (116, 'CDJK-S01-05-004-015', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5Q', 'ZV0A1513005412643', '数据处理室', '赵冯蓉', '数据处理', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (117, 'CDJK-S01-05-004-016', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810479', '个人化车间', '胡廷军', '卡片个人化检查', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (118, 'CDJK-S01-05-004-017', '液晶显示器', '液晶显示器', 'HKC', 'S932i', 'HLAR8011450501143', '实验室', '郑培丽', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (119, 'CDJK-S01-05-004-018', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810359', '实验室', '郑培丽', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (120, 'CDJK-S01-05-004-019', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810467', '综合办公室', '秦川', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (121, 'CDJK-S01-05-004-020', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810089', '物控部办公室', '屈红波', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (122, 'CDJK-S01-05-004-021', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5L', 'UHBA1512003544', '实验室', '郑培丽', NULL, '', NULL, '闲置', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (123, 'CDJK-S01-05-004-023', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810327', '二楼人力行政部', '秦川', '充值', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (124, 'CDJK-S01-05-004-024', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810013', '综合办公室', '周继萱', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (125, 'CDJK-S01-05-004-025', '液晶显示器', '液晶显示器', 'AOSI', 'KT-171', 'K020071100011517KEWBS0059', NULL, '', '', '', NULL, '闲置', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (126, 'CDJK-S01-05-004-026', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810019', '设备部办公室', '杨彦青', '办公', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (127, 'CDJK-S01-05-004-027', '液晶显示器', '液晶显示器', 'HKC', 'S932i', 'HLAR8011450501164', '大数据机房', '王建勋', '服务器显示器', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (128, 'CDJK-S01-05-004-028', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5L', 'UHBA1509009841', '实验室', '郑培丽', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (129, 'CDJK-S01-05-004-029', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810435', '安全策略部办公室', '刘劲松', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (130, 'CDJK-S01-05-004-030', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5L', 'UHBA1512005362', '综合办公室', '彭淼', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (131, 'CDJK-S01-05-004-031', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5L', 'UHBA1512003040', '综合办公室', '胡廷军', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (132, 'CDJK-S01-05-004-032', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810004', '综合办公室', '孙玉芬', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (133, 'CDJK-S01-05-004-033', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5L', 'UHBA1512007308', '大数据机房', '王建勋', '备用FTP服务器', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (134, 'CDJK-S01-05-004-034', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810009', '个人化车间', '胡廷军', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (135, 'CDJK-S01-05-004-035', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810471', '综合办公室', '周继萱', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (136, 'CDJK-S01-05-004-036', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810018', '综合办公室', '赵冯蓉', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (137, 'CDJK-S01-05-004-037', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810507', '综合办公室', '余维', '办公', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (138, 'CDJK-S01-05-004-038', '液晶显示器', '液晶显示器', 'Lenovo', 'LT1953wF', '6M05544D5116424', '综合办公室', '陈小渝', '办公', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (139, 'CDJK-S01-05-004-039', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5Q', 'ZV0A15140001193AD', '综合办公室', '熊磊', '办公', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (140, 'CDJK-S01-05-004-040', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810328', '综合办公室', '牟挪雅', '办公', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (141, 'CDJK-S01-05-004-041', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5Q', 'ZV0A15130051873CG', 'CTP室', '龚宇东', '办公', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (142, 'CDJK-S01-05-004-042', '液晶显示器', '液晶显示器', 'HKC', 'S932i', 'HLAR8011450501165', '保密室', '何书海', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (143, 'CDJK-S01-05-004-043', '液晶显示器', '液晶显示器', 'Lenovo', 'LT1953wF', '6M05544D5116408', '综合办公室', NULL, NULL, '', NULL, '闲置', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (144, 'CDJK-S01-05-004-044', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810496', '综合办公室', '李朝霞', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (145, 'CDJK-S01-05-004-045', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810014', '综合办公室', NULL, NULL, '', NULL, '闲置', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (146, 'CDJK-S01-05-004-046', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5Q', 'ZV0A151400094366G', '综合办公室', '王涛', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (147, 'CDJK-S01-05-004-048', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810492', '展厅', '刘劲松', 'RFID演示', '', NULL, '闲置', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (148, 'CDJK-S01-05-004-049', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810495', '生产机房', '王建勋', 'KVM切换器', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (149, 'CDJK-S01-05-004-050', '液晶显示器', '液晶显示器', 'Lenovo', 'LT1953wH', '3M05904D52Y7035', '检验车间', '何杨', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (150, 'CDJK-S01-05-004-051', '液晶显示器', '液晶显示器', 'PHILIPS', '243V5L', 'UHBA1512003627', '安全策略部办公室', '王建勋', NULL, '', NULL, '闲置', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (151, 'CDJK-S01-05-004-052', '液晶显示器', '液晶显示器', 'HKC', 'S932i', 'HLAR8011450501977', '副总经理办公室', '陈为明', '办公', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (152, 'CDJK-S01-05-004-053', '液晶显示器', '液晶显示器', 'HKC', 'S2232i', 'HCAK0101510810512', '数码打印室', NULL, '数码打印', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (153, 'CDJK-S01-05-004-054', '液晶显示器', '液晶显示器', 'SAMSUNG', 'LS22C330HW', 'ZZ4THTKF307175A', '综合办公室', '王涛', '图文处理', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (154, 'CDJK-S01-05-004-055', '液晶显示器', '液晶显示器', 'Lenovo', 'LT2024wA', '0M05832E15N4846', 'CTP制版室', '龚宇东', '图文数据传输', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (155, 'CDJK-S01-05-004-056', '液晶显示器', '液晶显示器', 'HUYINIUDA', 'LED190W', '1503011903055', '包装车间', '', '监控实时显示', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (156, 'CDJK-S01-05-004-057', '液晶显示器', '液晶显示器', 'HUYINIUDA', 'LED190W', '1503011903086', '包装车间', '', '监控实时显示', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (157, 'CDJK-S01-05-004-059', '液晶显示器', '液晶显示器', 'PHILIPS', '216V6L', 'ZQ0A16130014316BB', '数据处理室', '熊磊', '数据处理', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (158, 'CDJK-S01-05-004-060', '液晶显示器', '液晶显示器', 'Lenovo', 'LS2014WA', '1S65B6ACTU15FGC23', '综合办公室', '孙玉芬', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (159, 'CDJK-S01-05-004-061', '液晶显示器', '液晶显示器', 'HUYINIUDA', 'LED190W', '1506011906002', '员工宿舍', '赵洪元', '监控', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (160, 'CDJK-S01-05-004-065', '液晶显示器', '液晶显示器', 'SAMSUNG', 'C27F396FH', '0PLKHTQHC01206Y', '三楼机房', '王建勋', 'LED大屏显示控制', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (161, 'CDJK-S01-05-004-068', '液晶显示器', '液晶显示器', 'Lenovo', 'L1224WA', '8ML1700E21N0662', '综合办公室', '李朝霞', '办公', '', NULL, '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (162, 'CDJK-S01-05-005-001', '复印机、扫描仪', '数码多功能机', '富士施乐', 'DocuCentre S2220 CPS', '101673', '一楼前台', '郭明', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (163, 'CDJK-S01-05-005-002', '复印机、扫描仪', '数码多功能机', '富士施乐', 'DocuCentre S1810 CPS', '430898', '综合办公室', NULL, '', '192.168.4.159', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (164, 'CDJK-S01-05-005-003', '复印机、扫描仪', '扫描仪', 'Canon', 'cano scan LiDE110', 'KEWD95248', '综合办公室', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (165, 'CDJK-S01-05-005-004', '复印机、扫描仪', '扫描仪', 'Canon', 'DR-3010C', 'EG914067', '综合办公室', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (166, 'CDJK-S01-05-005-005', '复印机、扫描仪', '喷墨打印机', 'EPSON', 'Stylus Photo R330', 'TXUK588127', '综合办公室', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (167, 'CDJK-S01-05-005-006', '复印机、扫描仪', '针式打印机', 'EPSON', 'LQ-635K', 'U9ZH075357', '物控部办公室', '屈红波', '打印单据', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (168, 'CDJK-S01-05-005-008', '复印机、扫描仪', '激光打印机', 'Canon', 'LBP2900', 'MXAA278441', '实验室', '郑培丽', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (169, 'CDJK-S01-05-005-009', '复印机、扫描仪', '扫描仪', 'Canon', 'DR-3010C', 'EG95578', '综合办公室', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (170, 'CDJK-S01-05-005-010', '复印机、扫描仪', '条码打印机', 'Zabra', 'ZT230', '25J143800344', '保密室', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (171, 'CDJK-S01-05-005-011', '复印机、扫描仪', '热转印条码打印机', '佳博', 'GP-1124T', '161009-1124T-C0466G', '综合办公室', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (172, 'CDJK-S01-05-005-012', '复印机、扫描仪', '喷墨打印机', 'EPSON', 'Stylus Photo R330', 'TXUK336921', '数据处理室', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (173, 'CDJK-S01-05-005-013', '复印机、扫描仪', '激光多功能一体打印机', 'Lenovo', 'M7206', 'WP00259894', '保密室', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (174, 'CDJK-S01-05-005-014', '复印机、扫描仪', '喷墨打印机', 'Canon', 'L56S', 'VJPX021690', '综合办公室', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (175, 'CDJK-S01-05-005-015', '复印机、扫描仪', '数码多功能机', '东芝', 'E-STUDIO2830C', '无', '综合办公室', '', '', '192.168.4.199', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (176, 'CDJK-S01-05-006-001', '投影、幕布', '投影仪', 'Panasonic', 'PT-BX621C', 'DB4650228', '培训室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (177, 'CDJK-S01-05-006-002', '投影、幕布', '投影仪', 'Panasonic', 'PT-BX621C', 'DB4650224', '培训室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (178, 'CDJK-S01-05-006-003', '投影、幕布', '投影仪', 'Panasonic', 'PT-BX621C', 'DB4650219', '培训室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (179, 'CDJK-S01-05-006-004', '投影、幕布', '投影幕布', '', '100英寸', '', '培训室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (180, 'CDJK-S01-05-006-005', '投影、幕布', '投影幕布', '', '100英寸', '', '培训室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (181, 'CDJK-S01-05-006-006', '投影、幕布', '投影幕布', '', '150英寸', '', '培训室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (182, 'CDJK-S01-05-006-007', '投影、幕布', '投影仪', 'Acer', 'EV-S11T', 'EYJBU010362460011C583F', '一号会议室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (183, 'CDJK-S01-05-006-008', '投影、幕布', '投影幕布', 'Redleaf', '120英寸', '', '二号会议室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (184, 'CDJK-S01-05-006-009', '投影、幕布', '投影仪', 'EPSON', 'EB-C05S', 'PTMF272321L', '安全策略部办公室', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (185, 'CDJK-S01-05-009-001', '软件', 'IMC智能管理平台', 'H3C', 'IMC7', '', '', '', '', '', '授权安装/用户数量：25+5', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (186, 'CDJK-S01-05-009-002', '软件', 'EndPoint Protection', 'Symantec', '12.1', 'M6428493887', '生产机房', '', '', '', '授权安装/用户数量：25', '', '2019-01-11 13:45:26');
INSERT INTO `it_property` VALUES (187, 'CDJK-S01-05-009-003', '软件', '百络网警', '百络', '1.0.0.0', '', '', '', '', '', '授权安装/用户数量：20', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (188, 'CDJK-S01-05-009-004', '软件', 'Rose Mirror HA', 'ROSE Datasystem', '4.4.0', '', '', '', '', '', '授权安装/用户数量：2', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (189, 'CDJK-S01-05-009-005', '软件', 'Windows Server', 'Microsoft', '2008R2简体中文企业版', '', '', '', '', '', '授权安装/用户数量：25', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (190, 'CDJK-S01-05-009-006', '软件', 'SafeShare', '赛孚科技', '10.2', '', '', '', '', '', '授权安装/用户数量：20', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (191, 'CDJK-S01-05-009-007', '软件', '奇虎天擎', '奇虎360', '', '', '', '', '', '', '授权安装/用户数量：50', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (192, 'CDJK-S01-05-010-002', '网络安全设备', '路由器', 'H3C', 'ER3260', '219801A07N9136Q00183', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (193, 'CDJK-S01-05-010-003', '网络安全设备', '防火墙', 'H3C', 'F1000-S-AI', '210235A0F7H152000039', '总部', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (194, 'CDJK-S01-05-010-004', '网络安全设备', '上网行为管理', '网康', 'NI3000', 'NS00310101192', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (195, 'CDJK-S01-05-010-005', '网络安全设备', '交换机', 'H3C', 'S5500-28C-EI-D', '210235A0Q8C151000386', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (196, 'CDJK-S01-05-010-006', '网络安全设备', '交换机', 'H3C', 'S1048', '219801A004M151000092', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (197, 'CDJK-S01-05-010-008', '网络安全设备', '程控交换机', '中联通信', 'AK8120-Rd', 'RD0616134305137C', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (198, 'CDJK-S01-05-010-009', '网络安全设备', '交换机', 'H3C', 'S2052TP-EA-SI', '219801A0BWC135000044', '大数据机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (199, 'CDJK-S01-05-010-010', '网络安全设备', '加密机', '江南科友', 'SJJ1214', 'SJJ121415126', '生产机房', '王建勋', '', '192.168.2.153', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (200, 'CDJK-S01-05-010-011', '网络安全设备', '加密机', '江南科友', 'SJJ1214', 'SJJ121415111', '生产机房', '王建勋', '', '192.168.2.154', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (201, 'CDJK-S01-05-010-012', '网络安全设备', '加密机', '江南科友', 'SJJ1214', 'SJJ121415116', '达州项目部', NULL, '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (202, 'CDJK-S01-05-010-013', '网络安全设备', '防火墙', 'H3C', 'F100-S-G', '210235A0VWH13B000109', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (203, 'CDJK-S01-05-010-014', '网络安全设备', 'IPS', 'H3C', 'T1000-C-AC', '210235A0EWH151000008', '生产机房', '王建勋', '', '192.168.0.3', '', '', '2019-09-12 09:20:43');
INSERT INTO `it_property` VALUES (204, 'CDJK-S01-05-010-015', '网络安全设备', '防火墙', 'H3C', 'F1000-E-SI', '210235A0F6H151000015', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (205, 'CDJK-S01-05-010-017', '网络安全设备', '负载均衡', '深信服', 'AD-1600-EX', '5031007408', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (206, 'CDJK-S01-05-010-018', '网络安全设备', '交换机', 'H3C', 'S2052TP-EA-SI', '219801A0BWC135000088', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (207, 'CDJK-S01-05-010-020', '网络安全设备', '交换机', 'H3C', 'S1024', '219801A0B19151Q02471', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (208, 'CDJK-S01-05-010-021', '网络安全设备', '防毒墙', '网康', 'NF1000-30', 'NS00310100069', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (209, 'CDJK-S01-05-010-022', '网络安全设备', '网闸', '华御', 'SU-GAP3000-NR2', 'GAP-E55B3D', '大数据机房', '王建勋', '', '', '闲置', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (210, 'CDJK-S01-05-010-023', '网络安全设备', '加密机', '卫士通', 'SJL05-A', 'D901021104312', '生产机房', '王建勋', '', '192.168.2.151', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (211, 'CDJK-S01-05-010-024', '网络安全设备', '加密机', '卫士通', 'SJL05-A', 'D901021104278', '生产机房', '王建勋', '', '192.168.2.152', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (212, 'CDJK-S01-05-010-025', '网络安全设备', '加密机', 'SafeNet', 'PSA-02', 'AZ205716', '生产机房', '王建勋', '', '192.168.2.155', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (213, 'CDJK-S01-05-010-026', '网络安全设备', '加密机', '卫士通', 'SJL05-A', 'D901021104276', '生产机房', '王建勋', '', '192.168.2.156', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (214, 'CDJK-S01-05-010-027', '网络安全设备', '加密机', '江南科友', 'SHJ0902', 'SHJ090212565', '生产机房', '王建勋', '', '192.168.2.157', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (215, 'CDJK-S01-05-010-028', '网络安全设备', '加密机', '卫士通', 'SJL05-A', 'D901021104296', '生产机房', '王建勋', '', '192.168.2.158', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (216, 'CDJK-S01-05-010-029', '网络安全设备', '路由器', 'TP-LINK', 'TL-WVR300', '115A254000978', '员工宿舍', '赵洪元', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (217, 'CDJK-S01-05-010-030', '网络安全设备', '路由器', '腾达', 'FH456', '151130220100226000', '员工宿舍', '赵洪元', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (218, 'CDJK-S01-05-010-031', '网络安全设备', '路由器', '腾达', 'FH456', '151130220100226024', '员工宿舍', '赵洪元', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (219, 'CDJK-S01-05-010-032', '网络安全设备', '加密机', '江南科友', 'SHJ0902', 'SHJ090213033', '生产机房', '王建勋', '', '192.168.2.159', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (220, 'CDJK-S01-05-010-033', '网络安全设备', '加密机', '卫士通', 'SJL05-A', '', '生产机房', '王建勋', '', '192.168.2.160', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (221, 'CDJK-S01-05-010-034', '网络安全设备', '路由器', 'TP-LINK', 'TL-WR842N', '1147211031416', '展厅', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (222, 'CDJK-S01-05-010-035', '网络安全设备', '加密机', '江南科友', 'SJJ1214', 'SJJ12146304', '生产机房', '王建勋', '客户：卫计委', '192.168.2.161', 'Port：8', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (223, 'CDJK-S01-05-010-037', '网络安全设备', '加密机', '歌盟', 'SJL22', 'CN1209-00000557-A5', '生产机房', '王建勋', '', '192.168.2.162', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (224, 'CDJK-S01-05-010-038', '网络安全设备', '防火墙', 'H3C', 'F100-S-G2', '9801A0X2A2', '生产机房', '王建勋', '', '', '个人化隔离', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (225, 'CDJK-S01-05-010-039', '网络安全设备', '加密机', '江南科友', 'SJJ1403E', 'E15044', '生产机房', '王建勋', '', '192.168.2.163', '客户暂存', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (226, 'CDJK-S01-05-010-040', '网络安全设备', '主交换机', 'CISCO', 'NEXUS 3172PQ-XL', 'F0C2143R100', '大数据机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (227, 'CDJK-S01-05-010-041', '网络安全设备', '从交换机', 'CISCO', 'NEXUS 3172PQ-XL', 'F0C2143R0YQ', '大数据机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (228, 'CDJK-S01-05-010-042', '网络安全设备', '交换机', 'H3C', 'S1024', NULL, '大数据机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (229, 'CDJK-S01-05-010-044', '网络安全设备', '主防火墙', 'Sonic Wall', 'XISA 4600', 'C0EAE4F86BAL', '大数据机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (230, 'CDJK-S01-05-010-045', '网络安全设备', '从防火墙', 'Sonic Wall', 'XISA 4600', 'C0EAE4EFECD0', '大数据机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (231, 'CDJK-S01-05-011-001', '其它设备', 'KVM切换器', '海康立方', 'SL1908', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (232, 'CDJK-S01-05-011-002', '其它设备', 'KVM切换器', '迈拓维矩', 'MT-801UK', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (233, 'CDJK-S01-05-011-003', '其它设备', '笔记本电脑', 'Lenovo', 'ThinkPad X220', 'R9-PXBH5', '行政部', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (234, 'CDJK-S01-05-011-004', '其它设备', 'SIM卡', '电信天翼169', '宿舍宽带绑定卡', '8986031504028527668HQ', '行政部', '秦川', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (235, 'CDJK-S01-05-011-005', '其它设备', '台式电脑光驱', '华硕', 'DVD-E818A9T', 'F3D0CF273609', '安全策略部办公室', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (236, 'CDJK-S01-05-011-006', '其它设备', '台式电脑光驱', '华硕', 'DVD-E818A9T', 'F3D0CF277178', '安全策略部办公室', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (237, 'CDJK-S01-05-011-007', '其它设备', '硬盘盒', 'ORICO', '6518Series', '', '安全策略部办公室', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (238, 'CDJK-S01-05-011-008', '其它设备', '网络工具', '', '', ' ', '安全策略部办公室', '王建勋', '', '', '一套', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (239, 'CDJK-S01-05-011-009(1)', '其它设备', '网线', '', '', '', '', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (240, 'CDJK-S01-05-011-009(2)', '其它设备', '网线', '', '', '', '', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (241, 'CDJK-S01-05-011-009(3)', '其它设备', '网线', '', '', '', '', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (242, 'CDJK-S01-05-011-009(4)', '其它设备', '网线', '', '', '', '', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (243, 'CDJK-S01-05-011-009(5)', '其它设备', '网线', '', '', '', '', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (244, 'CDJK-S01-05-011-009(6)', '其它设备', '网线', '', '', '', '', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (245, 'CDJK-S01-05-011-010', '其它设备', 'LED控制器', '', '', '', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (246, 'CDJK-S01-05-011-011', '其它设备', '话筒控制器', 'SVS', 'MG8380', '', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (247, 'CDJK-S01-05-011-012', '其它设备', '音响控制器', 'SVS', 'FA-200', '', '三楼机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (248, 'CDJK-S01-05-011-013', '其它设备', '保险箱', '上海飞盾', '', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (249, 'CDJK-S01-05-011-014', '其它设备', '保险箱', '上海飞盾', '', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (250, 'CDJK-S01-05-011-015', '其它设备', '保险箱', '上海飞盾', '', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (251, 'CDJK-S01-05-011-016', '其它设备', '碎纸机', '得力', '', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (252, 'CDJK-S01-05-011-020', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (253, 'CDJK-S01-05-011-021', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (254, 'CDJK-S01-05-011-022', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (255, 'CDJK-S01-05-011-023', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (256, 'CDJK-S01-05-011-024', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (257, 'CDJK-S01-05-011-025', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (258, 'CDJK-S01-05-011-026', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (259, 'CDJK-S01-05-011-027', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (260, 'CDJK-S01-05-011-028', '其它设备', '机械硬盘', '西数', '1TB', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (261, 'CDJK-S01-05-012-001', '可移动存储介质', '加密狗', 'ROHS', 'INS7950', '', '个人化车间机台', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (262, 'CDJK-S01-05-012-002', '可移动存储介质', '加密狗', 'HASP', '', '', '个人化车间机台', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (263, 'CDJK-S01-05-012-003', '可移动存储介质', '加密狗', 'HASP', '', '', '个人化车间机台', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (264, 'CDJK-S01-05-012-004', '可移动存储介质', '加密狗', 'ROHS', 'INS-6286', '', '个人化车间机台', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (265, 'CDJK-S01-05-012-005', '可移动存储介质', '加密狗', 'WIBU', 'MX61128', '', '个人化车间机台', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (266, 'CDJK-S01-05-012-006', '可移动存储介质', '加密狗', '', '', '', '个人化车间机台', '', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (267, 'CDJK-S01-05-012-007', '可移动存储介质', '加密狗', '', '', '', '生产机房', '王建勋', 'CDJK-S01-05-010-023', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (268, 'CDJK-S01-05-012-008', '可移动存储介质', '加密狗', '', '', '', '生产机房', '王建勋', 'CDJK-S01-05-010-024', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (269, 'CDJK-S01-05-012-009', '可移动存储介质', '加密狗', '', '', '', '生产机房', '王建勋', 'CDJK-S01-05-009-003', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (270, 'CDJK-S01-05-012-010', '可移动存储介质', '移动硬盘', '', '', '', '生产机房', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (271, 'CDJK-S01-05-012-018 Lv1', '可移动存储介质', 'U盘', 'Kingston', '16GB', '', '安全策略部办公室', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (272, 'CDJK-S01-05-012-019 Lv3', '可移动存储介质', 'U盘', 'Kingston', '16GB', '', '数据室', '熊磊', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (273, 'CDJK-S01-05-012-020 Lv1', '可移动存储介质', 'U盘', '定制', '16GB', '', '安全策略部办公室', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (274, 'CDJK-S01-05-012-021 Lv1', '可移动存储介质', 'U盘', '定制', '16GB', '', '安全策略部办公室', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (275, 'CDJK-S01-05-012-022 Lv1', '可移动存储介质', 'U盘', '定制', '16GB', '', '安全策略部办公室', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (276, 'CDJK-S01-05-012-023 Lv1', '可移动存储介质', 'U盘', '定制', '16GB', '', '安全策略部办公室', '王建勋', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (277, 'CDJK-S01-05-011-029', '其它设备', '平板电脑', 'Lenovo', 'YOGA Tablet 2-1050F', 'HA03YN8F', '安全策略部办公室', '刘劲松', 'APP演示', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (278, 'CDJK-S01-05-011-030', '其它设备', '平板电脑', 'Lenovo', 'YOGA Tablet 2-1050F', 'HA02GE8Q', '安全策略部办公室', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (279, 'CDJK-S01-05-011-031', '其它设备', '平板电脑', 'Lenovo', 'YOGA Tablet 2-1050F', 'HA02KRQ2', '安全策略部办公室', '王建勋', '安全区拍照', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (280, 'CDJK-S01-05-011-032', '其它设备', '多媒体手持终端', '', 'M806', '201501155560', '展厅', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (281, 'CDJK-S01-05-011-033', '其它设备', '多媒体手持终端', '', 'M806', '201411231507', '展厅', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (282, 'CDJK-S01-05-011-034', '其它设备', '数据采集终端', '', '', '', '展厅', '刘劲松', '', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (283, 'CDJK-S01-05-011-035', '其它设备', '自助发卡机', '', '', '', '展厅', '刘劲松', '自助发卡演示', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (284, 'CDJK-S01-05-011-036', '其它设备', '触摸一体机', '', '', '', '展厅', '刘劲松', '播放宣传视频', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (285, 'CDJK-S01-05-011-037', '其它设备', '触摸一体机', '', '', '', '展厅', '刘劲松', '签名留言', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (286, 'CDJK-S01-05-011-038', '其它设备', '手机', 'HUAWEI', 'MT7-CL00', 'A000005598502D', '安全策略部办公室', '刘劲松', '演示', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (287, 'CDJK-S01-05-003-070', '台式电脑主机', '台式电脑主机', '组装机', '无', '无', '综合办公室', '王涛', '图文处理', NULL, '办公网', NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (288, 'CDJK-S01-05-011-039', '其它设备', '笔记本电脑', 'Lenovo', 'ThinkPad Edge E440', '0C17836', '行政部', '秦川', NULL, NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (289, 'CDJK-S01-05-003-071', '台式电脑主机', '台式电脑主机', '组装机', '无', '无', '个人化车间', '邓晖', '检测卡片', NULL, '生产网', NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (290, 'CDJK-S01-05-003-072', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', '无', '个人化车间', '邓晖', '检测卡片', NULL, '生产网', NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (291, 'CDJK-S01-05-004-071', '液晶显示器', '液晶显示器', 'BenQ', 'G920WAL', '无', '个人化车间', '邓晖', '检测卡片', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (292, 'CDJK-S01-05-004-072', '液晶显示器', '液晶显示器', 'SANC', 'M9982A', '无', '个人化车间', '邓晖', '检测卡片', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (293, 'CDJK-S01-05-011-040', '其它设备', '手机', 'Iphone', '6s Plus', 'C37QTYHNGRWQ', '安全策略部办公室', '刘劲松', '黑晶芯演示', '', '', '', '2018-12-24 16:35:14');
INSERT INTO `it_property` VALUES (294, 'CDJK-S01-05-003-073', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', '无', '展厅', NULL, 'RFID演示', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (295, 'CDJK-S01-05-003-074', '台式电脑主机', '台式电脑主机', '组装机', '无', '无', '展厅', NULL, '人脸识别', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (296, 'CDJK-S01-05-003-075', '台式电脑主机', '台式电脑主机', 'Lenovo', '启天M4360-N000', '无', '展厅', NULL, NULL, NULL, NULL, '闲置', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (297, 'CDJK-S01-05-004-073', '液晶显示器', '液晶电视', '长虹', 'PT32618', '无', '员工食堂', '肖辉', '播放电视', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (298, 'CDJK-S01-05-004-074', '液晶显示器', '液晶电视', '长虹', 'TWRS3C-32600', '无', '一楼车间过道', '秦川', '宣传视频播放', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (299, 'CDJK-S01-05-004-075', '液晶显示器', '液晶电视', '长虹', 'TWRS3C-32600', '无', '二楼车间过道', '秦川', '宣传视频播放', '', '', '', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (300, 'CDJK-S01-05-004-076', '液晶显示器', '液晶电视', 'Skyworth', '8H26', '1520029839', '展厅', '刘劲松', '人脸识别', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (301, 'CDJK-S01-05-004-077', '液晶显示器', '液晶电视', 'Skyworth', '8H26', '1520029829', '展厅', '刘劲松', '宣传视频播放', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (302, 'CDJK-S01-05-004-078', '液晶显示器', '液晶电视', 'Skyworth', '8H26', '1522074534', '三楼过道', '秦川', '宣传视频播放', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (303, 'CDJK-S01-05-011-041', '其它设备', '键鼠套装', '罗技', 'K260 M150', '无', '展厅', '刘劲松', '屏幕控制', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (304, 'CDJK-S01-05-011-042', '其它设备', '键鼠套装', '罗技', 'K220 M150', '无', '展厅', '刘劲松', NULL, NULL, NULL, '闲置', '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (305, 'CDJK-S01-05-011-043', '其它设备', '键鼠套装', '罗技', 'K480 M337', '无', '大数据中心', '刘劲松', '远程控制', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (306, 'CDJK-S01-05-004-079', '液晶显示器', '液晶电视', 'Skyworth', '8H73', '1325187827', '视频会议室', '秦川', '视频会议', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (307, 'CDJK-S01-05-004-080', '液晶显示器', '液晶电视', 'MOOKA', 'U65H3', 'DH1UZ0D1508D9J680231', '培训室', '秦川', '投影', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (308, 'CDJK-S01-05-004-081', '液晶显示器', '液晶电视', 'MOOKA', 'U65H3', 'DH1UZ0D1508D9J680308', '培训室', '秦川', '投影', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (309, 'CDJK-S01-05-011-044', '其它设备', '视频会议设备', 'Ploycom', '310', '无', '视频会议室', '秦川', '视频会议', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (310, 'CDJK-S01-05-011-045', '其它设备', '立式电子班排', '不详', '不详', '无', '展厅', '刘劲松', '电子班排', NULL, NULL, NULL, '2018-12-24 15:45:50');
INSERT INTO `it_property` VALUES (311, 'CDJK-S01-05-011-046', '其它设备', '挂式电子班排', '不详', '不详', '无', '展厅', '刘劲松', '电子班排', NULL, NULL, NULL, '2018-12-24 15:45:50');
COMMIT;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `job_name` varchar(100) DEFAULT NULL COMMENT '职务名称',
  `dept_id` int(11) DEFAULT NULL COMMENT '所属部门ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  KEY `FKed8v8332ryisog58b6tylnny7` (`dept_id`) USING BTREE,
  CONSTRAINT `FKed8v8332ryisog58b6tylnny7` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of job
-- ----------------------------
BEGIN;
INSERT INTO `job` VALUES (1, '公司', 1, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (2, '系统管理员', 1, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (3, '访客', 1, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (4, '总经理', 1, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (5, '副总经理', 1, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (6, '营销总监', 2, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (7, '客户经理', 2, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (8, '交付专员', 2, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (9, '办事处主任', 2, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (10, '客户服务主管', 2, '', '2020-08-26 14:22:35');
INSERT INTO `job` VALUES (11, '客服专员', 3, '', '2019-04-28 16:32:05');
INSERT INTO `job` VALUES (12, '投标专员', 3, '', '2019-04-28 16:32:15');
INSERT INTO `job` VALUES (13, '物流专员', 3, '', '2019-04-28 16:32:24');
INSERT INTO `job` VALUES (14, '质量安全总监', 4, '', '2019-04-28 16:32:44');
INSERT INTO `job` VALUES (15, '物理安全组长', 4, '', '2019-04-28 16:32:59');
INSERT INTO `job` VALUES (16, '保安', 4, '', '2019-04-28 16:33:06');
INSERT INTO `job` VALUES (17, '逻辑安全组长', 4, '', '2019-04-28 16:33:17');
INSERT INTO `job` VALUES (18, '逻辑安全员', 4, '', '2019-04-28 16:33:26');
INSERT INTO `job` VALUES (19, '质量组长', 4, '', '2019-04-28 16:33:38');
INSERT INTO `job` VALUES (20, '检验员', 4, '', '2019-04-28 16:33:51');
INSERT INTO `job` VALUES (21, '体系专员', 4, '', '2019-04-28 16:34:02');
INSERT INTO `job` VALUES (22, '支撑总监', 5, '', '2019-04-28 16:34:14');
INSERT INTO `job` VALUES (23, '人力行政专员', 5, '', '2019-04-28 16:34:26');
INSERT INTO `job` VALUES (24, '后勤主管', 5, '', '2019-04-28 16:34:34');
INSERT INTO `job` VALUES (25, '保洁', 5, '', '2019-04-28 16:34:42');
INSERT INTO `job` VALUES (26, '厨师', 5, '', '2019-04-28 16:34:51');
INSERT INTO `job` VALUES (27, '宿管', 5, '', '2019-04-28 16:35:00');
INSERT INTO `job` VALUES (28, '库管员', 5, '', '2019-04-28 16:35:09');
INSERT INTO `job` VALUES (29, '采购员', 5, '', '2019-04-28 16:35:19');
INSERT INTO `job` VALUES (30, '会计', 6, '', '2019-04-29 08:41:58');
INSERT INTO `job` VALUES (31, '生产总监', 7, '', '2019-04-29 08:42:11');
INSERT INTO `job` VALUES (32, '计划部主管', 7, '', '2019-04-29 08:42:21');
INSERT INTO `job` VALUES (33, '设备管理部主管', 7, '', '2019-04-29 08:42:37');
INSERT INTO `job` VALUES (34, '电工', 7, '', '2019-04-29 08:42:45');
INSERT INTO `job` VALUES (35, '工艺技术部主管', 7, '', '2019-04-29 08:42:57');
INSERT INTO `job` VALUES (36, '图文设计工程师', 7, '', '2019-04-29 08:43:06');
INSERT INTO `job` VALUES (37, 'CTP操作员', 7, '', '2019-04-29 08:43:15');
INSERT INTO `job` VALUES (38, '数据主管', 7, '', '2019-04-29 08:43:32');
INSERT INTO `job` VALUES (39, '数据员', 7, '', '2019-04-29 08:43:42');
INSERT INTO `job` VALUES (40, '卡基生产部主管', 8, '', '2019-04-29 08:43:58');
INSERT INTO `job` VALUES (41, '印刷车间组长', 8, '', '2019-04-29 08:44:12');
INSERT INTO `job` VALUES (42, '胶印副手', 8, '', '2019-04-29 08:44:24');
INSERT INTO `job` VALUES (43, '操作员', 8, '', '2019-04-29 08:48:15');
INSERT INTO `job` VALUES (44, '制卡车间组长', 8, '', '2019-04-29 08:48:58');
INSERT INTO `job` VALUES (45, '检验员', 8, '', '2019-04-29 08:49:01');
INSERT INTO `job` VALUES (46, '封装车间组长', 9, '', '2019-04-29 08:49:04');
INSERT INTO `job` VALUES (47, '操作员', 9, '', '2019-04-29 08:50:11');
INSERT INTO `job` VALUES (48, '个人化部主管', 10, '', '2019-04-29 08:50:24');
INSERT INTO `job` VALUES (49, '技术员', 10, '', '2019-04-29 08:50:32');
INSERT INTO `job` VALUES (50, '操作员', 10, '', '2019-04-29 08:50:39');
INSERT INTO `job` VALUES (51, '包装组长', 10, '', '2019-04-29 08:50:56');
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
INSERT INTO `log` VALUES (1, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-09-07 17:28:04');
INSERT INTO `log` VALUES (2, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-07 17:28:09');
INSERT INTO `log` VALUES (3, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-07 17:28:15');
INSERT INTO `log` VALUES (4, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-07 17:28:18');
INSERT INTO `log` VALUES (5, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-07 17:28:22');
INSERT INTO `log` VALUES (6, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-09-07 17:30:34');
INSERT INTO `log` VALUES (7, '超级管理员', 'hawile', '黄伟', '添加[ wangjx ]用户', '成功', '2020-09-07 17:31:31');
INSERT INTO `log` VALUES (8, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-09-07 17:31:32');
INSERT INTO `log` VALUES (9, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-07 17:32:35');
INSERT INTO `log` VALUES (10, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-07 17:32:40');
INSERT INTO `log` VALUES (11, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-07 17:32:47');
INSERT INTO `log` VALUES (12, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-07 17:33:00');
INSERT INTO `log` VALUES (13, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-07 17:33:01');
INSERT INTO `log` VALUES (14, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-07 17:33:59');
INSERT INTO `log` VALUES (15, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-09-07 17:34:11');
INSERT INTO `log` VALUES (16, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-07 17:34:12');
INSERT INTO `log` VALUES (17, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-09-07 17:34:13');
INSERT INTO `log` VALUES (18, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-09-07 17:34:14');
INSERT INTO `log` VALUES (19, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 08:47:30');
INSERT INTO `log` VALUES (20, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-08 08:47:54');
INSERT INTO `log` VALUES (21, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-09-08 08:48:06');
INSERT INTO `log` VALUES (22, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-09-08 08:48:08');
INSERT INTO `log` VALUES (23, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:48:13');
INSERT INTO `log` VALUES (24, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-09-08 08:48:16');
INSERT INTO `log` VALUES (25, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:48:23');
INSERT INTO `log` VALUES (26, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:48:33');
INSERT INTO `log` VALUES (27, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 08:48:39');
INSERT INTO `log` VALUES (28, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:48:58');
INSERT INTO `log` VALUES (29, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-08 08:49:39');
INSERT INTO `log` VALUES (30, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 08:49:45');
INSERT INTO `log` VALUES (31, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:49:48');
INSERT INTO `log` VALUES (32, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-09-08 08:49:50');
INSERT INTO `log` VALUES (33, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:54:05');
INSERT INTO `log` VALUES (34, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:54:07');
INSERT INTO `log` VALUES (35, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:54:07');
INSERT INTO `log` VALUES (36, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:54:07');
INSERT INTO `log` VALUES (37, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:54:07');
INSERT INTO `log` VALUES (38, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:54:07');
INSERT INTO `log` VALUES (39, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-09-08 08:54:11');
INSERT INTO `log` VALUES (40, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-09-08 08:54:12');
INSERT INTO `log` VALUES (41, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 08:55:54');
INSERT INTO `log` VALUES (42, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-09-08 08:56:00');
INSERT INTO `log` VALUES (43, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-09-08 08:56:07');
INSERT INTO `log` VALUES (44, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 09:19:42');
INSERT INTO `log` VALUES (45, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 15:29:41');
INSERT INTO `log` VALUES (46, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 15:31:49');
INSERT INTO `log` VALUES (47, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 15:31:50');
INSERT INTO `log` VALUES (48, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-08 15:47:10');
INSERT INTO `log` VALUES (49, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-08 15:47:55');
INSERT INTO `log` VALUES (50, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-08 15:48:15');
INSERT INTO `log` VALUES (51, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-08 15:48:21');
INSERT INTO `log` VALUES (52, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-08 15:48:27');
INSERT INTO `log` VALUES (53, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-08 15:51:09');
INSERT INTO `log` VALUES (54, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-08 16:17:03');
INSERT INTO `log` VALUES (55, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-08 16:17:04');
INSERT INTO `log` VALUES (56, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 16:17:05');
INSERT INTO `log` VALUES (57, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-08 16:17:08');
INSERT INTO `log` VALUES (58, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 17:21:57');
INSERT INTO `log` VALUES (59, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 17:22:06');
INSERT INTO `log` VALUES (60, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-08 17:22:17');
INSERT INTO `log` VALUES (61, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 17:22:21');
INSERT INTO `log` VALUES (62, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-08 17:22:40');
INSERT INTO `log` VALUES (63, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 17:22:41');
INSERT INTO `log` VALUES (64, '超级管理员', 'hawile', '黄伟', '添加[ 王建勋 ]的工作内容', '成功', '2020-09-08 17:23:14');
INSERT INTO `log` VALUES (65, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 17:23:15');
INSERT INTO `log` VALUES (66, '超级管理员', 'hawile', '黄伟', '更新[ 黄伟 ]的工作内容', '成功', '2020-09-08 17:23:29');
INSERT INTO `log` VALUES (67, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-08 17:23:30');
INSERT INTO `log` VALUES (68, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-08 17:24:03');
INSERT INTO `log` VALUES (69, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-10 10:01:21');
INSERT INTO `log` VALUES (70, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-10 10:01:46');
INSERT INTO `log` VALUES (71, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-10 10:01:47');
INSERT INTO `log` VALUES (72, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-10 10:02:22');
INSERT INTO `log` VALUES (73, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-10 10:02:23');
INSERT INTO `log` VALUES (74, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-09-10 10:02:29');
INSERT INTO `log` VALUES (75, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-10 10:09:31');
INSERT INTO `log` VALUES (76, '安全策略部', 'wangjx', '王建勋', '查看[ 工作报表 ]', '成功', '2020-09-10 10:10:38');
INSERT INTO `log` VALUES (77, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-14 16:51:17');
INSERT INTO `log` VALUES (78, '超级管理员', 'hawile', '黄伟', '添加 [2020年7-9月销售报表 ]订单信息', '成功', '2020-09-14 16:58:15');
INSERT INTO `log` VALUES (79, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-14 16:58:16');
INSERT INTO `log` VALUES (80, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-14 17:19:45');
INSERT INTO `log` VALUES (81, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-14 17:20:07');
INSERT INTO `log` VALUES (82, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-14 17:21:16');
INSERT INTO `log` VALUES (83, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-16 15:12:42');
INSERT INTO `log` VALUES (84, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-16 15:13:02');
INSERT INTO `log` VALUES (85, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-16 15:13:03');
INSERT INTO `log` VALUES (86, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-16 15:13:12');
INSERT INTO `log` VALUES (87, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-16 15:13:13');
INSERT INTO `log` VALUES (88, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-16 15:13:38');
INSERT INTO `log` VALUES (89, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-16 15:13:39');
INSERT INTO `log` VALUES (90, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-16 15:14:03');
INSERT INTO `log` VALUES (91, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-16 15:14:03');
INSERT INTO `log` VALUES (92, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-16 15:14:17');
INSERT INTO `log` VALUES (93, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-16 15:14:18');
INSERT INTO `log` VALUES (94, '超级管理员', 'hawile', '黄伟', '添加[ 黄伟 ]的工作内容', '成功', '2020-09-16 15:14:33');
INSERT INTO `log` VALUES (95, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-09-16 15:14:34');
INSERT INTO `log` VALUES (96, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-09-16 17:56:14');
INSERT INTO `log` VALUES (97, '超级管理员', 'hawile', '黄伟', '查看[ 表单信息 ] 列表', '成功', '2020-09-17 10:56:23');
INSERT INTO `log` VALUES (98, '超级管理员', 'hawile', '黄伟', '查看[ 文件信息 ] 列表', '成功', '2020-09-17 10:56:41');
INSERT INTO `log` VALUES (99, '超级管理员', 'hawile', '黄伟', '查看[ 表单信息 ] 列表', '成功', '2020-09-17 10:56:42');
INSERT INTO `log` VALUES (100, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-09-25 11:17:58');
INSERT INTO `log` VALUES (101, '安全策略部', 'wangjx', '王建勋', '查看[ 用户列表 ]', '成功', '2020-09-25 14:42:59');
INSERT INTO `log` VALUES (102, '安全策略部', 'wangjx', '王建勋', '查看[ 个人信息 ]', '成功', '2020-09-25 14:43:02');
INSERT INTO `log` VALUES (103, '超级管理员', 'hawile', '黄伟', '查看[ 表单信息 ] 列表', '成功', '2020-09-27 09:36:48');
INSERT INTO `log` VALUES (104, '超级管理员', 'hawile', '黄伟', '查看[ 表单信息 ] 列表', '成功', '2020-10-13 11:28:41');
INSERT INTO `log` VALUES (105, '超级管理员', 'hawile', '黄伟', '查看[ 厂商信息 ]', '成功', '2020-10-13 11:28:47');
INSERT INTO `log` VALUES (106, '超级管理员', 'hawile', '黄伟', '查看[ 账号信息列表 ]', '成功', '2020-10-13 11:28:48');
INSERT INTO `log` VALUES (107, '超级管理员', 'hawile', '黄伟', '查看[ 客户账号信息列表 ]', '成功', '2020-10-13 11:28:49');
INSERT INTO `log` VALUES (108, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-10-13 11:28:50');
INSERT INTO `log` VALUES (109, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-10-13 11:28:51');
INSERT INTO `log` VALUES (110, '超级管理员', 'hawile', '黄伟', '查看[ 文件信息 ] 列表', '成功', '2020-10-13 11:28:56');
INSERT INTO `log` VALUES (111, '超级管理员', 'hawile', '黄伟', '查看[ 表单信息 ] 列表', '成功', '2020-10-13 11:29:00');
INSERT INTO `log` VALUES (112, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:29:02');
INSERT INTO `log` VALUES (113, '超级管理员', 'hawile', '黄伟', '查看[ 驱动下载 ]列表', '成功', '2020-10-13 11:29:03');
INSERT INTO `log` VALUES (114, '超级管理员', 'hawile', '黄伟', '查看[ 系统下载 ]列表', '成功', '2020-10-13 11:29:04');
INSERT INTO `log` VALUES (115, '超级管理员', 'hawile', '黄伟', '查看[ 权限列表 ]', '成功', '2020-10-13 11:29:11');
INSERT INTO `log` VALUES (116, '超级管理员', 'hawile', '黄伟', '删除[ 来宾用户 ]权限组', '失败', '2020-10-13 11:29:15');
INSERT INTO `log` VALUES (117, '超级管理员', 'hawile', '黄伟', '查看[ 权限列表 ]', '成功', '2020-10-13 11:29:16');
INSERT INTO `log` VALUES (118, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-10-13 11:29:17');
INSERT INTO `log` VALUES (119, '超级管理员', 'hawile', '黄伟', '删除[ guest ]用户', '成功', '2020-10-13 11:29:19');
INSERT INTO `log` VALUES (120, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-10-13 11:29:20');
INSERT INTO `log` VALUES (121, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-10-13 11:29:23');
INSERT INTO `log` VALUES (122, '超级管理员', 'hawile', '黄伟', '查看[ 权限列表 ]', '成功', '2020-10-13 11:29:25');
INSERT INTO `log` VALUES (123, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-10-13 11:29:25');
INSERT INTO `log` VALUES (124, '超级管理员', 'hawile', '黄伟', '查看[ 权限列表 ]', '成功', '2020-10-13 11:29:26');
INSERT INTO `log` VALUES (125, '超级管理员', 'hawile', '黄伟', '删除[ 来宾用户 ]权限组', '成功', '2020-10-13 11:29:30');
INSERT INTO `log` VALUES (126, '超级管理员', 'hawile', '黄伟', '查看[ 权限列表 ]', '成功', '2020-10-13 11:29:30');
INSERT INTO `log` VALUES (127, '超级管理员', 'hawile', '黄伟', '删除[ HR ]权限组', '成功', '2020-10-13 11:29:33');
INSERT INTO `log` VALUES (128, '超级管理员', 'hawile', '黄伟', '查看[ 权限列表 ]', '成功', '2020-10-13 11:29:34');
INSERT INTO `log` VALUES (129, '超级管理员', 'hawile', '黄伟', '删除[ 质量部 ]权限组', '成功', '2020-10-13 11:29:36');
INSERT INTO `log` VALUES (130, '超级管理员', 'hawile', '黄伟', '查看[ 权限列表 ]', '成功', '2020-10-13 11:29:37');
INSERT INTO `log` VALUES (131, '超级管理员', 'hawile', '黄伟', '更新[ 安全策略部 ]权限组', '成功', '2020-10-13 11:29:45');
INSERT INTO `log` VALUES (132, '超级管理员', 'hawile', '黄伟', '查看[ 权限列表 ]', '成功', '2020-10-13 11:29:46');
INSERT INTO `log` VALUES (133, '超级管理员', 'hawile', '黄伟', '查看[ 职位列表 ]', '成功', '2020-10-13 11:29:47');
INSERT INTO `log` VALUES (134, '超级管理员', 'hawile', '黄伟', '查看[ 用户列表 ]', '成功', '2020-10-13 11:29:48');
INSERT INTO `log` VALUES (135, '超级管理员', 'hawile', '黄伟', '查看[ 申请列表 ]', '成功', '2020-10-13 11:29:50');
INSERT INTO `log` VALUES (136, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-10-13 11:29:52');
INSERT INTO `log` VALUES (137, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-10-13 11:30:18');
INSERT INTO `log` VALUES (138, '超级管理员', 'hawile', '黄伟', '查看[ 表单信息 ] 列表', '成功', '2020-10-13 11:30:23');
INSERT INTO `log` VALUES (139, '超级管理员', 'hawile', '黄伟', '查看[ 表单信息 ] 列表', '成功', '2020-10-13 11:31:10');
INSERT INTO `log` VALUES (140, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:32:38');
INSERT INTO `log` VALUES (141, '超级管理员', 'hawile', '黄伟', '添加 [PGP加密软件 ]应用软件', '成功', '2020-10-13 11:33:05');
INSERT INTO `log` VALUES (142, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:33:19');
INSERT INTO `log` VALUES (143, '超级管理员', 'hawile', '黄伟', '查看[ 个人信息 ]', '成功', '2020-10-13 11:33:25');
INSERT INTO `log` VALUES (144, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:33:39');
INSERT INTO `log` VALUES (145, '超级管理员', 'hawile', '黄伟', '添加 [Serv-U ]应用软件', '成功', '2020-10-13 11:34:26');
INSERT INTO `log` VALUES (146, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:34:31');
INSERT INTO `log` VALUES (147, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:37:59');
INSERT INTO `log` VALUES (148, '超级管理员', 'hawile', '黄伟', '添加 [TortoiseSVN ]应用软件', '成功', '2020-10-13 11:38:56');
INSERT INTO `log` VALUES (149, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:39:00');
INSERT INTO `log` VALUES (150, '超级管理员', 'hawile', '黄伟', '添加 [TortoiseSVN ]应用软件', '成功', '2020-10-13 11:39:46');
INSERT INTO `log` VALUES (151, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:39:52');
INSERT INTO `log` VALUES (152, '超级管理员', 'hawile', '黄伟', '添加 [FlashFXP ]应用软件', '成功', '2020-10-13 11:40:30');
INSERT INTO `log` VALUES (153, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:40:33');
INSERT INTO `log` VALUES (154, '超级管理员', 'hawile', '黄伟', '添加 [SafeShare ]应用软件', '成功', '2020-10-13 11:41:04');
INSERT INTO `log` VALUES (155, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:41:13');
INSERT INTO `log` VALUES (156, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:43:11');
INSERT INTO `log` VALUES (157, '超级管理员', 'hawile', '黄伟', '下载 [PGP加密软件 ]文件', '失败', '2020-10-13 11:43:13');
INSERT INTO `log` VALUES (158, '超级管理员', 'hawile', '黄伟', '下载 [Serv-U ]文件', '失败', '2020-10-13 11:43:28');
INSERT INTO `log` VALUES (159, '超级管理员', 'hawile', '黄伟', '修改 [Serv-U ]应用软件', '成功', '2020-10-13 11:44:38');
INSERT INTO `log` VALUES (160, '超级管理员', 'hawile', '黄伟', '查看[ 应用软件 ]列表', '成功', '2020-10-13 11:44:41');
INSERT INTO `log` VALUES (161, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-10-13 11:47:04');
INSERT INTO `log` VALUES (162, '超级管理员', 'hawile', '黄伟', '查看[ 工作报表 ]', '成功', '2020-10-13 11:47:13');
INSERT INTO `log` VALUES (163, '超级管理员', 'hawile', '黄伟', '查看[ 售货机订单信息列表 ]', '成功', '2020-10-13 11:47:17');
INSERT INTO `log` VALUES (164, '超级管理员', 'hawile', '黄伟', '查看[ 表单信息 ] 列表', '成功', '2020-10-13 11:48:54');
COMMIT;

-- ----------------------------
-- Table structure for log_login
-- ----------------------------
DROP TABLE IF EXISTS `log_login`;
CREATE TABLE `log_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_login
-- ----------------------------
BEGIN;
INSERT INTO `log_login` VALUES (1, 'hawile', '空', '密码未填写', '失败', '192.168.11.95', '2020-09-07 17:27:39');
INSERT INTO `log_login` VALUES (2, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-07 17:27:47');
INSERT INTO `log_login` VALUES (3, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-07 17:32:45');
INSERT INTO `log_login` VALUES (4, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 08:47:28');
INSERT INTO `log_login` VALUES (5, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 08:48:21');
INSERT INTO `log_login` VALUES (6, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 08:48:31');
INSERT INTO `log_login` VALUES (7, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 08:48:55');
INSERT INTO `log_login` VALUES (8, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 08:49:37');
INSERT INTO `log_login` VALUES (9, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 08:54:03');
INSERT INTO `log_login` VALUES (10, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 08:55:51');
INSERT INTO `log_login` VALUES (11, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 09:04:14');
INSERT INTO `log_login` VALUES (12, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 09:19:40');
INSERT INTO `log_login` VALUES (13, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 15:29:16');
INSERT INTO `log_login` VALUES (14, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 15:34:59');
INSERT INTO `log_login` VALUES (15, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 15:51:07');
INSERT INTO `log_login` VALUES (16, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 16:17:01');
INSERT INTO `log_login` VALUES (17, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 17:21:56');
INSERT INTO `log_login` VALUES (18, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-08 17:22:15');
INSERT INTO `log_login` VALUES (19, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-10 10:01:19');
INSERT INTO `log_login` VALUES (20, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-10 10:09:29');
INSERT INTO `log_login` VALUES (21, 'wangjx', '王建勋', '密码验证通过', '成功', '192.168.11.55', '2020-09-10 10:10:32');
INSERT INTO `log_login` VALUES (22, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-14 16:51:15');
INSERT INTO `log_login` VALUES (23, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-14 17:19:43');
INSERT INTO `log_login` VALUES (24, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-14 17:20:05');
INSERT INTO `log_login` VALUES (25, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-14 17:21:14');
INSERT INTO `log_login` VALUES (26, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-16 15:12:39');
INSERT INTO `log_login` VALUES (27, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-16 17:56:13');
INSERT INTO `log_login` VALUES (28, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-17 10:56:21');
INSERT INTO `log_login` VALUES (29, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.55', '2020-09-25 11:17:55');
INSERT INTO `log_login` VALUES (30, 'wangjx', '王建勋', '密码验证通过', '成功', '192.168.4.141', '2020-09-25 14:41:36');
INSERT INTO `log_login` VALUES (31, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-09-27 09:36:44');
INSERT INTO `log_login` VALUES (32, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-10-13 11:28:38');
INSERT INTO `log_login` VALUES (33, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.11.95', '2020-10-13 11:30:12');
INSERT INTO `log_login` VALUES (34, 'hawile', '黄伟', '密码验证通过', '成功', '192.168.4.248', '2020-10-13 11:37:49');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_id` varchar(255) DEFAULT NULL COMMENT '订单号',
  `order_name` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `order_number` int(255) DEFAULT NULL COMMENT '订单总数',
  `order_complete_num` int(255) DEFAULT NULL COMMENT '完成数量',
  `order_failed_num` int(255) DEFAULT '0' COMMENT '坏卡数量',
  `order_date` date DEFAULT NULL COMMENT '出货时间',
  `order_process` int(2) DEFAULT '1' COMMENT '当前流程',
  `next_process` int(2) DEFAULT '1' COMMENT '下一流程',
  `order_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `OrderId` (`order_id`) USING BTREE,
  KEY `OrderProcess` (`order_process`) USING BTREE,
  KEY `FKfxl6bomao4cv9c9y3wcac4vjg` (`next_process`),
  CONSTRAINT `FKda3tjuidxgt8w10bkltri011g` FOREIGN KEY (`order_process`) REFERENCES `orders_process` (`order_process`),
  CONSTRAINT `FKfxl6bomao4cv9c9y3wcac4vjg` FOREIGN KEY (`next_process`) REFERENCES `orders_process` (`order_process`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for orders_bak
-- ----------------------------
DROP TABLE IF EXISTS `orders_bak`;
CREATE TABLE `orders_bak` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_id` varchar(255) NOT NULL COMMENT '订单号',
  `order_name` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `order_number` int(255) DEFAULT NULL COMMENT '订单总数',
  `order_complete_num` int(255) DEFAULT NULL COMMENT '完成数量',
  `order_failed_num` int(255) DEFAULT '0' COMMENT '坏卡数量',
  `order_date` date DEFAULT NULL COMMENT '出货时间',
  `order_process` varchar(50) DEFAULT '无' COMMENT '流程',
  `next_process` varchar(50) DEFAULT '无' COMMENT '下一流程',
  `order_user` varchar(255) DEFAULT NULL COMMENT '操作人',
  `order_op` varchar(255) DEFAULT NULL COMMENT '操作',
  `order_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `OrderId` (`order_id`) USING BTREE,
  KEY `OrderProcess` (`order_process`) USING BTREE,
  KEY `FK5g6w6lv0hwkk4goed0jchiyhr` (`next_process`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders_bak
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for orders_process
-- ----------------------------
DROP TABLE IF EXISTS `orders_process`;
CREATE TABLE `orders_process` (
  `order_process` int(2) NOT NULL DEFAULT '0' COMMENT '序号',
  `process_name` varchar(255) DEFAULT NULL COMMENT '流程名称',
  PRIMARY KEY (`order_process`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders_process
-- ----------------------------
BEGIN;
INSERT INTO `orders_process` VALUES (1, '无');
INSERT INTO `orders_process` VALUES (2, '叠张');
INSERT INTO `orders_process` VALUES (3, '层压');
INSERT INTO `orders_process` VALUES (4, '冲卡');
INSERT INTO `orders_process` VALUES (5, '检验');
INSERT INTO `orders_process` VALUES (6, '封装');
INSERT INTO `orders_process` VALUES (7, '写卡');
INSERT INTO `orders_process` VALUES (8, '包装');
INSERT INTO `orders_process` VALUES (9, '出货');
INSERT INTO `orders_process` VALUES (99, '完成');
COMMIT;

-- ----------------------------
-- Table structure for orders_show
-- ----------------------------
DROP TABLE IF EXISTS `orders_show`;
CREATE TABLE `orders_show` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `page_size` int(2) DEFAULT '0' COMMENT '每页显示个数',
  `page_time` int(3) DEFAULT '0' COMMENT '换页时间',
  `title_font_size` int(2) DEFAULT '0' COMMENT '表头字体大小',
  `order_font_size` int(2) DEFAULT '0' COMMENT '订单字体大小',
  `order_height` int(3) DEFAULT '0' COMMENT '订单行高',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders_show
-- ----------------------------
BEGIN;
INSERT INTO `orders_show` VALUES (1, 5, 5, 34, 34, 130);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of soft_app
-- ----------------------------
BEGIN;
INSERT INTO `soft_app` VALUES (39, 'PGP加密软件', '1.0', '加密软件', '7C940381045489E8.zip', 85797, '2020-10-13 11:33:05');
INSERT INTO `soft_app` VALUES (40, 'Serv-U', '15.2.0', 'FTP服务端', 'EC783CEF2BE1225D.zip', 16869, '2020-10-13 11:44:38');
INSERT INTO `soft_app` VALUES (41, 'TortoiseSVN', '1.8.1', 'SVN客户端', '89CD9C41FC393A4E.zip', 24225, '2020-10-13 11:38:56');
INSERT INTO `soft_app` VALUES (42, 'TortoiseSVN', '1.9.4', 'SVN客户端', 'CBDB8EAF591CB272.zip', 42671, '2020-10-13 11:39:46');
INSERT INTO `soft_app` VALUES (43, 'FlashFXP', '4.4.2', 'FTP浏览器', '66BB867A4DBF8C0A.zip', 3396, '2020-10-13 11:40:30');
INSERT INTO `soft_app` VALUES (44, 'SafeShare', '10.2', '文件系统', '65C2868F0E3BB768.zip', 56803, '2020-10-13 11:41:04');
COMMIT;

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
COMMIT;

-- ----------------------------
-- Table structure for soft_os
-- ----------------------------
DROP TABLE IF EXISTS `soft_os`;
CREATE TABLE `soft_os` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '软件名称',
  `version` varchar(100) DEFAULT NULL COMMENT '版本号',
  `reason` varchar(255) DEFAULT NULL COMMENT '注释',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `size` int(11) DEFAULT '0' COMMENT '软件大小',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of soft_os
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `sex` varchar(2) DEFAULT '保密' COMMENT '性别',
  `age` int(3) DEFAULT '0' COMMENT '年龄',
  `job_id` int(3) NOT NULL COMMENT '职务ID',
  `phone` varchar(20) DEFAULT '0' COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `qq` varchar(20) DEFAULT '0' COMMENT 'QQ号码',
  `auth_id` int(10) NOT NULL DEFAULT '0' COMMENT '权限',
  `enabled` int(1) DEFAULT '1' COMMENT '登陆权限',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `first_pwd` int(11) NOT NULL,
  `file_query` varchar(255) DEFAULT NULL,
  `form_query` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `username` (`user_name`,`name`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `authority` (`auth_id`) USING BTREE,
  KEY `username_2` (`user_name`) USING BTREE,
  KEY `FKq56a50t77h2iagd5uf8xmlivo` (`job_id`) USING BTREE,
  CONSTRAINT `FKm50himjxgwfku8dwxm3dxybhd` FOREIGN KEY (`auth_id`) REFERENCES `authority` (`auth_id`) ON UPDATE CASCADE,
  CONSTRAINT `FKq56a50t77h2iagd5uf8xmlivo` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', 'Administrator', 'C5A9114446E82A28D895ADD6BC7FD5B3', '保密', 0, 2, '028-81529555', '', '0', 1, 1, '2018-10-25 09:11:27', 0, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'hawile', '黄伟', '55323CFE12CB3791C447435E1216A9DF', '男', 25, 18, '17608039481', 'huangw@keydom.com.cn', '228642660', 1, 1, '2019-04-29 08:57:52', 0, '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,5,6,7,8,9,10', 'F55436E2CAC7A905C2FD1D2E2432FC1A');
INSERT INTO `user` VALUES (9, 'wangjx', '王建勋', 'C5A9114446E82A28D895ADD6BC7FD5B3', '男', 0, 17, '', '', '', 5, 1, '2020-09-07 17:31:31', 0, '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,5,6,7,8,9,10', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_sign
-- ----------------------------
DROP TABLE IF EXISTS `user_sign`;
CREATE TABLE `user_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `password` varchar(255) NOT NULL DEFAULT '222222Aa' COMMENT '密码',
  `sex` varchar(2) DEFAULT '保密' COMMENT '性别',
  `age` int(3) DEFAULT '0' COMMENT '年龄',
  `job_id` int(3) NOT NULL COMMENT '职务ID',
  `phone` varchar(20) DEFAULT '0' COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `qq` varchar(20) DEFAULT '0' COMMENT 'QQ号码',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `state` int(1) DEFAULT '0' COMMENT '申请状态',
  `cause` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `username` (`user_name`,`name`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `username_2` (`user_name`) USING BTREE,
  KEY `FKq56a50t77h2iagd5uf8xmlivo` (`job_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_sign
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `dept` varchar(255) DEFAULT NULL COMMENT '部门',
  `content` varchar(255) DEFAULT NULL COMMENT '工作内容',
  `date` varchar(255) DEFAULT NULL COMMENT '工作日期',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `FK_user_id` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
BEGIN;
INSERT INTO `work` VALUES (1, '黄伟', '质量安全部', '月度内部渗透测试扫描', '2020-08-26', '2020-08-26 17:33:37');
INSERT INTO `work` VALUES (2, '黄伟', '质量安全部', '郑培丽电脑Office问题处理', '2020-08-26', '2020-08-26 17:33:42');
INSERT INTO `work` VALUES (3, '黄伟', '质量安全部', '月度内部渗透测试扫描', '2020-08-25', '2020-08-26 04:49:03');
INSERT INTO `work` VALUES (4, '黄伟', '质量安全部', '周继萱电脑连接打印机问题处理', '2020-08-25', '2020-08-26 04:49:03');
INSERT INTO `work` VALUES (5, '黄伟', '质量安全部', '月度内部渗透测试扫描', '2020-08-27', '2020-08-26 21:47:18');
INSERT INTO `work` VALUES (6, '黄伟', '质量安全部', '三楼车间电脑问题处理', '2020-09-07', '2020-09-07 17:26:28');
INSERT INTO `work` VALUES (7, '黄伟', '质量安全部', '何英工作账号开通', '2020-09-08', '2020-09-08 16:16:49');
INSERT INTO `work` VALUES (8, '黄伟', '质量安全部', '三楼电脑VGA问题处理', '2020-09-08', '2020-09-08 16:16:49');
INSERT INTO `work` VALUES (9, '黄伟', '质量安全部', '何英电脑U8问题处理', '2020-09-09', '2020-09-08 16:16:49');
INSERT INTO `work` VALUES (10, '黄伟', '质量安全部', '熊磊账号被锁定，解锁', '2020-09-10', '2020-09-08 16:16:49');
INSERT INTO `work` VALUES (11, '黄伟', '质量安全部', '时间校准', '2020-09-14', '2020-09-14 17:18:17');
INSERT INTO `work` VALUES (12, '黄伟', '质量安全部', '无线热点扫描', '2020-09-14', '2020-09-14 17:18:17');
INSERT INTO `work` VALUES (13, '黄伟', '质量安全部', '何英电脑U8问题处理', '2020-09-14', '2020-09-14 17:18:17');
INSERT INTO `work` VALUES (14, '黄伟', '质量安全部', '何贞电脑显卡问题处理', '2020-09-16', '2020-09-14 17:18:17');
INSERT INTO `work` VALUES (15, '黄伟', '质量安全部', '何英笔记本电脑VPN安装问题处理', '2020-09-16', '2020-09-14 17:18:17');
INSERT INTO `work` VALUES (16, '黄伟', '质量安全部', '何英笔记本电脑连接打印机问题处理', '2020-09-16', '2020-09-14 17:18:17');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

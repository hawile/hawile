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

 Date: 21/10/2020 00:24:10
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
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

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
-- Table structure for orders_process
-- ----------------------------
DROP TABLE IF EXISTS `orders_process`;
CREATE TABLE `orders_process` (
  `order_process` int(2) NOT NULL DEFAULT '0' COMMENT '序号',
  `process_name` varchar(255) DEFAULT NULL COMMENT '流程名称',
  PRIMARY KEY (`order_process`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
  `parent_id` int(11) DEFAULT '0',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role_group
-- ----------------------------
DROP TABLE IF EXISTS `role_group`;
CREATE TABLE `role_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`),
  CONSTRAINT `fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `role_to_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role_to_group
-- ----------------------------
DROP TABLE IF EXISTS `role_to_group`;
CREATE TABLE `role_to_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL DEFAULT '0',
  `value` int(1) DEFAULT '0',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_auth_id` (`auth_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `fk_auth_id` FOREIGN KEY (`auth_id`) REFERENCES `role` (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_info`;
CREATE TABLE `sys_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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

SET FOREIGN_KEY_CHECKS = 1;

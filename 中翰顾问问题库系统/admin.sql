/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50615
 Source Host           : localhost
 Source Database       : admin

 Target Server Type    : MySQL
 Target Server Version : 50615
 File Encoding         : utf-8

 Date: 08/01/2014 09:56:42 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `admin_actor`
-- ----------------------------
DROP TABLE IF EXISTS `admin_actor`;
CREATE TABLE `admin_actor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actorName` varchar(32) DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
--  Table structure for `admin_actorPurview`
-- ----------------------------
DROP TABLE IF EXISTS `admin_actorPurview`;
CREATE TABLE `admin_actorPurview` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actorId` int(11) DEFAULT NULL COMMENT '角色id',
  `purviewId` int(11) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限';

-- ----------------------------
--  Table structure for `admin_ansShape`
-- ----------------------------
DROP TABLE IF EXISTS `admin_ansShape`;
CREATE TABLE `admin_ansShape` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shape` varchar(255) DEFAULT NULL COMMENT '回复形式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin_purview`
-- ----------------------------
DROP TABLE IF EXISTS `admin_purview`;
CREATE TABLE `admin_purview` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purviewName` varchar(32) DEFAULT NULL COMMENT '权限名称',
  `parentId` int(11) DEFAULT NULL COMMENT '父权限id',
  `url` varchar(32) DEFAULT NULL COMMENT '链接地址',
  `isLeaf` varchar(32) DEFAULT NULL COMMENT '是否为叶子节点  1：是     0：否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限';

-- ----------------------------
--  Records of `admin_purview`
-- ----------------------------
BEGIN;
INSERT INTO `admin_purview` VALUES ('1', '权限管理', '0', null, '0'), ('2', '用户管理', '1', '/basic/userList.action', '1'), ('3', '角色管理', '1', null, '1'), ('4', '权限管理', '1', null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `admin_question`
-- ----------------------------
DROP TABLE IF EXISTS `admin_question`;
CREATE TABLE `admin_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(255) DEFAULT NULL COMMENT '客户名称（公司名称）',
  `caseNum` int(11) DEFAULT NULL COMMENT '案例编号',
  `clientAddress` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `clientPhone` varchar(255) DEFAULT NULL COMMENT '客户电话',
  `askTIme` varchar(255) DEFAULT NULL COMMENT '提问时间',
  `answerTime` varchar(255) DEFAULT NULL COMMENT '回复时间',
  `caseTitle` varchar(255) DEFAULT NULL COMMENT '案例主题',
  `pcharge` varchar(255) DEFAULT NULL COMMENT '负责人',
  `chargePhone` varchar(255) DEFAULT NULL COMMENT '负责人电话',
  `ansShapeId` bigint(20) DEFAULT NULL COMMENT '回复形式（外健）',
  `typeId` bigint(20) DEFAULT NULL COMMENT '问题来源（外键）',
  `question` text COMMENT '问题内容',
  `answer` text COMMENT '回复内容',
  `legalBasis` text COMMENT '法律依据',
  `revComment` text COMMENT '复核人意见',
  `answerPeo` varchar(255) DEFAULT NULL COMMENT '回复人员',
  `addressee` varchar(255) DEFAULT NULL COMMENT '收件人',
  `sender` varchar(255) DEFAULT NULL COMMENT '发件人',
  `senderDept` varchar(255) DEFAULT NULL COMMENT '发件人部门',
  `addresseeFax` varchar(255) DEFAULT NULL COMMENT '收件人传真',
  `senderFax` varchar(255) DEFAULT NULL COMMENT '发件人传真',
  `zxzjfhr` varchar(255) DEFAULT NULL COMMENT '咨询总监复核人',
  `fhr` varchar(255) DEFAULT NULL COMMENT '复核人',
  `hhrshr` varchar(255) DEFAULT NULL COMMENT '合伙人审核人',
  `dqsfsy` varchar(255) DEFAULT NULL COMMENT '当前是否适用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin_remark`
-- ----------------------------
DROP TABLE IF EXISTS `admin_remark`;
CREATE TABLE `admin_remark` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '注释',
  `questionId` bigint(20) DEFAULT NULL COMMENT '问题id',
  `remarkPer` varchar(255) DEFAULT NULL COMMENT '备注人',
  `remmarkTIme` varchar(255) DEFAULT NULL COMMENT '备注时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin_type`
-- ----------------------------
DROP TABLE IF EXISTS `admin_type`;
CREATE TABLE `admin_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '问题来源类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(32) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `trueName` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `registerDate` varchar(32) DEFAULT NULL COMMENT '注册日期',
  `comments` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='后台用户';

-- ----------------------------
--  Records of `admin_user`
-- ----------------------------
BEGIN;
INSERT INTO `admin_user` VALUES ('1', 'admin', 'admin', 'admin', '1', 'adf', null, ''), ('2', '2', '2', null, null, null, null, null), ('3', '3', '3', null, null, null, null, null), ('4', '4', '4', null, null, null, null, null), ('5', '5', '5', null, null, null, null, null), ('6', '6', '6', null, null, null, null, null), ('7', '7', '7', null, null, null, null, null), ('8', '8', '8', null, null, null, null, null), ('9', '9', '9', null, null, null, null, null), ('10', '10', '10', null, null, null, null, null), ('11', '11', '11', null, null, null, null, null), ('21', 'admin', 'admin', '12', '1', 'adf', '2014-07-31 05:25:52', '1');
COMMIT;

-- ----------------------------
--  Table structure for `admin_userActor`
-- ----------------------------
DROP TABLE IF EXISTS `admin_userActor`;
CREATE TABLE `admin_userActor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `actorId` int(11) DEFAULT NULL COMMENT '角色id',
  `actorName` varchar(32) DEFAULT NULL COMMENT '用户的角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色';

SET FOREIGN_KEY_CHECKS = 1;

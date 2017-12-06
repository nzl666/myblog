/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-06 23:02:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `lid` tinyint(3) unsigned DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客';

-- ----------------------------
-- Records of blog
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned DEFAULT NULL COMMENT '评论用户编号',
  `bid` bigint(20) unsigned DEFAULT NULL COMMENT '博客编号',
  `content` text COMMENT '内容',
  `commentTime` datetime DEFAULT NULL COMMENT '评论时间',
  `state` tinyint(3) unsigned DEFAULT '0' COMMENT '状态：0.通过 1.不通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `labelName` varchar(45) DEFAULT NULL COMMENT '标签名称',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `state` tinyint(3) unsigned DEFAULT '0' COMMENT '标签状态 0. 使用 1.未使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of label
-- ----------------------------

-- ----------------------------
-- Table structure for reply_comments
-- ----------------------------
DROP TABLE IF EXISTS `reply_comments`;
CREATE TABLE `reply_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned DEFAULT NULL COMMENT '回复用户编号',
  `cid` bigint(20) unsigned DEFAULT NULL COMMENT '评论编号',
  `content` text COMMENT '内容',
  `replyTime` datetime DEFAULT NULL COMMENT '回复时间',
  `state` tinyint(3) unsigned DEFAULT '0' COMMENT '状态 ：0.通过 1.未通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='回复评论表';

-- ----------------------------
-- Records of reply_comments
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT '用户状态:0.正常1.冻结',
  `headImage` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `lastLoginTime` datetime DEFAULT NULL COMMENT '上次登录时间',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `wechart` varchar(45) DEFAULT NULL COMMENT '微信',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'nzl', '199595', '0', null, '2017-11-07 20:27:40', '2017-11-07 20:27:44', '2017-11-07 20:27:46', 'nzlsgg@163.com', '15900610143', 'nzl9595');

-- ----------------------------
-- Table structure for user_blog
-- ----------------------------
DROP TABLE IF EXISTS `user_blog`;
CREATE TABLE `user_blog` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `bid` bigint(20) unsigned DEFAULT NULL COMMENT '博客编号',
  `isTop` tinyint(3) unsigned DEFAULT NULL COMMENT '是否置顶',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户博客中间表';

-- ----------------------------
-- Records of user_blog
-- ----------------------------

-- ----------------------------
-- Table structure for user_browse
-- ----------------------------
DROP TABLE IF EXISTS `user_browse`;
CREATE TABLE `user_browse` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned DEFAULT NULL COMMENT '用户编号',
  `bid` bigint(20) unsigned DEFAULT NULL COMMENT '博客编号',
  `viewTime` varchar(45) DEFAULT NULL COMMENT '浏览时间',
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `duringTime` int(10) unsigned DEFAULT NULL COMMENT '浏览时间长',
  `count` int(10) unsigned DEFAULT NULL COMMENT '浏览次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户浏览表';

-- ----------------------------
-- Records of user_browse
-- ----------------------------

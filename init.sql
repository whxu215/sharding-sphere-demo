create database ds0;
create database ds1;

use ds0;
DROP TABLE IF EXISTS `tab_user`;
DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tab_user` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '是否删除 1删除 0未删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '姓名',
  `order_no` varchar(32) NOT NULL COMMENT '订单号',
  `order_time` datetime NOT NULL COMMENT '订单时间',
  `merchant` varchar(16) NOT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'tb_order0'
CREATE TABLE `tb_order0` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL COMMENT '姓名',
`order_no` varchar(32) NOT NULL COMMENT '订单号',
`order_time` datetime NOT NULL COMMENT '订单时间',
`merchant` varchar(16) NOT NULL COMMENT '商户名称',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'tb_order1'
CREATE TABLE `tb_order1` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL COMMENT '姓名',
`order_no` varchar(32) NOT NULL COMMENT '订单号',
`order_time` datetime NOT NULL COMMENT '订单时间',
`merchant` varchar(16) NOT NULL COMMENT '商户名称',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'tb_order2'
CREATE TABLE `tb_order2` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL COMMENT '姓名',
`order_no` varchar(32) NOT NULL COMMENT '订单号',
`order_time` datetime NOT NULL COMMENT '订单时间',
`merchant` varchar(16) NOT NULL COMMENT '商户名称',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'tb_order3'
CREATE TABLE `tb_order3` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL COMMENT '姓名',
`order_no` varchar(32) NOT NULL COMMENT '订单号',
`order_time` datetime NOT NULL COMMENT '订单时间',
`merchant` varchar(16) NOT NULL COMMENT '商户名称',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


use ds1;
DROP TABLE IF EXISTS `tab_user`;
DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tab_user` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '是否删除 1删除 0未删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '姓名',
  `order_no` varchar(32) NOT NULL COMMENT '订单号',
  `order_time` datetime NOT NULL COMMENT '订单时间',
  `merchant` varchar(16) NOT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'tb_order0'
CREATE TABLE `tb_order0` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL COMMENT '姓名',
`order_no` varchar(32) NOT NULL COMMENT '订单号',
`order_time` datetime NOT NULL COMMENT '订单时间',
`merchant` varchar(16) NOT NULL COMMENT '商户名称',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'tb_order1'
CREATE TABLE `tb_order1` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL COMMENT '姓名',
`order_no` varchar(32) NOT NULL COMMENT '订单号',
`order_time` datetime NOT NULL COMMENT '订单时间',
`merchant` varchar(16) NOT NULL COMMENT '商户名称',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'tb_order2'
CREATE TABLE `tb_order2` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL COMMENT '姓名',
`order_no` varchar(32) NOT NULL COMMENT '订单号',
`order_time` datetime NOT NULL COMMENT '订单时间',
`merchant` varchar(16) NOT NULL COMMENT '商户名称',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'tb_order3'
CREATE TABLE `tb_order3` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` int(11) NOT NULL COMMENT '姓名',
`order_no` varchar(32) NOT NULL COMMENT '订单号',
`order_time` datetime NOT NULL COMMENT '订单时间',
`merchant` varchar(16) NOT NULL COMMENT '商户名称',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
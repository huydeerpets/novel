/*
 Navicat Premium Data Transfer
 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost:3306
 Source Schema         : chapter
 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001
 Date: 16/03/2019 12:23:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nov_chapter_0000
-- ----------------------------
DROP TABLE IF EXISTS `nov_chapter_0000`;
CREATE TABLE `nov_chapter_0000` (
  
`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nov_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'fiction ID',
  `chapter_no` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'chapter number',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT 'chapter title',
  `desc` longtext NOT NULL COMMENT 'chapter content',
  `link` varchar(100) NOT NULL DEFAULT '' COMMENT 'chapter acquisition link',
  `source` varchar(10) NOT NULL DEFAULT '' COMMENT 'chapter collection site source',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'views',
  `text_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'chapter word count',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Chapter acquisition status 0 is normal, 1 failed',
  `try_views` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'acquisition retries',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `udx_novid_no_source` (`nov_id`,`chapter_no`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nov_chapter_0001
-- ----------------------------
DROP TABLE IF EXISTS `nov_chapter_0001`;
CREATE TABLE `nov_chapter_0001` (
  
`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nov_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'fiction ID',
  `chapter_no` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'chapter number',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT 'chapter title',
  `desc` longtext NOT NULL COMMENT 'chapter content',
  `link` varchar(100) NOT NULL DEFAULT '' COMMENT 'chapter acquisition link',
  `source` varchar(10) NOT NULL DEFAULT '' COMMENT 'chapter collection site source',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'views',
  `text_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'chapter word count',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Chapter acquisition status 0 is normal, 1 failed',
  `try_views` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'acquisition retries',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `udx_novid_no_source` (`nov_id`,`chapter_no`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nov_chapter_0002
-- ----------------------------
DROP TABLE IF EXISTS `nov_chapter_0002`;
CREATE TABLE `nov_chapter_0002` (
  
`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nov_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'fiction ID',
  `chapter_no` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'chapter number',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT 'chapter title',
  `desc` longtext NOT NULL COMMENT 'chapter content',
  `link` varchar(100) NOT NULL DEFAULT '' COMMENT 'chapter acquisition link',
  `source` varchar(10) NOT NULL DEFAULT '' COMMENT 'chapter collection site source',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'views',
  `text_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'chapter word count',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Chapter acquisition status 0 is normal, 1 failed',
  `try_views` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'acquisition retries',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `udx_novid_no_source` (`nov_id`,`chapter_no`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



SET FOREIGN_KEY_CHECKS = 1;

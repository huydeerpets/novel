# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host:127.0.0.1 (MySQL 5.7.16)
# Database:gonovel
# Generation Time:2019-01-03 08:52:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table nov_admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_admin`;

CREATE TABLE `nov_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(30) NOT NULL DEFAULT '' COMMENT 'user account',
  `mail` varchar(100) NOT NULL DEFAULT '' COMMENT 'user mailbox',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT 'nickname',
  `mobile` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'phone',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT 'password',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Groups',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'status',
  `login_visit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'logins number',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT 'ast logged',
  `last_logined_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'time',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Administrator';

LOCK TABLES `nov_admin` WRITE;
/*!40000 ALTER TABLE `nov_admin` DISABLE KEYS */;

INSERT INTO `nov_admin` (`id`, `account`, `mail`, `name`, `mobile`, `password`, `group_id`, `status`, `login_visit`, `last_login_ip`, `last_logined_at`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'admin','','Vckai',0,'d5e8ee6b896d9f3fbbb14845a0845e3a02f06334065a4ba753932e29a301af3e',1,0,1,'127.0.0.1',1546503635,1492083069,1546503635,0);

/*!40000 ALTER TABLE `nov_admin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nov_admin_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_admin_log`;

CREATE TABLE `nov_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT 'name',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT 'IP',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Diary type',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT 'diary content',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Journal table';



# Dump of table nov_banner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_banner`;

CREATE TABLE `nov_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT 'name',
  `img` varchar(100) NOT NULL DEFAULT '' COMMENT 'picture URL',
  `link` varchar(100) NOT NULL DEFAULT '' COMMENT 'jump URL',
  `zone` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Advertising zone',
  `desc` varchar(100) NOT NULL DEFAULT '' COMMENT 'description',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'status',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  `ext` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Web site banner Configuration';



# Dump of table nov_cate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_cate`;

CREATE TABLE `nov_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT 'classification',
  `is_menu` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Is the menu',
  `is_home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether the home page displays',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='novel classification';

LOCK TABLES `nov_cate` WRITE;
/*!40000 ALTER TABLE `nov_cate` DISABLE KEYS */;

INSERT INTO `nov_cate` (`id`, `name`, `is_menu`, `is_home`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'fantasy Magic',1,1,1491140543,1491140666,0),
	(2,'Warrior repair True',1,1,1491140686,1491140686,0),
	(3,'urban romance',1,1,1491140708,1491140708,0),
	(4,'historical military',1,1,1491140720,1491140720,0),
	(5,'Detective reasoning',1,1,1491140732,1491140732,0),
	(6,'netball anime',1,0,1491140748,1493984032,0),
	(7,'science fiction',1,0,1491140760,1493984039,0),
	(8,'horror psychic',1,0,1491140775,1493984026,0),
	(10,'Overhead history',1,0,1494055362,1494055362,0),
	(11,'High Dry President',1,0,1494055377,1494055377,0),
	(12,'Same person',1,0,1494055418,1494055418,0),
	(13,'Other types',1,0,1495114540,1495114540,0);

/*!40000 ALTER TABLE `nov_cate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nov_feedback
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_feedback`;

CREATE TABLE `nov_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Feedback person UID, visitor for 0',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT 'feedback person name',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT 'feedback person IP',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Feedback type',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Feedback processing Status',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT 'feedback content',
  `contact` varchar(100) NOT NULL DEFAULT '' COMMENT 'Feedback person Contact',
  `reply` varchar(255) NOT NULL DEFAULT '' COMMENT 'processing Instructions',
  `reply_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Processing time',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Visitor member Feedback Form';



# Dump of table nov_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_group`;

CREATE TABLE `nov_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT 'group name',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT 'Group Description',
  `role_ids` varchar(2555) NOT NULL DEFAULT '' COMMENT 'Group permission ID, multiple , Split',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='background user Group';

LOCK TABLES `nov_group` WRITE;
/*!40000 ALTER TABLE `nov_group` DISABLE KEYS */;

INSERT INTO `nov_group` (`id`, `name`, `desc`, `role_ids`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Super administrator','Have supreme authority','6,1,2,3,4,5,6',1492083053,1492083053,0);

/*!40000 ALTER TABLE `nov_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nov_novel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_novel`;

CREATE TABLE `nov_novel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT 'novel name',
  `desc` varchar(2555) NOT NULL DEFAULT '' COMMENT 'novel description',
  `cover` varchar(100) NOT NULL DEFAULT '' COMMENT 'novel cover',
  `cate_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `cate_name` varchar(30) NOT NULL DEFAULT '' COMMENT 'Category Name',
  `author` varchar(30) NOT NULL DEFAULT '' COMMENT 'Author',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Is it popular?',
  `is_rec` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Is it recommended?',
  `is_vip_rec` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether member recommendation',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Novel state, 0 update, 1 end, 2 eunuchs',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of views',
  `text_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Words of the novel',
  `chapter_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of chapters of the novel',
  `chapter_updated_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Latest chapter Time',
  `chapter_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Latest Chapter ID',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  `chapter_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'latest Chapter title',
  `collect_num` int(10) unsigned NOT NULL DEFAULT '0',
  `rec_num` int(10) unsigned NOT NULL DEFAULT '0',
  `is_today_rec` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Is it recommended today?',
  `is_man_like` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Do boys like',
  `is_girl_like` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Do girls like',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='novel master information';



# Dump of table nov_novel_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_novel_links`;

CREATE TABLE `nov_novel_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nov_id` int(11) unsigned NOT NULL COMMENT 'novel ID',
  `link` varchar(100) NOT NULL DEFAULT '' COMMENT 'Collection source novel profile URL',
  `source` varchar(30) NOT NULL DEFAULT '' COMMENT 'Collection station identification',
  `chapter_link` varchar(100) NOT NULL DEFAULT '' COMMENT 'Capture Source Chapter Page URL',
  `updated_at` int(11) unsigned NOT NULL COMMENT 'Update time',
  `created_at` int(11) unsigned NOT NULL COMMENT 'Creation time',
  `deleted_at` int(11) unsigned NOT NULL COMMENT 'Delete time',
  PRIMARY KEY (`id`),
  KEY `udx_link_source` (`source`,`link`),
  KEY `idx_novid` (`nov_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Fiction collection site link association';



# Dump of table nov_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_role`;

CREATE TABLE `nov_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent module ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT 'Module name',
  `icon` varchar(10) NOT NULL DEFAULT '' COMMENT 'Menu icon',
  `is_menu` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether the left menu is displayed',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT 'Module description',
  `module` varchar(50) NOT NULL DEFAULT '' COMMENT 'Module',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT 'method',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort',
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether the default module',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Background menu permission';

LOCK TABLES `nov_role` WRITE;
/*!40000 ALTER TABLE `nov_role` DISABLE KEYS */;

INSERT INTO `nov_role` (`id`, `pid`, `name`, `icon`, `is_menu`, `desc`, `module`, `action`, `sort`, `is_default`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,0,'Admin Page','&#xe60a;',1,'','Home','Index',255,1,1492082737,1492083266,0),
	(2,0,'Administrator management','&#xe613;',1,'','','',30,0,1492082898,1492083886,0),
	(3,2,'Administrator list','',1,'','Admin','Index',0,0,1492082919,1492082919,0),
	(4,2,'Group management','',1,'','Group','Index',0,0,1492082943,1492082943,0),
	(5,2,'Authority management','',1,'','Role','Index',0,0,1492082961,1492082961,0),
	(6,0,'System settings','&#xe614;',1,'','','',0,0,1492082995,1492082995,0),
	(7,0,'Novel management','&#xe650;',1,'','','',50,0,1492083163,1492083897,0),
	(8,7,'List of novels','',1,'','Novel','Index',100,0,1492083183,1492083252,0),
	(9,7,'Chapter management','',0,'','Chapter','Index',100,0,1492083203,1495109728,0),
	(10,6,'Customer feedback','',1,'','Feedback','Index',0,0,1493122753,1493122753,0),
	(11,7,'Category Management','',1,'','Cate','Index',0,0,1493983980,1493983980,0),
	(12,6,'Carousel management','',1,'','Banner','Index',0,0,1494999793,1494999824,0),
	(13,6,'Admin Log','',1,'','AdminLog','Index',0,0,1495004798,1495004798,0);

/*!40000 ALTER TABLE `nov_role` ENABLE KEYS */;
UNLOCK TABLES;

# Dump of table nov_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nov_config`;

CREATE TABLE `nov_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(50) NOT NULL DEFAULT '' COMMENT 'Health name',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Health content',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `udx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Website configuration';

LOCK TABLES `nov_role` WRITE;
/*!40000 ALTER TABLE `nov_role` DISABLE KEYS */;

INSERT INTO `nov_config` (`id`, `key`, `value`, `created_at`, `updated_at`)
VALUES
	(1, 'Title', 'Kaqiu novel', 1554814419, 1554814419),
	(2, 'SubTitle', 'Massive novel', 1554814419, 1554814419),
	(3, 'Keyword', 'Novels, free novels, popular novels, romance novels, novel downloads, comics, good articles, e-books', 1554814419, 1554814419),
	(4, 'Description', 'Wonderful novels are all in Kaqiu novels, providing free online novels for free reading and downloading, fantasy novels, martial arts novels, original novels, online novels, urban novels, romance novels, youth novels, historical novels, military novels, online novels, science fiction a variety of rich content types such as novels', 1554814419, 1554814419),
	(5, 'MobileURL', '', 1554814419, 1554814419),
	(6, 'AdminURL', '', 1554814419, 1554814419),
	(7, 'ViewURL', '/public/', 1554814419, 1554814419),
	(8, 'Theme', 'default', 1554814419, 1554814419),
	(9, 'MobileTheme', 'default', 1554814419, 1554814419),
	(10, 'Logo', '/public/home/default/img/logo.png', 1554814419, 1554814419),
	(11, 'Favicon', '/public/img/favicon.ico', 1554814419, 1554814419),
	(12, 'Copyright', '© 2017 - 2019 example.com', 1554814419, 1554814419),
	(13, 'Icp', '', 1554814419, 1554814419),
	(14, 'IsSnatch', '0', 1554814419, 1554814419),
	(15, 'Uptime', '1', 1554814419, 1554814419),
	(16, 'NotUpStopDays', '10', 1554814419, 1554814419),
	(17, 'ProxyMode', '0', 1554814419, 1554814419),
	(18, 'ProxyURL', '', 1554814419, 1554814419);

/*!40000 ALTER TABLE `nov_role` ENABLE KEYS */;
UNLOCK TABLES;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

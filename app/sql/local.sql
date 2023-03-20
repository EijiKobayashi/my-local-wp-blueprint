-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://wordpress-starter-kit.local/admin','yes');
INSERT INTO `wp_options` VALUES (2,'home','https://wordpress-starter-kit.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','WordPress Starter kit','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','eiji@design24c.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','Y年n月j日','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i A','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','Y年n月j日 g:i A','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:176:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:74:\"news/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:95:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=news\";s:69:\"news/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:95:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=news\";s:62:\"news/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:96:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]&post_type=news\";s:44:\"news/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:78:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&post_type=news\";s:61:\"news/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:79:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=news\";s:56:\"news/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:79:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=news\";s:49:\"news/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]&post_type=news\";s:31:\"news/([0-9]{4})/([0-9]{1,2})/?$\";s:62:\"index.php?year=$matches[1]&monthnum=$matches[2]&post_type=news\";s:48:\"news/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=news\";s:43:\"news/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=news\";s:36:\"news/([0-9]{4})/page/?([0-9]{1,})/?$\";s:59:\"index.php?year=$matches[1]&paged=$matches[2]&post_type=news\";s:18:\"news/([0-9]{4})/?$\";s:41:\"index.php?year=$matches[1]&post_type=news\";s:40:\"news/author/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?author_name=$matches[1]&paged=$matches[2]&post_type=news\";s:22:\"news/author/([^/]+)/?$\";s:48:\"index.php?author_name=$matches[1]&post_type=news\";s:52:\"news/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?news_category=$matches[1]&feed=$matches[2]\";s:47:\"news/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?news_category=$matches[1]&feed=$matches[2]\";s:38:\"news/category/(.+?)/date/([0-9]{4})/?$\";s:52:\"index.php?news_category=$matches[1]&year=$matches[2]\";s:56:\"news/category/(.+?)/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:70:\"index.php?news_category=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:51:\"news/category/(.+?)/date/([0-9]{4})/([0-9]{1,2})/?$\";s:73:\"index.php?news_category=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:69:\"news/category/(.+?)/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:91:\"index.php?news_category=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:64:\"news/category/(.+?)/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:89:\"index.php?news_category=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:82:\"news/category/(.+?)/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:107:\"index.php?news_category=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:40:\"news/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?news_category=$matches[1]&paged=$matches[2]\";s:22:\"news/category/(.+?)/?$\";s:35:\"index.php?news_category=$matches[1]\";s:57:\"news/news/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?news_category=$matches[1]&feed=$matches[2]\";s:52:\"news/news/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?news_category=$matches[1]&feed=$matches[2]\";s:43:\"news/news/category/(.+?)/date/([0-9]{4})/?$\";s:52:\"index.php?news_category=$matches[1]&year=$matches[2]\";s:61:\"news/news/category/(.+?)/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:70:\"index.php?news_category=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:56:\"news/news/category/(.+?)/date/([0-9]{4})/([0-9]{1,2})/?$\";s:73:\"index.php?news_category=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:74:\"news/news/category/(.+?)/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:91:\"index.php?news_category=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:69:\"news/news/category/(.+?)/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:89:\"index.php?news_category=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:87:\"news/news/category/(.+?)/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:107:\"index.php?news_category=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:45:\"news/news/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?news_category=$matches[1]&paged=$matches[2]\";s:27:\"news/news/category/(.+?)/?$\";s:35:\"index.php?news_category=$matches[1]\";s:15:\"news/([^/]+)/?$\";s:31:\"index.php?news_tags=$matches[1]\";s:29:\"news/([^/]+)/page/([0-9]+)/?$\";s:49:\"index.php?news_tags=$matches[1]&paged=$matches[2]\";s:48:\"news/tags/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?news_tags=$matches[1]&feed=$matches[2]\";s:43:\"news/tags/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?news_tags=$matches[1]&feed=$matches[2]\";s:34:\"news/tags/(.+?)/date/([0-9]{4})/?$\";s:48:\"index.php?news_tags=$matches[1]&year=$matches[2]\";s:52:\"news/tags/(.+?)/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:66:\"index.php?news_tags=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:47:\"news/tags/(.+?)/date/([0-9]{4})/([0-9]{1,2})/?$\";s:69:\"index.php?news_tags=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:65:\"news/tags/(.+?)/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:87:\"index.php?news_tags=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:60:\"news/tags/(.+?)/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:85:\"index.php?news_tags=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:78:\"news/tags/(.+?)/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:103:\"index.php?news_tags=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:36:\"news/tags/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?news_tags=$matches[1]&paged=$matches[2]\";s:18:\"news/tags/(.+?)/?$\";s:31:\"index.php?news_tags=$matches[1]\";s:53:\"news/news/tags/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?news_tags=$matches[1]&feed=$matches[2]\";s:48:\"news/news/tags/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?news_tags=$matches[1]&feed=$matches[2]\";s:39:\"news/news/tags/(.+?)/date/([0-9]{4})/?$\";s:48:\"index.php?news_tags=$matches[1]&year=$matches[2]\";s:57:\"news/news/tags/(.+?)/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:66:\"index.php?news_tags=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:52:\"news/news/tags/(.+?)/date/([0-9]{4})/([0-9]{1,2})/?$\";s:69:\"index.php?news_tags=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:70:\"news/news/tags/(.+?)/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:87:\"index.php?news_tags=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:65:\"news/news/tags/(.+?)/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:85:\"index.php?news_tags=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:83:\"news/news/tags/(.+?)/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:103:\"index.php?news_tags=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:41:\"news/news/tags/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?news_tags=$matches[1]&paged=$matches[2]\";s:23:\"news/news/tags/(.+?)/?$\";s:31:\"index.php?news_tags=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"news/.+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"news/.+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"news/.+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"news/.+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"news/.+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"news/.+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"(news)/(.+?)/([^/]+)/embed/?$\";s:95:\"index.php?post_type=news&slug=$matches[1]&news_category=$matches[2]&news=$matches[3]&embed=true\";s:33:\"(news)/(.+?)/([^/]+)/trackback/?$\";s:89:\"index.php?post_type=news&slug=$matches[1]&news_category=$matches[2]&news=$matches[3]&tb=1\";s:53:\"(news)/(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:101:\"index.php?post_type=news&slug=$matches[1]&news_category=$matches[2]&news=$matches[3]&feed=$matches[4]\";s:48:\"(news)/(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:101:\"index.php?post_type=news&slug=$matches[1]&news_category=$matches[2]&news=$matches[3]&feed=$matches[4]\";s:41:\"(news)/(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:102:\"index.php?post_type=news&slug=$matches[1]&news_category=$matches[2]&news=$matches[3]&paged=$matches[4]\";s:48:\"(news)/(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:102:\"index.php?post_type=news&slug=$matches[1]&news_category=$matches[2]&news=$matches[3]&cpage=$matches[4]\";s:37:\"(news)/(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:101:\"index.php?post_type=news&slug=$matches[1]&news_category=$matches[2]&news=$matches[3]&page=$matches[4]\";s:25:\"news/.+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"news/.+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"news/.+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"news/.+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"news/.+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"news/.+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"news/category/(.+?)/embed/?$\";s:46:\"index.php?news_category=$matches[1]&embed=true\";s:24:\"news/tags/(.+?)/embed/?$\";s:42:\"index.php?news_tags=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:43:\"admin-color-schemes/admin-color-schemes.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";i:3;s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";i:4;s:14:\"my-wp/mywp.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','Default','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','Default','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";a:2:{i:0;s:4:\"CPTP\";i:1;s:9:\"uninstall\";}s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:15:\"hicpo_uninstall\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','Asia/Tokyo','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','2','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1694854503','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:21:\"hicpo_load_script_css\";b:1;s:23:\"hicpo_update_menu_order\";b:1;s:28:\"hicpo_update_menu_order_tags\";b:1;s:29:\"hicpo_update_menu_order_sites\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:21:\"hicpo_load_script_css\";b:1;s:23:\"hicpo_update_menu_order\";b:1;s:28:\"hicpo_update_menu_order_tags\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'WPLANG','ja','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:157:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>最近の投稿</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>最近のコメント</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>アーカイブ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:155:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>カテゴリー</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:8:{i:1679305231;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1679316031;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1679316039;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1679359231;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1679359239;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1679359241;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1679532031;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'nonce_key','A<HvaAmElk`_s-E#ezl|&5/No&s1S=fRtyZR*?m6/j>$a]>f8^3^.1k@Xp/l+b8{','no');
INSERT INTO `wp_options` VALUES (117,'nonce_salt','p}nsRN;:+U[oPW.Wvu4Q0wt_lEf;BqnR{1Q<^E+/0QJ*bkNpa8|=~Sm()JD<y><1','no');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1658883146;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (127,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (128,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:34:\"SSL 認証に失敗しました。\";}}','yes');
INSERT INTO `wp_options` VALUES (132,'logged_in_key',';@miM.0*<}eLUn$osNK|>=ZO<TJ,* H(sH#&.WOzVPwA&Vh~1;{^!XmF7~3ayV /','no');
INSERT INTO `wp_options` VALUES (133,'logged_in_salt','d1$ac@F}g@9![ D{CDQt3}Sjo[d/|3476+sXgSSbHUp{wVKK6#$VNy8B^?Cj:jar','no');
INSERT INTO `wp_options` VALUES (139,'auth_key','}fBR[s3r}^(v$P<wX>Moo* A3GB4lQ<:,N2V#uk(PLk20zK;12]_(6.&:iZTr% l','no');
INSERT INTO `wp_options` VALUES (140,'auth_salt','vlfTwJRqQ$T+4(5vKw>BCA8.%LqYDEqU</}0W3BsCKf;bLwKw+w1SVLUj8#6-wK+','no');
INSERT INTO `wp_options` VALUES (148,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (159,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (162,'cptp_version','3.4.5','yes');
INSERT INTO `wp_options` VALUES (163,'queue_flush_rules','0','yes');
INSERT INTO `wp_options` VALUES (165,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (166,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (167,'no_taxonomy_structure','','yes');
INSERT INTO `wp_options` VALUES (168,'add_post_type_for_tax','','yes');
INSERT INTO `wp_options` VALUES (176,'akismet_strictness','0','yes');
INSERT INTO `wp_options` VALUES (177,'akismet_show_user_comments_approved','0','yes');
INSERT INTO `wp_options` VALUES (178,'akismet_comment_form_privacy_notice','hide','yes');
INSERT INTO `wp_options` VALUES (179,'wordpress_api_key','c7ef1e42a88e','yes');
INSERT INTO `wp_options` VALUES (180,'akismet_spam_count','0','yes');
INSERT INTO `wp_options` VALUES (181,'cptp_permalink_checked','3.4.5','yes');
INSERT INTO `wp_options` VALUES (186,'mywp_frontend_general','a:12:{s:9:\"admin_bar\";s:4:\"hide\";s:17:\"hide_wp_generator\";b:1;s:21:\"hide_wlwmanifest_link\";b:1;s:13:\"hide_rsd_link\";b:1;s:15:\"hide_feed_links\";b:1;s:21:\"hide_feed_links_extra\";b:1;s:21:\"hide_rest_link_header\";b:1;s:21:\"hide_shortlink_header\";b:1;s:16:\"include_css_file\";s:0:\"\";s:15:\"include_js_file\";s:0:\"\";s:18:\"custom_header_meta\";s:0:\"\";s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (187,'mywp_frontend_author_archive','a:2:{s:15:\"disable_archive\";b:1;s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (188,'mywp_login_general','a:8:{s:13:\"logo_link_url\";s:20:\"[mywp_url login=\"1\"]\";s:15:\"logo_image_path\";s:16:\"./logo-login.png\";s:10:\"logo_title\";s:24:\"[mywp_site field=\"name\"]\";s:22:\"hidden_select_language\";b:1;s:9:\"input_css\";s:0:\"\";s:16:\"include_css_file\";s:10:\"/login.css\";s:18:\"custom_footer_text\";s:0:\"\";s:7:\"advance\";b:1;}','no');
INSERT INTO `wp_options` VALUES (189,'mywp_login_user','a:3:{s:18:\"login_redirect_url\";s:20:\"[mywp_url admin=\"1\"]\";s:19:\"logout_redirect_url\";s:20:\"[mywp_url login=\"1\"]\";s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (196,'mywp_admin_regist_meta_boxes','a:1:{s:17:\"regist_meta_boxes\";a:2:{s:9:\"dashboard\";a:5:{s:21:\"dashboard_site_health\";a:5:{s:2:\"id\";s:21:\"dashboard_site_health\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:33:\"サイトヘルスステータス\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:33:\"サイトヘルスステータス\";}}s:19:\"dashboard_right_now\";a:5:{s:2:\"id\";s:19:\"dashboard_right_now\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"概要\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:6:\"概要\";}}s:18:\"dashboard_activity\";a:5:{s:2:\"id\";s:18:\"dashboard_activity\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:21:\"アクティビティ\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:21:\"アクティビティ\";}}s:21:\"dashboard_quick_press\";a:5:{s:2:\"id\";s:21:\"dashboard_quick_press\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:43:\"クイックドラフト 最新の下書き\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:110:\"<span class=\"hide-if-no-js\">クイックドラフト</span> <span class=\"hide-if-js\">最新の下書き</span>\";}}s:17:\"dashboard_primary\";a:5:{s:2:\"id\";s:17:\"dashboard_primary\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:37:\"WordPress イベントとニュース\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:37:\"WordPress イベントとニュース\";}}}s:4:\"news\";a:7:{s:9:\"submitdiv\";a:5:{s:2:\"id\";s:9:\"submitdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"公開\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:16:\"news_categorydiv\";a:5:{s:2:\"id\";s:16:\"news_categorydiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"カテゴリー\";s:4:\"args\";a:2:{s:8:\"taxonomy\";s:13:\"news_category\";s:22:\"__back_compat_meta_box\";b:1;}}s:12:\"news_tagsdiv\";a:5:{s:2:\"id\";s:12:\"news_tagsdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"タグ\";s:4:\"args\";a:2:{s:8:\"taxonomy\";s:9:\"news_tags\";s:22:\"__back_compat_meta_box\";b:1;}}s:13:\"pageparentdiv\";a:5:{s:2:\"id\";s:13:\"pageparentdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"投稿の属性\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:12:\"postimagediv\";a:5:{s:2:\"id\";s:12:\"postimagediv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:3:\"low\";s:5:\"title\";s:18:\"アイキャッチ\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:7:\"slugdiv\";a:5:{s:2:\"id\";s:7:\"slugdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:12:\"スラッグ\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:9:\"authordiv\";a:5:{s:2:\"id\";s:9:\"authordiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:9:\"投稿者\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}}}}','no');
INSERT INTO `wp_options` VALUES (201,'current_theme','Plainscape','yes');
INSERT INTO `wp_options` VALUES (202,'theme_mods_Default','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (203,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (204,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (205,'mywp_admin_regist_list_columns','a:1:{s:14:\"regist_columns\";a:3:{s:4:\"post\";a:2:{s:7:\"columns\";a:7:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:12:\"タイトル\";s:6:\"author\";s:9:\"投稿者\";s:10:\"categories\";s:15:\"カテゴリー\";s:4:\"tags\";s:6:\"タグ\";s:8:\"comments\";s:138:\"<span class=\"vers comment-grey-bubble\" title=\"コメント\" aria-hidden=\"true\"></span><span class=\"screen-reader-text\">コメント</span>\";s:4:\"date\";s:6:\"日付\";}s:9:\"sortables\";a:4:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}}}s:4:\"news\";a:2:{s:7:\"columns\";a:7:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:12:\"タイトル\";s:6:\"author\";s:9:\"投稿者\";s:4:\"date\";s:6:\"日付\";s:13:\"news_category\";s:15:\"カテゴリー\";s:9:\"news_tags\";s:6:\"タグ\";s:9:\"thumbnail\";s:15:\"サムネイル\";}s:9:\"sortables\";a:4:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}}}s:4:\"page\";a:2:{s:7:\"columns\";a:5:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:12:\"タイトル\";s:6:\"author\";s:9:\"投稿者\";s:8:\"comments\";s:119:\"<span class=\"vers comment-grey-bubble\" title=\"コメント\"><span class=\"screen-reader-text\">コメント</span></span>\";s:4:\"date\";s:6:\"日付\";}s:9:\"sortables\";a:4:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}}}}}','no');
INSERT INTO `wp_options` VALUES (207,'new_admin_email','eiji@design24c.com','yes');
INSERT INTO `wp_options` VALUES (215,'hicpo_ver','3.1.4.1','yes');
INSERT INTO `wp_options` VALUES (216,'hicpo_options','a:2:{s:7:\"objects\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:4:\"news\";}s:4:\"tags\";a:5:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:13:\"link_category\";i:3;s:13:\"news_category\";i:4;s:9:\"news_tags\";}}','yes');
INSERT INTO `wp_options` VALUES (224,'https_migration_required','1','yes');
INSERT INTO `wp_options` VALUES (227,'secure_auth_key','F8GUZ~Kgv<%W1e`;em={gP7uH|Bs?2wx%_nFje{fv&$,=Wqy])=9R<#{(-=o5<G?','no');
INSERT INTO `wp_options` VALUES (228,'secure_auth_salt','ZXkr61BbXsz91|c$>|p~ntl9?hmSp9,,~uQizU8#)!vL$JlrT=XcTYL)$:6.[w==','no');
INSERT INTO `wp_options` VALUES (250,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (271,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (272,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (286,'mywp_select_user_roles','a:2:{s:17:\"select_user_roles\";a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (298,'mywp_admin_sidebar','a:3:{s:14:\"custom_menu_ui\";s:0:\"\";s:13:\"cache_timeout\";i:60;s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (308,'news_structure','/%news_category%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (317,'_site_transient_timeout_theme_roots','1679304300','no');
INSERT INTO `wp_options` VALUES (318,'_site_transient_theme_roots','a:1:{s:7:\"Default\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (323,'_site_transient_timeout_php_check_2f5acf219326a8bc5331ee302b9812f4','1679907304','no');
INSERT INTO `wp_options` VALUES (324,'_site_transient_php_check_2f5acf219326a8bc5331ee302b9812f4','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (325,'_site_transient_timeout_browser_620c9fe2977bca87afee84f6cdc2779c','1679907304','no');
INSERT INTO `wp_options` VALUES (326,'_site_transient_browser_620c9fe2977bca87afee84f6cdc2779c','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"111.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (327,'_transient_timeout_mywp_admin_sidebar_get_sidebar','1679306104','no');
INSERT INTO `wp_options` VALUES (328,'_transient_mywp_admin_sidebar_get_sidebar','a:53:{i:0;O:7:\"WP_Post\":44:{s:2:\"ID\";i:74;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"74-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=74\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:9:\"index.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:21:\"ダッシュボード\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:38:\" dashicons-before dashicons-dashboard \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:1;O:7:\"WP_Post\":44:{s:2:\"ID\";i:75;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"75-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:74;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=75\";s:10:\"menu_order\";i:1;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:74;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:9:\"index.php\";s:22:\"item_default_parent_id\";s:9:\"index.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:9:\"ホーム\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:2;O:7:\"WP_Post\":44:{s:2:\"ID\";i:76;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"76-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:74;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=76\";s:10:\"menu_order\";i:2;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:74;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:15:\"update-core.php\";s:22:\"item_default_parent_id\";s:9:\"index.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:47:\"更新 [mywp_update_count type=\"total\" tag=\"1\"]\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:3;O:7:\"WP_Post\":44:{s:2:\"ID\";i:77;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"77-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=77\";s:10:\"menu_order\";i:3;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:9:\"separator\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:10:\"separator1\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";b:0;s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:4;O:7:\"WP_Post\":44:{s:2:\"ID\";i:78;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"78-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=78\";s:10:\"menu_order\";i:4;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:8:\"edit.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:6:\"投稿\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:39:\" dashicons-before dashicons-admin-post \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:5;O:7:\"WP_Post\":44:{s:2:\"ID\";i:79;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"79-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:78;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=79\";s:10:\"menu_order\";i:5;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:78;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:8:\"edit.php\";s:22:\"item_default_parent_id\";s:8:\"edit.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"投稿一覧\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:6;O:7:\"WP_Post\":44:{s:2:\"ID\";i:80;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"80-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:78;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=80\";s:10:\"menu_order\";i:6;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:78;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:12:\"post-new.php\";s:22:\"item_default_parent_id\";s:8:\"edit.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"新規追加\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:7;O:7:\"WP_Post\":44:{s:2:\"ID\";i:81;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"81-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:78;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=81\";s:10:\"menu_order\";i:7;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:78;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:31:\"edit-tags.php?taxonomy=category\";s:22:\"item_default_parent_id\";s:8:\"edit.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:15:\"カテゴリー\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:8;O:7:\"WP_Post\":44:{s:2:\"ID\";i:82;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"82-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:78;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=82\";s:10:\"menu_order\";i:8;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:78;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:22:\"item_default_parent_id\";s:8:\"edit.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:6:\"タグ\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:9;O:7:\"WP_Post\":44:{s:2:\"ID\";i:83;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"83-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=83\";s:10:\"menu_order\";i:9;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:23:\"edit.php?post_type=news\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"ニュース\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:38:\" dashicons-before dashicons-edit-page \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:10;O:7:\"WP_Post\":44:{s:2:\"ID\";i:84;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"84-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:83;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=84\";s:10:\"menu_order\";i:10;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:83;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:23:\"edit.php?post_type=news\";s:22:\"item_default_parent_id\";s:23:\"edit.php?post_type=news\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:18:\"ニュース一覧\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:11;O:7:\"WP_Post\":44:{s:2:\"ID\";i:85;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"85-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:83;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=85\";s:10:\"menu_order\";i:11;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:83;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:27:\"post-new.php?post_type=news\";s:22:\"item_default_parent_id\";s:23:\"edit.php?post_type=news\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"新規追加\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:12;O:7:\"WP_Post\":44:{s:2:\"ID\";i:86;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"86-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:83;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=86\";s:10:\"menu_order\";i:12;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:83;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:51:\"edit-tags.php?taxonomy=news_category&post_type=news\";s:22:\"item_default_parent_id\";s:23:\"edit.php?post_type=news\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:15:\"カテゴリー\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:13;O:7:\"WP_Post\":44:{s:2:\"ID\";i:87;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"87-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:83;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=87\";s:10:\"menu_order\";i:13;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:83;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:47:\"edit-tags.php?taxonomy=news_tags&post_type=news\";s:22:\"item_default_parent_id\";s:23:\"edit.php?post_type=news\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:6:\"タグ\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:14;O:7:\"WP_Post\":44:{s:2:\"ID\";i:88;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"88-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=88\";s:10:\"menu_order\";i:14;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:10:\"upload.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"メディア\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:40:\" dashicons-before dashicons-admin-media \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:15;O:7:\"WP_Post\":44:{s:2:\"ID\";i:89;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"89-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:88;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=89\";s:10:\"menu_order\";i:15;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:88;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:10:\"upload.php\";s:22:\"item_default_parent_id\";s:10:\"upload.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:15:\"ライブラリ\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:16;O:7:\"WP_Post\":44:{s:2:\"ID\";i:90;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"90-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:88;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=90\";s:10:\"menu_order\";i:16;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:88;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:13:\"media-new.php\";s:22:\"item_default_parent_id\";s:10:\"upload.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"新規追加\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:17;O:7:\"WP_Post\":44:{s:2:\"ID\";i:91;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"91-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=91\";s:10:\"menu_order\";i:17;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:23:\"edit.php?post_type=page\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:15:\"固定ページ\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:39:\" dashicons-before dashicons-admin-page \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:18;O:7:\"WP_Post\":44:{s:2:\"ID\";i:92;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"92-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:91;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=92\";s:10:\"menu_order\";i:18;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:91;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:23:\"edit.php?post_type=page\";s:22:\"item_default_parent_id\";s:23:\"edit.php?post_type=page\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:21:\"固定ページ一覧\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:19;O:7:\"WP_Post\":44:{s:2:\"ID\";i:93;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"93-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:91;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=93\";s:10:\"menu_order\";i:19;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:91;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:27:\"post-new.php?post_type=page\";s:22:\"item_default_parent_id\";s:23:\"edit.php?post_type=page\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"新規追加\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:20;O:7:\"WP_Post\":44:{s:2:\"ID\";i:94;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"94-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=94\";s:10:\"menu_order\";i:20;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:17:\"edit-comments.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:41:\"コメント [mywp_comment_count tag=\"1\"]\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:43:\" dashicons-before dashicons-admin-comments \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:21;O:7:\"WP_Post\":44:{s:2:\"ID\";i:95;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"95-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=95\";s:10:\"menu_order\";i:21;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:9:\"separator\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:10:\"separator2\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";b:0;s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:22;O:7:\"WP_Post\":44:{s:2:\"ID\";i:96;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"96-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=96\";s:10:\"menu_order\";i:22;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:10:\"themes.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:48:\"外観 [mywp_update_count type=\"themes\" tag=\"1\"]\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:45:\" dashicons-before dashicons-admin-appearance \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:23;O:7:\"WP_Post\":44:{s:2:\"ID\";i:97;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"97-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:96;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=97\";s:10:\"menu_order\";i:23;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:96;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:10:\"themes.php\";s:22:\"item_default_parent_id\";s:10:\"themes.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:88:\"テーマ <span class=\"update-plugins count-0\"><span class=\"theme-count\">0</span></span>\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:24;O:7:\"WP_Post\":44:{s:2:\"ID\";i:98;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"98-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:96;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=98\";s:10:\"menu_order\";i:24;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:96;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:13:\"customize.php\";s:22:\"item_default_parent_id\";s:10:\"themes.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:18:\"カスタマイズ\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:25;O:7:\"WP_Post\":44:{s:2:\"ID\";i:99;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"99-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:96;s:4:\"guid\";s:75:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=99\";s:10:\"menu_order\";i:25;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:96;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:16:\"theme-editor.php\";s:22:\"item_default_parent_id\";s:10:\"themes.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:36:\"テーマファイルエディター\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:26;O:7:\"WP_Post\":44:{s:2:\"ID\";i:100;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"100-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=100\";s:10:\"menu_order\";i:26;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:11:\"plugins.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:58:\"プラグイン [mywp_update_count type=\"plugins\" tag=\"1\"]\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:42:\" dashicons-before dashicons-admin-plugins \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:27;O:7:\"WP_Post\":44:{s:2:\"ID\";i:101;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"101-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:100;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=101\";s:10:\"menu_order\";i:27;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:100;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:11:\"plugins.php\";s:22:\"item_default_parent_id\";s:11:\"plugins.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:39:\"インストール済みプラグイン\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:28;O:7:\"WP_Post\":44:{s:2:\"ID\";i:102;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"102-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:100;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=102\";s:10:\"menu_order\";i:28;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:100;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:18:\"plugin-install.php\";s:22:\"item_default_parent_id\";s:11:\"plugins.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"新規追加\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:29;O:7:\"WP_Post\":44:{s:2:\"ID\";i:103;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"103-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:100;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=103\";s:10:\"menu_order\";i:29;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:100;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:17:\"plugin-editor.php\";s:22:\"item_default_parent_id\";s:11:\"plugins.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:42:\"プラグインファイルエディター\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:30;O:7:\"WP_Post\":44:{s:2:\"ID\";i:104;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"104-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=104\";s:10:\"menu_order\";i:30;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:9:\"users.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"ユーザー\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:40:\" dashicons-before dashicons-admin-users \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:31;O:7:\"WP_Post\":44:{s:2:\"ID\";i:105;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"105-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:104;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=105\";s:10:\"menu_order\";i:31;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:104;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:9:\"users.php\";s:22:\"item_default_parent_id\";s:9:\"users.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:18:\"ユーザー一覧\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:32;O:7:\"WP_Post\":44:{s:2:\"ID\";i:106;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"106-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:104;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=106\";s:10:\"menu_order\";i:32;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:104;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:12:\"user-new.php\";s:22:\"item_default_parent_id\";s:9:\"users.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"新規追加\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:33;O:7:\"WP_Post\":44:{s:2:\"ID\";i:107;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"107-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:104;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=107\";s:10:\"menu_order\";i:33;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:104;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:11:\"profile.php\";s:22:\"item_default_parent_id\";s:9:\"users.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:18:\"プロフィール\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:34;O:7:\"WP_Post\":44:{s:2:\"ID\";i:108;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"108-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=108\";s:10:\"menu_order\";i:34;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:9:\"tools.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:9:\"ツール\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:40:\" dashicons-before dashicons-admin-tools \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:35;O:7:\"WP_Post\":44:{s:2:\"ID\";i:109;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"109-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:108;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=109\";s:10:\"menu_order\";i:35;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:108;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:9:\"tools.php\";s:22:\"item_default_parent_id\";s:9:\"tools.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:24:\"利用可能なツール\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:36;O:7:\"WP_Post\":44:{s:2:\"ID\";i:110;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"110-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:108;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=110\";s:10:\"menu_order\";i:36;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:108;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:10:\"import.php\";s:22:\"item_default_parent_id\";s:9:\"tools.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:15:\"インポート\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:37;O:7:\"WP_Post\":44:{s:2:\"ID\";i:111;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"111-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:108;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=111\";s:10:\"menu_order\";i:37;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:108;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:10:\"export.php\";s:22:\"item_default_parent_id\";s:9:\"tools.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:18:\"エクスポート\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:38;O:7:\"WP_Post\":44:{s:2:\"ID\";i:112;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"112-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:108;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=112\";s:10:\"menu_order\";i:38;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:108;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:15:\"site-health.php\";s:22:\"item_default_parent_id\";s:9:\"tools.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:109:\"サイトヘルス <span class=\"menu-counter site-health-counter count-0\"><span class=\"count\">0</span></span>\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:39;O:7:\"WP_Post\":44:{s:2:\"ID\";i:113;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"113-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:108;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=113\";s:10:\"menu_order\";i:39;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:108;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:24:\"export-personal-data.php\";s:22:\"item_default_parent_id\";s:9:\"tools.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:36:\"個人データのエクスポート\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:40;O:7:\"WP_Post\":44:{s:2:\"ID\";i:114;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"114-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:108;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=114\";s:10:\"menu_order\";i:40;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:108;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:23:\"erase-personal-data.php\";s:22:\"item_default_parent_id\";s:9:\"tools.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:24:\"個人データの消去\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:41;O:7:\"WP_Post\":44:{s:2:\"ID\";i:115;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"115-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=115\";s:10:\"menu_order\";i:41;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:19:\"options-general.php\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:6:\"設定\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:43:\" dashicons-before dashicons-admin-settings \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}i:42;O:7:\"WP_Post\":44:{s:2:\"ID\";i:116;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"116-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=116\";s:10:\"menu_order\";i:42;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:19:\"options-general.php\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:6:\"一般\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:43;O:7:\"WP_Post\":44:{s:2:\"ID\";i:117;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"117-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=117\";s:10:\"menu_order\";i:43;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:19:\"options-writing.php\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"投稿設定\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:44;O:7:\"WP_Post\":44:{s:2:\"ID\";i:118;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"118-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=118\";s:10:\"menu_order\";i:44;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:19:\"options-reading.php\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"表示設定\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:45;O:7:\"WP_Post\":44:{s:2:\"ID\";i:119;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"119-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=119\";s:10:\"menu_order\";i:45;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:22:\"options-discussion.php\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:24:\"ディスカッション\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:46;O:7:\"WP_Post\":44:{s:2:\"ID\";i:120;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"120-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=120\";s:10:\"menu_order\";i:46;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:17:\"options-media.php\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:12:\"メディア\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:47;O:7:\"WP_Post\":44:{s:2:\"ID\";i:121;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"121-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=121\";s:10:\"menu_order\";i:47;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:21:\"options-permalink.php\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:18:\"パーマリンク\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:48;O:7:\"WP_Post\":44:{s:2:\"ID\";i:122;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"122-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=122\";s:10:\"menu_order\";i:48;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:19:\"options-privacy.php\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:18:\"プライバシー\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:49;O:7:\"WP_Post\":44:{s:2:\"ID\";i:123;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"123-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=123\";s:10:\"menu_order\";i:49;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:18:\"akismet-key-config\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:38:\"Akismet Anti-Spam (アンチスパム)\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:50;O:7:\"WP_Post\":44:{s:2:\"ID\";i:124;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"124-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:115;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=124\";s:10:\"menu_order\";i:50;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:115;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:7:\"submenu\";s:15:\"item_default_id\";s:14:\"hicpo-settings\";s:22:\"item_default_parent_id\";s:19:\"options-general.php\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:18:\"並び替え設定\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:51;O:7:\"WP_Post\":44:{s:2:\"ID\";i:125;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"125-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=125\";s:10:\"menu_order\";i:51;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:9:\"separator\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:14:\"separator-last\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";b:0;s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:0:\"\";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";b:0;s:13:\"item_icon_img\";b:0;}i:52;O:7:\"WP_Post\":44:{s:2:\"ID\";i:126;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2022-11-22 19:26:01\";s:13:\"post_date_gmt\";s:19:\"2022-11-22 10:26:01\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"126-2\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2022-11-22 19:26:01\";s:17:\"post_modified_gmt\";s:19:\"2022-11-22 10:26:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:76:\"https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=126\";s:10:\"menu_order\";i:52;s:9:\"post_type\";s:18:\"mywp_admin_sidebar\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";s:11:\"item_parent\";i:0;s:9:\"item_type\";s:7:\"default\";s:17:\"item_default_type\";s:4:\"menu\";s:15:\"item_default_id\";s:4:\"mywp\";s:22:\"item_default_parent_id\";s:0:\"\";s:18:\"item_default_title\";s:0:\"\";s:15:\"item_capability\";s:0:\"\";s:16:\"item_custom_html\";b:0;s:13:\"item_li_class\";s:0:\"\";s:10:\"item_li_id\";s:0:\"\";s:15:\"item_link_class\";s:0:\"\";s:12:\"item_link_id\";s:0:\"\";s:15:\"item_link_title\";s:5:\"My WP\";s:13:\"item_link_url\";s:0:\"\";s:14:\"item_link_attr\";s:0:\"\";s:15:\"item_icon_class\";s:18:\" dashicons-before \";s:12:\"item_icon_id\";s:0:\"\";s:15:\"item_icon_title\";b:0;s:15:\"item_icon_style\";s:0:\"\";s:13:\"item_icon_img\";s:0:\"\";}}','no');
INSERT INTO `wp_options` VALUES (334,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.1.1.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1679302625;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (335,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1679302625;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:12:{s:51:\"adjust-admin-categories/adjust-admin-categories.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/adjust-admin-categories\";s:4:\"slug\";s:23:\"adjust-admin-categories\";s:6:\"plugin\";s:51:\"adjust-admin-categories/adjust-admin-categories.php\";s:11:\"new_version\";s:5:\"2.2.6\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/adjust-admin-categories/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/adjust-admin-categories.2.2.6.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:74:\"https://s.w.org/plugins/geopattern-icon/adjust-admin-categories_33a6d8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/adjust-admin-categories/assets/banner-1544x500.png?rev=968810\";s:2:\"1x\";s:77:\"https://ps.w.org/adjust-admin-categories/assets/banner-772x250.png?rev=968809\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:43:\"admin-color-schemes/admin-color-schemes.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/admin-color-schemes\";s:4:\"slug\";s:19:\"admin-color-schemes\";s:6:\"plugin\";s:43:\"admin-color-schemes/admin-color-schemes.php\";s:11:\"new_version\";s:5:\"3.0.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/admin-color-schemes/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/admin-color-schemes.3.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/admin-color-schemes/assets/icon.svg?rev=1016272\";s:3:\"svg\";s:64:\"https://ps.w.org/admin-color-schemes/assets/icon.svg?rev=1016272\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/admin-color-schemes/assets/banner-1544x500.png?rev=2670111\";s:2:\"1x\";s:74:\"https://ps.w.org/admin-color-schemes/assets/banner-772x250.png?rev=2670111\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/custom-post-type-permalinks\";s:4:\"slug\";s:27:\"custom-post-type-permalinks\";s:6:\"plugin\";s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";s:11:\"new_version\";s:5:\"3.4.5\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/custom-post-type-permalinks/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/custom-post-type-permalinks.3.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/custom-post-type-permalinks/assets/icon-256x256.png?rev=1044337\";s:2:\"1x\";s:80:\"https://ps.w.org/custom-post-type-permalinks/assets/icon-128x128.png?rev=1044337\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/custom-post-type-permalinks/assets/banner-1544x500.png?rev=1044335\";s:2:\"1x\";s:81:\"https://ps.w.org/custom-post-type-permalinks/assets/banner-772x250.png?rev=785437\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:47:\"flexible-spacer-block/flexible-spacer-block.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/flexible-spacer-block\";s:4:\"slug\";s:21:\"flexible-spacer-block\";s:6:\"plugin\";s:47:\"flexible-spacer-block/flexible-spacer-block.php\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/flexible-spacer-block/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/flexible-spacer-block.2.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/flexible-spacer-block/assets/icon-256x256.png?rev=2658109\";s:2:\"1x\";s:74:\"https://ps.w.org/flexible-spacer-block/assets/icon-128x128.png?rev=2658109\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/flexible-spacer-block/assets/banner-1544x500.png?rev=2658109\";s:2:\"1x\";s:76:\"https://ps.w.org/flexible-spacer-block/assets/banner-772x250.png?rev=2658109\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/intuitive-custom-post-order\";s:4:\"slug\";s:27:\"intuitive-custom-post-order\";s:6:\"plugin\";s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:11:\"new_version\";s:7:\"3.1.4.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/intuitive-custom-post-order/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.1.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-256x256.png?rev=1078797\";s:2:\"1x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-128x128.png?rev=1078797\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-1544x500.png?rev=1209666\";s:2:\"1x\";s:82:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-772x250.png?rev=1078755\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.5.0\";}s:27:\"lazy-blocks/lazy-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/lazy-blocks\";s:4:\"slug\";s:11:\"lazy-blocks\";s:6:\"plugin\";s:27:\"lazy-blocks/lazy-blocks.php\";s:11:\"new_version\";s:5:\"3.3.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/lazy-blocks/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/lazy-blocks.3.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/lazy-blocks/assets/icon-256x256.png?rev=2584676\";s:2:\"1x\";s:64:\"https://ps.w.org/lazy-blocks/assets/icon-128x128.png?rev=2584676\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/lazy-blocks/assets/banner-1544x500.png?rev=2828307\";s:2:\"1x\";s:66:\"https://ps.w.org/lazy-blocks/assets/banner-772x250.png?rev=2828307\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:25:\"mw-wp-form/mw-wp-form.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/mw-wp-form\";s:4:\"slug\";s:10:\"mw-wp-form\";s:6:\"plugin\";s:25:\"mw-wp-form/mw-wp-form.php\";s:11:\"new_version\";s:5:\"4.4.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/mw-wp-form/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/mw-wp-form.4.4.2.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/mw-wp-form_ddf1dc.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/mw-wp-form/assets/banner-772x250.png?rev=821606\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:14:\"my-wp/mywp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:19:\"w.org/plugins/my-wp\";s:4:\"slug\";s:5:\"my-wp\";s:6:\"plugin\";s:14:\"my-wp/mywp.php\";s:11:\"new_version\";s:6:\"1.20.1\";s:3:\"url\";s:36:\"https://wordpress.org/plugins/my-wp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/my-wp.1.20.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:58:\"https://ps.w.org/my-wp/assets/icon-256x256.png?rev=1726636\";s:2:\"1x\";s:58:\"https://ps.w.org/my-wp/assets/icon-128x128.png?rev=1726636\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:47:\"no-category-base-wpml/no-category-base-wpml.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/no-category-base-wpml\";s:4:\"slug\";s:21:\"no-category-base-wpml\";s:6:\"plugin\";s:47:\"no-category-base-wpml/no-category-base-wpml.php\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/no-category-base-wpml/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/no-category-base-wpml.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/no-category-base-wpml/assets/icon-256x256.png?rev=1352229\";s:2:\"1x\";s:74:\"https://ps.w.org/no-category-base-wpml/assets/icon-128x128.png?rev=1352229\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/no-category-base-wpml/assets/banner-1544x500.png?rev=1352229\";s:2:\"1x\";s:76:\"https://ps.w.org/no-category-base-wpml/assets/banner-772x250.png?rev=1352229\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/no-category-base-wpml/assets/banner-1544x500-rtl.png?rev=1352229\";s:2:\"1x\";s:80:\"https://ps.w.org/no-category-base-wpml/assets/banner-772x250-rtl.png?rev=1352229\";}s:8:\"requires\";s:3:\"5.0\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"20.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.0\";}}}','no');
INSERT INTO `wp_options` VALUES (336,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1679302626;s:7:\"checked\";a:1:{s:7:\"Default\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (337,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1679907427','no');
INSERT INTO `wp_options` VALUES (338,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=840 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (312,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (314,1,'_edit_lock','1658884188:1');
INSERT INTO `wp_postmeta` VALUES (315,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (316,2,'_edit_lock','1658887015:1');
INSERT INTO `wp_postmeta` VALUES (317,56,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (318,56,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (319,56,'item_default_id','menu-toggle');
INSERT INTO `wp_postmeta` VALUES (320,56,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (321,56,'item_default_title','<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"screen-reader-text\">メニュー</span>');
INSERT INTO `wp_postmeta` VALUES (322,56,'item_link_title','<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"screen-reader-text\">メニュー</span>');
INSERT INTO `wp_postmeta` VALUES (323,56,'item_link_url','#');
INSERT INTO `wp_postmeta` VALUES (324,56,'item_icon_class','dashicons-before dashicons-menu');
INSERT INTO `wp_postmeta` VALUES (325,56,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (326,56,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (327,57,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (328,57,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (329,57,'item_default_id','wp-logo');
INSERT INTO `wp_postmeta` VALUES (330,57,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (331,57,'item_default_title','<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"screen-reader-text\">WordPress について</span>');
INSERT INTO `wp_postmeta` VALUES (332,57,'item_link_title','<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"screen-reader-text\">WordPress について</span>');
INSERT INTO `wp_postmeta` VALUES (333,57,'item_link_url','https://wordpress-starter-kit.local/admin/wp-admin/about.php');
INSERT INTO `wp_postmeta` VALUES (334,57,'item_icon_class','dashicons-before dashicons-wordpress');
INSERT INTO `wp_postmeta` VALUES (335,57,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (336,57,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (337,58,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (338,58,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (339,58,'item_default_id','about');
INSERT INTO `wp_postmeta` VALUES (340,58,'item_default_parent_id','wp-logo');
INSERT INTO `wp_postmeta` VALUES (341,58,'item_default_title','WordPress について');
INSERT INTO `wp_postmeta` VALUES (342,58,'item_link_title','WordPress について');
INSERT INTO `wp_postmeta` VALUES (343,58,'item_link_url','https://wordpress-starter-kit.local/admin/wp-admin/about.php');
INSERT INTO `wp_postmeta` VALUES (344,58,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (345,58,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (346,58,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (347,59,'item_type','group');
INSERT INTO `wp_postmeta` VALUES (348,59,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (349,59,'item_default_id','wp-logo-external');
INSERT INTO `wp_postmeta` VALUES (350,59,'item_default_parent_id','wp-logo');
INSERT INTO `wp_postmeta` VALUES (351,59,'item_default_title','');
INSERT INTO `wp_postmeta` VALUES (352,59,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (353,59,'item_meta','a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}');
INSERT INTO `wp_postmeta` VALUES (354,60,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (355,60,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (356,60,'item_default_id','wporg');
INSERT INTO `wp_postmeta` VALUES (357,60,'item_default_parent_id','wp-logo-external');
INSERT INTO `wp_postmeta` VALUES (358,60,'item_default_title','WordPress.org');
INSERT INTO `wp_postmeta` VALUES (359,60,'item_link_title','WordPress.org');
INSERT INTO `wp_postmeta` VALUES (360,60,'item_link_url','https://ja.wordpress.org/');
INSERT INTO `wp_postmeta` VALUES (361,60,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (362,60,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (363,60,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (364,61,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (365,61,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (366,61,'item_default_id','documentation');
INSERT INTO `wp_postmeta` VALUES (367,61,'item_default_parent_id','wp-logo-external');
INSERT INTO `wp_postmeta` VALUES (368,61,'item_default_title','ドキュメンテーション');
INSERT INTO `wp_postmeta` VALUES (369,61,'item_link_title','ドキュメンテーション');
INSERT INTO `wp_postmeta` VALUES (370,61,'item_link_url','https://ja.wordpress.org/support/');
INSERT INTO `wp_postmeta` VALUES (371,61,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (372,61,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (373,61,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (374,62,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (375,62,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (376,62,'item_default_id','support-forums');
INSERT INTO `wp_postmeta` VALUES (377,62,'item_default_parent_id','wp-logo-external');
INSERT INTO `wp_postmeta` VALUES (378,62,'item_default_title','サポート');
INSERT INTO `wp_postmeta` VALUES (379,62,'item_link_title','サポート');
INSERT INTO `wp_postmeta` VALUES (380,62,'item_link_url','https://ja.wordpress.org/support/forums/');
INSERT INTO `wp_postmeta` VALUES (381,62,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (382,62,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (383,62,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (384,63,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (385,63,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (386,63,'item_default_id','feedback');
INSERT INTO `wp_postmeta` VALUES (387,63,'item_default_parent_id','wp-logo-external');
INSERT INTO `wp_postmeta` VALUES (388,63,'item_default_title','フィードバック');
INSERT INTO `wp_postmeta` VALUES (389,63,'item_link_title','フィードバック');
INSERT INTO `wp_postmeta` VALUES (390,63,'item_link_url','https://ja.wordpress.org/support/forum/feedback/');
INSERT INTO `wp_postmeta` VALUES (391,63,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (392,63,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (393,63,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (394,64,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (395,64,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (396,64,'item_default_id','site-name');
INSERT INTO `wp_postmeta` VALUES (397,64,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (398,64,'item_default_title','WordPress Starter kit');
INSERT INTO `wp_postmeta` VALUES (399,64,'item_link_title','WordPress Starter kit');
INSERT INTO `wp_postmeta` VALUES (400,64,'item_link_url','[mywp_url]');
INSERT INTO `wp_postmeta` VALUES (401,64,'item_icon_class','dashicons-before dashicons-admin-home');
INSERT INTO `wp_postmeta` VALUES (402,64,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (403,64,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (404,65,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (405,65,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (406,65,'item_default_id','view-site');
INSERT INTO `wp_postmeta` VALUES (407,65,'item_default_parent_id','site-name');
INSERT INTO `wp_postmeta` VALUES (408,65,'item_default_title','サイトを表示');
INSERT INTO `wp_postmeta` VALUES (409,65,'item_link_title','サイトを表示');
INSERT INTO `wp_postmeta` VALUES (410,65,'item_link_url','[mywp_url]');
INSERT INTO `wp_postmeta` VALUES (411,65,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (412,65,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (413,65,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (414,66,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (415,66,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (416,66,'item_default_id','updates');
INSERT INTO `wp_postmeta` VALUES (417,66,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (418,66,'item_default_title','<span class=\"ab-label\">[mywp_update_count]</span>');
INSERT INTO `wp_postmeta` VALUES (419,66,'item_link_title','<span class=\"ab-label\">[mywp_update_count]</span>');
INSERT INTO `wp_postmeta` VALUES (420,66,'item_link_url','https://wordpress-starter-kit.local/admin/wp-admin/update-core.php');
INSERT INTO `wp_postmeta` VALUES (421,66,'item_icon_class','dashicons-before dashicons-update');
INSERT INTO `wp_postmeta` VALUES (422,66,'item_capability','update_core');
INSERT INTO `wp_postmeta` VALUES (423,66,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (424,67,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (425,67,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (426,67,'item_default_id','comments');
INSERT INTO `wp_postmeta` VALUES (427,67,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (428,67,'item_default_title','<span class=\"ab-label awaiting-mod pending-count count-[mywp_comment_count]\" aria-hidden=\"true\">[mywp_comment_count]</span>');
INSERT INTO `wp_postmeta` VALUES (429,67,'item_link_title','<span class=\"ab-label awaiting-mod pending-count count-[mywp_comment_count]\" aria-hidden=\"true\">[mywp_comment_count]</span>');
INSERT INTO `wp_postmeta` VALUES (430,67,'item_link_url','https://wordpress-starter-kit.local/admin/wp-admin/edit-comments.php');
INSERT INTO `wp_postmeta` VALUES (431,67,'item_icon_class','dashicons-before dashicons-admin-comments');
INSERT INTO `wp_postmeta` VALUES (432,67,'item_capability','edit_posts');
INSERT INTO `wp_postmeta` VALUES (433,67,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (434,68,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (435,68,'item_location','left');
INSERT INTO `wp_postmeta` VALUES (436,68,'item_default_id','new-content');
INSERT INTO `wp_postmeta` VALUES (437,68,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (438,68,'item_default_title','<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"ab-label\">新規</span>');
INSERT INTO `wp_postmeta` VALUES (439,68,'item_link_title','<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"ab-label\">新規</span>');
INSERT INTO `wp_postmeta` VALUES (440,68,'item_link_url','https://wordpress-starter-kit.local/admin/wp-admin/post-new.php');
INSERT INTO `wp_postmeta` VALUES (441,68,'item_icon_class','dashicons-before dashicons-plus');
INSERT INTO `wp_postmeta` VALUES (442,68,'item_capability','edit_posts');
INSERT INTO `wp_postmeta` VALUES (443,68,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (444,69,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (445,69,'item_location','right');
INSERT INTO `wp_postmeta` VALUES (446,69,'item_default_id','my-account');
INSERT INTO `wp_postmeta` VALUES (447,69,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (448,69,'item_default_title','こんにちは、<span class=\"display-name\">[mywp_user field=\"name\"]</span> さん[mywp_user field=\"avatar\" size=\"64\"]');
INSERT INTO `wp_postmeta` VALUES (449,69,'item_link_title','こんにちは、<span class=\"display-name\">[mywp_user field=\"name\"]</span> さん[mywp_user field=\"avatar\" size=\"64\"]');
INSERT INTO `wp_postmeta` VALUES (450,69,'item_link_url','https://wordpress-starter-kit.local/admin/wp-admin/profile.php');
INSERT INTO `wp_postmeta` VALUES (451,69,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (452,69,'item_capability','read');
INSERT INTO `wp_postmeta` VALUES (453,69,'item_meta','a:1:{s:5:\"class\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (454,70,'item_type','group');
INSERT INTO `wp_postmeta` VALUES (455,70,'item_location','right');
INSERT INTO `wp_postmeta` VALUES (456,70,'item_default_id','user-actions');
INSERT INTO `wp_postmeta` VALUES (457,70,'item_default_parent_id','my-account');
INSERT INTO `wp_postmeta` VALUES (458,70,'item_default_title','');
INSERT INTO `wp_postmeta` VALUES (459,70,'item_capability','read');
INSERT INTO `wp_postmeta` VALUES (460,70,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (461,71,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (462,71,'item_location','right');
INSERT INTO `wp_postmeta` VALUES (463,71,'item_default_id','user-info');
INSERT INTO `wp_postmeta` VALUES (464,71,'item_default_parent_id','user-actions');
INSERT INTO `wp_postmeta` VALUES (465,71,'item_default_title','[mywp_user field=\"avatar\" size=\"64\"] <span class=\"display-name\">[mywp_user field=\"name\"]</span>');
INSERT INTO `wp_postmeta` VALUES (466,71,'item_link_title','[mywp_user field=\"avatar\" size=\"64\"] <span class=\"display-name\">[mywp_user field=\"name\"]</span>');
INSERT INTO `wp_postmeta` VALUES (467,71,'item_link_url','https://wordpress-starter-kit.local/admin/wp-admin/profile.php');
INSERT INTO `wp_postmeta` VALUES (468,71,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (469,71,'item_capability','read');
INSERT INTO `wp_postmeta` VALUES (470,71,'item_meta','a:1:{s:8:\"tabindex\";i:-1;}');
INSERT INTO `wp_postmeta` VALUES (471,72,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (472,72,'item_location','right');
INSERT INTO `wp_postmeta` VALUES (473,72,'item_default_id','edit-profile');
INSERT INTO `wp_postmeta` VALUES (474,72,'item_default_parent_id','user-actions');
INSERT INTO `wp_postmeta` VALUES (475,72,'item_default_title','プロフィールを編集');
INSERT INTO `wp_postmeta` VALUES (476,72,'item_link_title','プロフィールを編集');
INSERT INTO `wp_postmeta` VALUES (477,72,'item_link_url','https://wordpress-starter-kit.local/admin/wp-admin/profile.php');
INSERT INTO `wp_postmeta` VALUES (478,72,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (479,72,'item_capability','read');
INSERT INTO `wp_postmeta` VALUES (480,72,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (481,73,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (482,73,'item_location','right');
INSERT INTO `wp_postmeta` VALUES (483,73,'item_default_id','logout');
INSERT INTO `wp_postmeta` VALUES (484,73,'item_default_parent_id','user-actions');
INSERT INTO `wp_postmeta` VALUES (485,73,'item_default_title','ログアウト');
INSERT INTO `wp_postmeta` VALUES (486,73,'item_link_title','ログアウト');
INSERT INTO `wp_postmeta` VALUES (487,73,'item_link_url','[mywp_url logout=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (488,73,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (489,73,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (490,73,'item_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (491,74,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (492,74,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (493,74,'item_default_id','index.php');
INSERT INTO `wp_postmeta` VALUES (494,74,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (495,74,'item_default_title','ダッシュボード');
INSERT INTO `wp_postmeta` VALUES (496,74,'item_link_title','ダッシュボード');
INSERT INTO `wp_postmeta` VALUES (497,74,'item_icon_class',' dashicons-before dashicons-dashboard ');
INSERT INTO `wp_postmeta` VALUES (498,74,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (499,74,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (500,75,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (501,75,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (502,75,'item_default_id','index.php');
INSERT INTO `wp_postmeta` VALUES (503,75,'item_default_parent_id','index.php');
INSERT INTO `wp_postmeta` VALUES (504,75,'item_default_title','ホーム');
INSERT INTO `wp_postmeta` VALUES (505,75,'item_link_title','ホーム');
INSERT INTO `wp_postmeta` VALUES (506,76,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (507,76,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (508,76,'item_default_id','update-core.php');
INSERT INTO `wp_postmeta` VALUES (509,76,'item_default_parent_id','index.php');
INSERT INTO `wp_postmeta` VALUES (510,76,'item_default_title','更新 [mywp_update_count type=\"total\" tag=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (511,76,'item_link_title','更新 [mywp_update_count type=\"total\" tag=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (512,77,'item_type','separator');
INSERT INTO `wp_postmeta` VALUES (513,77,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (514,77,'item_default_id','separator1');
INSERT INTO `wp_postmeta` VALUES (515,77,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (516,78,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (517,78,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (518,78,'item_default_id','edit.php');
INSERT INTO `wp_postmeta` VALUES (519,78,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (520,78,'item_default_title','投稿');
INSERT INTO `wp_postmeta` VALUES (521,78,'item_link_title','投稿');
INSERT INTO `wp_postmeta` VALUES (522,78,'item_icon_class',' dashicons-before dashicons-admin-post ');
INSERT INTO `wp_postmeta` VALUES (523,78,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (524,78,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (525,79,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (526,79,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (527,79,'item_default_id','edit.php');
INSERT INTO `wp_postmeta` VALUES (528,79,'item_default_parent_id','edit.php');
INSERT INTO `wp_postmeta` VALUES (529,79,'item_default_title','投稿一覧');
INSERT INTO `wp_postmeta` VALUES (530,79,'item_link_title','投稿一覧');
INSERT INTO `wp_postmeta` VALUES (531,80,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (532,80,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (533,80,'item_default_id','post-new.php');
INSERT INTO `wp_postmeta` VALUES (534,80,'item_default_parent_id','edit.php');
INSERT INTO `wp_postmeta` VALUES (535,80,'item_default_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (536,80,'item_link_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (537,81,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (538,81,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (539,81,'item_default_id','edit-tags.php?taxonomy=category');
INSERT INTO `wp_postmeta` VALUES (540,81,'item_default_parent_id','edit.php');
INSERT INTO `wp_postmeta` VALUES (541,81,'item_default_title','カテゴリー');
INSERT INTO `wp_postmeta` VALUES (542,81,'item_link_title','カテゴリー');
INSERT INTO `wp_postmeta` VALUES (543,82,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (544,82,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (545,82,'item_default_id','edit-tags.php?taxonomy=post_tag');
INSERT INTO `wp_postmeta` VALUES (546,82,'item_default_parent_id','edit.php');
INSERT INTO `wp_postmeta` VALUES (547,82,'item_default_title','タグ');
INSERT INTO `wp_postmeta` VALUES (548,82,'item_link_title','タグ');
INSERT INTO `wp_postmeta` VALUES (549,83,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (550,83,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (551,83,'item_default_id','edit.php?post_type=news');
INSERT INTO `wp_postmeta` VALUES (552,83,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (553,83,'item_default_title','ニュース');
INSERT INTO `wp_postmeta` VALUES (554,83,'item_link_title','ニュース');
INSERT INTO `wp_postmeta` VALUES (555,83,'item_icon_class',' dashicons-before dashicons-edit-page ');
INSERT INTO `wp_postmeta` VALUES (556,83,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (557,83,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (558,84,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (559,84,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (560,84,'item_default_id','edit.php?post_type=news');
INSERT INTO `wp_postmeta` VALUES (561,84,'item_default_parent_id','edit.php?post_type=news');
INSERT INTO `wp_postmeta` VALUES (562,84,'item_default_title','ニュース一覧');
INSERT INTO `wp_postmeta` VALUES (563,84,'item_link_title','ニュース一覧');
INSERT INTO `wp_postmeta` VALUES (564,85,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (565,85,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (566,85,'item_default_id','post-new.php?post_type=news');
INSERT INTO `wp_postmeta` VALUES (567,85,'item_default_parent_id','edit.php?post_type=news');
INSERT INTO `wp_postmeta` VALUES (568,85,'item_default_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (569,85,'item_link_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (570,86,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (571,86,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (572,86,'item_default_id','edit-tags.php?taxonomy=news_category&post_type=news');
INSERT INTO `wp_postmeta` VALUES (573,86,'item_default_parent_id','edit.php?post_type=news');
INSERT INTO `wp_postmeta` VALUES (574,86,'item_default_title','カテゴリー');
INSERT INTO `wp_postmeta` VALUES (575,86,'item_link_title','カテゴリー');
INSERT INTO `wp_postmeta` VALUES (576,87,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (577,87,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (578,87,'item_default_id','edit-tags.php?taxonomy=news_tags&post_type=news');
INSERT INTO `wp_postmeta` VALUES (579,87,'item_default_parent_id','edit.php?post_type=news');
INSERT INTO `wp_postmeta` VALUES (580,87,'item_default_title','タグ');
INSERT INTO `wp_postmeta` VALUES (581,87,'item_link_title','タグ');
INSERT INTO `wp_postmeta` VALUES (582,88,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (583,88,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (584,88,'item_default_id','upload.php');
INSERT INTO `wp_postmeta` VALUES (585,88,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (586,88,'item_default_title','メディア');
INSERT INTO `wp_postmeta` VALUES (587,88,'item_link_title','メディア');
INSERT INTO `wp_postmeta` VALUES (588,88,'item_icon_class',' dashicons-before dashicons-admin-media ');
INSERT INTO `wp_postmeta` VALUES (589,88,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (590,88,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (591,89,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (592,89,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (593,89,'item_default_id','upload.php');
INSERT INTO `wp_postmeta` VALUES (594,89,'item_default_parent_id','upload.php');
INSERT INTO `wp_postmeta` VALUES (595,89,'item_default_title','ライブラリ');
INSERT INTO `wp_postmeta` VALUES (596,89,'item_link_title','ライブラリ');
INSERT INTO `wp_postmeta` VALUES (597,90,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (598,90,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (599,90,'item_default_id','media-new.php');
INSERT INTO `wp_postmeta` VALUES (600,90,'item_default_parent_id','upload.php');
INSERT INTO `wp_postmeta` VALUES (601,90,'item_default_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (602,90,'item_link_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (603,91,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (604,91,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (605,91,'item_default_id','edit.php?post_type=page');
INSERT INTO `wp_postmeta` VALUES (606,91,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (607,91,'item_default_title','固定ページ');
INSERT INTO `wp_postmeta` VALUES (608,91,'item_link_title','固定ページ');
INSERT INTO `wp_postmeta` VALUES (609,91,'item_icon_class',' dashicons-before dashicons-admin-page ');
INSERT INTO `wp_postmeta` VALUES (610,91,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (611,91,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (612,92,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (613,92,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (614,92,'item_default_id','edit.php?post_type=page');
INSERT INTO `wp_postmeta` VALUES (615,92,'item_default_parent_id','edit.php?post_type=page');
INSERT INTO `wp_postmeta` VALUES (616,92,'item_default_title','固定ページ一覧');
INSERT INTO `wp_postmeta` VALUES (617,92,'item_link_title','固定ページ一覧');
INSERT INTO `wp_postmeta` VALUES (618,93,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (619,93,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (620,93,'item_default_id','post-new.php?post_type=page');
INSERT INTO `wp_postmeta` VALUES (621,93,'item_default_parent_id','edit.php?post_type=page');
INSERT INTO `wp_postmeta` VALUES (622,93,'item_default_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (623,93,'item_link_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (624,94,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (625,94,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (626,94,'item_default_id','edit-comments.php');
INSERT INTO `wp_postmeta` VALUES (627,94,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (628,94,'item_default_title','コメント [mywp_comment_count tag=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (629,94,'item_link_title','コメント [mywp_comment_count tag=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (630,94,'item_icon_class',' dashicons-before dashicons-admin-comments ');
INSERT INTO `wp_postmeta` VALUES (631,94,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (632,94,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (633,95,'item_type','separator');
INSERT INTO `wp_postmeta` VALUES (634,95,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (635,95,'item_default_id','separator2');
INSERT INTO `wp_postmeta` VALUES (636,95,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (637,96,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (638,96,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (639,96,'item_default_id','themes.php');
INSERT INTO `wp_postmeta` VALUES (640,96,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (641,96,'item_default_title','外観 [mywp_update_count type=\"themes\" tag=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (642,96,'item_link_title','外観 [mywp_update_count type=\"themes\" tag=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (643,96,'item_icon_class',' dashicons-before dashicons-admin-appearance ');
INSERT INTO `wp_postmeta` VALUES (644,96,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (645,96,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (646,97,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (647,97,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (648,97,'item_default_id','themes.php');
INSERT INTO `wp_postmeta` VALUES (649,97,'item_default_parent_id','themes.php');
INSERT INTO `wp_postmeta` VALUES (650,97,'item_default_title','テーマ <span class=\"update-plugins count-0\"><span class=\"theme-count\">0</span></span>');
INSERT INTO `wp_postmeta` VALUES (651,97,'item_link_title','テーマ <span class=\"update-plugins count-0\"><span class=\"theme-count\">0</span></span>');
INSERT INTO `wp_postmeta` VALUES (652,98,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (653,98,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (654,98,'item_default_id','customize.php');
INSERT INTO `wp_postmeta` VALUES (655,98,'item_default_parent_id','themes.php');
INSERT INTO `wp_postmeta` VALUES (656,98,'item_default_title','カスタマイズ');
INSERT INTO `wp_postmeta` VALUES (657,98,'item_link_title','カスタマイズ');
INSERT INTO `wp_postmeta` VALUES (658,99,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (659,99,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (660,99,'item_default_id','theme-editor.php');
INSERT INTO `wp_postmeta` VALUES (661,99,'item_default_parent_id','themes.php');
INSERT INTO `wp_postmeta` VALUES (662,99,'item_default_title','テーマファイルエディター');
INSERT INTO `wp_postmeta` VALUES (663,99,'item_link_title','テーマファイルエディター');
INSERT INTO `wp_postmeta` VALUES (664,100,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (665,100,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (666,100,'item_default_id','plugins.php');
INSERT INTO `wp_postmeta` VALUES (667,100,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (668,100,'item_default_title','プラグイン [mywp_update_count type=\"plugins\" tag=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (669,100,'item_link_title','プラグイン [mywp_update_count type=\"plugins\" tag=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (670,100,'item_icon_class',' dashicons-before dashicons-admin-plugins ');
INSERT INTO `wp_postmeta` VALUES (671,100,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (672,100,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (673,101,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (674,101,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (675,101,'item_default_id','plugins.php');
INSERT INTO `wp_postmeta` VALUES (676,101,'item_default_parent_id','plugins.php');
INSERT INTO `wp_postmeta` VALUES (677,101,'item_default_title','インストール済みプラグイン');
INSERT INTO `wp_postmeta` VALUES (678,101,'item_link_title','インストール済みプラグイン');
INSERT INTO `wp_postmeta` VALUES (679,102,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (680,102,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (681,102,'item_default_id','plugin-install.php');
INSERT INTO `wp_postmeta` VALUES (682,102,'item_default_parent_id','plugins.php');
INSERT INTO `wp_postmeta` VALUES (683,102,'item_default_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (684,102,'item_link_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (685,103,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (686,103,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (687,103,'item_default_id','plugin-editor.php');
INSERT INTO `wp_postmeta` VALUES (688,103,'item_default_parent_id','plugins.php');
INSERT INTO `wp_postmeta` VALUES (689,103,'item_default_title','プラグインファイルエディター');
INSERT INTO `wp_postmeta` VALUES (690,103,'item_link_title','プラグインファイルエディター');
INSERT INTO `wp_postmeta` VALUES (691,104,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (692,104,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (693,104,'item_default_id','users.php');
INSERT INTO `wp_postmeta` VALUES (694,104,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (695,104,'item_default_title','ユーザー');
INSERT INTO `wp_postmeta` VALUES (696,104,'item_link_title','ユーザー');
INSERT INTO `wp_postmeta` VALUES (697,104,'item_icon_class',' dashicons-before dashicons-admin-users ');
INSERT INTO `wp_postmeta` VALUES (698,104,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (699,104,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (700,105,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (701,105,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (702,105,'item_default_id','users.php');
INSERT INTO `wp_postmeta` VALUES (703,105,'item_default_parent_id','users.php');
INSERT INTO `wp_postmeta` VALUES (704,105,'item_default_title','ユーザー一覧');
INSERT INTO `wp_postmeta` VALUES (705,105,'item_link_title','ユーザー一覧');
INSERT INTO `wp_postmeta` VALUES (706,106,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (707,106,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (708,106,'item_default_id','user-new.php');
INSERT INTO `wp_postmeta` VALUES (709,106,'item_default_parent_id','users.php');
INSERT INTO `wp_postmeta` VALUES (710,106,'item_default_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (711,106,'item_link_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (712,107,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (713,107,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (714,107,'item_default_id','profile.php');
INSERT INTO `wp_postmeta` VALUES (715,107,'item_default_parent_id','users.php');
INSERT INTO `wp_postmeta` VALUES (716,107,'item_default_title','プロフィール');
INSERT INTO `wp_postmeta` VALUES (717,107,'item_link_title','プロフィール');
INSERT INTO `wp_postmeta` VALUES (718,108,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (719,108,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (720,108,'item_default_id','tools.php');
INSERT INTO `wp_postmeta` VALUES (721,108,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (722,108,'item_default_title','ツール');
INSERT INTO `wp_postmeta` VALUES (723,108,'item_link_title','ツール');
INSERT INTO `wp_postmeta` VALUES (724,108,'item_icon_class',' dashicons-before dashicons-admin-tools ');
INSERT INTO `wp_postmeta` VALUES (725,108,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (726,108,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (727,109,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (728,109,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (729,109,'item_default_id','tools.php');
INSERT INTO `wp_postmeta` VALUES (730,109,'item_default_parent_id','tools.php');
INSERT INTO `wp_postmeta` VALUES (731,109,'item_default_title','利用可能なツール');
INSERT INTO `wp_postmeta` VALUES (732,109,'item_link_title','利用可能なツール');
INSERT INTO `wp_postmeta` VALUES (733,110,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (734,110,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (735,110,'item_default_id','import.php');
INSERT INTO `wp_postmeta` VALUES (736,110,'item_default_parent_id','tools.php');
INSERT INTO `wp_postmeta` VALUES (737,110,'item_default_title','インポート');
INSERT INTO `wp_postmeta` VALUES (738,110,'item_link_title','インポート');
INSERT INTO `wp_postmeta` VALUES (739,111,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (740,111,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (741,111,'item_default_id','export.php');
INSERT INTO `wp_postmeta` VALUES (742,111,'item_default_parent_id','tools.php');
INSERT INTO `wp_postmeta` VALUES (743,111,'item_default_title','エクスポート');
INSERT INTO `wp_postmeta` VALUES (744,111,'item_link_title','エクスポート');
INSERT INTO `wp_postmeta` VALUES (745,112,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (746,112,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (747,112,'item_default_id','site-health.php');
INSERT INTO `wp_postmeta` VALUES (748,112,'item_default_parent_id','tools.php');
INSERT INTO `wp_postmeta` VALUES (749,112,'item_default_title','サイトヘルス <span class=\"menu-counter site-health-counter count-0\"><span class=\"count\">0</span></span>');
INSERT INTO `wp_postmeta` VALUES (750,112,'item_link_title','サイトヘルス <span class=\"menu-counter site-health-counter count-0\"><span class=\"count\">0</span></span>');
INSERT INTO `wp_postmeta` VALUES (751,113,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (752,113,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (753,113,'item_default_id','export-personal-data.php');
INSERT INTO `wp_postmeta` VALUES (754,113,'item_default_parent_id','tools.php');
INSERT INTO `wp_postmeta` VALUES (755,113,'item_default_title','個人データのエクスポート');
INSERT INTO `wp_postmeta` VALUES (756,113,'item_link_title','個人データのエクスポート');
INSERT INTO `wp_postmeta` VALUES (757,114,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (758,114,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (759,114,'item_default_id','erase-personal-data.php');
INSERT INTO `wp_postmeta` VALUES (760,114,'item_default_parent_id','tools.php');
INSERT INTO `wp_postmeta` VALUES (761,114,'item_default_title','個人データの消去');
INSERT INTO `wp_postmeta` VALUES (762,114,'item_link_title','個人データの消去');
INSERT INTO `wp_postmeta` VALUES (763,115,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (764,115,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (765,115,'item_default_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (766,115,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (767,115,'item_default_title','設定');
INSERT INTO `wp_postmeta` VALUES (768,115,'item_link_title','設定');
INSERT INTO `wp_postmeta` VALUES (769,115,'item_icon_class',' dashicons-before dashicons-admin-settings ');
INSERT INTO `wp_postmeta` VALUES (770,115,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (771,115,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (772,116,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (773,116,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (774,116,'item_default_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (775,116,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (776,116,'item_default_title','一般');
INSERT INTO `wp_postmeta` VALUES (777,116,'item_link_title','一般');
INSERT INTO `wp_postmeta` VALUES (778,117,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (779,117,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (780,117,'item_default_id','options-writing.php');
INSERT INTO `wp_postmeta` VALUES (781,117,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (782,117,'item_default_title','投稿設定');
INSERT INTO `wp_postmeta` VALUES (783,117,'item_link_title','投稿設定');
INSERT INTO `wp_postmeta` VALUES (784,118,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (785,118,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (786,118,'item_default_id','options-reading.php');
INSERT INTO `wp_postmeta` VALUES (787,118,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (788,118,'item_default_title','表示設定');
INSERT INTO `wp_postmeta` VALUES (789,118,'item_link_title','表示設定');
INSERT INTO `wp_postmeta` VALUES (790,119,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (791,119,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (792,119,'item_default_id','options-discussion.php');
INSERT INTO `wp_postmeta` VALUES (793,119,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (794,119,'item_default_title','ディスカッション');
INSERT INTO `wp_postmeta` VALUES (795,119,'item_link_title','ディスカッション');
INSERT INTO `wp_postmeta` VALUES (796,120,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (797,120,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (798,120,'item_default_id','options-media.php');
INSERT INTO `wp_postmeta` VALUES (799,120,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (800,120,'item_default_title','メディア');
INSERT INTO `wp_postmeta` VALUES (801,120,'item_link_title','メディア');
INSERT INTO `wp_postmeta` VALUES (802,121,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (803,121,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (804,121,'item_default_id','options-permalink.php');
INSERT INTO `wp_postmeta` VALUES (805,121,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (806,121,'item_default_title','パーマリンク');
INSERT INTO `wp_postmeta` VALUES (807,121,'item_link_title','パーマリンク');
INSERT INTO `wp_postmeta` VALUES (808,122,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (809,122,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (810,122,'item_default_id','options-privacy.php');
INSERT INTO `wp_postmeta` VALUES (811,122,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (812,122,'item_default_title','プライバシー');
INSERT INTO `wp_postmeta` VALUES (813,122,'item_link_title','プライバシー');
INSERT INTO `wp_postmeta` VALUES (814,123,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (815,123,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (816,123,'item_default_id','akismet-key-config');
INSERT INTO `wp_postmeta` VALUES (817,123,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (818,123,'item_default_title','Akismet Anti-Spam (アンチスパム)');
INSERT INTO `wp_postmeta` VALUES (819,123,'item_link_title','Akismet Anti-Spam (アンチスパム)');
INSERT INTO `wp_postmeta` VALUES (820,124,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (821,124,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (822,124,'item_default_id','hicpo-settings');
INSERT INTO `wp_postmeta` VALUES (823,124,'item_default_parent_id','options-general.php');
INSERT INTO `wp_postmeta` VALUES (824,124,'item_default_title','並び替え設定');
INSERT INTO `wp_postmeta` VALUES (825,124,'item_link_title','並び替え設定');
INSERT INTO `wp_postmeta` VALUES (826,125,'item_type','separator');
INSERT INTO `wp_postmeta` VALUES (827,125,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (828,125,'item_default_id','separator-last');
INSERT INTO `wp_postmeta` VALUES (829,125,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (830,126,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (831,126,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (832,126,'item_default_id','mywp');
INSERT INTO `wp_postmeta` VALUES (833,126,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (834,126,'item_default_title','My WP');
INSERT INTO `wp_postmeta` VALUES (835,126,'item_link_title','My WP');
INSERT INTO `wp_postmeta` VALUES (836,126,'item_icon_class',' dashicons-before ');
INSERT INTO `wp_postmeta` VALUES (837,126,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (838,126,'item_icon_img','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-07-27 09:40:31','2022-07-27 00:40:31','<!-- wp:paragraph -->\n<p>WordPress へようこそ。こちらは最初の投稿です。編集または削除し、コンテンツ作成を始めてください。</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','closed','closed','','hello-world','','','2022-07-27 10:09:48','2022-07-27 01:09:48','',0,'http://wordpress-starter-kit.local/admin/?p=1',1,'post','',0);
INSERT INTO `wp_posts` VALUES (2,1,'2022-07-27 09:40:31','2022-07-27 00:40:31','<!-- wp:paragraph -->\n<p>これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれる点がブログ投稿とは異なります。まずは、サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>または、このようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>新しく WordPress ユーザーになった方は、<a href=\"http://wordpress-starter-kit.local/admin/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !</p>\n<!-- /wp:paragraph -->','ホーム','','publish','closed','closed','','index','','','2022-07-27 10:56:55','2022-07-27 01:56:55','',0,'http://wordpress-starter-kit.local/admin/?page_id=2',1,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-07-27 09:40:31','2022-07-27 00:40:31','<!-- wp:heading --><h2>私たちについて</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>私たちのサイトアドレスは http://wordpress-starter-kit.local/admin です。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>コメント</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>メディア</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookie</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインページを訪問すると、お使いのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じると廃棄されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>他サイトからの埋め込みコンテンツ</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>これらのサイトは、あなたのデータの収集、Cookie の使用、サードパーティによる追加トラッキングの埋め込み、埋め込みコンテンツとのやりとりの監視を行うことがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたのデータの共有先</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>パスワードリセットをリクエストすると、IP アドレスがリセット用のメールに含まれます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データを保存する期間</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データに対するあなたの権利</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>どこにあなたのデータが送られるか</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><!-- /wp:paragraph -->','プライバシーポリシー','','draft','closed','open','','privacy-policy','','','2022-07-27 09:40:31','2022-07-27 00:40:31','',0,'http://wordpress-starter-kit.local/admin/?page_id=3',2,'page','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-07-27 10:09:48','2022-07-27 01:09:48','<!-- wp:paragraph -->\n<p>WordPress へようこそ。こちらは最初の投稿です。編集または削除し、コンテンツ作成を始めてください。</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2022-07-27 10:09:48','2022-07-27 01:09:48','',1,'http://wordpress-starter-kit.local/admin/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-07-27 10:52:53','2022-07-27 01:52:53','<!-- wp:paragraph -->\n<p>これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれる点がブログ投稿とは異なります。まずは、サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>または、このようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>新しく WordPress ユーザーになった方は、<a href=\"http://wordpress-starter-kit.local/admin/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !</p>\n<!-- /wp:paragraph -->','ホームページ','','inherit','closed','closed','','2-revision-v1','','','2022-07-27 10:52:53','2022-07-27 01:52:53','',2,'http://wordpress-starter-kit.local/admin/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2022-07-27 10:54:40','2022-07-27 01:54:40','<!-- wp:paragraph -->\n<p>これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれる点がブログ投稿とは異なります。まずは、サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>または、このようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>新しく WordPress ユーザーになった方は、<a href=\"http://wordpress-starter-kit.local/admin/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !</p>\n<!-- /wp:paragraph -->','ホーム','','inherit','closed','closed','','2-revision-v1','','','2022-07-27 10:54:40','2022-07-27 01:54:40','',2,'http://wordpress-starter-kit.local/admin/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=56',0,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=57',1,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',57,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=58',2,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',57,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=59',3,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',59,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=60',4,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',59,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=61',5,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',59,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=62',6,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',59,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=63',7,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=64',2,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',64,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=65',3,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=66',3,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=67',4,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=68',5,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=69',6,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',69,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=70',7,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',70,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=71',8,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',70,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=72',9,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2022-11-21 11:04:59','0000-00-00 00:00:00','','','','draft','closed','closed','','','','','2022-11-21 11:04:59','0000-00-00 00:00:00','',70,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&p=73',10,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','74-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=74',0,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','75-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',74,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=75',1,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','76-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',74,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=76',2,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','77-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=77',3,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','78-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=78',4,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','79-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',78,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=79',5,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','80-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',78,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=80',6,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','81-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',78,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=81',7,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','82-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',78,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=82',8,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','83-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=83',9,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','84-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',83,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=84',10,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','85-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',83,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=85',11,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','86-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',83,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=86',12,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','87-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',83,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=87',13,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','88-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=88',14,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','89-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',88,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=89',15,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','90-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',88,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=90',16,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','91-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=91',17,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','92-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',91,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=92',18,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','93-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',91,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=93',19,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','94-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=94',20,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','95-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=95',21,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','96-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=96',22,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','97-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',96,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=97',23,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','98-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',96,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=98',24,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','99-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',96,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=99',25,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','100-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=100',26,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','101-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',100,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=101',27,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','102-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',100,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=102',28,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','103-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',100,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=103',29,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','104-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=104',30,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','105-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',104,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=105',31,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','106-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',104,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=106',32,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','107-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',104,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=107',33,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','108-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=108',34,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','109-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=109',35,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','110-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=110',36,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','111-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=111',37,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','112-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=112',38,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','113-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=113',39,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','114-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=114',40,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','115-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=115',41,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','116-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=116',42,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','117-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=117',43,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','118-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=118',44,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','119-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=119',45,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','120-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=120',46,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','121-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=121',47,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','122-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=122',48,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','123-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=123',49,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','124-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=124',50,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','125-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=125',51,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','126-2','','','2022-11-22 19:26:01','2022-11-22 10:26:01','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=126',52,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2023-03-20 17:55:04','0000-00-00 00:00:00','','自動下書き','','auto-draft','','','','','','','2023-03-20 17:55:04','0000-00-00 00:00:00','',0,'https://wordpress-starter-kit.local/?p=128',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (56,2,0);
INSERT INTO `wp_term_relationships` VALUES (57,2,0);
INSERT INTO `wp_term_relationships` VALUES (58,2,0);
INSERT INTO `wp_term_relationships` VALUES (59,2,0);
INSERT INTO `wp_term_relationships` VALUES (60,2,0);
INSERT INTO `wp_term_relationships` VALUES (61,2,0);
INSERT INTO `wp_term_relationships` VALUES (62,2,0);
INSERT INTO `wp_term_relationships` VALUES (63,2,0);
INSERT INTO `wp_term_relationships` VALUES (64,2,0);
INSERT INTO `wp_term_relationships` VALUES (65,2,0);
INSERT INTO `wp_term_relationships` VALUES (66,2,0);
INSERT INTO `wp_term_relationships` VALUES (67,2,0);
INSERT INTO `wp_term_relationships` VALUES (68,2,0);
INSERT INTO `wp_term_relationships` VALUES (69,2,0);
INSERT INTO `wp_term_relationships` VALUES (70,2,0);
INSERT INTO `wp_term_relationships` VALUES (71,2,0);
INSERT INTO `wp_term_relationships` VALUES (72,2,0);
INSERT INTO `wp_term_relationships` VALUES (73,2,0);
INSERT INTO `wp_term_relationships` VALUES (74,2,0);
INSERT INTO `wp_term_relationships` VALUES (75,2,0);
INSERT INTO `wp_term_relationships` VALUES (76,2,0);
INSERT INTO `wp_term_relationships` VALUES (77,2,0);
INSERT INTO `wp_term_relationships` VALUES (78,2,0);
INSERT INTO `wp_term_relationships` VALUES (79,2,0);
INSERT INTO `wp_term_relationships` VALUES (80,2,0);
INSERT INTO `wp_term_relationships` VALUES (81,2,0);
INSERT INTO `wp_term_relationships` VALUES (82,2,0);
INSERT INTO `wp_term_relationships` VALUES (83,2,0);
INSERT INTO `wp_term_relationships` VALUES (84,2,0);
INSERT INTO `wp_term_relationships` VALUES (85,2,0);
INSERT INTO `wp_term_relationships` VALUES (86,2,0);
INSERT INTO `wp_term_relationships` VALUES (87,2,0);
INSERT INTO `wp_term_relationships` VALUES (88,2,0);
INSERT INTO `wp_term_relationships` VALUES (89,2,0);
INSERT INTO `wp_term_relationships` VALUES (90,2,0);
INSERT INTO `wp_term_relationships` VALUES (91,2,0);
INSERT INTO `wp_term_relationships` VALUES (92,2,0);
INSERT INTO `wp_term_relationships` VALUES (93,2,0);
INSERT INTO `wp_term_relationships` VALUES (94,2,0);
INSERT INTO `wp_term_relationships` VALUES (95,2,0);
INSERT INTO `wp_term_relationships` VALUES (96,2,0);
INSERT INTO `wp_term_relationships` VALUES (97,2,0);
INSERT INTO `wp_term_relationships` VALUES (98,2,0);
INSERT INTO `wp_term_relationships` VALUES (99,2,0);
INSERT INTO `wp_term_relationships` VALUES (100,2,0);
INSERT INTO `wp_term_relationships` VALUES (101,2,0);
INSERT INTO `wp_term_relationships` VALUES (102,2,0);
INSERT INTO `wp_term_relationships` VALUES (103,2,0);
INSERT INTO `wp_term_relationships` VALUES (104,2,0);
INSERT INTO `wp_term_relationships` VALUES (105,2,0);
INSERT INTO `wp_term_relationships` VALUES (106,2,0);
INSERT INTO `wp_term_relationships` VALUES (107,2,0);
INSERT INTO `wp_term_relationships` VALUES (108,2,0);
INSERT INTO `wp_term_relationships` VALUES (109,2,0);
INSERT INTO `wp_term_relationships` VALUES (110,2,0);
INSERT INTO `wp_term_relationships` VALUES (111,2,0);
INSERT INTO `wp_term_relationships` VALUES (112,2,0);
INSERT INTO `wp_term_relationships` VALUES (113,2,0);
INSERT INTO `wp_term_relationships` VALUES (114,2,0);
INSERT INTO `wp_term_relationships` VALUES (115,2,0);
INSERT INTO `wp_term_relationships` VALUES (116,2,0);
INSERT INTO `wp_term_relationships` VALUES (117,2,0);
INSERT INTO `wp_term_relationships` VALUES (118,2,0);
INSERT INTO `wp_term_relationships` VALUES (119,2,0);
INSERT INTO `wp_term_relationships` VALUES (120,2,0);
INSERT INTO `wp_term_relationships` VALUES (121,2,0);
INSERT INTO `wp_term_relationships` VALUES (122,2,0);
INSERT INTO `wp_term_relationships` VALUES (123,2,0);
INSERT INTO `wp_term_relationships` VALUES (124,2,0);
INSERT INTO `wp_term_relationships` VALUES (125,2,0);
INSERT INTO `wp_term_relationships` VALUES (126,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'mywp_term','',0,71);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'未分類','uncategorized',0,1);
INSERT INTO `wp_terms` VALUES (2,'default','default',0,0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','custom-post-type-permalinks-settings');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','128');
INSERT INTO `wp_usermeta` VALUES (18,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_dashboard','a:4:{i:0;s:21:\"dashboard_site_health\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'mywp_notice','');
INSERT INTO `wp_usermeta` VALUES (24,1,'manageedit-postcolumnshidden','a:1:{i:0;s:8:\"comments\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'edit_post_per_page','20');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings','posts_list_mode=list');
INSERT INTO `wp_usermeta` VALUES (27,1,'wp_user-settings-time','1658886872');
INSERT INTO `wp_usermeta` VALUES (28,1,'manageedit-pagecolumnshidden','a:1:{i:0;s:8:\"comments\";}');
INSERT INTO `wp_usermeta` VALUES (29,1,'edit_page_per_page','20');
INSERT INTO `wp_usermeta` VALUES (34,1,'session_tokens','a:1:{s:64:\"90d29c71e037b2cb7cc311083382798c0b368b53f4ab81f917706087c898bda6\";a:4:{s:10:\"expiration\";i:1679475301;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:84:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/111.0\";s:5:\"login\";i:1679302501;}}');
INSERT INTO `wp_usermeta` VALUES (35,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:24:\"taxonomy-panel-news_tags\";i:2;s:28:\"taxonomy-panel-news_category\";}}s:9:\"_modified\";s:24:\"2022-11-22T10:26:33.252Z\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BbxAvWG0fTB60kojgq4tvYTkd1APAu.','admin','eiji@design24c.com','http://wordpress-starter-kit.local/admin','2022-07-27 00:40:31','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 17:57:42

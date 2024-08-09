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
) ENGINE=InnoDB AUTO_INCREMENT=903 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:144:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:74:\"news/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:95:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=news\";s:69:\"news/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:95:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=news\";s:62:\"news/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:96:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]&post_type=news\";s:44:\"news/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:78:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&post_type=news\";s:61:\"news/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:79:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=news\";s:56:\"news/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:79:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=news\";s:49:\"news/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]&post_type=news\";s:31:\"news/([0-9]{4})/([0-9]{1,2})/?$\";s:62:\"index.php?year=$matches[1]&monthnum=$matches[2]&post_type=news\";s:48:\"news/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=news\";s:43:\"news/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=news\";s:36:\"news/([0-9]{4})/page/?([0-9]{1,})/?$\";s:59:\"index.php?year=$matches[1]&paged=$matches[2]&post_type=news\";s:18:\"news/([0-9]{4})/?$\";s:41:\"index.php?year=$matches[1]&post_type=news\";s:40:\"news/author/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?author_name=$matches[1]&paged=$matches[2]&post_type=news\";s:22:\"news/author/([^/]+)/?$\";s:48:\"index.php?author_name=$matches[1]&post_type=news\";s:15:\"news/([^/]+)/?$\";s:31:\"index.php?news_tags=$matches[1]\";s:29:\"news/([^/]+)/page/([0-9]+)/?$\";s:49:\"index.php?news_tags=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"news/article/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"news/article/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"news/article/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"news/article/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"news/article/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"news/article/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"(news)/article/([^/]+)/embed/?$\";s:69:\"index.php?post_type=news&slug=$matches[1]&news=$matches[2]&embed=true\";s:35:\"(news)/article/([^/]+)/trackback/?$\";s:63:\"index.php?post_type=news&slug=$matches[1]&news=$matches[2]&tb=1\";s:55:\"(news)/article/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:75:\"index.php?post_type=news&slug=$matches[1]&news=$matches[2]&feed=$matches[3]\";s:50:\"(news)/article/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:75:\"index.php?post_type=news&slug=$matches[1]&news=$matches[2]&feed=$matches[3]\";s:43:\"(news)/article/([^/]+)/page/?([0-9]{1,})/?$\";s:76:\"index.php?post_type=news&slug=$matches[1]&news=$matches[2]&paged=$matches[3]\";s:50:\"(news)/article/([^/]+)/comment-page-([0-9]{1,})/?$\";s:76:\"index.php?post_type=news&slug=$matches[1]&news=$matches[2]&cpage=$matches[3]\";s:39:\"(news)/article/([^/]+)(?:/([0-9]+))?/?$\";s:75:\"index.php?post_type=news&slug=$matches[1]&news=$matches[2]&page=$matches[3]\";s:29:\"news/article/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"news/article/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"news/article/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"news/article/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"news/article/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"news/article/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:52:\"news/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?news_category=$matches[1]&feed=$matches[2]\";s:47:\"news/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?news_category=$matches[1]&feed=$matches[2]\";s:28:\"news/category/(.+?)/embed/?$\";s:46:\"index.php?news_category=$matches[1]&embed=true\";s:40:\"news/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?news_category=$matches[1]&paged=$matches[2]\";s:22:\"news/category/(.+?)/?$\";s:35:\"index.php?news_category=$matches[1]\";s:48:\"news/tags/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?news_tags=$matches[1]&feed=$matches[2]\";s:43:\"news/tags/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?news_tags=$matches[1]&feed=$matches[2]\";s:24:\"news/tags/(.+?)/embed/?$\";s:42:\"index.php?news_tags=$matches[1]&embed=true\";s:36:\"news/tags/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?news_tags=$matches[1]&paged=$matches[2]\";s:18:\"news/tags/(.+?)/?$\";s:31:\"index.php?news_tags=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:8:{i:1;s:43:\"admin-color-schemes/admin-color-schemes.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:19:\"akismet/akismet.php\";i:4;s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";i:5;s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";i:6;s:14:\"my-wp/mywp.php\";i:7;s:49:\"mywp-select-user-roles/mywp-select-user-roles.php\";i:8;s:24:\"wordpress-seo/wp-seo.php\";}','yes');
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
INSERT INTO `wp_options` VALUES (46,'db_version','57155','yes');
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
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:5:{s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";a:2:{i:0;s:4:\"CPTP\";i:1;s:9:\"uninstall\";}s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:15:\"hicpo_uninstall\";s:20:\"flexible-table-block\";s:43:\"Flexible_Table_Block\\Init::plugin_uninstall\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}','no');
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
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1736072629','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:67:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:21:\"hicpo_load_script_css\";b:1;s:23:\"hicpo_update_menu_order\";b:1;s:28:\"hicpo_update_menu_order_tags\";b:1;s:29:\"hicpo_update_menu_order_sites\";b:1;s:20:\"wpseo_manage_options\";b:1;s:27:\"hicpo_hicpo_load_script_css\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:40:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:21:\"hicpo_load_script_css\";b:1;s:23:\"hicpo_update_menu_order\";b:1;s:28:\"hicpo_update_menu_order_tags\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:27:\"hicpo_hicpo_load_script_css\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:41:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:21:\"hicpo_load_script_css\";b:1;s:23:\"hicpo_update_menu_order\";b:1;s:28:\"hicpo_update_menu_order_tags\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:21:\"hicpo_load_script_css\";b:1;s:23:\"hicpo_update_menu_order\";b:1;s:28:\"hicpo_update_menu_order_tags\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'WPLANG','ja','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:157:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>最近の投稿</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>最近のコメント</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>アーカイブ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:155:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>カテゴリー</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:12:{i:1722249631;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1722256831;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1722256839;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1722300031;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1722300039;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1722300041;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1722321149;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1722335151;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1722335221;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1722336028;a:1:{s:36:\"mywp_select_user_roles_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1722472831;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
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
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1658883146;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (127,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (128,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:34:\"SSL 認証に失敗しました。\";}}','yes');
INSERT INTO `wp_options` VALUES (132,'logged_in_key',';@miM.0*<}eLUn$osNK|>=ZO<TJ,* H(sH#&.WOzVPwA&Vh~1;{^!XmF7~3ayV /','no');
INSERT INTO `wp_options` VALUES (133,'logged_in_salt','d1$ac@F}g@9![ D{CDQt3}Sjo[d/|3476+sXgSSbHUp{wVKK6#$VNy8B^?Cj:jar','no');
INSERT INTO `wp_options` VALUES (139,'auth_key','}fBR[s3r}^(v$P<wX>Moo* A3GB4lQ<:,N2V#uk(PLk20zK;12]_(6.&:iZTr% l','no');
INSERT INTO `wp_options` VALUES (140,'auth_salt','vlfTwJRqQ$T+4(5vKw>BCA8.%LqYDEqU</}0W3BsCKf;bLwKw+w1SVLUj8#6-wK+','no');
INSERT INTO `wp_options` VALUES (159,'recently_activated','a:1:{s:29:\"acf-extended/acf-extended.php\";i:1721875329;}','yes');
INSERT INTO `wp_options` VALUES (162,'cptp_version','3.5.2','yes');
INSERT INTO `wp_options` VALUES (163,'queue_flush_rules','0','yes');
INSERT INTO `wp_options` VALUES (165,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (166,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (167,'no_taxonomy_structure','1','yes');
INSERT INTO `wp_options` VALUES (168,'add_post_type_for_tax','','yes');
INSERT INTO `wp_options` VALUES (176,'akismet_strictness','0','yes');
INSERT INTO `wp_options` VALUES (177,'akismet_show_user_comments_approved','0','yes');
INSERT INTO `wp_options` VALUES (178,'akismet_comment_form_privacy_notice','hide','yes');
INSERT INTO `wp_options` VALUES (179,'wordpress_api_key','c7ef1e42a88e','yes');
INSERT INTO `wp_options` VALUES (180,'akismet_spam_count','0','yes');
INSERT INTO `wp_options` VALUES (181,'cptp_permalink_checked','3.5.2','yes');
INSERT INTO `wp_options` VALUES (186,'mywp_frontend_general','a:12:{s:9:\"admin_bar\";s:4:\"hide\";s:17:\"hide_wp_generator\";b:1;s:21:\"hide_wlwmanifest_link\";b:1;s:13:\"hide_rsd_link\";b:1;s:15:\"hide_feed_links\";b:1;s:21:\"hide_feed_links_extra\";b:1;s:21:\"hide_rest_link_header\";b:1;s:21:\"hide_shortlink_header\";b:1;s:16:\"include_css_file\";s:0:\"\";s:15:\"include_js_file\";s:0:\"\";s:18:\"custom_header_meta\";s:0:\"\";s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (187,'mywp_frontend_author_archive','a:2:{s:15:\"disable_archive\";b:1;s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (188,'mywp_login_general','a:8:{s:13:\"logo_link_url\";s:20:\"[mywp_url login=\"1\"]\";s:15:\"logo_image_path\";s:16:\"./logo-login.png\";s:10:\"logo_title\";s:24:\"[mywp_site field=\"name\"]\";s:22:\"hidden_select_language\";b:1;s:9:\"input_css\";s:0:\"\";s:16:\"include_css_file\";s:10:\"/login.css\";s:18:\"custom_footer_text\";s:0:\"\";s:7:\"advance\";b:1;}','no');
INSERT INTO `wp_options` VALUES (189,'mywp_login_user','a:3:{s:18:\"login_redirect_url\";s:20:\"[mywp_url admin=\"1\"]\";s:19:\"logout_redirect_url\";s:20:\"[mywp_url login=\"1\"]\";s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (196,'mywp_admin_regist_meta_boxes','a:1:{s:17:\"regist_meta_boxes\";a:5:{s:9:\"dashboard\";a:7:{s:21:\"dashboard_site_health\";a:5:{s:2:\"id\";s:21:\"dashboard_site_health\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:33:\"サイトヘルスステータス\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:33:\"サイトヘルスステータス\";}}s:19:\"dashboard_right_now\";a:5:{s:2:\"id\";s:19:\"dashboard_right_now\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"概要\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:6:\"概要\";}}s:18:\"dashboard_activity\";a:5:{s:2:\"id\";s:18:\"dashboard_activity\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:21:\"アクティビティ\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:21:\"アクティビティ\";}}s:21:\"dashboard_quick_press\";a:5:{s:2:\"id\";s:21:\"dashboard_quick_press\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:43:\"クイックドラフト 最新の下書き\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:110:\"<span class=\"hide-if-no-js\">クイックドラフト</span> <span class=\"hide-if-js\">最新の下書き</span>\";}}s:17:\"dashboard_primary\";a:5:{s:2:\"id\";s:17:\"dashboard_primary\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:37:\"WordPress イベントとニュース\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:37:\"WordPress イベントとニュース\";}}s:24:\"wpseo-dashboard-overview\";a:5:{s:2:\"id\";s:24:\"wpseo-dashboard-overview\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:25:\"Yoast SEO 投稿の概要\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:25:\"Yoast SEO 投稿の概要\";}}s:32:\"wpseo-wincher-dashboard-overview\";a:5:{s:2:\"id\";s:32:\"wpseo-wincher-dashboard-overview\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:48:\"Yoast SEO / Wincher: 人気のキーフレーズ\";s:4:\"args\";a:1:{s:17:\"__widget_basename\";s:48:\"Yoast SEO / Wincher: 人気のキーフレーズ\";}}}s:4:\"news\";a:9:{s:9:\"submitdiv\";a:5:{s:2:\"id\";s:9:\"submitdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"公開\";s:4:\"args\";a:3:{s:15:\"revisions_count\";i:21;s:11:\"revision_id\";i:172;s:22:\"__back_compat_meta_box\";b:1;}}s:16:\"news_categorydiv\";a:5:{s:2:\"id\";s:16:\"news_categorydiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"カテゴリー\";s:4:\"args\";a:2:{s:8:\"taxonomy\";s:13:\"news_category\";s:22:\"__back_compat_meta_box\";b:1;}}s:12:\"news_tagsdiv\";a:5:{s:2:\"id\";s:12:\"news_tagsdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"タグ\";s:4:\"args\";a:2:{s:8:\"taxonomy\";s:9:\"news_tags\";s:22:\"__back_compat_meta_box\";b:1;}}s:13:\"pageparentdiv\";a:5:{s:2:\"id\";s:13:\"pageparentdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"投稿の属性\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:12:\"postimagediv\";a:5:{s:2:\"id\";s:12:\"postimagediv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:3:\"low\";s:5:\"title\";s:18:\"アイキャッチ\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:7:\"slugdiv\";a:5:{s:2:\"id\";s:7:\"slugdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:12:\"スラッグ\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:9:\"authordiv\";a:5:{s:2:\"id\";s:9:\"authordiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:9:\"投稿者\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:10:\"wpseo_meta\";a:5:{s:2:\"id\";s:10:\"wpseo_meta\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"high\";s:5:\"title\";s:9:\"Yoast SEO\";s:4:\"args\";a:1:{s:34:\"__block_editor_compatible_meta_box\";b:1;}}s:12:\"revisionsdiv\";a:5:{s:2:\"id\";s:12:\"revisionsdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"リビジョン\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}}s:4:\"post\";a:12:{s:12:\"revisionsdiv\";a:5:{s:2:\"id\";s:12:\"revisionsdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"リビジョン\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:11:\"postexcerpt\";a:5:{s:2:\"id\";s:11:\"postexcerpt\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"抜粋\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:13:\"trackbacksdiv\";a:5:{s:2:\"id\";s:13:\"trackbacksdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:27:\"トラックバック送信\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:16:\"commentstatusdiv\";a:5:{s:2:\"id\";s:16:\"commentstatusdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:24:\"ディスカッション\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:11:\"commentsdiv\";a:5:{s:2:\"id\";s:11:\"commentsdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:12:\"コメント\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:7:\"slugdiv\";a:5:{s:2:\"id\";s:7:\"slugdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:12:\"スラッグ\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:9:\"authordiv\";a:5:{s:2:\"id\";s:9:\"authordiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:9:\"投稿者\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:9:\"submitdiv\";a:5:{s:2:\"id\";s:9:\"submitdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"公開\";s:4:\"args\";a:3:{s:15:\"revisions_count\";i:2;s:11:\"revision_id\";i:135;s:22:\"__back_compat_meta_box\";b:1;}}s:11:\"categorydiv\";a:5:{s:2:\"id\";s:11:\"categorydiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"カテゴリー\";s:4:\"args\";a:2:{s:8:\"taxonomy\";s:8:\"category\";s:22:\"__back_compat_meta_box\";b:1;}}s:16:\"tagsdiv-post_tag\";a:5:{s:2:\"id\";s:16:\"tagsdiv-post_tag\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"タグ\";s:4:\"args\";a:2:{s:8:\"taxonomy\";s:8:\"post_tag\";s:22:\"__back_compat_meta_box\";b:1;}}s:12:\"postimagediv\";a:5:{s:2:\"id\";s:12:\"postimagediv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:3:\"low\";s:5:\"title\";s:24:\"アイキャッチ画像\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:10:\"wpseo_meta\";a:5:{s:2:\"id\";s:10:\"wpseo_meta\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:7:\"default\";s:5:\"title\";s:9:\"Yoast SEO\";s:4:\"args\";a:1:{s:34:\"__block_editor_compatible_meta_box\";b:1;}}}s:15:\"acf-field-group\";a:6:{s:9:\"submitdiv\";a:5:{s:2:\"id\";s:9:\"submitdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"公開\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:25:\"acf-field-group-acfe-side\";a:5:{s:2:\"id\";s:25:\"acf-field-group-acfe-side\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:7:\"default\";s:5:\"title\";s:17:\"Advanced Settings\";s:4:\"args\";N;}s:7:\"slugdiv\";a:5:{s:2:\"id\";s:7:\"slugdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:12:\"スラッグ\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:22:\"acf-field-group-fields\";a:5:{s:2:\"id\";s:22:\"acf-field-group-fields\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"high\";s:5:\"title\";s:15:\"フィールド\";s:4:\"args\";N;}s:23:\"acf-field-group-options\";a:5:{s:2:\"id\";s:23:\"acf-field-group-options\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"high\";s:5:\"title\";s:6:\"設定\";s:4:\"args\";N;}s:20:\"acf-field-group-acfe\";a:5:{s:2:\"id\";s:20:\"acf-field-group-acfe\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:7:\"default\";s:5:\"title\";s:11:\"Field group\";s:4:\"args\";N;}}s:4:\"page\";a:9:{s:12:\"revisionsdiv\";a:5:{s:2:\"id\";s:12:\"revisionsdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"リビジョン\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:16:\"commentstatusdiv\";a:5:{s:2:\"id\";s:16:\"commentstatusdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:24:\"ディスカッション\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:11:\"commentsdiv\";a:5:{s:2:\"id\";s:11:\"commentsdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:12:\"コメント\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:7:\"slugdiv\";a:5:{s:2:\"id\";s:7:\"slugdiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:12:\"スラッグ\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:9:\"authordiv\";a:5:{s:2:\"id\";s:9:\"authordiv\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:9:\"投稿者\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:10:\"wpseo_meta\";a:5:{s:2:\"id\";s:10:\"wpseo_meta\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:7:\"default\";s:5:\"title\";s:9:\"Yoast SEO\";s:4:\"args\";a:1:{s:34:\"__block_editor_compatible_meta_box\";b:1;}}s:9:\"submitdiv\";a:5:{s:2:\"id\";s:9:\"submitdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:6:\"公開\";s:4:\"args\";a:3:{s:15:\"revisions_count\";i:2;s:11:\"revision_id\";i:54;s:22:\"__back_compat_meta_box\";b:1;}}s:13:\"pageparentdiv\";a:5:{s:2:\"id\";s:13:\"pageparentdiv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";s:5:\"title\";s:15:\"ページ属性\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}s:12:\"postimagediv\";a:5:{s:2:\"id\";s:12:\"postimagediv\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:3:\"low\";s:5:\"title\";s:24:\"アイキャッチ画像\";s:4:\"args\";a:1:{s:22:\"__back_compat_meta_box\";b:1;}}}}}','off');
INSERT INTO `wp_options` VALUES (201,'current_theme','Plainscape','yes');
INSERT INTO `wp_options` VALUES (202,'theme_mods_Default','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (203,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (204,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (205,'mywp_admin_regist_list_columns','a:1:{s:14:\"regist_columns\";a:6:{s:4:\"post\";a:2:{s:7:\"columns\";a:14:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:12:\"タイトル\";s:6:\"author\";s:9:\"投稿者\";s:10:\"categories\";s:15:\"カテゴリー\";s:4:\"tags\";s:6:\"タグ\";s:8:\"comments\";s:138:\"<span class=\"vers comment-grey-bubble\" title=\"コメント\" aria-hidden=\"true\"></span><span class=\"screen-reader-text\">コメント</span>\";s:4:\"date\";s:6:\"日付\";s:11:\"wpseo-score\";s:170:\"<span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\" data-tooltip-text=\"SEO スコア\"><span class=\"screen-reader-text\">SEO スコア</span></span></span>\";s:23:\"wpseo-score-readability\";s:182:\"<span class=\"yoast-column-readability yoast-column-header-has-tooltip\" data-tooltip-text=\"可読性スコア\"><span class=\"screen-reader-text\">可読性スコア</span></span></span>\";s:11:\"wpseo-title\";s:15:\"SEOタイトル\";s:14:\"wpseo-metadesc\";s:33:\"メタディスクリプション\";s:13:\"wpseo-focuskw\";s:18:\"キーフレーズ\";s:11:\"wpseo-links\";s:281:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-tooltip-text=\"この投稿内の内部リンク数。詳細はヘルプタブの「Yoast Columns」テキストを参照してください。\"><span class=\"screen-reader-text\">内部リンクの発信</span></span>\";s:12:\"wpseo-linked\";s:313:\"<span class=\"yoast-linked-from yoast-column-header-has-tooltip\" data-tooltip-text=\"この投稿にリンクしている内部リンク数。詳細はヘルプタブの「Yoast Columns」テキストを参照してください。\"><span class=\"screen-reader-text\">内部リンクを受信しました</span></span>\";}s:9:\"sortables\";a:10:{s:5:\"title\";a:4:{i:0;s:5:\"title\";i:1;b:0;i:2;s:12:\"タイトル\";i:3;s:33:\"タイトル順のテーブル。\";}s:6:\"parent\";a:2:{i:0;s:6:\"parent\";i:1;b:0;}s:8:\"comments\";a:4:{i:0;s:13:\"comment_count\";i:1;b:0;i:2;s:12:\"コメント\";i:3;s:33:\"コメント順のテーブル。\";}s:4:\"date\";a:5:{i:0;s:4:\"date\";i:1;b:1;i:2;s:6:\"日付\";i:3;s:27:\"日付順のテーブル。\";i:4;s:4:\"desc\";}s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";s:11:\"wpseo-score\";s:11:\"wpseo-score\";s:23:\"wpseo-score-readability\";s:23:\"wpseo-score-readability\";s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";}}s:4:\"news\";a:2:{s:7:\"columns\";a:14:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:12:\"タイトル\";s:6:\"author\";s:9:\"投稿者\";s:4:\"date\";s:6:\"日付\";s:13:\"news_category\";s:15:\"カテゴリー\";s:9:\"news_tags\";s:6:\"タグ\";s:11:\"wpseo-score\";s:170:\"<span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\" data-tooltip-text=\"SEO スコア\"><span class=\"screen-reader-text\">SEO スコア</span></span></span>\";s:23:\"wpseo-score-readability\";s:182:\"<span class=\"yoast-column-readability yoast-column-header-has-tooltip\" data-tooltip-text=\"可読性スコア\"><span class=\"screen-reader-text\">可読性スコア</span></span></span>\";s:11:\"wpseo-title\";s:15:\"SEOタイトル\";s:14:\"wpseo-metadesc\";s:33:\"メタディスクリプション\";s:13:\"wpseo-focuskw\";s:18:\"キーフレーズ\";s:11:\"wpseo-links\";s:281:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-tooltip-text=\"この投稿内の内部リンク数。詳細はヘルプタブの「Yoast Columns」テキストを参照してください。\"><span class=\"screen-reader-text\">内部リンクの発信</span></span>\";s:12:\"wpseo-linked\";s:313:\"<span class=\"yoast-linked-from yoast-column-header-has-tooltip\" data-tooltip-text=\"この投稿にリンクしている内部リンク数。詳細はヘルプタブの「Yoast Columns」テキストを参照してください。\"><span class=\"screen-reader-text\">内部リンクを受信しました</span></span>\";s:9:\"thumbnail\";s:15:\"サムネイル\";}s:9:\"sortables\";a:10:{s:5:\"title\";a:4:{i:0;s:5:\"title\";i:1;b:0;i:2;s:12:\"タイトル\";i:3;s:33:\"タイトル順のテーブル。\";}s:6:\"parent\";a:2:{i:0;s:6:\"parent\";i:1;b:0;}s:8:\"comments\";a:4:{i:0;s:13:\"comment_count\";i:1;b:0;i:2;s:12:\"コメント\";i:3;s:33:\"コメント順のテーブル。\";}s:4:\"date\";a:5:{i:0;s:4:\"date\";i:1;b:1;i:2;s:6:\"日付\";i:3;s:27:\"日付順のテーブル。\";i:4;s:4:\"desc\";}s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";s:11:\"wpseo-score\";s:11:\"wpseo-score\";s:23:\"wpseo-score-readability\";s:23:\"wpseo-score-readability\";s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";}}s:4:\"page\";a:2:{s:7:\"columns\";a:12:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:12:\"タイトル\";s:6:\"author\";s:9:\"投稿者\";s:8:\"comments\";s:138:\"<span class=\"vers comment-grey-bubble\" title=\"コメント\" aria-hidden=\"true\"></span><span class=\"screen-reader-text\">コメント</span>\";s:4:\"date\";s:6:\"日付\";s:11:\"wpseo-score\";s:170:\"<span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\" data-tooltip-text=\"SEO スコア\"><span class=\"screen-reader-text\">SEO スコア</span></span></span>\";s:23:\"wpseo-score-readability\";s:182:\"<span class=\"yoast-column-readability yoast-column-header-has-tooltip\" data-tooltip-text=\"可読性スコア\"><span class=\"screen-reader-text\">可読性スコア</span></span></span>\";s:11:\"wpseo-title\";s:15:\"SEOタイトル\";s:14:\"wpseo-metadesc\";s:33:\"メタディスクリプション\";s:13:\"wpseo-focuskw\";s:18:\"キーフレーズ\";s:11:\"wpseo-links\";s:281:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-tooltip-text=\"この投稿内の内部リンク数。詳細はヘルプタブの「Yoast Columns」テキストを参照してください。\"><span class=\"screen-reader-text\">内部リンクの発信</span></span>\";s:12:\"wpseo-linked\";s:313:\"<span class=\"yoast-linked-from yoast-column-header-has-tooltip\" data-tooltip-text=\"この投稿にリンクしている内部リンク数。詳細はヘルプタブの「Yoast Columns」テキストを参照してください。\"><span class=\"screen-reader-text\">内部リンクを受信しました</span></span>\";}s:9:\"sortables\";a:10:{s:5:\"title\";a:5:{i:0;s:5:\"title\";i:1;b:0;i:2;s:12:\"タイトル\";i:3;s:60:\"階層メニュー順序とタイトル順のテーブル。\";i:4;s:3:\"asc\";}s:6:\"parent\";a:2:{i:0;s:6:\"parent\";i:1;b:0;}s:8:\"comments\";a:4:{i:0;s:13:\"comment_count\";i:1;b:0;i:2;s:12:\"コメント\";i:3;s:33:\"コメント順のテーブル。\";}s:4:\"date\";a:4:{i:0;s:4:\"date\";i:1;b:1;i:2;s:6:\"日付\";i:3;s:27:\"日付順のテーブル。\";}s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";s:11:\"wpseo-score\";s:11:\"wpseo-score\";s:23:\"wpseo-score-readability\";s:23:\"wpseo-score-readability\";s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";}}s:15:\"acf-field-group\";a:2:{s:7:\"columns\";a:8:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:12:\"タイトル\";s:15:\"acf-description\";s:6:\"説明\";s:9:\"acf-count\";s:15:\"フィールド\";s:12:\"acf-location\";s:9:\"所在地\";s:9:\"acfe-load\";s:4:\"Load\";s:17:\"acfe-autosync-php\";s:3:\"PHP\";s:18:\"acfe-autosync-json\";s:4:\"Json\";}s:9:\"sortables\";a:4:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}}}s:5:\"users\";a:2:{s:7:\"columns\";a:6:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:8:\"username\";s:15:\"ユーザー名\";s:4:\"name\";s:6:\"名前\";s:5:\"email\";s:9:\"メール\";s:4:\"role\";s:18:\"権限グループ\";s:5:\"posts\";s:6:\"投稿\";}s:9:\"sortables\";a:2:{s:8:\"username\";s:5:\"login\";s:5:\"email\";s:5:\"email\";}}s:13:\"edit-comments\";a:2:{s:7:\"columns\";a:5:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:6:\"author\";s:9:\"投稿者\";s:7:\"comment\";s:12:\"コメント\";s:8:\"response\";s:9:\"返信先\";s:4:\"date\";s:9:\"投稿日\";}s:9:\"sortables\";a:3:{s:6:\"author\";s:14:\"comment_author\";s:8:\"response\";s:15:\"comment_post_ID\";s:4:\"date\";s:12:\"comment_date\";}}}}','no');
INSERT INTO `wp_options` VALUES (207,'new_admin_email','eiji@design24c.com','yes');
INSERT INTO `wp_options` VALUES (215,'hicpo_ver','3.1.5.1','yes');
INSERT INTO `wp_options` VALUES (216,'hicpo_options','a:2:{s:7:\"objects\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:4:\"news\";}s:4:\"tags\";a:5:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:13:\"link_category\";i:3;s:13:\"news_category\";i:4;s:9:\"news_tags\";}}','yes');
INSERT INTO `wp_options` VALUES (224,'https_migration_required','1','yes');
INSERT INTO `wp_options` VALUES (227,'secure_auth_key','F8GUZ~Kgv<%W1e`;em={gP7uH|Bs?2wx%_nFje{fv&$,=Wqy])=9R<#{(-=o5<G?','no');
INSERT INTO `wp_options` VALUES (228,'secure_auth_salt','ZXkr61BbXsz91|c$>|p~ntl9?hmSp9,,~uQizU8#)!vL$JlrT=XcTYL)$:6.[w==','no');
INSERT INTO `wp_options` VALUES (250,'_transient_health-check-site-status-result','{\"good\":18,\"recommended\":4,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (271,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (272,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (286,'mywp_select_user_roles','a:2:{s:17:\"select_user_roles\";a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (298,'mywp_admin_sidebar','a:3:{s:14:\"custom_menu_ui\";s:0:\"\";s:13:\"cache_timeout\";i:60;s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (308,'news_structure','/article/%postname%/','yes');
INSERT INTO `wp_options` VALUES (353,'acf_version','6.3.4','yes');
INSERT INTO `wp_options` VALUES (356,'auto_update_plugins','a:20:{i:0;s:51:\"adjust-admin-categories/adjust-admin-categories.php\";i:1;s:43:\"admin-color-schemes/admin-color-schemes.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:19:\"akismet/akismet.php\";i:4;s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";i:5;s:47:\"flexible-spacer-block/flexible-spacer-block.php\";i:6;s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";i:7;s:27:\"lazy-blocks/lazy-blocks.php\";i:8;s:25:\"mw-wp-form/mw-wp-form.php\";i:9;s:49:\"mywp-select-user-roles/mywp-select-user-roles.php\";i:10;s:14:\"my-wp/mywp.php\";i:12;s:33:\"duplicate-post/duplicate-post.php\";i:13;s:24:\"wordpress-seo/wp-seo.php\";i:20;s:45:\"flexible-table-block/flexible-table-block.php\";i:26;s:41:\"post-type-switcher/post-type-switcher.php\";i:27;s:31:\"query-monitor/query-monitor.php\";i:28;s:23:\"siteguard/siteguard.php\";i:29;s:27:\"wp-crontrol/wp-crontrol.php\";i:30;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:31;s:27:\"wp-optimize/wp-optimize.php\";}','no');
INSERT INTO `wp_options` VALUES (366,'acf_pro_license','YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRNeU56YzVmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE9DMHdOaTB3T0NBd01Ub3pNRG96TXc9PSI7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd29yZHByZXNzLXN0YXJ0ZXIta2l0LmxvY2FsIjt9','yes');
INSERT INTO `wp_options` VALUES (371,'mywp_admin_general','a:11:{s:18:\"hide_update_notice\";a:4:{s:4:\"core\";s:0:\"\";s:7:\"plugins\";s:0:\"\";s:6:\"themes\";s:0:\"\";s:12:\"translations\";s:0:\"\";}s:16:\"hide_screen_tabs\";a:2:{s:7:\"options\";s:0:\"\";s:4:\"help\";s:0:\"\";}s:16:\"hide_footer_text\";a:2:{s:4:\"left\";b:1;s:5:\"right\";b:1;}s:18:\"custom_footer_text\";s:0:\"\";s:19:\"hide_core_title_tag\";s:0:\"\";s:16:\"include_css_file\";s:0:\"\";s:15:\"include_js_file\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:17:\"max_post_revision\";s:2:\"-1\";s:13:\"not_use_admin\";s:0:\"\";s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (372,'mywp_admin_dashboard','a:4:{s:10:\"meta_boxes\";a:5:{s:21:\"dashboard_site_health\";a:2:{s:6:\"action\";s:4:\"hide\";s:5:\"title\";s:0:\"\";}s:19:\"dashboard_right_now\";a:2:{s:6:\"action\";s:0:\"\";s:5:\"title\";s:0:\"\";}s:18:\"dashboard_activity\";a:2:{s:6:\"action\";s:6:\"remove\";s:5:\"title\";s:0:\"\";}s:21:\"dashboard_quick_press\";a:2:{s:6:\"action\";s:6:\"remove\";s:5:\"title\";s:0:\"\";}s:17:\"dashboard_primary\";a:2:{s:6:\"action\";s:6:\"remove\";s:5:\"title\";s:0:\"\";}}s:18:\"hide_welcome_panel\";s:0:\"\";s:16:\"prevent_meta_box\";s:0:\"\";s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (373,'mywp_admin_toolbar','a:3:{s:14:\"custom_menu_ui\";s:0:\"\";s:13:\"cache_timeout\";i:60;s:7:\"advance\";b:0;}','no');
INSERT INTO `wp_options` VALUES (443,'pagenavi_options','a:15:{s:10:\"pages_text\";s:36:\"Page %CURRENT_PAGE% of %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:13:\"&laquo; First\";s:9:\"last_text\";s:12:\"Last &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";b:0;s:16:\"use_pagenavi_css\";b:1;s:5:\"style\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (446,'acfe','a:2:{s:7:\"version\";s:7:\"0.9.0.6\";s:7:\"modules\";a:4:{s:11:\"block_types\";a:0:{}s:13:\"options_pages\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}}}','yes');
INSERT INTO `wp_options` VALUES (455,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"23.1\";}','yes');
INSERT INTO `wp_options` VALUES (456,'wpseo','a:108:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";s:5:\"false\";s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:0:\"\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"23.1\";s:16:\"previous_version\";s:4:\"23.0\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";s:10:\"1686810749\";s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:35:\"https://wordpress-starter-kit.local\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:3:{s:13:\"news_category\";s:13:\"news/category\";s:9:\"news_tags\";s:9:\"news/tags\";s:9:\"mywp_term\";s:9:\"mywp_term\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:1;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";s:10:\"1686810750\";s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:4:\"news\";}s:28:\"last_known_public_taxonomies\";a:5:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:13:\"news_category\";i:4;s:9:\"news_tags\";}s:23:\"last_known_no_unindexed\";a:4:{s:31:\"wpseo_unindexed_post_link_count\";i:1721893333;s:40:\"wpseo_total_unindexed_post_type_archives\";i:1721893335;s:31:\"wpseo_unindexed_term_link_count\";i:1721893335;s:35:\"wpseo_total_unindexed_general_items\";i:1721893335;}s:14:\"new_post_types\";a:0:{}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (457,'wpseo_titles','a:145:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%% (%%sitename%% の投稿者) %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:60:\"検索結果: %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:63:\"ページが見つかりませんでした %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:73:\"投稿 %%POSTLINK%% は %%BLOGLINK%% に最初に表示されました。\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:48:\"エラー 404: ページが見つかりません\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:16:\"アーカイブ:\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:9:\"ホーム\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:13:\"検索結果:\";s:15:\"breadcrumbs-sep\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:10:\"title-news\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-news\";s:0:\"\";s:12:\"noindex-news\";b:0;s:23:\"display-metabox-pt-news\";b:1;s:23:\"post_types-news-maintax\";s:13:\"news_category\";s:21:\"schema-page-type-news\";s:7:\"WebPage\";s:24:\"schema-article-type-news\";s:4:\"None\";s:17:\"social-title-news\";s:9:\"%%title%%\";s:23:\"social-description-news\";s:0:\"\";s:21:\"social-image-url-news\";s:0:\"\";s:20:\"social-image-id-news\";i:0;s:20:\"title-ptarchive-news\";s:59:\"%%pt_plural%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:23:\"metadesc-ptarchive-news\";s:0:\"\";s:22:\"bctitle-ptarchive-news\";s:0:\"\";s:22:\"noindex-ptarchive-news\";b:0;s:27:\"social-title-ptarchive-news\";s:29:\"%%pt_plural%% アーカイブ\";s:33:\"social-description-ptarchive-news\";s:0:\"\";s:31:\"social-image-url-ptarchive-news\";s:0:\"\";s:30:\"social-image-id-ptarchive-news\";i:0;s:18:\"title-tax-category\";s:60:\"%%term_title%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:30:\"%%term_title%% アーカイブ\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:60:\"%%term_title%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:30:\"%%term_title%% アーカイブ\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:60:\"%%term_title%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:30:\"%%term_title%% アーカイブ\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:23:\"title-tax-news_category\";s:60:\"%%term_title%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-tax-news_category\";s:0:\"\";s:33:\"display-metabox-tax-news_category\";b:1;s:25:\"noindex-tax-news_category\";b:0;s:30:\"social-title-tax-news_category\";s:30:\"%%term_title%% アーカイブ\";s:36:\"social-description-tax-news_category\";s:0:\"\";s:34:\"social-image-url-tax-news_category\";s:0:\"\";s:33:\"social-image-id-tax-news_category\";i:0;s:31:\"taxonomy-news_category-ptparent\";s:4:\"news\";s:19:\"title-tax-news_tags\";s:60:\"%%term_title%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:22:\"metadesc-tax-news_tags\";s:0:\"\";s:29:\"display-metabox-tax-news_tags\";b:1;s:21:\"noindex-tax-news_tags\";b:0;s:26:\"social-title-tax-news_tags\";s:30:\"%%term_title%% アーカイブ\";s:32:\"social-description-tax-news_tags\";s:0:\"\";s:30:\"social-image-url-tax-news_tags\";s:0:\"\";s:29:\"social-image-id-tax-news_tags\";i:0;s:27:\"taxonomy-news_tags-ptparent\";s:4:\"news\";s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (458,'wpseo_social','a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (562,'acf_pro_license_status','a:11:{s:6:\"status\";s:6:\"active\";s:7:\"created\";i:0;s:6:\"expiry\";i:0;s:4:\"name\";s:9:\"Developer\";s:8:\"lifetime\";b:1;s:8:\"refunded\";b:0;s:17:\"view_licenses_url\";s:62:\"https://www.advancedcustomfields.com/my-account/view-licenses/\";s:23:\"manage_subscription_url\";s:0:\"\";s:9:\"error_msg\";s:0:\"\";s:10:\"next_check\";i:1722336030;s:16:\"legacy_multisite\";b:1;}','on');
INSERT INTO `wp_options` VALUES (564,'acf_site_health','{\"version\":\"6.3.4\",\"plugin_type\":\"PRO\",\"activated\":true,\"activated_url\":\"https:\\/\\/wordpress-starter-kit.local\",\"license_type\":\"Developer\",\"license_status\":\"active\",\"subscription_expires\":\"\",\"wp_version\":\"6.6\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Sample theme\",\"version\":\"1.0\",\"theme_uri\":\"https:\\/\\/design24c.com\\/\",\"stylesheet\":false},\"active_plugins\":{\"admin-color-schemes\\/admin-color-schemes.php\":{\"name\":\"Admin Color Schemes\",\"version\":\"3.0.0\",\"plugin_uri\":\"http:\\/\\/wordpress.org\\/plugins\\/admin-color-schemes\\/\"},\"acf-extended\\/acf-extended.php\":{\"name\":\"Advanced Custom Fields: Extended\",\"version\":\"0.9.0.6\",\"plugin_uri\":\"https:\\/\\/www.acf-extended.com\"},\"advanced-custom-fields-pro\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.3.4\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"akismet\\/akismet.php\":{\"name\":\"Akismet Anti-spam: Spam Protection\",\"version\":\"5.3.3\",\"plugin_uri\":\"https:\\/\\/akismet.com\\/\"},\"custom-post-type-permalinks\\/custom-post-type-permalinks.php\":{\"name\":\"Custom Post Type Permalinks\",\"version\":\"3.5.2\",\"plugin_uri\":\"https:\\/\\/github.com\\/torounit\\/custom-post-type-permalinks\"},\"intuitive-custom-post-order\\/intuitive-custom-post-order.php\":{\"name\":\"Intuitive Custom Post Order\",\"version\":\"3.1.5\",\"plugin_uri\":\"http:\\/\\/hijiriworld.com\\/web\\/plugins\\/intuitive-custom-post-order\\/\"},\"mywp-select-user-roles\\/mywp-select-user-roles.php\":{\"name\":\"My WP Add-on Select User Roles\",\"version\":\"1.6.0\",\"plugin_uri\":\"https:\\/\\/mywpcustomize.com\\/\"},\"my-wp\\/mywp.php\":{\"name\":\"My WP Customize Admin\\/Frontend\",\"version\":\"1.23.1\",\"plugin_uri\":\"https:\\/\\/mywpcustomize.com\\/\"},\"wordpress-seo\\/wp-seo.php\":{\"name\":\"Yoast SEO\",\"version\":\"23.0\",\"plugin_uri\":\"https:\\/\\/yoa.st\\/1uj\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"8\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"6\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1721805036}','off');
INSERT INTO `wp_options` VALUES (568,'wp_attachment_pages_enabled','1','yes');
INSERT INTO `wp_options` VALUES (569,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (570,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (571,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no');
INSERT INTO `wp_options` VALUES (609,'_site_transient_timeout_browser_c9cf7b339c565117520f376307b3323c','1722300379','no');
INSERT INTO `wp_options` VALUES (610,'_site_transient_browser_c9cf7b339c565117520f376307b3323c','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"128.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (611,'_site_transient_timeout_php_check_59134a32cbd685a8f79d4a9eeb911094','1722300380','no');
INSERT INTO `wp_options` VALUES (612,'_site_transient_php_check_59134a32cbd685a8f79d4a9eeb911094','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (625,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1722243674;s:7:\"checked\";a:1:{s:7:\"Default\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (704,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.6.1.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.6.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.1\";s:7:\"version\";s:5:\"6.6.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1722243671;s:15:\"version_checked\";s:5:\"6.6.1\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (736,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (737,'recovery_mode_email_last_sent','1721815961','auto');
INSERT INTO `wp_options` VALUES (888,'_site_transient_timeout_mywp_select_user_roles_updater_remote','1722330072','off');
INSERT INTO `wp_options` VALUES (889,'_site_transient_mywp_select_user_roles_updater_remote','[{\"name\":\"1.6.0\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.6.0\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.6.0\",\"commit\":{\"sha\":\"3a3814c29dc47e5653285bb4e2b05ee5bb30f184\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/3a3814c29dc47e5653285bb4e2b05ee5bb30f184\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjYuMA==\"},{\"name\":\"1.5.2\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.5.2\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.5.2\",\"commit\":{\"sha\":\"340d48e1e6ef93baa654a6f20d036e290559c9df\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/340d48e1e6ef93baa654a6f20d036e290559c9df\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjUuMg==\"},{\"name\":\"1.5.1\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.5.1\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.5.1\",\"commit\":{\"sha\":\"b326286e72fd087a1e30b88f07608dc0f8f5bf91\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/b326286e72fd087a1e30b88f07608dc0f8f5bf91\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjUuMQ==\"},{\"name\":\"1.5.0\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.5.0\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.5.0\",\"commit\":{\"sha\":\"bbcda887ac8d4c8d17df8f4f0cc63eff3e230649\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/bbcda887ac8d4c8d17df8f4f0cc63eff3e230649\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjUuMA==\"},{\"name\":\"1.4\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.4\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.4\",\"commit\":{\"sha\":\"6dc0576ea63cb310f9392dc6d293d53dd6fc2ab7\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/6dc0576ea63cb310f9392dc6d293d53dd6fc2ab7\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjQ=\"},{\"name\":\"1.3\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.3\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.3\",\"commit\":{\"sha\":\"accfa702dc218c8822afe9ea4a9fd8e9fe882a00\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/accfa702dc218c8822afe9ea4a9fd8e9fe882a00\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjM=\"},{\"name\":\"1.2\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.2\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.2\",\"commit\":{\"sha\":\"0a36ac511c6d4f0c262834b9e630cfa09fe32d26\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/0a36ac511c6d4f0c262834b9e630cfa09fe32d26\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjI=\"},{\"name\":\"1.1.7\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.1.7\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.1.7\",\"commit\":{\"sha\":\"6a95adb845fd9f26dbb70ca31aaa4f4b38884649\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/6a95adb845fd9f26dbb70ca31aaa4f4b38884649\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjEuNw==\"},{\"name\":\"1.1.6\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.1.6\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.1.6\",\"commit\":{\"sha\":\"84cc47eb6de4ec8d1ba7cfbe1c9f29487152ae58\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/84cc47eb6de4ec8d1ba7cfbe1c9f29487152ae58\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjEuNg==\"},{\"name\":\"1.1.5\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.1.5\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.1.5\",\"commit\":{\"sha\":\"d0e943f44e2d5b9c4a07ce3ef8ea4396ecb23086\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/d0e943f44e2d5b9c4a07ce3ef8ea4396ecb23086\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjEuNQ==\"},{\"name\":\"1.1.4\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.1.4\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.1.4\",\"commit\":{\"sha\":\"f1dbff3edac93fe8876f314f85e318f96e4a4e26\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/f1dbff3edac93fe8876f314f85e318f96e4a4e26\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjEuNA==\"},{\"name\":\"1.1.3\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.1.3\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.1.3\",\"commit\":{\"sha\":\"a54c3437bbeef792b99a2568ec9699801355db2d\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/a54c3437bbeef792b99a2568ec9699801355db2d\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjEuMw==\"},{\"name\":\"1.1.2\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.1.2\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.1.2\",\"commit\":{\"sha\":\"ef51e48861c61c130c36f78e2df3e8945afb5a92\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/ef51e48861c61c130c36f78e2df3e8945afb5a92\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjEuMg==\"},{\"name\":\"1.1.1\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.1.1\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.1.1\",\"commit\":{\"sha\":\"c89128a23de755e62e69371e98ae998b612a7a2a\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/c89128a23de755e62e69371e98ae998b612a7a2a\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjEuMQ==\"},{\"name\":\"1.1\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.1\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.1\",\"commit\":{\"sha\":\"907dd3702154f16a79dc1fc1871aa13b7326b9a6\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/907dd3702154f16a79dc1fc1871aa13b7326b9a6\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjE=\"},{\"name\":\"1.0\",\"zipball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/zipball/refs/tags/1.0\",\"tarball_url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/tarball/refs/tags/1.0\",\"commit\":{\"sha\":\"02638df1d26decb593d7a6f5dd92bb059aa3a114\",\"url\":\"https://api.github.com/repos/gqevu6bsiz/mywp_addon_select_user_roles/commits/02638df1d26decb593d7a6f5dd92bb059aa3a114\"},\"node_id\":\"MDM6UmVmMTAwODk3OTMxOnJlZnMvdGFncy8xLjA=\"}]','off');
INSERT INTO `wp_options` VALUES (890,'_site_transient_timeout_mywp_select_user_roles_updater','1722330072','off');
INSERT INTO `wp_options` VALUES (891,'_site_transient_mywp_select_user_roles_updater','a:1:{s:6:\"latest\";s:5:\"1.6.0\";}','off');
INSERT INTO `wp_options` VALUES (892,'_transient_timeout_acf_plugin_updates','1722416473','off');
INSERT INTO `wp_options` VALUES (893,'_transient_acf_plugin_updates','a:5:{s:7:\"plugins\";a:0:{}s:9:\"no_update\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.3.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240718\";s:6:\"reason\";s:10:\"up_to_date\";}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.3.4\";}}','off');
INSERT INTO `wp_options` VALUES (895,'_site_transient_timeout_theme_roots','1722245473','off');
INSERT INTO `wp_options` VALUES (896,'_site_transient_theme_roots','a:1:{s:7:\"Default\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (897,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1722243675;s:8:\"response\";a:2:{s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:7:\"0.9.0.7\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/acf-extended.0.9.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.5.5\";s:12:\"requires_php\";s:3:\"5.6\";s:16:\"requires_plugins\";a:0:{}}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:6:\"3.16.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/query-monitor.3.16.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2994095\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2994095\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2870124\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.6.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:19:{s:51:\"adjust-admin-categories/adjust-admin-categories.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/adjust-admin-categories\";s:4:\"slug\";s:23:\"adjust-admin-categories\";s:6:\"plugin\";s:51:\"adjust-admin-categories/adjust-admin-categories.php\";s:11:\"new_version\";s:5:\"2.2.6\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/adjust-admin-categories/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/adjust-admin-categories.2.2.6.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:74:\"https://s.w.org/plugins/geopattern-icon/adjust-admin-categories_33a6d8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/adjust-admin-categories/assets/banner-1544x500.png?rev=968810\";s:2:\"1x\";s:77:\"https://ps.w.org/adjust-admin-categories/assets/banner-772x250.png?rev=968809\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:43:\"admin-color-schemes/admin-color-schemes.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/admin-color-schemes\";s:4:\"slug\";s:19:\"admin-color-schemes\";s:6:\"plugin\";s:43:\"admin-color-schemes/admin-color-schemes.php\";s:11:\"new_version\";s:5:\"3.0.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/admin-color-schemes/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/admin-color-schemes.3.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/admin-color-schemes/assets/icon.svg?rev=1016272\";s:3:\"svg\";s:64:\"https://ps.w.org/admin-color-schemes/assets/icon.svg?rev=1016272\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/admin-color-schemes/assets/banner-1544x500.png?rev=2670111\";s:2:\"1x\";s:74:\"https://ps.w.org/admin-color-schemes/assets/banner-772x250.png?rev=2670111\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/custom-post-type-permalinks\";s:4:\"slug\";s:27:\"custom-post-type-permalinks\";s:6:\"plugin\";s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/custom-post-type-permalinks/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/custom-post-type-permalinks.3.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/custom-post-type-permalinks/assets/icon-256x256.png?rev=1044337\";s:2:\"1x\";s:80:\"https://ps.w.org/custom-post-type-permalinks/assets/icon-128x128.png?rev=1044337\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/custom-post-type-permalinks/assets/banner-1544x500.png?rev=1044335\";s:2:\"1x\";s:81:\"https://ps.w.org/custom-post-type-permalinks/assets/banner-772x250.png?rev=785437\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:47:\"flexible-spacer-block/flexible-spacer-block.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/flexible-spacer-block\";s:4:\"slug\";s:21:\"flexible-spacer-block\";s:6:\"plugin\";s:47:\"flexible-spacer-block/flexible-spacer-block.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/flexible-spacer-block/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/flexible-spacer-block.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/flexible-spacer-block/assets/icon-256x256.png?rev=2658109\";s:2:\"1x\";s:74:\"https://ps.w.org/flexible-spacer-block/assets/icon-128x128.png?rev=2658109\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/flexible-spacer-block/assets/banner-1544x500.png?rev=2658109\";s:2:\"1x\";s:76:\"https://ps.w.org/flexible-spacer-block/assets/banner-772x250.png?rev=2658109\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.4\";}s:45:\"flexible-table-block/flexible-table-block.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/flexible-table-block\";s:4:\"slug\";s:20:\"flexible-table-block\";s:6:\"plugin\";s:45:\"flexible-table-block/flexible-table-block.php\";s:11:\"new_version\";s:5:\"3.3.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/flexible-table-block/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/flexible-table-block.3.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/flexible-table-block/assets/icon-256x256.png?rev=2617855\";s:2:\"1x\";s:73:\"https://ps.w.org/flexible-table-block/assets/icon-128x128.png?rev=2617855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/flexible-table-block/assets/banner-1544x500.png?rev=2617855\";s:2:\"1x\";s:75:\"https://ps.w.org/flexible-table-block/assets/banner-772x250.png?rev=2617855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.4\";}s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/intuitive-custom-post-order\";s:4:\"slug\";s:27:\"intuitive-custom-post-order\";s:6:\"plugin\";s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:11:\"new_version\";s:7:\"3.1.5.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/intuitive-custom-post-order/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.1.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-256x256.png?rev=1078797\";s:2:\"1x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-128x128.png?rev=1078797\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-1544x500.png?rev=1209666\";s:2:\"1x\";s:82:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-772x250.png?rev=1078755\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.5.0\";}s:27:\"lazy-blocks/lazy-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/lazy-blocks\";s:4:\"slug\";s:11:\"lazy-blocks\";s:6:\"plugin\";s:27:\"lazy-blocks/lazy-blocks.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/lazy-blocks/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/lazy-blocks.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/lazy-blocks/assets/icon-256x256.png?rev=2584676\";s:2:\"1x\";s:64:\"https://ps.w.org/lazy-blocks/assets/icon-128x128.png?rev=2584676\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/lazy-blocks/assets/banner-1544x500.png?rev=2828307\";s:2:\"1x\";s:66:\"https://ps.w.org/lazy-blocks/assets/banner-772x250.png?rev=2828307\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:25:\"mw-wp-form/mw-wp-form.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/mw-wp-form\";s:4:\"slug\";s:10:\"mw-wp-form\";s:6:\"plugin\";s:25:\"mw-wp-form/mw-wp-form.php\";s:11:\"new_version\";s:5:\"5.1.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/mw-wp-form/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/mw-wp-form.5.1.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/mw-wp-form_ddf1dc.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/mw-wp-form/assets/banner-772x250.png?rev=3003065\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:14:\"my-wp/mywp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:19:\"w.org/plugins/my-wp\";s:4:\"slug\";s:5:\"my-wp\";s:6:\"plugin\";s:14:\"my-wp/mywp.php\";s:11:\"new_version\";s:6:\"1.23.1\";s:3:\"url\";s:36:\"https://wordpress.org/plugins/my-wp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/my-wp.1.23.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:58:\"https://ps.w.org/my-wp/assets/icon-256x256.png?rev=1726636\";s:2:\"1x\";s:58:\"https://ps.w.org/my-wp/assets/icon-128x128.png?rev=1726636\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:41:\"post-type-switcher/post-type-switcher.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/post-type-switcher\";s:4:\"slug\";s:18:\"post-type-switcher\";s:6:\"plugin\";s:41:\"post-type-switcher/post-type-switcher.php\";s:11:\"new_version\";s:5:\"3.3.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/post-type-switcher/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/post-type-switcher.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-type-switcher/assets/icon-256x256.jpg?rev=1823578\";s:2:\"1x\";s:71:\"https://ps.w.org/post-type-switcher/assets/icon-128x128.jpg?rev=1823578\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/post-type-switcher/assets/banner-1544x500.jpg?rev=1823571\";s:2:\"1x\";s:73:\"https://ps.w.org/post-type-switcher/assets/banner-772x250.jpg?rev=1823571\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:23:\"siteguard/siteguard.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/siteguard\";s:4:\"slug\";s:9:\"siteguard\";s:6:\"plugin\";s:23:\"siteguard/siteguard.php\";s:11:\"new_version\";s:5:\"1.7.7\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/siteguard/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/siteguard.1.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/siteguard/assets/icon-256x256.png?rev=1011863\";s:2:\"1x\";s:62:\"https://ps.w.org/siteguard/assets/icon-128x128.png?rev=1011863\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/siteguard/assets/banner-772x250.png?rev=1011863\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:27:\"wp-optimize/wp-optimize.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/wp-optimize\";s:4:\"slug\";s:11:\"wp-optimize\";s:6:\"plugin\";s:27:\"wp-optimize/wp-optimize.php\";s:11:\"new_version\";s:5:\"3.4.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-optimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-optimize.3.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-optimize/assets/icon-256x256.png?rev=1552899\";s:2:\"1x\";s:64:\"https://ps.w.org/wp-optimize/assets/icon-128x128.png?rev=1552899\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-optimize/assets/banner-1544x500.png?rev=2125385\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-optimize/assets/banner-772x250.png?rev=2125385\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:6:\"2.94.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.94.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.2\";}s:27:\"wp-crontrol/wp-crontrol.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/wp-crontrol\";s:4:\"slug\";s:11:\"wp-crontrol\";s:6:\"plugin\";s:27:\"wp-crontrol/wp-crontrol.php\";s:11:\"new_version\";s:6:\"1.17.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-crontrol/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-crontrol.1.17.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/wp-crontrol/assets/icon.svg?rev=2997335\";s:3:\"svg\";s:56:\"https://ps.w.org/wp-crontrol/assets/icon.svg?rev=2997335\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-crontrol/assets/banner-1544x500.jpg?rev=2997335\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-crontrol/assets/banner-772x250.jpg?rev=2997335\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"4.1.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.4.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.4\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"23.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.23.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.gif?rev=3112542\";s:2:\"1x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-128x128.gif?rev=3112542\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.4\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.3.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240718\";s:6:\"reason\";s:10:\"up_to_date\";}}s:7:\"checked\";a:22:{s:51:\"adjust-admin-categories/adjust-admin-categories.php\";s:5:\"2.2.6\";s:43:\"admin-color-schemes/admin-color-schemes.php\";s:5:\"3.0.0\";s:29:\"acf-extended/acf-extended.php\";s:7:\"0.9.0.6\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.3.4\";s:19:\"akismet/akismet.php\";s:5:\"5.3.3\";s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";s:5:\"3.5.2\";s:47:\"flexible-spacer-block/flexible-spacer-block.php\";s:5:\"2.4.0\";s:45:\"flexible-table-block/flexible-table-block.php\";s:5:\"3.3.0\";s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:7:\"3.1.5.1\";s:27:\"lazy-blocks/lazy-blocks.php\";s:5:\"3.7.0\";s:25:\"mw-wp-form/mw-wp-form.php\";s:5:\"5.1.0\";s:49:\"mywp-select-user-roles/mywp-select-user-roles.php\";s:5:\"1.6.0\";s:14:\"my-wp/mywp.php\";s:6:\"1.23.1\";s:41:\"post-type-switcher/post-type-switcher.php\";s:5:\"3.3.1\";s:31:\"query-monitor/query-monitor.php\";s:6:\"3.16.3\";s:23:\"siteguard/siteguard.php\";s:5:\"1.7.7\";s:27:\"wp-optimize/wp-optimize.php\";s:5:\"3.4.2\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:6:\"2.94.1\";s:27:\"wp-crontrol/wp-crontrol.php\";s:6:\"1.17.0\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"4.1.0\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.5\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"23.1\";}}','off');
INSERT INTO `wp_options` VALUES (898,'_site_transient_timeout_wp_theme_files_patterns-370e845457ef66a89470c8448c459382','1722251428','off');
INSERT INTO `wp_options` VALUES (899,'_site_transient_wp_theme_files_patterns-370e845457ef66a89470c8448c459382','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (901,'_transient_timeout_acf_pro_validating_license','1722250529','off');
INSERT INTO `wp_options` VALUES (902,'_transient_acf_pro_validating_license','1','off');
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
) ENGINE=InnoDB AUTO_INCREMENT=973 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (312,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (314,1,'_edit_lock','1721696413:1');
INSERT INTO `wp_postmeta` VALUES (315,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (316,2,'_edit_lock','1721695594:1');
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
INSERT INTO `wp_postmeta` VALUES (840,129,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (841,129,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (842,129,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (843,129,'item_default_id','edit.php?post_type=acf-field-group');
INSERT INTO `wp_postmeta` VALUES (844,129,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (845,129,'item_link_title','ACF');
INSERT INTO `wp_postmeta` VALUES (846,129,'item_link_url','');
INSERT INTO `wp_postmeta` VALUES (847,129,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (848,129,'item_icon_class','dashicons-before dashicons-welcome-widgets-menus');
INSERT INTO `wp_postmeta` VALUES (849,130,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (850,130,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (851,130,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (852,130,'item_default_id','edit.php?post_type=acf-field-group');
INSERT INTO `wp_postmeta` VALUES (853,130,'item_default_parent_id','edit.php?post_type=acf-field-group');
INSERT INTO `wp_postmeta` VALUES (854,130,'item_link_title','フィールドグループ');
INSERT INTO `wp_postmeta` VALUES (855,130,'item_link_url','edit.php?post_type=acf-field-group');
INSERT INTO `wp_postmeta` VALUES (856,130,'item_capability','manage_options');
INSERT INTO `wp_postmeta` VALUES (857,130,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (858,131,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (859,131,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (860,131,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (861,131,'item_default_id','post-new.php?post_type=acf-field-group');
INSERT INTO `wp_postmeta` VALUES (862,131,'item_default_parent_id','edit.php?post_type=acf-field-group');
INSERT INTO `wp_postmeta` VALUES (863,131,'item_link_title','新規追加');
INSERT INTO `wp_postmeta` VALUES (864,131,'item_link_url','post-new.php?post_type=acf-field-group');
INSERT INTO `wp_postmeta` VALUES (865,131,'item_capability','manage_options');
INSERT INTO `wp_postmeta` VALUES (866,131,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (867,132,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (868,132,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (869,132,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (870,132,'item_default_id','acf-tools');
INSERT INTO `wp_postmeta` VALUES (871,132,'item_default_parent_id','edit.php?post_type=acf-field-group');
INSERT INTO `wp_postmeta` VALUES (872,132,'item_link_title','ツール');
INSERT INTO `wp_postmeta` VALUES (873,132,'item_link_url','acf-tools');
INSERT INTO `wp_postmeta` VALUES (874,132,'item_capability','manage_options');
INSERT INTO `wp_postmeta` VALUES (875,132,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (885,136,'_edit_lock','1721894507:1');
INSERT INTO `wp_postmeta` VALUES (886,136,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (887,136,'_wp_old_slug','%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%b9');
INSERT INTO `wp_postmeta` VALUES (888,129,'item_li_class','');
INSERT INTO `wp_postmeta` VALUES (889,129,'item_li_id','');
INSERT INTO `wp_postmeta` VALUES (890,129,'item_link_class','');
INSERT INTO `wp_postmeta` VALUES (891,129,'item_link_id','');
INSERT INTO `wp_postmeta` VALUES (892,129,'item_link_attr','');
INSERT INTO `wp_postmeta` VALUES (893,129,'item_icon_id','');
INSERT INTO `wp_postmeta` VALUES (894,129,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (895,129,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (896,129,'item_icon_title','');
INSERT INTO `wp_postmeta` VALUES (897,139,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (898,139,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (899,139,'item_default_type','menu');
INSERT INTO `wp_postmeta` VALUES (900,139,'item_default_id','wpseo_dashboard');
INSERT INTO `wp_postmeta` VALUES (901,139,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (902,139,'item_link_title','Yoast SEO <span class=\"update-plugins count-2\"><span class=\"plugin-count\" aria-hidden=\"true\">2</span><span class=\"screen-reader-text\">2件の通知</span></span>');
INSERT INTO `wp_postmeta` VALUES (903,139,'item_link_url','');
INSERT INTO `wp_postmeta` VALUES (904,139,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (905,139,'item_icon_class','data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgc3R5bGU9ImZpbGw6IzgyODc4YyIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHJvbGU9ImltZyIgYXJpYS1oaWRkZW49InRydWUiIGZvY3VzYWJsZT0iZmFsc2UiPjxnPjxnPjxnPjxnPjxwYXRoIGQ9Ik0yMDMuNiwzOTVjNi44LTE3LjQsNi44LTM2LjYsMC01NGwtNzkuNC0yMDRoNzAuOWw0Ny43LDE0OS40bDc0LjgtMjA3LjZIMTE2LjRjLTQxLjgsMC03NiwzNC4yLTc2LDc2VjM1N2MwLDQxLjgsMzQuMiw3Niw3Niw3NkgxNzNDMTg5LDQyNC4xLDE5Ny42LDQxMC4zLDIwMy42LDM5NXoiLz48L2c+PGc+PHBhdGggZD0iTTQ3MS42LDE1NC44YzAtNDEuOC0zNC4yLTc2LTc2LTc2aC0zTDI4NS43LDM2NWMtOS42LDI2LjctMTkuNCw0OS4zLTMwLjMsNjhoMjE2LjJWMTU0Ljh6Ii8+PC9nPjwvZz48cGF0aCBzdHJva2Utd2lkdGg9IjIuOTc0IiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0zMzgsMS4zbC05My4zLDI1OS4xbC00Mi4xLTEzMS45aC04OS4xbDgzLjgsMjE1LjJjNiwxNS41LDYsMzIuNSwwLDQ4Yy03LjQsMTktMTksMzcuMy01Myw0MS45bC03LjIsMXY3Nmg4LjNjODEuNywwLDExOC45LTU3LjIsMTQ5LjYtMTQyLjlMNDMxLjYsMS4zSDMzOHogTTI3OS40LDM2MmMtMzIuOSw5Mi02Ny42LDEyOC43LTEyNS43LDEzMS44di00NWMzNy41LTcuNSw1MS4zLTMxLDU5LjEtNTEuMWM3LjUtMTkuMyw3LjUtNDAuNywwLTYwbC03NS0xOTIuN2g1Mi44bDUzLjMsMTY2LjhsMTA1LjktMjk0aDU4LjFMMjc5LjQsMzYyeiIvPjwvZz48L2c+PC9zdmc+');
INSERT INTO `wp_postmeta` VALUES (906,140,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (907,140,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (908,140,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (909,140,'item_default_id','wpseo_dashboard');
INSERT INTO `wp_postmeta` VALUES (910,140,'item_default_parent_id','wpseo_dashboard');
INSERT INTO `wp_postmeta` VALUES (911,140,'item_link_title','一般');
INSERT INTO `wp_postmeta` VALUES (912,140,'item_link_url','wpseo_dashboard');
INSERT INTO `wp_postmeta` VALUES (913,140,'item_capability','wpseo_manage_options');
INSERT INTO `wp_postmeta` VALUES (914,140,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (915,141,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (916,141,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (917,141,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (918,141,'item_default_id','wpseo_page_settings');
INSERT INTO `wp_postmeta` VALUES (919,141,'item_default_parent_id','wpseo_dashboard');
INSERT INTO `wp_postmeta` VALUES (920,141,'item_link_title','設定');
INSERT INTO `wp_postmeta` VALUES (921,141,'item_link_url','wpseo_page_settings');
INSERT INTO `wp_postmeta` VALUES (922,141,'item_capability','wpseo_manage_options');
INSERT INTO `wp_postmeta` VALUES (923,141,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (924,142,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (925,142,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (926,142,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (927,142,'item_default_id','wpseo_integrations');
INSERT INTO `wp_postmeta` VALUES (928,142,'item_default_parent_id','wpseo_dashboard');
INSERT INTO `wp_postmeta` VALUES (929,142,'item_link_title','連携');
INSERT INTO `wp_postmeta` VALUES (930,142,'item_link_url','wpseo_integrations');
INSERT INTO `wp_postmeta` VALUES (931,142,'item_capability','wpseo_manage_options');
INSERT INTO `wp_postmeta` VALUES (932,142,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (933,143,'item_type','default');
INSERT INTO `wp_postmeta` VALUES (934,143,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (935,143,'item_default_type','submenu');
INSERT INTO `wp_postmeta` VALUES (936,143,'item_default_id','wpseo_tools');
INSERT INTO `wp_postmeta` VALUES (937,143,'item_default_parent_id','wpseo_dashboard');
INSERT INTO `wp_postmeta` VALUES (938,143,'item_link_title','ツール');
INSERT INTO `wp_postmeta` VALUES (939,143,'item_link_url','wpseo_tools');
INSERT INTO `wp_postmeta` VALUES (940,143,'item_capability','wpseo_manage_options');
INSERT INTO `wp_postmeta` VALUES (941,143,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (942,139,'item_li_class','');
INSERT INTO `wp_postmeta` VALUES (943,139,'item_li_id','');
INSERT INTO `wp_postmeta` VALUES (944,139,'item_link_class','');
INSERT INTO `wp_postmeta` VALUES (945,139,'item_link_id','');
INSERT INTO `wp_postmeta` VALUES (946,139,'item_link_attr','');
INSERT INTO `wp_postmeta` VALUES (947,139,'item_icon_id','');
INSERT INTO `wp_postmeta` VALUES (948,139,'item_icon_img','');
INSERT INTO `wp_postmeta` VALUES (949,139,'item_icon_style','');
INSERT INTO `wp_postmeta` VALUES (950,139,'item_icon_title','');
INSERT INTO `wp_postmeta` VALUES (951,144,'item_type','separator');
INSERT INTO `wp_postmeta` VALUES (952,144,'item_custom_html','');
INSERT INTO `wp_postmeta` VALUES (953,144,'item_default_type','');
INSERT INTO `wp_postmeta` VALUES (954,144,'item_default_id','');
INSERT INTO `wp_postmeta` VALUES (955,144,'item_default_parent_id','');
INSERT INTO `wp_postmeta` VALUES (956,144,'item_link_title','');
INSERT INTO `wp_postmeta` VALUES (957,144,'item_link_url','');
INSERT INTO `wp_postmeta` VALUES (958,144,'item_capability','');
INSERT INTO `wp_postmeta` VALUES (959,144,'item_icon_class','');
INSERT INTO `wp_postmeta` VALUES (960,135,'_acf_changed','');
INSERT INTO `wp_postmeta` VALUES (961,135,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (963,136,'yoast-structured-data-blocks-images-cache','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (964,146,'_wp_attached_file','2024/07/237-536x354-1.jpg');
INSERT INTO `wp_postmeta` VALUES (965,146,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:536;s:6:\"height\";i:354;s:4:\"file\";s:25:\"2024/07/237-536x354-1.jpg\";s:8:\"filesize\";i:35581;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"237-536x354-1-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16374;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"237-536x354-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7160;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:14:\"Picsum ID: 237\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:14:\"Picsum ID: 237\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (966,136,'_yoast_wpseo_primary_news_category','');
INSERT INTO `wp_postmeta` VALUES (967,136,'_yoast_wpseo_primary_news_tags','');
INSERT INTO `wp_postmeta` VALUES (968,136,'_yoast_wpseo_estimated-reading-time-minutes','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_posts` VALUES (56,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','56-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=56',0,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','64-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=64',2,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','65-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',64,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=65',3,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','66-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=66',3,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','68-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=68',5,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','69-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=69',6,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','70-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',69,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=70',7,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','71-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',70,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=71',8,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','72-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',70,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=72',9,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-03-24 14:57:30','2023-03-24 05:57:30','','','','publish','closed','closed','','73-2','','','2023-03-24 14:57:30','2023-03-24 05:57:30','',70,'https://wordpress-starter-kit.local/?post_type=mywp_admin_toolbar&#038;p=73',10,'mywp_admin_toolbar','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','74-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=74',0,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','75-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',74,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=75',1,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','76-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',74,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=76',2,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','77-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=77',3,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','78-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=78',4,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','79-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',78,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=79',5,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','80-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',78,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=80',6,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','81-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',78,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=81',7,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','82-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',78,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=82',8,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','83-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=83',9,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','84-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',83,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=84',10,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','85-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',83,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=85',11,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','86-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',83,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=86',12,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','87-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',83,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=87',13,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','88-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=88',18,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','89-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',88,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=89',19,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','90-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',88,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=90',20,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','91-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=91',14,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','92-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',91,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=92',15,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','93-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',91,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=93',16,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','95-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=95',17,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','96-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=96',22,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','97-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',96,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=97',23,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','98-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',96,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=98',24,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','99-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',96,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=99',25,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','100-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=100',26,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','101-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',100,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=101',27,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','102-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',100,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=102',28,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','103-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',100,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=103',29,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','104-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=104',30,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','105-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',104,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=105',31,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','106-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',104,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=106',32,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','107-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',104,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=107',33,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','108-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=108',34,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','109-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=109',35,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','110-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=110',36,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','111-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=111',37,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','112-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=112',38,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','113-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=113',39,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','114-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',108,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=114',40,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','115-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=115',41,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','116-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=116',42,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','117-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=117',43,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','118-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=118',44,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','119-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=119',45,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','120-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=120',46,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','121-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=121',47,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','122-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=122',48,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','123-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=123',49,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','124-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',115,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=124',50,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','125-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=125',51,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2022-11-22 19:26:01','2022-11-22 10:26:01','','','','publish','closed','closed','','126-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=126',60,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2023-03-24 14:44:36','2023-03-24 05:44:36','','','','publish','closed','closed','','129-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=129',52,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2023-03-24 14:44:36','2023-03-24 05:44:36','','','','publish','closed','closed','','130-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',129,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=130',53,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2023-03-24 14:44:36','2023-03-24 05:44:36','','','','publish','closed','closed','','131-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',129,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=131',54,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2023-03-24 14:44:36','2023-03-24 05:44:36','','','','publish','closed','closed','','132-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',129,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=132',54,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2023-03-24 15:33:10','2023-03-24 06:33:10','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-default','','','2023-03-24 15:33:10','2023-03-24 06:33:10','',0,'https://wordpress-starter-kit.local/2023/03/24/wp-global-styles-default/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2024-07-23 09:50:13','2024-07-23 00:50:13','<!-- wp:paragraph -->\n<p>WordPress へようこそ。こちらは最初の投稿です。編集または削除し、コンテンツ作成を始めてください。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-autosave-v1','','','2024-07-23 09:50:13','2024-07-23 00:50:13','',1,'https://wordpress-starter-kit.local/?p=135',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2023-03-24 10:00:29','2023-03-24 01:00:29','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','publish','closed','closed','','news-sample','','','2024-07-25 17:03:34','2024-07-25 08:03:34','',0,'https://wordpress-starter-kit.local/?post_type=news&#038;p=136',1,'news','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2023-03-24 15:54:29','2023-03-24 06:54:29','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->','ニュース','','inherit','closed','closed','','136-revision-v1','','','2023-03-24 15:54:29','2023-03-24 06:54:29','',136,'https://wordpress-starter-kit.local/?p=137',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2023-06-15 15:37:03','2023-06-15 06:37:03','','','','publish','closed','closed','','139-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=139',55,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2023-06-15 15:37:03','2023-06-15 06:37:03','','','','publish','closed','closed','','140-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',139,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=140',56,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2023-06-15 15:37:03','2023-06-15 06:37:03','','','','publish','closed','closed','','141-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',139,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=141',57,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2023-06-15 15:37:03','2023-06-15 06:37:03','','','','publish','closed','closed','','142-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',139,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=142',58,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2023-06-15 15:37:03','2023-06-15 06:37:03','','','','publish','closed','closed','','143-2','','','2023-06-15 15:47:17','2023-06-15 06:47:17','',139,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=143',59,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2023-06-15 15:47:15','2023-06-15 06:47:15','','','','publish','closed','closed','','144-2','','','2023-06-15 15:47:16','2023-06-15 06:47:16','',0,'https://wordpress-starter-kit.local/?post_type=mywp_admin_sidebar&#038;p=144',21,'mywp_admin_sidebar','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2024-07-24 19:09:29','2024-07-24 10:09:29','','Picsum ID: 237','Picsum ID: 237','inherit','','closed','','picsum-id-237','','','2024-07-24 19:09:29','2024-07-24 10:09:29','',0,'https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (147,1,'2024-07-24 19:42:17','2024-07-24 10:42:17','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\"></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->','ニュース','','inherit','closed','closed','','136-revision-v1','','','2024-07-24 19:42:17','2024-07-24 10:42:17','',136,'https://wordpress-starter-kit.local/?p=147',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2024-07-25 11:33:26','2024-07-25 02:33:26','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\"></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/><figcaption class=\"wp-element-caption\">Picsum ID: 237</figcaption></figure>\n<!-- /wp:image -->','ニュース','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 11:33:26','2024-07-25 02:33:26','',136,'https://wordpress-starter-kit.local/?p=149',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2024-07-25 11:33:55','2024-07-25 02:33:55','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\"></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 11:33:55','2024-07-25 02:33:55','',136,'https://wordpress-starter-kit.local/?p=150',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2024-07-25 11:40:39','2024-07-25 02:40:39','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 11:40:39','2024-07-25 02:40:39','',136,'https://wordpress-starter-kit.local/?p=152',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2024-07-25 11:41:09','2024-07-25 02:41:09','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"shadow\":\"var:preset|shadow|crisp\"}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" style=\"box-shadow:var(--wp--preset--shadow--crisp)\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 11:41:09','2024-07-25 02:41:09','',136,'https://wordpress-starter-kit.local/?p=153',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2024-07-25 11:42:54','2024-07-25 02:42:54','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"shadow\":\"var:preset|shadow|crisp\"}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" style=\"box-shadow:var(--wp--preset--shadow--crisp)\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 11:42:54','2024-07-25 02:42:54','',136,'https://wordpress-starter-kit.local/?p=154',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2024-07-25 11:49:55','2024-07-25 02:49:55','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"shadow\":\"var:preset|shadow|crisp\"}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" style=\"box-shadow:var(--wp--preset--shadow--crisp)\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 11:49:55','2024-07-25 02:49:55','',136,'https://wordpress-starter-kit.local/?p=155',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2024-07-25 14:00:52','2024-07-25 05:00:52','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"shadow\":\"var:preset|shadow|crisp\"}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" style=\"box-shadow:var(--wp--preset--shadow--crisp)\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"style\":{\"shadow\":\"var:preset|shadow|natural\"}} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\" style=\"box-shadow:var(--wp--preset--shadow--natural)\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 14:00:52','2024-07-25 05:00:52','',136,'https://wordpress-starter-kit.local/?p=157',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2024-07-25 14:09:40','2024-07-25 05:09:40','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"shadow\":\"var:preset|shadow|crisp\"}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" style=\"box-shadow:var(--wp--preset--shadow--crisp)\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"style\":{\"shadow\":\"var:preset|shadow|natural\",\"color\":{\"duotone\":\"var:preset|duotone|purple-yellow\"}}} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\" style=\"box-shadow:var(--wp--preset--shadow--natural)\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 14:09:40','2024-07-25 05:09:40','',136,'https://wordpress-starter-kit.local/?p=158',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2024-07-25 14:27:50','2024-07-25 05:27:50','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"shadow\":\"var:preset|shadow|crisp\"}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" style=\"box-shadow:var(--wp--preset--shadow--crisp)\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"style\":{\"shadow\":\"var:preset|shadow|natural\",\"color\":{}}} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\" style=\"box-shadow:var(--wp--preset--shadow--natural)\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 14:27:50','2024-07-25 05:27:50','',136,'https://wordpress-starter-kit.local/?p=160',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2024-07-25 15:38:08','2024-07-25 06:38:08','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"shadow\":\"var:preset|shadow|crisp\"}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" style=\"box-shadow:var(--wp--preset--shadow--crisp)\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 15:38:08','2024-07-25 06:38:08','',136,'https://wordpress-starter-kit.local/?p=162',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2024-07-25 15:39:42','2024-07-25 06:39:42','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 15:39:42','2024-07-25 06:39:42','',136,'https://wordpress-starter-kit.local/?p=163',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2024-07-25 15:56:56','2024-07-25 06:56:56','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"lightbox\":{\"enabled\":true},\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 15:56:56','2024-07-25 06:56:56','',136,'https://wordpress-starter-kit.local/?p=165',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2024-07-25 15:59:13','2024-07-25 06:59:13','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 15:59:13','2024-07-25 06:59:13','',136,'https://wordpress-starter-kit.local/?p=166',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2024-07-25 15:59:48','2024-07-25 06:59:48','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"lightbox\":{\"enabled\":true},\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 15:59:48','2024-07-25 06:59:48','',136,'https://wordpress-starter-kit.local/?p=167',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2024-07-25 16:01:08','2024-07-25 07:01:08','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 16:01:08','2024-07-25 07:01:08','',136,'https://wordpress-starter-kit.local/?p=168',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2024-07-25 16:03:02','2024-07-25 07:03:02','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"lightbox\":{\"enabled\":true},\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 16:03:02','2024-07-25 07:03:02','',136,'https://wordpress-starter-kit.local/?p=169',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2024-07-25 16:03:31','2024-07-25 07:03:31','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 16:03:31','2024-07-25 07:03:31','',136,'https://wordpress-starter-kit.local/?p=170',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2024-07-25 16:25:37','2024-07-25 07:25:37','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"shadow\":\"var:preset|shadow|test-shadow\"}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" style=\"box-shadow:var(--wp--preset--shadow--test-shadow)\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 16:25:37','2024-07-25 07:25:37','',136,'https://wordpress-starter-kit.local/?p=171',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2024-07-25 17:03:34','2024-07-25 08:03:34','<!-- wp:paragraph -->\n<p>姉さんニュースです！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">ボタン</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":146,\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->','ニュース記事サンプル','','inherit','closed','closed','','136-revision-v1','','','2024-07-25 17:03:34','2024-07-25 08:03:34','',136,'https://wordpress-starter-kit.local/?p=172',0,'revision','',0);
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
INSERT INTO `wp_term_relationships` VALUES (64,2,0);
INSERT INTO `wp_term_relationships` VALUES (65,2,0);
INSERT INTO `wp_term_relationships` VALUES (66,2,0);
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
INSERT INTO `wp_term_relationships` VALUES (129,2,0);
INSERT INTO `wp_term_relationships` VALUES (130,2,0);
INSERT INTO `wp_term_relationships` VALUES (131,2,0);
INSERT INTO `wp_term_relationships` VALUES (132,2,0);
INSERT INTO `wp_term_relationships` VALUES (134,3,0);
INSERT INTO `wp_term_relationships` VALUES (139,2,0);
INSERT INTO `wp_term_relationships` VALUES (140,2,0);
INSERT INTO `wp_term_relationships` VALUES (141,2,0);
INSERT INTO `wp_term_relationships` VALUES (142,2,0);
INSERT INTO `wp_term_relationships` VALUES (143,2,0);
INSERT INTO `wp_term_relationships` VALUES (144,2,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'mywp_term','',0,72);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'wp_theme','',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'未分類','uncategorized',0,1);
INSERT INTO `wp_terms` VALUES (2,'default','default',0,0);
INSERT INTO `wp_terms` VALUES (3,'Default','default',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_usermeta` VALUES (24,1,'manageedit-postcolumnshidden','a:6:{i:0;s:8:\"comments\";i:1;s:11:\"wpseo-score\";i:2;s:23:\"wpseo-score-readability\";i:3;s:13:\"wpseo-focuskw\";i:4;s:11:\"wpseo-links\";i:5;s:12:\"wpseo-linked\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'edit_post_per_page','20');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings','posts_list_mode=list&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (27,1,'wp_user-settings-time','1721817248');
INSERT INTO `wp_usermeta` VALUES (28,1,'manageedit-pagecolumnshidden','a:6:{i:0;s:8:\"comments\";i:1;s:11:\"wpseo-score\";i:2;s:23:\"wpseo-score-readability\";i:3;s:13:\"wpseo-focuskw\";i:4;s:11:\"wpseo-links\";i:5;s:12:\"wpseo-linked\";}');
INSERT INTO `wp_usermeta` VALUES (29,1,'edit_page_per_page','20');
INSERT INTO `wp_usermeta` VALUES (34,1,'session_tokens','a:1:{s:64:\"57e22940d4645b691e44862399019da9f35dde10eeabc55d38f4b94e731b3bb7\";a:4:{s:10:\"expiration\";i:1722041551;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:84:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0\";s:5:\"login\";i:1721868751;}}');
INSERT INTO `wp_usermeta` VALUES (35,1,'wp_persisted_preferences','a:4:{s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-07-25T05:29:29.803Z\";s:4:\"core\";a:3:{s:10:\"openPanels\";a:9:{i:0;s:11:\"post-status\";i:1;s:24:\"taxonomy-panel-news_tags\";i:2;s:28:\"taxonomy-panel-news_category\";i:3;s:24:\"yoast-seo/document-panel\";i:4;s:16:\"discussion-panel\";i:5;s:12:\"post-excerpt\";i:6;s:14:\"featured-image\";i:7;s:23:\"taxonomy-panel-post_tag\";i:8;s:23:\"taxonomy-panel-category\";}s:26:\"isComplementaryAreaVisible\";b:1;s:34:\"isInspectorControlsTabsHintVisible\";b:0;}s:17:\"core/block-editor\";a:1:{s:25:\"linkControlSettingsDrawer\";b:1;}}');
INSERT INTO `wp_usermeta` VALUES (37,1,'_yoast_alerts_dismissed','a:1:{s:26:\"webinar-promo-notification\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (38,1,'manageedit-newscolumnshidden','a:5:{i:0;s:11:\"wpseo-score\";i:1;s:23:\"wpseo-score-readability\";i:2;s:13:\"wpseo-focuskw\";i:3;s:11:\"wpseo-links\";i:4;s:12:\"wpseo-linked\";}');
INSERT INTO `wp_usermeta` VALUES (39,1,'edit_news_per_page','20');
INSERT INTO `wp_usermeta` VALUES (40,1,'wp_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:585:\"<p><strong>深刻な SEO の問題：ロボットのアクセスをブロックしています。</strong> 検索エンジンでこのサイトを結果に表示する場合は、<a href=\"https://wordpress-starter-kit.local/admin/wp-admin/options-reading.php\">読み取り設定</a> に移動し、「検索エンジンの表示」のチェックボックスをオフにする必要があります。 <button type=\"button\" id=\"robotsmessage-dismiss-button\" class=\"button-link hide-if-no-js\" data-nonce=\"c3b27fb44d\">このサイトを検索結果に表示したくない。</button></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-search-engines-discouraged\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
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

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'https://wordpress-starter-kit.local/category/uncategorized/','59:ae738835e842e89aa2752cfbf479b3e4',1,'term','category',NULL,NULL,NULL,NULL,'未分類',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-06-15 06:37:46','2023-06-14 21:37:49',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-27 01:09:48','2022-07-27 00:40:31',NULL);
INSERT INTO `wp_yoast_indexable` VALUES (2,'https://wordpress-starter-kit.local/news/article/news-sample/','61:67213a170f3e794bba1db947d062b57a',136,'post','news',1,0,NULL,NULL,'ニュース記事サンプル','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,'https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg',NULL,NULL,'first-content-image',NULL,NULL,'https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg',NULL,'first-content-image',NULL,0,NULL,NULL,'2023-06-15 06:37:46','2024-07-24 23:03:34',1,NULL,NULL,NULL,NULL,0,1,2,'2024-07-25 08:03:34','2023-03-24 01:00:29',0);
INSERT INTO `wp_yoast_indexable` VALUES (3,'https://wordpress-starter-kit.local/author/admin/','49:d9c30be5c2c32343281f280b1cbaa65e',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://secure.gravatar.com/avatar/3d0218546fc6da625279e09534918040?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://secure.gravatar.com/avatar/3d0218546fc6da625279e09534918040?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2023-06-15 06:37:46','2024-07-24 23:03:34',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-07-25 14:29:30','2022-07-27 00:40:31',NULL);
INSERT INTO `wp_yoast_indexable` VALUES (4,'https://wordpress-starter-kit.local/?page_id=3','46:f15c61d93eab18f82b78354a983d9fed',3,'post','page',1,0,NULL,NULL,'プライバシーポリシー','draft',0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-06-15 06:37:46','2023-06-14 21:37:46',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-27 00:40:31','2022-07-27 00:40:31',0);
INSERT INTO `wp_yoast_indexable` VALUES (5,'https://wordpress-starter-kit.local/','36:b8b8285a77204831d2ff7a516694db64',2,'post','page',1,0,NULL,NULL,'ホーム','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2023-06-15 06:37:46','2023-06-14 21:37:48',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-27 01:56:55','2022-07-27 00:40:31',0);
INSERT INTO `wp_yoast_indexable` VALUES (6,'https://wordpress-starter-kit.local/2022/07/27/hello-world/','59:ff98c96823ef60c49dca1f0956e8f6b5',1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-06-15 06:37:46','2023-06-14 21:37:48',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-27 01:09:48','2022-07-27 00:40:31',0);
INSERT INTO `wp_yoast_indexable` VALUES (7,'https://wordpress-starter-kit.local/news/article/','49:fc72f0c34e317a6c0dd4e7bcbf1c4a9c',NULL,'post-type-archive','news',NULL,NULL,'%%pt_plural%% アーカイブ %%page%% %%sep%% %%sitename%%','','ニュース',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-06-15 06:37:47','2024-07-24 23:03:34',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-07-25 08:03:34','2023-03-24 01:00:29',NULL);
INSERT INTO `wp_yoast_indexable` VALUES (8,NULL,NULL,NULL,'system-page','404',NULL,NULL,'ページが見つかりませんでした %%sep%% %%sitename%%',NULL,'エラー 404: ページが見つかりません',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-06-15 06:37:47','2023-06-14 21:37:47',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (9,NULL,NULL,NULL,'system-page','search-result',NULL,NULL,'検索結果: %%searchphrase%% %%page%% %%sep%% %%sitename%%',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-06-15 06:37:47','2023-06-14 21:37:47',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (10,NULL,NULL,NULL,'date-archive',NULL,NULL,NULL,'%%date%% %%page%% %%sep%% %%sitename%%','',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-06-15 06:37:47','2023-06-14 21:37:47',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (11,'https://wordpress-starter-kit.local/','36:b8b8285a77204831d2ff7a516694db64',NULL,'home-page',NULL,NULL,NULL,'%%sitename%% %%page%% %%sep%% %%sitedesc%%','','ホーム',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'%%sitename%%','','','0',NULL,NULL,NULL,NULL,NULL,'2023-06-15 06:38:50','2024-07-24 23:03:34',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-07-25 08:03:34','2022-07-27 00:40:31',NULL);
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (1,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (2,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (3,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (4,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (5,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (6,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (7,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (8,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (10,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (11,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
INSERT INTO `wp_yoast_migrations` VALUES (22,'20210817092415');
INSERT INTO `wp_yoast_migrations` VALUES (23,'20211020091404');
INSERT INTO `wp_yoast_migrations` VALUES (24,'20230417083836');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (1,'https://wordpress-starter-kit.local/admin/wp-admin/',2,NULL,'internal',5,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (2,'https://wordpress-starter-kit.local/admin/wp-content/uploads/2024/07/237-536x354-1.jpg',136,146,'image-in',2,NULL,354,536,35581,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 19:42:53

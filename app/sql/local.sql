-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-05-21 16:22:33','2021-05-21 16:22:33','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://itosite.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://itosite.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Wordpress','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:35:\"crop-thumbnails/crop-thumbnails.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:87:\"C:\\Users\\COBNETCKNN\\Local Sites\\itosite\\app\\public/wp-content/themes/ITOtheme/style.css\";i:2;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','ITOtheme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','ITOtheme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
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
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1637166152','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1622670450;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1622694153;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622737353;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622737410;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622737411;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622910153;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','nWonNB|Oo$BRt{?/*k?yuDJ%`JiD~p#@$D!9y 1;-VW`^ L|lBAT1kKI3AESTn]U','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','B0UI$vE)g{+ib2L6i6xlIU?vV/^c_8A-k_VTxU>.X9i@2@uHgyH?Se 7kg)?k>Vs','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621781110;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:11:\"custom_logo\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1622662867;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622662868;s:7:\"checked\";a:2:{s:8:\"ITOtheme\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (152,'current_theme','ITOsite','yes');
INSERT INTO `wp_options` VALUES (153,'theme_mods_ITOtheme','a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:17:\"first-footer-menu\";i:4;s:18:\"second-footer-menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621780913;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:24;}','yes');
INSERT INTO `wp_options` VALUES (154,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (167,'_transient_health-check-site-status-result','{\"good\":\"12\",\"recommended\":\"6\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (184,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (190,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (192,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (250,'recently_activated','a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1622385763;}','yes');
INSERT INTO `wp_options` VALUES (251,'acf_version','5.9.6','yes');
INSERT INTO `wp_options` VALUES (314,'_site_transient_timeout_browser_01f7aec3f03fa333d53a844e50ec45aa','1622906364','no');
INSERT INTO `wp_options` VALUES (315,'_site_transient_browser_01f7aec3f03fa333d53a844e50ec45aa','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"90.0.4430.212\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (316,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1622906364','no');
INSERT INTO `wp_options` VALUES (317,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (345,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1622662867;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"crop-thumbnails/crop-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/crop-thumbnails\";s:4:\"slug\";s:15:\"crop-thumbnails\";s:6:\"plugin\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/crop-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/crop-thumbnails.1.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";s:3:\"svg\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/crop-thumbnails/assets/banner-1544x500.jpg?rev=626571\";s:2:\"1x\";s:69:\"https://ps.w.org/crop-thumbnails/assets/banner-772x250.jpg?rev=626571\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (375,'_site_transient_timeout_theme_roots','1622664668','no');
INSERT INTO `wp_options` VALUES (376,'_site_transient_theme_roots','a:2:{s:8:\"ITOtheme\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (8,7,'_customize_changeset_uuid','50ad8297-6840-4d60-87b7-411ff8234ccf');
INSERT INTO `wp_postmeta` VALUES (11,10,'_wp_attached_file','2021/05/Group-2.png');
INSERT INTO `wp_postmeta` VALUES (12,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:74;s:6:\"height\";i:69;s:4:\"file\";s:19:\"2021/05/Group-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (13,11,'_wp_attached_file','2021/05/cropped-Group-2.png');
INSERT INTO `wp_postmeta` VALUES (14,11,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (15,11,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:74;s:6:\"height\";i:69;s:4:\"file\";s:27:\"2021/05/cropped-Group-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (48,20,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (49,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (50,20,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (51,20,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (52,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (53,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (54,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (55,20,'_menu_item_url','https://www.facebook.com/wordpress');
INSERT INTO `wp_postmeta` VALUES (56,21,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (57,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (58,21,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (59,21,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (60,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (61,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (62,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (63,21,'_menu_item_url','https://twitter.com/wordpress');
INSERT INTO `wp_postmeta` VALUES (64,22,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (65,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (66,22,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (67,22,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (68,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (69,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (70,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (71,22,'_menu_item_url','https://www.instagram.com/explore/tags/wordcamp/');
INSERT INTO `wp_postmeta` VALUES (72,23,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (73,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (74,23,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (75,23,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (76,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (77,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (78,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (79,23,'_menu_item_url','mailto:wordpress@example.com');
INSERT INTO `wp_postmeta` VALUES (80,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (81,9,'_wp_trash_meta_time','1621780958');
INSERT INTO `wp_postmeta` VALUES (82,24,'_wp_attached_file','2021/05/cropped-cropped-Group-2.png');
INSERT INTO `wp_postmeta` VALUES (83,24,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (84,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:74;s:6:\"height\";i:69;s:4:\"file\";s:35:\"2021/05/cropped-cropped-Group-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (85,25,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (86,25,'_wp_trash_meta_time','1621781129');
INSERT INTO `wp_postmeta` VALUES (87,26,'_edit_lock','1621782267:1');
INSERT INTO `wp_postmeta` VALUES (88,28,'_edit_lock','1621951816:1');
INSERT INTO `wp_postmeta` VALUES (89,7,'_edit_lock','1621955394:1');
INSERT INTO `wp_postmeta` VALUES (90,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (91,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,31,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (93,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (94,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (99,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (100,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (101,32,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (102,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (103,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (104,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (105,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (106,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (109,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (110,33,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (111,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (112,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (113,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (114,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (115,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (117,34,'_edit_lock','1621875642:1');
INSERT INTO `wp_postmeta` VALUES (118,36,'_edit_lock','1621875650:1');
INSERT INTO `wp_postmeta` VALUES (119,38,'_edit_lock','1621875673:1');
INSERT INTO `wp_postmeta` VALUES (120,40,'_edit_lock','1621875681:1');
INSERT INTO `wp_postmeta` VALUES (121,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (122,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (123,42,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (124,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (125,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (126,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (127,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (128,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (130,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (131,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (132,43,'_menu_item_object_id','36');
INSERT INTO `wp_postmeta` VALUES (133,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (134,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (135,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (136,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (137,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (139,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (140,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (141,44,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (142,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (143,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (144,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (145,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (146,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (148,45,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (149,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (150,45,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (151,45,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (152,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (153,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (154,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (155,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (157,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (158,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (159,46,'_menu_item_object_id','38');
INSERT INTO `wp_postmeta` VALUES (160,46,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (161,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (162,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (163,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (164,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (166,47,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (167,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (168,47,'_menu_item_object_id','40');
INSERT INTO `wp_postmeta` VALUES (169,47,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (170,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (171,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (172,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (173,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (176,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (177,48,'_edit_lock','1622039395:1');
INSERT INTO `wp_postmeta` VALUES (179,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (180,7,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:19:\"http://facebook.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (181,7,'_facebook_link','field_60ad04ffbaa64');
INSERT INTO `wp_postmeta` VALUES (182,7,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"http://instagram.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (183,7,'_instagram_link','field_60ad051bbaa65');
INSERT INTO `wp_postmeta` VALUES (184,7,'twitter_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"http://twitter.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (185,7,'_twitter_link','field_60ad0527baa66');
INSERT INTO `wp_postmeta` VALUES (186,59,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:19:\"http://facebook.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (187,59,'_facebook_link','field_60ad04ffbaa64');
INSERT INTO `wp_postmeta` VALUES (188,59,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"http://instagram.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (189,59,'_instagram_link','field_60ad051bbaa65');
INSERT INTO `wp_postmeta` VALUES (190,59,'twitter_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"http://twitter.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (191,59,'_twitter_link','field_60ad0527baa66');
INSERT INTO `wp_postmeta` VALUES (216,62,'_edit_lock','1622301563:1');
INSERT INTO `wp_postmeta` VALUES (217,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,62,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:19:\"http://facebook.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (219,62,'_facebook_link','field_60ad04ffbaa64');
INSERT INTO `wp_postmeta` VALUES (220,62,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"http://instagram.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (221,62,'_instagram_link','field_60ad051bbaa65');
INSERT INTO `wp_postmeta` VALUES (222,62,'twitter_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"http://twitter.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (223,62,'_twitter_link','field_60ad0527baa66');
INSERT INTO `wp_postmeta` VALUES (224,65,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:19:\"http://facebook.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (225,65,'_facebook_link','field_60ad04ffbaa64');
INSERT INTO `wp_postmeta` VALUES (226,65,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"http://instagram.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (227,65,'_instagram_link','field_60ad051bbaa65');
INSERT INTO `wp_postmeta` VALUES (228,65,'twitter_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"http://twitter.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (229,65,'_twitter_link','field_60ad0527baa66');
INSERT INTO `wp_postmeta` VALUES (230,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (231,68,'_edit_lock','1622392033:1');
INSERT INTO `wp_postmeta` VALUES (236,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,79,'_edit_lock','1622391426:1');
INSERT INTO `wp_postmeta` VALUES (238,80,'_wp_attached_file','2021/05/miguel-andrade-nAOZCYcLND8-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (239,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:960;s:4:\"file\";s:47:\"2021/05/miguel-andrade-nAOZCYcLND8-unsplash.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"miguel-andrade-nAOZCYcLND8-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"miguel-andrade-nAOZCYcLND8-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:47:\"miguel-andrade-nAOZCYcLND8-unsplash-215x210.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (240,81,'_wp_attached_file','2021/05/quaritsch-photography-lZ8onQ1wuY8-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (241,81,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:54:\"2021/05/quaritsch-photography-lZ8onQ1wuY8-unsplash.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"quaritsch-photography-lZ8onQ1wuY8-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"quaritsch-photography-lZ8onQ1wuY8-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:54:\"quaritsch-photography-lZ8onQ1wuY8-unsplash-215x210.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (242,82,'_wp_attached_file','2021/05/Screenshot_3.png');
INSERT INTO `wp_postmeta` VALUES (243,82,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:275;s:6:\"height\";i:285;s:4:\"file\";s:24:\"2021/05/Screenshot_3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-215x210.png\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (244,83,'_wp_attached_file','2021/05/Screenshot_4.png');
INSERT INTO `wp_postmeta` VALUES (245,83,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:335;s:6:\"height\";i:415;s:4:\"file\";s:24:\"2021/05/Screenshot_4.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_4-242x300.png\";s:5:\"width\";i:242;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:24:\"Screenshot_4-215x210.png\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (246,79,'nutrition_calorias','243');
INSERT INTO `wp_postmeta` VALUES (247,79,'_nutrition_calorias','field_60b0f9ac0cf09');
INSERT INTO `wp_postmeta` VALUES (248,79,'nutrition_grasas','2.8');
INSERT INTO `wp_postmeta` VALUES (249,79,'_nutrition_grasas','field_60b0f9ce0cf0a');
INSERT INTO `wp_postmeta` VALUES (250,79,'nutrition_carbohid','3.1');
INSERT INTO `wp_postmeta` VALUES (251,79,'_nutrition_carbohid','field_60b0f9f50cf0b');
INSERT INTO `wp_postmeta` VALUES (252,79,'nutrition_proteinas','2.1');
INSERT INTO `wp_postmeta` VALUES (253,79,'_nutrition_proteinas','field_60b0fa170cf0c');
INSERT INTO `wp_postmeta` VALUES (254,79,'recipe_ingredients','a:4:{i:0;s:2:\"80\";i:1;s:2:\"81\";i:2;s:2:\"82\";i:3;s:2:\"83\";}');
INSERT INTO `wp_postmeta` VALUES (255,79,'_recipe_ingredients','field_60b0fad8214eb');
INSERT INTO `wp_postmeta` VALUES (256,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (257,84,'_edit_lock','1622391087:1');
INSERT INTO `wp_postmeta` VALUES (258,85,'_wp_attached_file','2021/05/Screenshot_5.png');
INSERT INTO `wp_postmeta` VALUES (259,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:541;s:6:\"height\";i:434;s:4:\"file\";s:24:\"2021/05/Screenshot_5.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_5-300x241.png\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:24:\"Screenshot_5-215x210.png\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (260,86,'_wp_attached_file','2021/05/vino-li-pCjw_ygKCv0-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (261,86,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:47:\"2021/05/vino-li-pCjw_ygKCv0-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"vino-li-pCjw_ygKCv0-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"vino-li-pCjw_ygKCv0-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"vino-li-pCjw_ygKCv0-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"vino-li-pCjw_ygKCv0-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"vino-li-pCjw_ygKCv0-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:42:\"vino-li-pCjw_ygKCv0-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:40:\"vino-li-pCjw_ygKCv0-unsplash-215x210.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:32:\"vino-li-pCjw_ygKCv0-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (262,84,'nutrition_calorias','543');
INSERT INTO `wp_postmeta` VALUES (263,84,'_nutrition_calorias','field_60b0f9ac0cf09');
INSERT INTO `wp_postmeta` VALUES (264,84,'nutrition_grasas','2.8');
INSERT INTO `wp_postmeta` VALUES (265,84,'_nutrition_grasas','field_60b0f9ce0cf0a');
INSERT INTO `wp_postmeta` VALUES (266,84,'nutrition_carbohid','3.2');
INSERT INTO `wp_postmeta` VALUES (267,84,'_nutrition_carbohid','field_60b0f9f50cf0b');
INSERT INTO `wp_postmeta` VALUES (268,84,'nutrition_proteinas','10.2');
INSERT INTO `wp_postmeta` VALUES (269,84,'_nutrition_proteinas','field_60b0fa170cf0c');
INSERT INTO `wp_postmeta` VALUES (270,84,'recipe_ingredients','a:4:{i:0;s:2:\"80\";i:1;s:2:\"81\";i:2;s:2:\"85\";i:3;s:2:\"86\";}');
INSERT INTO `wp_postmeta` VALUES (271,84,'_recipe_ingredients','field_60b0fad8214eb');
INSERT INTO `wp_postmeta` VALUES (272,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,87,'_edit_lock','1622303036:1');
INSERT INTO `wp_postmeta` VALUES (274,91,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,91,'_edit_lock','1622301454:1');
INSERT INTO `wp_postmeta` VALUES (276,62,'download_link_hero','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:16:\"http://google.ba\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (277,62,'_download_link_hero','field_60b25b890e9fc');
INSERT INTO `wp_postmeta` VALUES (278,93,'facebook_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:19:\"http://facebook.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (279,93,'_facebook_link','field_60ad04ffbaa64');
INSERT INTO `wp_postmeta` VALUES (280,93,'instagram_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"http://instagram.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (281,93,'_instagram_link','field_60ad051bbaa65');
INSERT INTO `wp_postmeta` VALUES (282,93,'twitter_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"http://twitter.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (283,93,'_twitter_link','field_60ad0527baa66');
INSERT INTO `wp_postmeta` VALUES (284,93,'download_link_hero','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:16:\"http://google.ba\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (285,93,'_download_link_hero','field_60b25b890e9fc');
INSERT INTO `wp_postmeta` VALUES (292,79,'featured_recipe','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (293,79,'_featured_recipe','field_60b1026abac6f');
INSERT INTO `wp_postmeta` VALUES (294,84,'featured_recipe','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (295,84,'_featured_recipe','field_60b1026abac6f');
INSERT INTO `wp_postmeta` VALUES (311,95,'_wp_attached_file','2021/05/pngwing.com-2.png');
INSERT INTO `wp_postmeta` VALUES (312,95,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:383;s:6:\"height\";i:383;s:4:\"file\";s:25:\"2021/05/pngwing.com-2.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"pngwing.com-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"pngwing.com-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:25:\"pngwing.com-2-215x210.png\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (313,79,'_thumbnail_id','98');
INSERT INTO `wp_postmeta` VALUES (314,96,'_wp_attached_file','2021/05/pngwing.com-3.png');
INSERT INTO `wp_postmeta` VALUES (315,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:298;s:6:\"height\";i:296;s:4:\"file\";s:25:\"2021/05/pngwing.com-3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"pngwing.com-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:25:\"pngwing.com-3-215x210.png\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (316,84,'_thumbnail_id','98');
INSERT INTO `wp_postmeta` VALUES (317,98,'_wp_attached_file','2021/05/pngwing.com-2-trimmy.png');
INSERT INTO `wp_postmeta` VALUES (318,98,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:255;s:6:\"height\";i:260;s:4:\"file\";s:32:\"2021/05/pngwing.com-2-trimmy.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pngwing.com-2-trimmy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:32:\"pngwing.com-2-trimmy-215x210.png\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (319,99,'_wp_attached_file','2021/05/pngwing.com-3-trimmy.png');
INSERT INTO `wp_postmeta` VALUES (320,99,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:278;s:6:\"height\";i:276;s:4:\"file\";s:32:\"2021/05/pngwing.com-3-trimmy.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pngwing.com-3-trimmy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"recipe-example\";a:4:{s:4:\"file\";s:32:\"pngwing.com-3-trimmy-215x210.png\";s:5:\"width\";i:215;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-05-21 16:22:33','2021-05-21 16:22:33','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-05-21 16:22:33','2021-05-21 16:22:33','',0,'http://itosite.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (7,1,'2021-05-23 14:42:37','2021-05-23 14:42:37','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contacto','','publish','closed','closed','','contact','','','2021-05-25 15:01:03','2021-05-25 15:01:03','',0,'http://itosite.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-05-23 14:42:37','2021-05-23 14:42:37','{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:41:56\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost:3000/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:41:56\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Secondary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:41:56\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:41:56\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:41:56\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:41:56\"\n    },\n    \"twentytwentyone::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:42:37\"\n    }\n}','','','trash','closed','closed','','50ad8297-6840-4d60-87b7-411ff8234ccf','','','2021-05-23 14:42:37','2021-05-23 14:42:37','',0,'http://itosite.local/?p=9',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-05-23 14:42:22','2021-05-23 14:42:22','','Group 2','','inherit','open','closed','','group-2','','','2021-05-23 14:42:22','2021-05-23 14:42:22','',0,'http://itosite.local/wp-content/uploads/2021/05/Group-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-05-23 14:42:29','2021-05-23 14:42:29','http://itosite.local/wp-content/uploads/2021/05/cropped-Group-2.png','cropped-Group-2.png','','inherit','open','closed','','cropped-group-2-png','','','2021-05-23 14:42:29','2021-05-23 14:42:29','',0,'http://itosite.local/wp-content/uploads/2021/05/cropped-Group-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-05-23 14:42:37','2021-05-23 14:42:37','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contact','','inherit','closed','closed','','7-revision-v1','','','2021-05-23 14:42:37','2021-05-23 14:42:37','',7,'http://itosite.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-05-23 14:42:37','2021-05-23 14:42:37','','Facebook','','publish','closed','closed','','facebook','','','2021-05-23 14:42:37','2021-05-23 14:42:37','',0,'http://itosite.local/facebook/',0,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-05-23 14:42:37','2021-05-23 14:42:37','','Twitter','','publish','closed','closed','','twitter','','','2021-05-23 14:42:37','2021-05-23 14:42:37','',0,'http://itosite.local/twitter/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-05-23 14:42:38','2021-05-23 14:42:38','','Instagram','','publish','closed','closed','','instagram','','','2021-05-23 14:42:38','2021-05-23 14:42:38','',0,'http://itosite.local/instagram/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-05-23 14:42:38','2021-05-23 14:42:38','','Email','','publish','closed','closed','','email','','','2021-05-23 14:42:38','2021-05-23 14:42:38','',0,'http://itosite.local/email/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-05-23 14:45:27','2021-05-23 14:45:27','http://itosite.local/wp-content/uploads/2021/05/cropped-cropped-Group-2.png','cropped-cropped-Group-2.png','','inherit','open','closed','','cropped-cropped-group-2-png','','','2021-05-23 14:45:27','2021-05-23 14:45:27','',0,'http://itosite.local/wp-content/uploads/2021/05/cropped-cropped-Group-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-05-23 14:45:29','2021-05-23 14:45:29','{\n    \"ITOtheme::custom_logo\": {\n        \"value\": 24,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-23 14:45:29\"\n    }\n}','','','trash','closed','closed','','e6157e1c-f688-44de-a2c7-55674e4565bf','','','2021-05-23 14:45:29','2021-05-23 14:45:29','',0,'http://itosite.local/e6157e1c-f688-44de-a2c7-55674e4565bf/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-05-23 15:06:51','2021-05-23 15:06:51','','Nosotros','','publish','closed','closed','','nosotros','','','2021-05-23 15:06:51','2021-05-23 15:06:51','',0,'http://itosite.local/?page_id=26',0,'page','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-05-23 15:06:51','2021-05-23 15:06:51','','Nosotros','','inherit','closed','closed','','26-revision-v1','','','2021-05-23 15:06:51','2021-05-23 15:06:51','',26,'http://itosite.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-05-23 15:07:02','2021-05-23 15:07:02','','Menu','','publish','closed','closed','','menu','','','2021-05-23 15:07:02','2021-05-23 15:07:02','',0,'http://itosite.local/?page_id=28',0,'page','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-05-23 15:07:02','2021-05-23 15:07:02','','Menu','','inherit','closed','closed','','28-revision-v1','','','2021-05-23 15:07:02','2021-05-23 15:07:02','',28,'http://itosite.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-05-23 15:07:12','2021-05-23 15:07:12','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contacto','','inherit','closed','closed','','7-revision-v1','','','2021-05-23 15:07:12','2021-05-23 15:07:12','',7,'http://itosite.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-05-23 15:08:11','2021-05-23 15:08:11',' ','','','publish','closed','closed','','31','','','2021-05-23 15:08:11','2021-05-23 15:08:11','',0,'http://itosite.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-05-23 15:08:11','2021-05-23 15:08:11',' ','','','publish','closed','closed','','32','','','2021-05-23 15:08:11','2021-05-23 15:08:11','',0,'http://itosite.local/?p=32',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-05-23 15:08:11','2021-05-23 15:08:11',' ','','','publish','closed','closed','','33','','','2021-05-23 15:08:11','2021-05-23 15:08:11','',0,'http://itosite.local/?p=33',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-05-24 17:02:49','2021-05-24 17:02:49','','Beneficios','','publish','closed','closed','','beneficios','','','2021-05-24 17:02:49','2021-05-24 17:02:49','',0,'http://itosite.local/?page_id=34',0,'page','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-05-24 17:02:49','2021-05-24 17:02:49','','Beneficios','','inherit','closed','closed','','34-revision-v1','','','2021-05-24 17:02:49','2021-05-24 17:02:49','',34,'http://itosite.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-05-24 17:03:13','2021-05-24 17:03:13','','Crédito','','publish','closed','closed','','credito','','','2021-05-24 17:03:13','2021-05-24 17:03:13','',0,'http://itosite.local/?page_id=36',0,'page','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-05-24 17:03:13','2021-05-24 17:03:13','','Crédito','','inherit','closed','closed','','36-revision-v1','','','2021-05-24 17:03:13','2021-05-24 17:03:13','',36,'http://itosite.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-05-24 17:03:32','2021-05-24 17:03:32','','Términos y condiciones','','publish','closed','closed','','terminos-y-condiciones','','','2021-05-24 17:03:32','2021-05-24 17:03:32','',0,'http://itosite.local/?page_id=38',0,'page','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-05-24 17:03:32','2021-05-24 17:03:32','','Términos y condiciones','','inherit','closed','closed','','38-revision-v1','','','2021-05-24 17:03:32','2021-05-24 17:03:32','',38,'http://itosite.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-05-24 17:03:44','2021-05-24 17:03:44','','Aviso de privacidad','','publish','closed','closed','','aviso-de-privacidad','','','2021-05-24 17:03:44','2021-05-24 17:03:44','',0,'http://itosite.local/?page_id=40',0,'page','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-05-24 17:03:44','2021-05-24 17:03:44','','Aviso de privacidad','','inherit','closed','closed','','40-revision-v1','','','2021-05-24 17:03:44','2021-05-24 17:03:44','',40,'http://itosite.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-05-24 17:04:21','2021-05-24 17:04:21',' ','','','publish','closed','closed','','42','','','2021-05-24 17:04:21','2021-05-24 17:04:21','',0,'http://itosite.local/?p=42',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-05-24 17:04:21','2021-05-24 17:04:21',' ','','','publish','closed','closed','','43','','','2021-05-24 17:04:21','2021-05-24 17:04:21','',0,'http://itosite.local/?p=43',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-05-24 17:04:21','2021-05-24 17:04:21',' ','','','publish','closed','closed','','44','','','2021-05-24 17:04:21','2021-05-24 17:04:21','',0,'http://itosite.local/?p=44',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-05-24 17:28:17','2021-05-24 17:04:48',' ','','','publish','closed','closed','','45','','','2021-05-24 17:28:17','2021-05-24 17:28:17','',0,'http://itosite.local/?p=45',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-05-24 17:28:17','2021-05-24 17:04:48',' ','','','publish','closed','closed','','46','','','2021-05-24 17:28:17','2021-05-24 17:28:17','',0,'http://itosite.local/?p=46',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-05-24 17:28:17','2021-05-24 17:04:48',' ','','','publish','closed','closed','','47','','','2021-05-24 17:28:17','2021-05-24 17:28:17','',0,'http://itosite.local/?p=47',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-05-25 14:10:04','2021-05-25 14:10:04','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"62\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Social Media Links','social-media-links','publish','closed','closed','','group_60ad04f89c9f0','','','2021-05-26 14:32:18','2021-05-26 14:32:18','',0,'http://itosite.local/?post_type=acf-field-group&#038;p=48',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-05-25 14:10:04','2021-05-25 14:10:04','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Facebook Link','facebook_link','publish','closed','closed','','field_60ad04ffbaa64','','','2021-05-25 14:10:04','2021-05-25 14:10:04','',48,'http://itosite.local/?post_type=acf-field&p=50',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-05-25 14:10:04','2021-05-25 14:10:04','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Instagram Link','instagram_link','publish','closed','closed','','field_60ad051bbaa65','','','2021-05-25 14:10:04','2021-05-25 14:10:04','',48,'http://itosite.local/?post_type=acf-field&p=52',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-05-25 14:10:04','2021-05-25 14:10:04','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Twitter Link','twitter_link','publish','closed','closed','','field_60ad0527baa66','','','2021-05-25 14:10:04','2021-05-25 14:10:04','',48,'http://itosite.local/?post_type=acf-field&p=54',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-05-25 14:10:04','2021-05-25 14:10:04','a:11:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";i:33;s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:13:\"return_format\";s:5:\"array\";}','','','publish','closed','closed','','twitter-link','','','2021-05-25 14:10:04','2021-05-25 14:10:04','',54,'http://itosite.local/?post_type=acf-field&p=55',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-05-25 14:12:10','2021-05-25 14:12:10','a:11:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";i:33;s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:13:\"return_format\";s:5:\"array\";}','','','publish','closed','closed','','twitter-link','','','2021-05-25 14:12:10','2021-05-25 14:12:10','',54,'http://itosite.local/?post_type=acf-field&p=58',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-05-25 14:16:20','2021-05-25 14:16:20','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contacto','','inherit','closed','closed','','7-revision-v1','','','2021-05-25 14:16:20','2021-05-25 14:16:20','',7,'http://itosite.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-05-25 16:29:42','2021-05-25 16:29:42','','Hero','','publish','closed','closed','','hero','','','2021-05-29 15:20:11','2021-05-29 15:20:11','',0,'http://itosite.local/?page_id=62',0,'page','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-05-25 16:29:42','2021-05-25 16:29:42','','Hero','','inherit','closed','closed','','62-revision-v1','','','2021-05-25 16:29:42','2021-05-25 16:29:42','',62,'http://itosite.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-05-26 14:32:44','2021-05-26 14:32:44','','Hero','','inherit','closed','closed','','62-revision-v1','','','2021-05-26 14:32:44','2021-05-26 14:32:44','',62,'http://itosite.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-05-28 13:35:44','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-05-28 13:35:44','0000-00-00 00:00:00','',0,'http://itosite.local/?post_type=acf-field-group&p=67',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-05-28 14:11:53','2021-05-28 14:11:53','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"recipes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Nutritional Values','nutritional-values','publish','closed','closed','','group_60b0f3b6e6cd6','','','2021-05-28 14:11:53','2021-05-28 14:11:53','',0,'http://itosite.local/?post_type=acf-field-group&#038;p=68',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-05-28 14:11:53','2021-05-28 14:11:53','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Calorias','nutrition_calorias','publish','closed','closed','','field_60b0f9ac0cf09','','','2021-05-28 14:11:53','2021-05-28 14:11:53','',68,'http://itosite.local/?post_type=acf-field&p=69',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-05-28 14:11:53','2021-05-28 14:11:53','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Grasas','nutrition_grasas','publish','closed','closed','','field_60b0f9ce0cf0a','','','2021-05-28 14:11:53','2021-05-28 14:11:53','',68,'http://itosite.local/?post_type=acf-field&p=70',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-05-28 14:11:53','2021-05-28 14:11:53','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Carbohid','nutrition_carbohid','publish','closed','closed','','field_60b0f9f50cf0b','','','2021-05-28 14:11:53','2021-05-28 14:11:53','',68,'http://itosite.local/?post_type=acf-field&p=71',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-05-28 14:11:53','2021-05-28 14:11:53','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Proteinas','nutrition_proteinas','publish','closed','closed','','field_60b0fa170cf0c','','','2021-05-28 14:11:53','2021-05-28 14:11:53','',68,'http://itosite.local/?post_type=acf-field&p=72',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-05-28 14:11:58','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-05-28 14:11:58','0000-00-00 00:00:00','',0,'http://itosite.local/?post_type=recipes&p=73',0,'recipes','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-05-28 14:12:37','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-05-28 14:12:37','0000-00-00 00:00:00','',0,'http://itosite.local/?post_type=acf-field-group&p=74',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-05-28 14:16:48','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-05-28 14:16:48','0000-00-00 00:00:00','',0,'http://itosite.local/?post_type=recipes&p=78',0,'recipes','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-05-28 14:45:11','2021-05-28 14:45:11','','Ensalada con pollo','','publish','closed','closed','','ensalada-mixta','','','2021-05-30 16:13:59','2021-05-30 16:13:59','',0,'http://itosite.local/?post_type=recipes&#038;p=79',0,'recipes','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-05-28 14:45:08','2021-05-28 14:45:08','','miguel-andrade-nAOZCYcLND8-unsplash','','inherit','open','closed','','miguel-andrade-naozcyclnd8-unsplash','','','2021-05-28 14:45:10','2021-05-28 14:45:10','',79,'http://itosite.local/wp-content/uploads/2021/05/miguel-andrade-nAOZCYcLND8-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-05-28 14:45:08','2021-05-28 14:45:08','','quaritsch-photography-lZ8onQ1wuY8-unsplash','','inherit','open','closed','','quaritsch-photography-lz8onq1wuy8-unsplash','','','2021-05-28 14:45:37','2021-05-28 14:45:37','',79,'http://itosite.local/wp-content/uploads/2021/05/quaritsch-photography-lZ8onQ1wuY8-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-05-28 14:45:08','2021-05-28 14:45:08','','Screenshot_3','','inherit','open','closed','','screenshot_3','','','2021-05-28 14:45:08','2021-05-28 14:45:08','',79,'http://itosite.local/wp-content/uploads/2021/05/Screenshot_3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-05-28 14:45:08','2021-05-28 14:45:08','','Screenshot_4','','inherit','open','closed','','screenshot_4','','','2021-05-28 14:45:08','2021-05-28 14:45:08','',79,'http://itosite.local/wp-content/uploads/2021/05/Screenshot_4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-05-28 14:45:52','2021-05-28 14:45:52','','Ensalada mixta','','publish','closed','closed','','ensalada-mixta-2','','','2021-05-30 16:13:50','2021-05-30 16:13:50','',0,'http://itosite.local/?post_type=recipes&#038;p=84',0,'recipes','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-05-28 14:45:43','2021-05-28 14:45:43','','Screenshot_5','','inherit','open','closed','','screenshot_5','','','2021-05-28 14:45:51','2021-05-28 14:45:51','',84,'http://itosite.local/wp-content/uploads/2021/05/Screenshot_5.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-05-28 14:45:43','2021-05-28 14:45:43','','vino-li-pCjw_ygKCv0-unsplash','','inherit','open','closed','','vino-li-pcjw_ygkcv0-unsplash','','','2021-05-28 14:45:43','2021-05-28 14:45:43','',84,'http://itosite.local/wp-content/uploads/2021/05/vino-li-pCjw_ygKCv0-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-05-28 14:50:38','2021-05-28 14:50:38','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"recipes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Show as Featured Recipe and Example?','show-as-featured-recipe-and-example','publish','closed','closed','','group_60b102518e040','','','2021-05-29 15:22:24','2021-05-29 15:22:24','',0,'http://itosite.local/?post_type=acf-field-group&#038;p=87',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-05-28 14:50:38','2021-05-28 14:50:38','a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"Yes\";s:3:\"Yes\";s:2:\"No\";s:2:\"No\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}','Show as Featured Recipe?','featured_recipe','publish','closed','closed','','field_60b1026abac6f','','','2021-05-29 15:22:24','2021-05-29 15:22:24','',87,'http://itosite.local/?post_type=acf-field&#038;p=88',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-05-29 15:19:25','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-05-29 15:19:25','0000-00-00 00:00:00','',0,'http://itosite.local/?p=90',0,'post','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-05-29 15:19:56','2021-05-29 15:19:56','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"62\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Download Link','download-link','publish','closed','closed','','group_60b25b8319e41','','','2021-05-29 15:19:56','2021-05-29 15:19:56','',0,'http://itosite.local/?post_type=acf-field-group&#038;p=91',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-05-29 15:19:56','2021-05-29 15:19:56','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Download Link','download_link_hero','publish','closed','closed','','field_60b25b890e9fc','','','2021-05-29 15:19:56','2021-05-29 15:19:56','',91,'http://itosite.local/?post_type=acf-field&p=92',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-05-29 15:20:11','2021-05-29 15:20:11','','Hero','','inherit','closed','closed','','62-revision-v1','','','2021-05-29 15:20:11','2021-05-29 15:20:11','',62,'http://itosite.local/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-05-29 15:47:58','2021-05-29 15:47:58','','pngwing.com (2)','','inherit','open','closed','','pngwing-com-2','','','2021-05-29 15:47:58','2021-05-29 15:47:58','',79,'http://itosite.local/wp-content/uploads/2021/05/pngwing.com-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-05-29 15:48:12','2021-05-29 15:48:12','','pngwing.com (3)','','inherit','open','closed','','pngwing-com-3','','','2021-05-29 15:48:12','2021-05-29 15:48:12','',84,'http://itosite.local/wp-content/uploads/2021/05/pngwing.com-3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-05-30 15:06:20','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-05-30 15:06:20','0000-00-00 00:00:00','',0,'http://itosite.local/?post_type=recipes&p=97',0,'recipes','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-05-30 15:21:18','2021-05-30 15:21:18','','pngwing.com (2)-trimmy','','inherit','open','closed','','pngwing-com-2-trimmy','','','2021-05-30 15:21:18','2021-05-30 15:21:18','',79,'http://itosite.local/wp-content/uploads/2021/05/pngwing.com-2-trimmy.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-05-30 15:21:32','2021-05-30 15:21:32','','pngwing.com (3)-trimmy','','inherit','open','closed','','pngwing-com-3-trimmy','','','2021-05-30 15:21:32','2021-05-30 15:21:32','',84,'http://itosite.local/wp-content/uploads/2021/05/pngwing.com-3-trimmy.png',0,'attachment','image/png',0);
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
INSERT INTO `wp_term_relationships` VALUES (20,3,0);
INSERT INTO `wp_term_relationships` VALUES (21,3,0);
INSERT INTO `wp_term_relationships` VALUES (22,3,0);
INSERT INTO `wp_term_relationships` VALUES (23,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,2,0);
INSERT INTO `wp_term_relationships` VALUES (33,2,0);
INSERT INTO `wp_term_relationships` VALUES (42,4,0);
INSERT INTO `wp_term_relationships` VALUES (43,4,0);
INSERT INTO `wp_term_relationships` VALUES (44,4,0);
INSERT INTO `wp_term_relationships` VALUES (45,5,0);
INSERT INTO `wp_term_relationships` VALUES (46,5,0);
INSERT INTO `wp_term_relationships` VALUES (47,5,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,3);
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
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Primary menu','primary-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Secondary menu','secondary-menu',0);
INSERT INTO `wp_terms` VALUES (4,'First Footer Menu','first-footer-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Second Footer Menu','second-footer-menu',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"5f9a4626580aee1897300ae61c493df500b473bd77ba1209af36c6ae2bf9b632\";a:4:{s:10:\"expiration\";i:1622474363;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1622301563;}s:64:\"f958185256cdab751f590e554fb2630eedc3176bf56b552a9e9e012d1ae40ab3\";a:4:{s:10:\"expiration\";i:1622558554;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1622385754;}s:64:\"9e493d5be6fe7f9b4687b222e2972cf283e44024672f7a68cd71d49c04dd5728\";a:4:{s:10:\"expiration\";i:1622559689;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1622386889;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','90');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1621781099');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_dashboard','a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');
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
INSERT INTO `wp_users` VALUES (1,'admin','$P$B48AqcHGqGqljCHRHjpSxhEVI4U9KC0','admin','dev-email@flywheel.local','http://itosite.local','2021-05-21 16:22:32','',0,'admin');
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

-- Dump completed on 2021-06-02 23:37:23

/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : space-plus-2019

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-20 22:20:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `spl_commentmeta`
-- ----------------------------
DROP TABLE IF EXISTS `spl_commentmeta`;
CREATE TABLE `spl_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_comments`
-- ----------------------------
DROP TABLE IF EXISTS `spl_comments`;
CREATE TABLE `spl_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_comments
-- ----------------------------
INSERT INTO spl_comments VALUES ('1', '1', 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-18 09:32:20', '2019-11-18 09:32:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', '0', '1', '', '', '0', '0');

-- ----------------------------
-- Table structure for `spl_icl_content_status`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_content_status`;
CREATE TABLE `spl_icl_content_status` (
  `rid` bigint(20) NOT NULL,
  `nid` bigint(20) NOT NULL,
  `timestamp` datetime NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_content_status
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_core_status`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_core_status`;
CREATE TABLE `spl_icl_core_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL,
  `module` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_core_status
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_flags`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_flags`;
CREATE TABLE `spl_icl_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_template` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_code` (`lang_code`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_flags
-- ----------------------------
INSERT INTO spl_icl_flags VALUES ('1', 'ar', 'ar.png', '0');
INSERT INTO spl_icl_flags VALUES ('2', 'bg', 'bg.png', '0');
INSERT INTO spl_icl_flags VALUES ('3', 'bs', 'bs.png', '0');
INSERT INTO spl_icl_flags VALUES ('4', 'ca', 'ca.png', '0');
INSERT INTO spl_icl_flags VALUES ('5', 'cs', 'cs.png', '0');
INSERT INTO spl_icl_flags VALUES ('6', 'cy', 'cy.png', '0');
INSERT INTO spl_icl_flags VALUES ('7', 'da', 'da.png', '0');
INSERT INTO spl_icl_flags VALUES ('8', 'de', 'de.png', '0');
INSERT INTO spl_icl_flags VALUES ('9', 'el', 'el.png', '0');
INSERT INTO spl_icl_flags VALUES ('10', 'en', 'en.png', '0');
INSERT INTO spl_icl_flags VALUES ('11', 'eo', 'eo.png', '0');
INSERT INTO spl_icl_flags VALUES ('12', 'es', 'es.png', '0');
INSERT INTO spl_icl_flags VALUES ('13', 'et', 'et.png', '0');
INSERT INTO spl_icl_flags VALUES ('14', 'eu', 'eu.png', '0');
INSERT INTO spl_icl_flags VALUES ('15', 'fa', 'fa.png', '0');
INSERT INTO spl_icl_flags VALUES ('16', 'fi', 'fi.png', '0');
INSERT INTO spl_icl_flags VALUES ('17', 'fr', 'fr.png', '0');
INSERT INTO spl_icl_flags VALUES ('18', 'ga', 'ga.png', '0');
INSERT INTO spl_icl_flags VALUES ('19', 'he', 'he.png', '0');
INSERT INTO spl_icl_flags VALUES ('20', 'hi', 'hi.png', '0');
INSERT INTO spl_icl_flags VALUES ('21', 'hr', 'hr.png', '0');
INSERT INTO spl_icl_flags VALUES ('22', 'hu', 'hu.png', '0');
INSERT INTO spl_icl_flags VALUES ('23', 'hy', 'hy.png', '0');
INSERT INTO spl_icl_flags VALUES ('24', 'id', 'id.png', '0');
INSERT INTO spl_icl_flags VALUES ('25', 'is', 'is.png', '0');
INSERT INTO spl_icl_flags VALUES ('26', 'it', 'it.png', '0');
INSERT INTO spl_icl_flags VALUES ('27', 'ja', 'ja.png', '0');
INSERT INTO spl_icl_flags VALUES ('28', 'ko', 'ko.png', '0');
INSERT INTO spl_icl_flags VALUES ('29', 'ku', 'ku.png', '0');
INSERT INTO spl_icl_flags VALUES ('30', 'la', 'la.png', '0');
INSERT INTO spl_icl_flags VALUES ('31', 'lt', 'lt.png', '0');
INSERT INTO spl_icl_flags VALUES ('32', 'lv', 'lv.png', '0');
INSERT INTO spl_icl_flags VALUES ('33', 'mk', 'mk.png', '0');
INSERT INTO spl_icl_flags VALUES ('34', 'mn', 'mn.png', '0');
INSERT INTO spl_icl_flags VALUES ('35', 'ms', 'ms.png', '0');
INSERT INTO spl_icl_flags VALUES ('36', 'mt', 'mt.png', '0');
INSERT INTO spl_icl_flags VALUES ('37', 'nb', 'nb.png', '0');
INSERT INTO spl_icl_flags VALUES ('38', 'ne', 'ne.png', '0');
INSERT INTO spl_icl_flags VALUES ('39', 'nl', 'nl.png', '0');
INSERT INTO spl_icl_flags VALUES ('40', 'pa', 'pa.png', '0');
INSERT INTO spl_icl_flags VALUES ('41', 'pl', 'pl.png', '0');
INSERT INTO spl_icl_flags VALUES ('42', 'pt-br', 'pt-br.png', '0');
INSERT INTO spl_icl_flags VALUES ('43', 'pt-pt', 'pt-pt.png', '0');
INSERT INTO spl_icl_flags VALUES ('44', 'qu', 'qu.png', '0');
INSERT INTO spl_icl_flags VALUES ('45', 'ro', 'ro.png', '0');
INSERT INTO spl_icl_flags VALUES ('46', 'ru', 'ru.png', '0');
INSERT INTO spl_icl_flags VALUES ('47', 'sk', 'sk.png', '0');
INSERT INTO spl_icl_flags VALUES ('48', 'sl', 'sl.png', '0');
INSERT INTO spl_icl_flags VALUES ('49', 'so', 'so.png', '0');
INSERT INTO spl_icl_flags VALUES ('50', 'sq', 'sq.png', '0');
INSERT INTO spl_icl_flags VALUES ('51', 'sr', 'sr.png', '0');
INSERT INTO spl_icl_flags VALUES ('52', 'sv', 'sv.png', '0');
INSERT INTO spl_icl_flags VALUES ('53', 'ta', 'ta.png', '0');
INSERT INTO spl_icl_flags VALUES ('54', 'th', 'th.png', '0');
INSERT INTO spl_icl_flags VALUES ('55', 'tr', 'tr.png', '0');
INSERT INTO spl_icl_flags VALUES ('56', 'uk', 'uk.png', '0');
INSERT INTO spl_icl_flags VALUES ('57', 'ur', 'ur.png', '0');
INSERT INTO spl_icl_flags VALUES ('58', 'uz', 'uz.png', '0');
INSERT INTO spl_icl_flags VALUES ('59', 'vi', 'vi.png', '0');
INSERT INTO spl_icl_flags VALUES ('60', 'yi', 'yi.png', '0');
INSERT INTO spl_icl_flags VALUES ('61', 'zh-hans', 'zh-hans.png', '0');
INSERT INTO spl_icl_flags VALUES ('62', 'zh-hant', 'zh-hant.png', '0');
INSERT INTO spl_icl_flags VALUES ('63', 'zu', 'zu.png', '0');

-- ----------------------------
-- Table structure for `spl_icl_languages`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_languages`;
CREATE TABLE `spl_icl_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL,
  `default_locale` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encode_url` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `english_name` (`english_name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_languages
-- ----------------------------
INSERT INTO spl_icl_languages VALUES ('1', 'en', 'English', '1', '1', 'en_US', 'en', '0');
INSERT INTO spl_icl_languages VALUES ('2', 'es', 'Spanish', '1', '0', 'es_ES', 'es', '0');
INSERT INTO spl_icl_languages VALUES ('3', 'de', 'German', '1', '0', 'de_DE', 'de', '0');
INSERT INTO spl_icl_languages VALUES ('4', 'fr', 'French', '1', '0', 'fr_FR', 'fr', '0');
INSERT INTO spl_icl_languages VALUES ('5', 'ar', 'Arabic', '0', '0', 'ar', 'ar', '0');
INSERT INTO spl_icl_languages VALUES ('6', 'bs', 'Bosnian', '0', '0', '', 'bs', '0');
INSERT INTO spl_icl_languages VALUES ('7', 'bg', 'Bulgarian', '0', '0', 'bg_BG', 'bg', '0');
INSERT INTO spl_icl_languages VALUES ('8', 'ca', 'Catalan', '0', '0', 'ca_ES', 'ca', '0');
INSERT INTO spl_icl_languages VALUES ('9', 'cs', 'Czech', '0', '0', 'cs_CZ', 'cs', '0');
INSERT INTO spl_icl_languages VALUES ('10', 'sk', 'Slovak', '0', '0', 'sk_SK', 'sk', '0');
INSERT INTO spl_icl_languages VALUES ('11', 'cy', 'Welsh', '0', '0', 'cy_GB', 'cy', '0');
INSERT INTO spl_icl_languages VALUES ('12', 'da', 'Danish', '1', '0', 'da_DK', 'da', '0');
INSERT INTO spl_icl_languages VALUES ('13', 'el', 'Greek', '0', '0', 'el_GR', 'el', '0');
INSERT INTO spl_icl_languages VALUES ('14', 'eo', 'Esperanto', '0', '0', 'eo_UY', 'eo', '0');
INSERT INTO spl_icl_languages VALUES ('15', 'et', 'Estonian', '0', '0', 'et_EE', 'et', '0');
INSERT INTO spl_icl_languages VALUES ('16', 'eu', 'Basque', '0', '0', 'eu_ES', 'eu', '0');
INSERT INTO spl_icl_languages VALUES ('17', 'fa', 'Persian', '0', '0', 'fa_IR', 'fa', '0');
INSERT INTO spl_icl_languages VALUES ('18', 'fi', 'Finnish', '0', '0', 'fi_FI', 'fi', '0');
INSERT INTO spl_icl_languages VALUES ('19', 'ga', 'Irish', '0', '0', '', 'ga', '0');
INSERT INTO spl_icl_languages VALUES ('20', 'he', 'Hebrew', '0', '0', 'he_IL', 'he', '0');
INSERT INTO spl_icl_languages VALUES ('21', 'hi', 'Hindi', '0', '0', '', 'hi', '0');
INSERT INTO spl_icl_languages VALUES ('22', 'hr', 'Croatian', '0', '0', 'hr_HR', 'hr', '0');
INSERT INTO spl_icl_languages VALUES ('23', 'hu', 'Hungarian', '0', '0', 'hu_HU', 'hu', '0');
INSERT INTO spl_icl_languages VALUES ('24', 'hy', 'Armenian', '0', '0', '', 'hy', '0');
INSERT INTO spl_icl_languages VALUES ('25', 'id', 'Indonesian', '0', '0', 'id_ID', 'id', '0');
INSERT INTO spl_icl_languages VALUES ('26', 'is', 'Icelandic', '0', '0', 'is_IS', 'is', '0');
INSERT INTO spl_icl_languages VALUES ('27', 'it', 'Italian', '1', '0', 'it_IT', 'it', '0');
INSERT INTO spl_icl_languages VALUES ('28', 'ja', 'Japanese', '1', '0', 'ja', 'ja', '0');
INSERT INTO spl_icl_languages VALUES ('29', 'ko', 'Korean', '0', '0', 'ko_KR', 'ko', '0');
INSERT INTO spl_icl_languages VALUES ('30', 'ku', 'Kurdish', '0', '0', 'ku', 'ku', '0');
INSERT INTO spl_icl_languages VALUES ('31', 'la', 'Latin', '0', '0', '', 'la', '0');
INSERT INTO spl_icl_languages VALUES ('32', 'lv', 'Latvian', '0', '0', 'lv_LV', 'lv', '0');
INSERT INTO spl_icl_languages VALUES ('33', 'lt', 'Lithuanian', '0', '0', 'lt_LT', 'lt', '0');
INSERT INTO spl_icl_languages VALUES ('34', 'mk', 'Macedonian', '0', '0', 'mk_MK', 'mk', '0');
INSERT INTO spl_icl_languages VALUES ('35', 'mt', 'Maltese', '0', '0', '', 'mt', '0');
INSERT INTO spl_icl_languages VALUES ('36', 'mn', 'Mongolian', '0', '0', '', 'mn', '0');
INSERT INTO spl_icl_languages VALUES ('37', 'ne', 'Nepali', '0', '0', '', 'ne', '0');
INSERT INTO spl_icl_languages VALUES ('38', 'nl', 'Dutch', '1', '0', 'nl_NL', 'nl', '0');
INSERT INTO spl_icl_languages VALUES ('39', 'nb', 'Norwegian Bokmål', '0', '0', 'nb_NO', 'nb', '0');
INSERT INTO spl_icl_languages VALUES ('40', 'pa', 'Punjabi', '0', '0', '', 'pa', '0');
INSERT INTO spl_icl_languages VALUES ('41', 'pl', 'Polish', '0', '0', 'pl_PL', 'pl', '0');
INSERT INTO spl_icl_languages VALUES ('42', 'pt-pt', 'Portuguese, Portugal', '0', '0', 'pt_PT', 'pt-pt', '0');
INSERT INTO spl_icl_languages VALUES ('43', 'pt-br', 'Portuguese, Brazil', '0', '0', 'pt_BR', 'pt-br', '0');
INSERT INTO spl_icl_languages VALUES ('44', 'qu', 'Quechua', '0', '0', '', 'qu', '0');
INSERT INTO spl_icl_languages VALUES ('45', 'ro', 'Romanian', '0', '0', 'ro_RO', 'ro', '0');
INSERT INTO spl_icl_languages VALUES ('46', 'ru', 'Russian', '1', '0', 'ru_RU', 'ru', '0');
INSERT INTO spl_icl_languages VALUES ('47', 'sl', 'Slovenian', '0', '0', 'sl_SI', 'sl', '0');
INSERT INTO spl_icl_languages VALUES ('48', 'so', 'Somali', '0', '0', '', 'so', '0');
INSERT INTO spl_icl_languages VALUES ('49', 'sq', 'Albanian', '0', '0', '', 'sq', '0');
INSERT INTO spl_icl_languages VALUES ('50', 'sr', 'Serbian', '0', '0', 'sr_RS', 'sr', '0');
INSERT INTO spl_icl_languages VALUES ('51', 'sv', 'Swedish', '0', '0', 'sv_SE', 'sv', '0');
INSERT INTO spl_icl_languages VALUES ('52', 'ta', 'Tamil', '0', '0', '', 'ta', '0');
INSERT INTO spl_icl_languages VALUES ('53', 'th', 'Thai', '0', '0', 'th_TH', 'th', '0');
INSERT INTO spl_icl_languages VALUES ('54', 'tr', 'Turkish', '0', '0', 'tr_TR', 'tr', '0');
INSERT INTO spl_icl_languages VALUES ('55', 'uk', 'Ukrainian', '0', '0', 'uk_UA', 'uk', '0');
INSERT INTO spl_icl_languages VALUES ('56', 'ur', 'Urdu', '0', '0', '', 'ur', '0');
INSERT INTO spl_icl_languages VALUES ('57', 'uz', 'Uzbek', '0', '0', 'uz_UZ', 'uz', '0');
INSERT INTO spl_icl_languages VALUES ('58', 'vi', 'Vietnamese', '0', '1', 'vi_VN', 'vi', '0');
INSERT INTO spl_icl_languages VALUES ('59', 'yi', 'Yiddish', '0', '0', '', 'yi', '0');
INSERT INTO spl_icl_languages VALUES ('60', 'zh-hans', 'Chinese (Simplified)', '1', '0', 'zh_CN', 'zh-hans', '0');
INSERT INTO spl_icl_languages VALUES ('61', 'zu', 'Zulu', '0', '0', '', 'zu', '0');
INSERT INTO spl_icl_languages VALUES ('62', 'zh-hant', 'Chinese (Traditional)', '1', '0', 'zh_TW', 'zh-hant', '0');
INSERT INTO spl_icl_languages VALUES ('63', 'ms', 'Malay', '0', '0', 'ms_MY', 'ms', '0');

-- ----------------------------
-- Table structure for `spl_icl_languages_translations`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_languages_translations`;
CREATE TABLE `spl_icl_languages_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_language_code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_code` (`language_code`,`display_language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3970 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_languages_translations
-- ----------------------------
INSERT INTO spl_icl_languages_translations VALUES ('1', 'en', 'en', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('2', 'en', 'es', 'Inglés');
INSERT INTO spl_icl_languages_translations VALUES ('3', 'en', 'de', 'Englisch');
INSERT INTO spl_icl_languages_translations VALUES ('4', 'en', 'fr', 'Anglais');
INSERT INTO spl_icl_languages_translations VALUES ('5', 'en', 'ar', 'الإنجليزية');
INSERT INTO spl_icl_languages_translations VALUES ('6', 'en', 'bs', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('7', 'en', 'bg', 'Английски');
INSERT INTO spl_icl_languages_translations VALUES ('8', 'en', 'ca', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('9', 'en', 'cs', 'Angličtina');
INSERT INTO spl_icl_languages_translations VALUES ('10', 'en', 'sk', 'Angličtina');
INSERT INTO spl_icl_languages_translations VALUES ('11', 'en', 'cy', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('12', 'en', 'da', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('13', 'en', 'el', 'Αγγλικα');
INSERT INTO spl_icl_languages_translations VALUES ('14', 'en', 'eo', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('15', 'en', 'et', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('16', 'en', 'eu', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('17', 'en', 'fa', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('18', 'en', 'fi', 'englanti');
INSERT INTO spl_icl_languages_translations VALUES ('19', 'en', 'ga', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('20', 'en', 'he', 'אנגלית');
INSERT INTO spl_icl_languages_translations VALUES ('21', 'en', 'hi', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('22', 'en', 'hr', 'Engleski');
INSERT INTO spl_icl_languages_translations VALUES ('23', 'en', 'hu', 'angol');
INSERT INTO spl_icl_languages_translations VALUES ('24', 'en', 'hy', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('25', 'en', 'id', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('26', 'en', 'is', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('27', 'en', 'it', 'Inglese');
INSERT INTO spl_icl_languages_translations VALUES ('28', 'en', 'ja', '英語');
INSERT INTO spl_icl_languages_translations VALUES ('29', 'en', 'ko', '영어');
INSERT INTO spl_icl_languages_translations VALUES ('30', 'en', 'ku', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('31', 'en', 'la', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('32', 'en', 'lv', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('33', 'en', 'lt', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('34', 'en', 'mk', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('35', 'en', 'mt', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('36', 'en', 'mn', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('37', 'en', 'ne', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('38', 'en', 'nl', 'Engels');
INSERT INTO spl_icl_languages_translations VALUES ('39', 'en', 'nb', 'Engelsk');
INSERT INTO spl_icl_languages_translations VALUES ('40', 'en', 'pa', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('41', 'en', 'pl', 'angielski');
INSERT INTO spl_icl_languages_translations VALUES ('42', 'en', 'pt-pt', 'Inglês');
INSERT INTO spl_icl_languages_translations VALUES ('43', 'en', 'pt-br', 'Inglês');
INSERT INTO spl_icl_languages_translations VALUES ('44', 'en', 'qu', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('45', 'en', 'ro', 'Engleză');
INSERT INTO spl_icl_languages_translations VALUES ('46', 'en', 'ru', 'Английский');
INSERT INTO spl_icl_languages_translations VALUES ('47', 'en', 'sl', 'Angleščina');
INSERT INTO spl_icl_languages_translations VALUES ('48', 'en', 'so', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('49', 'en', 'sq', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('50', 'en', 'sr', 'енглески');
INSERT INTO spl_icl_languages_translations VALUES ('51', 'en', 'sv', 'Engelska');
INSERT INTO spl_icl_languages_translations VALUES ('52', 'en', 'ta', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('53', 'en', 'th', 'อังกฤษ');
INSERT INTO spl_icl_languages_translations VALUES ('54', 'en', 'tr', 'İngilizce');
INSERT INTO spl_icl_languages_translations VALUES ('55', 'en', 'uk', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('56', 'en', 'ur', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('57', 'en', 'uz', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('58', 'en', 'vi', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('59', 'en', 'yi', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('60', 'en', 'zh-hans', '英语');
INSERT INTO spl_icl_languages_translations VALUES ('61', 'en', 'zu', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('62', 'en', 'zh-hant', '英語');
INSERT INTO spl_icl_languages_translations VALUES ('63', 'en', 'ms', 'English');
INSERT INTO spl_icl_languages_translations VALUES ('64', 'es', 'en', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('65', 'es', 'es', 'Español');
INSERT INTO spl_icl_languages_translations VALUES ('66', 'es', 'de', 'Spanisch');
INSERT INTO spl_icl_languages_translations VALUES ('67', 'es', 'fr', 'Espagnol');
INSERT INTO spl_icl_languages_translations VALUES ('68', 'es', 'ar', 'الأسبانية');
INSERT INTO spl_icl_languages_translations VALUES ('69', 'es', 'bs', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('70', 'es', 'bg', 'Испански');
INSERT INTO spl_icl_languages_translations VALUES ('71', 'es', 'ca', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('72', 'es', 'cs', 'Španělský');
INSERT INTO spl_icl_languages_translations VALUES ('73', 'es', 'sk', 'Španielčina');
INSERT INTO spl_icl_languages_translations VALUES ('74', 'es', 'cy', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('75', 'es', 'da', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('76', 'es', 'el', 'Ισπανικα');
INSERT INTO spl_icl_languages_translations VALUES ('77', 'es', 'eo', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('78', 'es', 'et', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('79', 'es', 'eu', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('80', 'es', 'fa', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('81', 'es', 'fi', 'espanja');
INSERT INTO spl_icl_languages_translations VALUES ('82', 'es', 'ga', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('83', 'es', 'he', 'ספרדית');
INSERT INTO spl_icl_languages_translations VALUES ('84', 'es', 'hi', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('85', 'es', 'hr', 'španjolski');
INSERT INTO spl_icl_languages_translations VALUES ('86', 'es', 'hu', 'spanyol');
INSERT INTO spl_icl_languages_translations VALUES ('87', 'es', 'hy', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('88', 'es', 'id', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('89', 'es', 'is', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('90', 'es', 'it', 'Spagnolo');
INSERT INTO spl_icl_languages_translations VALUES ('91', 'es', 'ja', 'スペイン語');
INSERT INTO spl_icl_languages_translations VALUES ('92', 'es', 'ko', '스페인어');
INSERT INTO spl_icl_languages_translations VALUES ('93', 'es', 'ku', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('94', 'es', 'la', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('95', 'es', 'lv', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('96', 'es', 'lt', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('97', 'es', 'mk', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('98', 'es', 'mt', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('99', 'es', 'mn', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('100', 'es', 'ne', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('101', 'es', 'nl', 'Spaans');
INSERT INTO spl_icl_languages_translations VALUES ('102', 'es', 'nb', 'Spansk');
INSERT INTO spl_icl_languages_translations VALUES ('103', 'es', 'pa', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('104', 'es', 'pl', 'hiszpański');
INSERT INTO spl_icl_languages_translations VALUES ('105', 'es', 'pt-pt', 'Espanhol');
INSERT INTO spl_icl_languages_translations VALUES ('106', 'es', 'pt-br', 'Espanhol');
INSERT INTO spl_icl_languages_translations VALUES ('107', 'es', 'qu', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('108', 'es', 'ro', 'Spaniolă');
INSERT INTO spl_icl_languages_translations VALUES ('109', 'es', 'ru', 'Испанский');
INSERT INTO spl_icl_languages_translations VALUES ('110', 'es', 'sl', 'Španščina');
INSERT INTO spl_icl_languages_translations VALUES ('111', 'es', 'so', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('112', 'es', 'sq', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('113', 'es', 'sr', 'шпански');
INSERT INTO spl_icl_languages_translations VALUES ('114', 'es', 'sv', 'Spanska');
INSERT INTO spl_icl_languages_translations VALUES ('115', 'es', 'ta', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('116', 'es', 'th', 'สเปน');
INSERT INTO spl_icl_languages_translations VALUES ('117', 'es', 'tr', 'İspanyolca');
INSERT INTO spl_icl_languages_translations VALUES ('118', 'es', 'uk', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('119', 'es', 'ur', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('120', 'es', 'uz', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('121', 'es', 'vi', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('122', 'es', 'yi', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('123', 'es', 'zh-hans', '西班牙语');
INSERT INTO spl_icl_languages_translations VALUES ('124', 'es', 'zu', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('125', 'es', 'zh-hant', '西班牙語');
INSERT INTO spl_icl_languages_translations VALUES ('126', 'es', 'ms', 'Spanish');
INSERT INTO spl_icl_languages_translations VALUES ('127', 'de', 'en', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('128', 'de', 'es', 'Alemán');
INSERT INTO spl_icl_languages_translations VALUES ('129', 'de', 'de', 'Deutsch');
INSERT INTO spl_icl_languages_translations VALUES ('130', 'de', 'fr', 'Allemand');
INSERT INTO spl_icl_languages_translations VALUES ('131', 'de', 'ar', 'الألمانية');
INSERT INTO spl_icl_languages_translations VALUES ('132', 'de', 'bs', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('133', 'de', 'bg', 'Немски');
INSERT INTO spl_icl_languages_translations VALUES ('134', 'de', 'ca', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('135', 'de', 'cs', 'Němec');
INSERT INTO spl_icl_languages_translations VALUES ('136', 'de', 'sk', 'Nemčina');
INSERT INTO spl_icl_languages_translations VALUES ('137', 'de', 'cy', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('138', 'de', 'da', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('139', 'de', 'el', 'Γερμανικα');
INSERT INTO spl_icl_languages_translations VALUES ('140', 'de', 'eo', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('141', 'de', 'et', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('142', 'de', 'eu', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('143', 'de', 'fa', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('144', 'de', 'fi', 'saksa');
INSERT INTO spl_icl_languages_translations VALUES ('145', 'de', 'ga', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('146', 'de', 'he', 'גרמנית');
INSERT INTO spl_icl_languages_translations VALUES ('147', 'de', 'hi', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('148', 'de', 'hr', 'Njemački');
INSERT INTO spl_icl_languages_translations VALUES ('149', 'de', 'hu', 'német');
INSERT INTO spl_icl_languages_translations VALUES ('150', 'de', 'hy', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('151', 'de', 'id', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('152', 'de', 'is', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('153', 'de', 'it', 'Tedesco');
INSERT INTO spl_icl_languages_translations VALUES ('154', 'de', 'ja', 'ドイツ語');
INSERT INTO spl_icl_languages_translations VALUES ('155', 'de', 'ko', '독어');
INSERT INTO spl_icl_languages_translations VALUES ('156', 'de', 'ku', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('157', 'de', 'la', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('158', 'de', 'lv', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('159', 'de', 'lt', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('160', 'de', 'mk', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('161', 'de', 'mt', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('162', 'de', 'mn', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('163', 'de', 'ne', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('164', 'de', 'nl', 'Duits');
INSERT INTO spl_icl_languages_translations VALUES ('165', 'de', 'nb', 'Tysk');
INSERT INTO spl_icl_languages_translations VALUES ('166', 'de', 'pa', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('167', 'de', 'pl', 'niemiecki');
INSERT INTO spl_icl_languages_translations VALUES ('168', 'de', 'pt-pt', 'Alemão');
INSERT INTO spl_icl_languages_translations VALUES ('169', 'de', 'pt-br', 'Alemão');
INSERT INTO spl_icl_languages_translations VALUES ('170', 'de', 'qu', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('171', 'de', 'ro', 'Germană');
INSERT INTO spl_icl_languages_translations VALUES ('172', 'de', 'ru', 'Немецкий');
INSERT INTO spl_icl_languages_translations VALUES ('173', 'de', 'sl', 'Nemščina');
INSERT INTO spl_icl_languages_translations VALUES ('174', 'de', 'so', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('175', 'de', 'sq', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('176', 'de', 'sr', 'немачки');
INSERT INTO spl_icl_languages_translations VALUES ('177', 'de', 'sv', 'Tyska');
INSERT INTO spl_icl_languages_translations VALUES ('178', 'de', 'ta', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('179', 'de', 'th', 'เยอรมัน');
INSERT INTO spl_icl_languages_translations VALUES ('180', 'de', 'tr', 'Almanca');
INSERT INTO spl_icl_languages_translations VALUES ('181', 'de', 'uk', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('182', 'de', 'ur', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('183', 'de', 'uz', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('184', 'de', 'vi', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('185', 'de', 'yi', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('186', 'de', 'zh-hans', '德语');
INSERT INTO spl_icl_languages_translations VALUES ('187', 'de', 'zu', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('188', 'de', 'zh-hant', '德語');
INSERT INTO spl_icl_languages_translations VALUES ('189', 'de', 'ms', 'German');
INSERT INTO spl_icl_languages_translations VALUES ('190', 'fr', 'en', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('191', 'fr', 'es', 'Francés');
INSERT INTO spl_icl_languages_translations VALUES ('192', 'fr', 'de', 'Französisch');
INSERT INTO spl_icl_languages_translations VALUES ('193', 'fr', 'fr', 'Français');
INSERT INTO spl_icl_languages_translations VALUES ('194', 'fr', 'ar', 'الفرنسية');
INSERT INTO spl_icl_languages_translations VALUES ('195', 'fr', 'bs', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('196', 'fr', 'bg', 'Френски');
INSERT INTO spl_icl_languages_translations VALUES ('197', 'fr', 'ca', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('198', 'fr', 'cs', 'Francouzština');
INSERT INTO spl_icl_languages_translations VALUES ('199', 'fr', 'sk', 'Francúzština');
INSERT INTO spl_icl_languages_translations VALUES ('200', 'fr', 'cy', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('201', 'fr', 'da', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('202', 'fr', 'el', 'Γαλλικα');
INSERT INTO spl_icl_languages_translations VALUES ('203', 'fr', 'eo', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('204', 'fr', 'et', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('205', 'fr', 'eu', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('206', 'fr', 'fa', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('207', 'fr', 'fi', 'ranska');
INSERT INTO spl_icl_languages_translations VALUES ('208', 'fr', 'ga', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('209', 'fr', 'he', 'צרפתית');
INSERT INTO spl_icl_languages_translations VALUES ('210', 'fr', 'hi', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('211', 'fr', 'hr', 'Francuzi');
INSERT INTO spl_icl_languages_translations VALUES ('212', 'fr', 'hu', 'francia');
INSERT INTO spl_icl_languages_translations VALUES ('213', 'fr', 'hy', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('214', 'fr', 'id', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('215', 'fr', 'is', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('216', 'fr', 'it', 'Francese');
INSERT INTO spl_icl_languages_translations VALUES ('217', 'fr', 'ja', 'フランス語');
INSERT INTO spl_icl_languages_translations VALUES ('218', 'fr', 'ko', '불어');
INSERT INTO spl_icl_languages_translations VALUES ('219', 'fr', 'ku', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('220', 'fr', 'la', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('221', 'fr', 'lv', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('222', 'fr', 'lt', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('223', 'fr', 'mk', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('224', 'fr', 'mt', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('225', 'fr', 'mn', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('226', 'fr', 'ne', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('227', 'fr', 'nl', 'Frans');
INSERT INTO spl_icl_languages_translations VALUES ('228', 'fr', 'nb', 'Fransk');
INSERT INTO spl_icl_languages_translations VALUES ('229', 'fr', 'pa', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('230', 'fr', 'pl', 'francuski');
INSERT INTO spl_icl_languages_translations VALUES ('231', 'fr', 'pt-pt', 'Francês');
INSERT INTO spl_icl_languages_translations VALUES ('232', 'fr', 'pt-br', 'Francês');
INSERT INTO spl_icl_languages_translations VALUES ('233', 'fr', 'qu', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('234', 'fr', 'ro', 'Franceză');
INSERT INTO spl_icl_languages_translations VALUES ('235', 'fr', 'ru', 'Французский');
INSERT INTO spl_icl_languages_translations VALUES ('236', 'fr', 'sl', 'Francoščina');
INSERT INTO spl_icl_languages_translations VALUES ('237', 'fr', 'so', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('238', 'fr', 'sq', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('239', 'fr', 'sr', 'француски');
INSERT INTO spl_icl_languages_translations VALUES ('240', 'fr', 'sv', 'Franska');
INSERT INTO spl_icl_languages_translations VALUES ('241', 'fr', 'ta', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('242', 'fr', 'th', 'ฝรั่งเศส');
INSERT INTO spl_icl_languages_translations VALUES ('243', 'fr', 'tr', 'Fransızca');
INSERT INTO spl_icl_languages_translations VALUES ('244', 'fr', 'uk', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('245', 'fr', 'ur', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('246', 'fr', 'uz', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('247', 'fr', 'vi', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('248', 'fr', 'yi', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('249', 'fr', 'zh-hans', '法语');
INSERT INTO spl_icl_languages_translations VALUES ('250', 'fr', 'zu', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('251', 'fr', 'zh-hant', '法語');
INSERT INTO spl_icl_languages_translations VALUES ('252', 'fr', 'ms', 'French');
INSERT INTO spl_icl_languages_translations VALUES ('253', 'ar', 'en', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('254', 'ar', 'es', 'Árabe');
INSERT INTO spl_icl_languages_translations VALUES ('255', 'ar', 'de', 'Arabisch');
INSERT INTO spl_icl_languages_translations VALUES ('256', 'ar', 'fr', 'Arabe');
INSERT INTO spl_icl_languages_translations VALUES ('257', 'ar', 'ar', 'العربية');
INSERT INTO spl_icl_languages_translations VALUES ('258', 'ar', 'bs', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('259', 'ar', 'bg', 'Арабски');
INSERT INTO spl_icl_languages_translations VALUES ('260', 'ar', 'ca', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('261', 'ar', 'cs', 'Arabština');
INSERT INTO spl_icl_languages_translations VALUES ('262', 'ar', 'sk', 'Arabčina');
INSERT INTO spl_icl_languages_translations VALUES ('263', 'ar', 'cy', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('264', 'ar', 'da', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('265', 'ar', 'el', 'Αραβικα');
INSERT INTO spl_icl_languages_translations VALUES ('266', 'ar', 'eo', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('267', 'ar', 'et', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('268', 'ar', 'eu', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('269', 'ar', 'fa', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('270', 'ar', 'fi', 'arabia');
INSERT INTO spl_icl_languages_translations VALUES ('271', 'ar', 'ga', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('272', 'ar', 'he', 'ערבית');
INSERT INTO spl_icl_languages_translations VALUES ('273', 'ar', 'hi', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('274', 'ar', 'hr', 'Arapski');
INSERT INTO spl_icl_languages_translations VALUES ('275', 'ar', 'hu', 'arab');
INSERT INTO spl_icl_languages_translations VALUES ('276', 'ar', 'hy', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('277', 'ar', 'id', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('278', 'ar', 'is', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('279', 'ar', 'it', 'Arabo');
INSERT INTO spl_icl_languages_translations VALUES ('280', 'ar', 'ja', 'アラビア語');
INSERT INTO spl_icl_languages_translations VALUES ('281', 'ar', 'ko', '아랍어');
INSERT INTO spl_icl_languages_translations VALUES ('282', 'ar', 'ku', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('283', 'ar', 'la', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('284', 'ar', 'lv', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('285', 'ar', 'lt', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('286', 'ar', 'mk', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('287', 'ar', 'mt', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('288', 'ar', 'mn', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('289', 'ar', 'ne', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('290', 'ar', 'nl', 'Arabisch');
INSERT INTO spl_icl_languages_translations VALUES ('291', 'ar', 'nb', 'Arabisk');
INSERT INTO spl_icl_languages_translations VALUES ('292', 'ar', 'pa', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('293', 'ar', 'pl', 'arabski');
INSERT INTO spl_icl_languages_translations VALUES ('294', 'ar', 'pt-pt', 'Árabe');
INSERT INTO spl_icl_languages_translations VALUES ('295', 'ar', 'pt-br', 'Árabe');
INSERT INTO spl_icl_languages_translations VALUES ('296', 'ar', 'qu', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('297', 'ar', 'ro', 'Arabică');
INSERT INTO spl_icl_languages_translations VALUES ('298', 'ar', 'ru', 'Арабский');
INSERT INTO spl_icl_languages_translations VALUES ('299', 'ar', 'sl', 'Arabščina');
INSERT INTO spl_icl_languages_translations VALUES ('300', 'ar', 'so', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('301', 'ar', 'sq', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('302', 'ar', 'sr', 'арапски');
INSERT INTO spl_icl_languages_translations VALUES ('303', 'ar', 'sv', 'Arabiska');
INSERT INTO spl_icl_languages_translations VALUES ('304', 'ar', 'ta', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('305', 'ar', 'th', 'อารบิก');
INSERT INTO spl_icl_languages_translations VALUES ('306', 'ar', 'tr', 'Arapça');
INSERT INTO spl_icl_languages_translations VALUES ('307', 'ar', 'uk', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('308', 'ar', 'ur', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('309', 'ar', 'uz', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('310', 'ar', 'vi', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('311', 'ar', 'yi', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('312', 'ar', 'zh-hans', '阿拉伯语');
INSERT INTO spl_icl_languages_translations VALUES ('313', 'ar', 'zu', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('314', 'ar', 'zh-hant', '阿拉伯語');
INSERT INTO spl_icl_languages_translations VALUES ('315', 'ar', 'ms', 'Arabic');
INSERT INTO spl_icl_languages_translations VALUES ('316', 'bs', 'en', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('317', 'bs', 'es', 'Bosnio');
INSERT INTO spl_icl_languages_translations VALUES ('318', 'bs', 'de', 'Bosnisch');
INSERT INTO spl_icl_languages_translations VALUES ('319', 'bs', 'fr', 'Bosnien');
INSERT INTO spl_icl_languages_translations VALUES ('320', 'bs', 'ar', 'البوسنية');
INSERT INTO spl_icl_languages_translations VALUES ('321', 'bs', 'bs', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('322', 'bs', 'bg', 'Босненски');
INSERT INTO spl_icl_languages_translations VALUES ('323', 'bs', 'ca', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('324', 'bs', 'cs', 'Bosenština');
INSERT INTO spl_icl_languages_translations VALUES ('325', 'bs', 'sk', 'Bosniačtina');
INSERT INTO spl_icl_languages_translations VALUES ('326', 'bs', 'cy', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('327', 'bs', 'da', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('328', 'bs', 'el', 'Βοσνιακα');
INSERT INTO spl_icl_languages_translations VALUES ('329', 'bs', 'eo', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('330', 'bs', 'et', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('331', 'bs', 'eu', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('332', 'bs', 'fa', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('333', 'bs', 'fi', 'bosnia');
INSERT INTO spl_icl_languages_translations VALUES ('334', 'bs', 'ga', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('335', 'bs', 'he', 'בוסנית');
INSERT INTO spl_icl_languages_translations VALUES ('336', 'bs', 'hi', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('337', 'bs', 'hr', 'Bosanski');
INSERT INTO spl_icl_languages_translations VALUES ('338', 'bs', 'hu', 'bosnyák');
INSERT INTO spl_icl_languages_translations VALUES ('339', 'bs', 'hy', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('340', 'bs', 'id', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('341', 'bs', 'is', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('342', 'bs', 'it', 'Bosniaco');
INSERT INTO spl_icl_languages_translations VALUES ('343', 'bs', 'ja', 'ボスニア語');
INSERT INTO spl_icl_languages_translations VALUES ('344', 'bs', 'ko', '보즈니아어');
INSERT INTO spl_icl_languages_translations VALUES ('345', 'bs', 'ku', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('346', 'bs', 'la', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('347', 'bs', 'lv', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('348', 'bs', 'lt', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('349', 'bs', 'mk', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('350', 'bs', 'mt', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('351', 'bs', 'mn', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('352', 'bs', 'ne', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('353', 'bs', 'nl', 'Bosnisch');
INSERT INTO spl_icl_languages_translations VALUES ('354', 'bs', 'nb', 'Bosnisk');
INSERT INTO spl_icl_languages_translations VALUES ('355', 'bs', 'pa', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('356', 'bs', 'pl', 'bośniacki');
INSERT INTO spl_icl_languages_translations VALUES ('357', 'bs', 'pt-pt', 'Bósnio');
INSERT INTO spl_icl_languages_translations VALUES ('358', 'bs', 'pt-br', 'Bósnio');
INSERT INTO spl_icl_languages_translations VALUES ('359', 'bs', 'qu', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('360', 'bs', 'ro', 'Bosniacă');
INSERT INTO spl_icl_languages_translations VALUES ('361', 'bs', 'ru', 'Боснийский');
INSERT INTO spl_icl_languages_translations VALUES ('362', 'bs', 'sl', 'Bosanski');
INSERT INTO spl_icl_languages_translations VALUES ('363', 'bs', 'so', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('364', 'bs', 'sq', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('365', 'bs', 'sr', 'босански');
INSERT INTO spl_icl_languages_translations VALUES ('366', 'bs', 'sv', 'Bosniska');
INSERT INTO spl_icl_languages_translations VALUES ('367', 'bs', 'ta', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('368', 'bs', 'th', 'บอสเนียน');
INSERT INTO spl_icl_languages_translations VALUES ('369', 'bs', 'tr', 'Boşnakça');
INSERT INTO spl_icl_languages_translations VALUES ('370', 'bs', 'uk', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('371', 'bs', 'ur', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('372', 'bs', 'uz', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('373', 'bs', 'vi', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('374', 'bs', 'yi', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('375', 'bs', 'zh-hans', '波斯尼亚语');
INSERT INTO spl_icl_languages_translations VALUES ('376', 'bs', 'zu', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('377', 'bs', 'zh-hant', '波士尼亞語');
INSERT INTO spl_icl_languages_translations VALUES ('378', 'bs', 'ms', 'Bosnian');
INSERT INTO spl_icl_languages_translations VALUES ('379', 'bg', 'en', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('380', 'bg', 'es', 'Búlgaro');
INSERT INTO spl_icl_languages_translations VALUES ('381', 'bg', 'de', 'Bulgarisch');
INSERT INTO spl_icl_languages_translations VALUES ('382', 'bg', 'fr', 'Bulgare');
INSERT INTO spl_icl_languages_translations VALUES ('383', 'bg', 'ar', 'البلغارية');
INSERT INTO spl_icl_languages_translations VALUES ('384', 'bg', 'bs', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('385', 'bg', 'bg', 'Български');
INSERT INTO spl_icl_languages_translations VALUES ('386', 'bg', 'ca', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('387', 'bg', 'cs', 'Bulharština');
INSERT INTO spl_icl_languages_translations VALUES ('388', 'bg', 'sk', 'Bulharčina');
INSERT INTO spl_icl_languages_translations VALUES ('389', 'bg', 'cy', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('390', 'bg', 'da', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('391', 'bg', 'el', 'Βουλγαρικα');
INSERT INTO spl_icl_languages_translations VALUES ('392', 'bg', 'eo', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('393', 'bg', 'et', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('394', 'bg', 'eu', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('395', 'bg', 'fa', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('396', 'bg', 'fi', 'bulgaria');
INSERT INTO spl_icl_languages_translations VALUES ('397', 'bg', 'ga', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('398', 'bg', 'he', 'בולגרית');
INSERT INTO spl_icl_languages_translations VALUES ('399', 'bg', 'hi', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('400', 'bg', 'hr', 'Bugarski');
INSERT INTO spl_icl_languages_translations VALUES ('401', 'bg', 'hu', 'bolgár');
INSERT INTO spl_icl_languages_translations VALUES ('402', 'bg', 'hy', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('403', 'bg', 'id', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('404', 'bg', 'is', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('405', 'bg', 'it', 'Bulgaro');
INSERT INTO spl_icl_languages_translations VALUES ('406', 'bg', 'ja', 'ブルガリア語');
INSERT INTO spl_icl_languages_translations VALUES ('407', 'bg', 'ko', '불가리아어');
INSERT INTO spl_icl_languages_translations VALUES ('408', 'bg', 'ku', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('409', 'bg', 'la', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('410', 'bg', 'lv', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('411', 'bg', 'lt', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('412', 'bg', 'mk', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('413', 'bg', 'mt', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('414', 'bg', 'mn', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('415', 'bg', 'ne', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('416', 'bg', 'nl', 'Bulgaars');
INSERT INTO spl_icl_languages_translations VALUES ('417', 'bg', 'nb', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('418', 'bg', 'pa', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('419', 'bg', 'pl', 'bułgarski');
INSERT INTO spl_icl_languages_translations VALUES ('420', 'bg', 'pt-pt', 'Búlgaro');
INSERT INTO spl_icl_languages_translations VALUES ('421', 'bg', 'pt-br', 'Búlgaro');
INSERT INTO spl_icl_languages_translations VALUES ('422', 'bg', 'qu', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('423', 'bg', 'ro', 'Bulgară');
INSERT INTO spl_icl_languages_translations VALUES ('424', 'bg', 'ru', 'Болгарский');
INSERT INTO spl_icl_languages_translations VALUES ('425', 'bg', 'sl', 'Bolgarščina');
INSERT INTO spl_icl_languages_translations VALUES ('426', 'bg', 'so', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('427', 'bg', 'sq', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('428', 'bg', 'sr', 'бугарски');
INSERT INTO spl_icl_languages_translations VALUES ('429', 'bg', 'sv', 'Bulgariska');
INSERT INTO spl_icl_languages_translations VALUES ('430', 'bg', 'ta', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('431', 'bg', 'th', 'บัลแกเรียน');
INSERT INTO spl_icl_languages_translations VALUES ('432', 'bg', 'tr', 'Bulgarca');
INSERT INTO spl_icl_languages_translations VALUES ('433', 'bg', 'uk', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('434', 'bg', 'ur', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('435', 'bg', 'uz', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('436', 'bg', 'vi', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('437', 'bg', 'yi', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('438', 'bg', 'zh-hans', '保加利亚语');
INSERT INTO spl_icl_languages_translations VALUES ('439', 'bg', 'zu', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('440', 'bg', 'zh-hant', '保加利亞語');
INSERT INTO spl_icl_languages_translations VALUES ('441', 'bg', 'ms', 'Bulgarian');
INSERT INTO spl_icl_languages_translations VALUES ('442', 'ca', 'en', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('443', 'ca', 'es', 'Catalán');
INSERT INTO spl_icl_languages_translations VALUES ('444', 'ca', 'de', 'Katalanisch');
INSERT INTO spl_icl_languages_translations VALUES ('445', 'ca', 'fr', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('446', 'ca', 'ar', 'الكاتالوينية');
INSERT INTO spl_icl_languages_translations VALUES ('447', 'ca', 'bs', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('448', 'ca', 'bg', 'Каталонски');
INSERT INTO spl_icl_languages_translations VALUES ('449', 'ca', 'ca', 'Català');
INSERT INTO spl_icl_languages_translations VALUES ('450', 'ca', 'cs', 'Katalánština');
INSERT INTO spl_icl_languages_translations VALUES ('451', 'ca', 'sk', 'Katalánčina');
INSERT INTO spl_icl_languages_translations VALUES ('452', 'ca', 'cy', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('453', 'ca', 'da', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('454', 'ca', 'el', 'Καταλανικα');
INSERT INTO spl_icl_languages_translations VALUES ('455', 'ca', 'eo', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('456', 'ca', 'et', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('457', 'ca', 'eu', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('458', 'ca', 'fa', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('459', 'ca', 'fi', 'katalaani');
INSERT INTO spl_icl_languages_translations VALUES ('460', 'ca', 'ga', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('461', 'ca', 'he', 'קטלאנית');
INSERT INTO spl_icl_languages_translations VALUES ('462', 'ca', 'hi', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('463', 'ca', 'hr', 'Katalonski');
INSERT INTO spl_icl_languages_translations VALUES ('464', 'ca', 'hu', 'katalán');
INSERT INTO spl_icl_languages_translations VALUES ('465', 'ca', 'hy', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('466', 'ca', 'id', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('467', 'ca', 'is', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('468', 'ca', 'it', 'Catalano');
INSERT INTO spl_icl_languages_translations VALUES ('469', 'ca', 'ja', 'カタルーニャ語');
INSERT INTO spl_icl_languages_translations VALUES ('470', 'ca', 'ko', '카탈로니아어');
INSERT INTO spl_icl_languages_translations VALUES ('471', 'ca', 'ku', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('472', 'ca', 'la', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('473', 'ca', 'lv', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('474', 'ca', 'lt', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('475', 'ca', 'mk', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('476', 'ca', 'mt', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('477', 'ca', 'mn', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('478', 'ca', 'ne', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('479', 'ca', 'nl', 'Catalaans');
INSERT INTO spl_icl_languages_translations VALUES ('480', 'ca', 'nb', 'catalan');
INSERT INTO spl_icl_languages_translations VALUES ('481', 'ca', 'pa', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('482', 'ca', 'pl', 'kataloński');
INSERT INTO spl_icl_languages_translations VALUES ('483', 'ca', 'pt-pt', 'Catalão');
INSERT INTO spl_icl_languages_translations VALUES ('484', 'ca', 'pt-br', 'Catalão');
INSERT INTO spl_icl_languages_translations VALUES ('485', 'ca', 'qu', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('486', 'ca', 'ro', 'Catalană');
INSERT INTO spl_icl_languages_translations VALUES ('487', 'ca', 'ru', 'Каталанский');
INSERT INTO spl_icl_languages_translations VALUES ('488', 'ca', 'sl', 'Katalonščina');
INSERT INTO spl_icl_languages_translations VALUES ('489', 'ca', 'so', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('490', 'ca', 'sq', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('491', 'ca', 'sr', 'каталонски');
INSERT INTO spl_icl_languages_translations VALUES ('492', 'ca', 'sv', 'Katalanska');
INSERT INTO spl_icl_languages_translations VALUES ('493', 'ca', 'ta', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('494', 'ca', 'th', 'คะตะลาน');
INSERT INTO spl_icl_languages_translations VALUES ('495', 'ca', 'tr', 'Katalan dili');
INSERT INTO spl_icl_languages_translations VALUES ('496', 'ca', 'uk', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('497', 'ca', 'ur', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('498', 'ca', 'uz', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('499', 'ca', 'vi', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('500', 'ca', 'yi', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('501', 'ca', 'zh-hans', '加泰罗尼亚语');
INSERT INTO spl_icl_languages_translations VALUES ('502', 'ca', 'zu', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('503', 'ca', 'zh-hant', '加泰羅尼亞語');
INSERT INTO spl_icl_languages_translations VALUES ('504', 'ca', 'ms', 'Catalan');
INSERT INTO spl_icl_languages_translations VALUES ('505', 'cs', 'en', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('506', 'cs', 'es', 'Checo');
INSERT INTO spl_icl_languages_translations VALUES ('507', 'cs', 'de', 'Tschechisch');
INSERT INTO spl_icl_languages_translations VALUES ('508', 'cs', 'fr', 'Tchèque');
INSERT INTO spl_icl_languages_translations VALUES ('509', 'cs', 'ar', 'التشيكية');
INSERT INTO spl_icl_languages_translations VALUES ('510', 'cs', 'bs', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('511', 'cs', 'bg', 'Чешки');
INSERT INTO spl_icl_languages_translations VALUES ('512', 'cs', 'ca', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('513', 'cs', 'cs', 'Čeština');
INSERT INTO spl_icl_languages_translations VALUES ('514', 'cs', 'sk', 'Čeština');
INSERT INTO spl_icl_languages_translations VALUES ('515', 'cs', 'cy', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('516', 'cs', 'da', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('517', 'cs', 'el', 'Τσεχικη');
INSERT INTO spl_icl_languages_translations VALUES ('518', 'cs', 'eo', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('519', 'cs', 'et', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('520', 'cs', 'eu', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('521', 'cs', 'fa', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('522', 'cs', 'fi', 'tsekki');
INSERT INTO spl_icl_languages_translations VALUES ('523', 'cs', 'ga', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('524', 'cs', 'he', 'צ\'כית');
INSERT INTO spl_icl_languages_translations VALUES ('525', 'cs', 'hi', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('526', 'cs', 'hr', 'češki');
INSERT INTO spl_icl_languages_translations VALUES ('527', 'cs', 'hu', 'cseh');
INSERT INTO spl_icl_languages_translations VALUES ('528', 'cs', 'hy', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('529', 'cs', 'id', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('530', 'cs', 'is', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('531', 'cs', 'it', 'Ceco');
INSERT INTO spl_icl_languages_translations VALUES ('532', 'cs', 'ja', 'チェコ語');
INSERT INTO spl_icl_languages_translations VALUES ('533', 'cs', 'ko', '체코슬로바키아어');
INSERT INTO spl_icl_languages_translations VALUES ('534', 'cs', 'ku', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('535', 'cs', 'la', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('536', 'cs', 'lv', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('537', 'cs', 'lt', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('538', 'cs', 'mk', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('539', 'cs', 'mt', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('540', 'cs', 'mn', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('541', 'cs', 'ne', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('542', 'cs', 'nl', 'Tsjechisch');
INSERT INTO spl_icl_languages_translations VALUES ('543', 'cs', 'nb', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('544', 'cs', 'pa', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('545', 'cs', 'pl', 'czeski');
INSERT INTO spl_icl_languages_translations VALUES ('546', 'cs', 'pt-pt', 'Tcheco');
INSERT INTO spl_icl_languages_translations VALUES ('547', 'cs', 'pt-br', 'Tcheco');
INSERT INTO spl_icl_languages_translations VALUES ('548', 'cs', 'qu', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('549', 'cs', 'ro', 'Cehă');
INSERT INTO spl_icl_languages_translations VALUES ('550', 'cs', 'ru', 'Чешский');
INSERT INTO spl_icl_languages_translations VALUES ('551', 'cs', 'sl', 'Češčina');
INSERT INTO spl_icl_languages_translations VALUES ('552', 'cs', 'so', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('553', 'cs', 'sq', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('554', 'cs', 'sr', 'чешки');
INSERT INTO spl_icl_languages_translations VALUES ('555', 'cs', 'sv', 'Tjeckiska');
INSERT INTO spl_icl_languages_translations VALUES ('556', 'cs', 'ta', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('557', 'cs', 'th', 'เช็ก');
INSERT INTO spl_icl_languages_translations VALUES ('558', 'cs', 'tr', 'Çekçe');
INSERT INTO spl_icl_languages_translations VALUES ('559', 'cs', 'uk', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('560', 'cs', 'ur', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('561', 'cs', 'uz', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('562', 'cs', 'vi', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('563', 'cs', 'yi', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('564', 'cs', 'zh-hans', '捷克语');
INSERT INTO spl_icl_languages_translations VALUES ('565', 'cs', 'zu', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('566', 'cs', 'zh-hant', '捷克語');
INSERT INTO spl_icl_languages_translations VALUES ('567', 'cs', 'ms', 'Czech');
INSERT INTO spl_icl_languages_translations VALUES ('568', 'sk', 'en', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('569', 'sk', 'es', 'Eslavo');
INSERT INTO spl_icl_languages_translations VALUES ('570', 'sk', 'de', 'Slowakisch');
INSERT INTO spl_icl_languages_translations VALUES ('571', 'sk', 'fr', 'Slave');
INSERT INTO spl_icl_languages_translations VALUES ('572', 'sk', 'ar', 'السلافية');
INSERT INTO spl_icl_languages_translations VALUES ('573', 'sk', 'bs', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('574', 'sk', 'bg', 'Словашки');
INSERT INTO spl_icl_languages_translations VALUES ('575', 'sk', 'ca', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('576', 'sk', 'cs', 'Slovenština');
INSERT INTO spl_icl_languages_translations VALUES ('577', 'sk', 'sk', 'Slovenčina');
INSERT INTO spl_icl_languages_translations VALUES ('578', 'sk', 'cy', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('579', 'sk', 'da', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('580', 'sk', 'el', 'Σλαβικη');
INSERT INTO spl_icl_languages_translations VALUES ('581', 'sk', 'eo', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('582', 'sk', 'et', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('583', 'sk', 'eu', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('584', 'sk', 'fa', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('585', 'sk', 'fi', 'slaavi');
INSERT INTO spl_icl_languages_translations VALUES ('586', 'sk', 'ga', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('587', 'sk', 'he', 'סלאבית');
INSERT INTO spl_icl_languages_translations VALUES ('588', 'sk', 'hi', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('589', 'sk', 'hr', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('590', 'sk', 'hu', 'szláv');
INSERT INTO spl_icl_languages_translations VALUES ('591', 'sk', 'hy', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('592', 'sk', 'id', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('593', 'sk', 'is', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('594', 'sk', 'it', 'Slavo');
INSERT INTO spl_icl_languages_translations VALUES ('595', 'sk', 'ja', 'スラヴ語派');
INSERT INTO spl_icl_languages_translations VALUES ('596', 'sk', 'ko', '슬라브어');
INSERT INTO spl_icl_languages_translations VALUES ('597', 'sk', 'ku', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('598', 'sk', 'la', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('599', 'sk', 'lv', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('600', 'sk', 'lt', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('601', 'sk', 'mk', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('602', 'sk', 'mt', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('603', 'sk', 'mn', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('604', 'sk', 'ne', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('605', 'sk', 'nl', 'Slavisch');
INSERT INTO spl_icl_languages_translations VALUES ('606', 'sk', 'nb', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('607', 'sk', 'pa', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('608', 'sk', 'pl', 'słowacki');
INSERT INTO spl_icl_languages_translations VALUES ('609', 'sk', 'pt-pt', 'Eslavo');
INSERT INTO spl_icl_languages_translations VALUES ('610', 'sk', 'pt-br', 'Eslavo');
INSERT INTO spl_icl_languages_translations VALUES ('611', 'sk', 'qu', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('612', 'sk', 'ro', 'Slavă');
INSERT INTO spl_icl_languages_translations VALUES ('613', 'sk', 'ru', 'Славянский');
INSERT INTO spl_icl_languages_translations VALUES ('614', 'sk', 'sl', 'Slovaščina');
INSERT INTO spl_icl_languages_translations VALUES ('615', 'sk', 'so', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('616', 'sk', 'sq', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('617', 'sk', 'sr', 'словачки');
INSERT INTO spl_icl_languages_translations VALUES ('618', 'sk', 'sv', 'Slavisk');
INSERT INTO spl_icl_languages_translations VALUES ('619', 'sk', 'ta', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('620', 'sk', 'th', 'สลาวิก');
INSERT INTO spl_icl_languages_translations VALUES ('621', 'sk', 'tr', 'Slav dili');
INSERT INTO spl_icl_languages_translations VALUES ('622', 'sk', 'uk', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('623', 'sk', 'ur', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('624', 'sk', 'uz', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('625', 'sk', 'vi', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('626', 'sk', 'yi', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('627', 'sk', 'zh-hans', '斯拉夫语');
INSERT INTO spl_icl_languages_translations VALUES ('628', 'sk', 'zu', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('629', 'sk', 'zh-hant', '斯拉夫語');
INSERT INTO spl_icl_languages_translations VALUES ('630', 'sk', 'ms', 'Slovak');
INSERT INTO spl_icl_languages_translations VALUES ('631', 'cy', 'en', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('632', 'cy', 'es', 'Galés');
INSERT INTO spl_icl_languages_translations VALUES ('633', 'cy', 'de', 'Walisisch');
INSERT INTO spl_icl_languages_translations VALUES ('634', 'cy', 'fr', 'Gallois');
INSERT INTO spl_icl_languages_translations VALUES ('635', 'cy', 'ar', 'الولزية');
INSERT INTO spl_icl_languages_translations VALUES ('636', 'cy', 'bs', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('637', 'cy', 'bg', 'Уелски');
INSERT INTO spl_icl_languages_translations VALUES ('638', 'cy', 'ca', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('639', 'cy', 'cs', 'Velšský');
INSERT INTO spl_icl_languages_translations VALUES ('640', 'cy', 'sk', 'Welština');
INSERT INTO spl_icl_languages_translations VALUES ('641', 'cy', 'cy', 'Cymraeg');
INSERT INTO spl_icl_languages_translations VALUES ('642', 'cy', 'da', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('643', 'cy', 'el', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('644', 'cy', 'eo', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('645', 'cy', 'et', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('646', 'cy', 'eu', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('647', 'cy', 'fa', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('648', 'cy', 'fi', 'kymri');
INSERT INTO spl_icl_languages_translations VALUES ('649', 'cy', 'ga', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('650', 'cy', 'he', 'וולשית');
INSERT INTO spl_icl_languages_translations VALUES ('651', 'cy', 'hi', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('652', 'cy', 'hr', 'Velški');
INSERT INTO spl_icl_languages_translations VALUES ('653', 'cy', 'hu', 'vels');
INSERT INTO spl_icl_languages_translations VALUES ('654', 'cy', 'hy', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('655', 'cy', 'id', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('656', 'cy', 'is', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('657', 'cy', 'it', 'Gallese');
INSERT INTO spl_icl_languages_translations VALUES ('658', 'cy', 'ja', 'ウェールズ語');
INSERT INTO spl_icl_languages_translations VALUES ('659', 'cy', 'ko', '웨일즈어');
INSERT INTO spl_icl_languages_translations VALUES ('660', 'cy', 'ku', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('661', 'cy', 'la', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('662', 'cy', 'lv', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('663', 'cy', 'lt', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('664', 'cy', 'mk', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('665', 'cy', 'mt', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('666', 'cy', 'mn', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('667', 'cy', 'ne', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('668', 'cy', 'nl', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('669', 'cy', 'nb', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('670', 'cy', 'pa', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('671', 'cy', 'pl', 'walijski');
INSERT INTO spl_icl_languages_translations VALUES ('672', 'cy', 'pt-pt', 'Galês');
INSERT INTO spl_icl_languages_translations VALUES ('673', 'cy', 'pt-br', 'Galês');
INSERT INTO spl_icl_languages_translations VALUES ('674', 'cy', 'qu', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('675', 'cy', 'ro', 'Galeză');
INSERT INTO spl_icl_languages_translations VALUES ('676', 'cy', 'ru', 'Валлийский');
INSERT INTO spl_icl_languages_translations VALUES ('677', 'cy', 'sl', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('678', 'cy', 'so', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('679', 'cy', 'sq', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('680', 'cy', 'sr', 'велшки');
INSERT INTO spl_icl_languages_translations VALUES ('681', 'cy', 'sv', 'Walesiska');
INSERT INTO spl_icl_languages_translations VALUES ('682', 'cy', 'ta', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('683', 'cy', 'th', 'เวลช์');
INSERT INTO spl_icl_languages_translations VALUES ('684', 'cy', 'tr', 'Galce');
INSERT INTO spl_icl_languages_translations VALUES ('685', 'cy', 'uk', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('686', 'cy', 'ur', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('687', 'cy', 'uz', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('688', 'cy', 'vi', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('689', 'cy', 'yi', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('690', 'cy', 'zh-hans', '威尔士语');
INSERT INTO spl_icl_languages_translations VALUES ('691', 'cy', 'zu', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('692', 'cy', 'zh-hant', '威爾士語');
INSERT INTO spl_icl_languages_translations VALUES ('693', 'cy', 'ms', 'Welsh');
INSERT INTO spl_icl_languages_translations VALUES ('694', 'da', 'en', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('695', 'da', 'es', 'Danés');
INSERT INTO spl_icl_languages_translations VALUES ('696', 'da', 'de', 'Dänisch');
INSERT INTO spl_icl_languages_translations VALUES ('697', 'da', 'fr', 'Danois');
INSERT INTO spl_icl_languages_translations VALUES ('698', 'da', 'ar', 'الدانماركية');
INSERT INTO spl_icl_languages_translations VALUES ('699', 'da', 'bs', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('700', 'da', 'bg', 'Датски');
INSERT INTO spl_icl_languages_translations VALUES ('701', 'da', 'ca', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('702', 'da', 'cs', 'Dánský');
INSERT INTO spl_icl_languages_translations VALUES ('703', 'da', 'sk', 'Dánčina');
INSERT INTO spl_icl_languages_translations VALUES ('704', 'da', 'cy', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('705', 'da', 'da', 'Dansk');
INSERT INTO spl_icl_languages_translations VALUES ('706', 'da', 'el', 'Δανεζικα');
INSERT INTO spl_icl_languages_translations VALUES ('707', 'da', 'eo', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('708', 'da', 'et', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('709', 'da', 'eu', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('710', 'da', 'fa', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('711', 'da', 'fi', 'tanska');
INSERT INTO spl_icl_languages_translations VALUES ('712', 'da', 'ga', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('713', 'da', 'he', 'דנית');
INSERT INTO spl_icl_languages_translations VALUES ('714', 'da', 'hi', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('715', 'da', 'hr', 'Danski');
INSERT INTO spl_icl_languages_translations VALUES ('716', 'da', 'hu', 'dán');
INSERT INTO spl_icl_languages_translations VALUES ('717', 'da', 'hy', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('718', 'da', 'id', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('719', 'da', 'is', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('720', 'da', 'it', 'Danese');
INSERT INTO spl_icl_languages_translations VALUES ('721', 'da', 'ja', 'デンマーク語');
INSERT INTO spl_icl_languages_translations VALUES ('722', 'da', 'ko', '덴마크어');
INSERT INTO spl_icl_languages_translations VALUES ('723', 'da', 'ku', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('724', 'da', 'la', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('725', 'da', 'lv', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('726', 'da', 'lt', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('727', 'da', 'mk', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('728', 'da', 'mt', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('729', 'da', 'mn', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('730', 'da', 'ne', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('731', 'da', 'nl', 'Deens');
INSERT INTO spl_icl_languages_translations VALUES ('732', 'da', 'nb', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('733', 'da', 'pa', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('734', 'da', 'pl', 'duński');
INSERT INTO spl_icl_languages_translations VALUES ('735', 'da', 'pt-pt', 'Dinamarquês');
INSERT INTO spl_icl_languages_translations VALUES ('736', 'da', 'pt-br', 'Dinamarquês');
INSERT INTO spl_icl_languages_translations VALUES ('737', 'da', 'qu', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('738', 'da', 'ro', 'Daneză');
INSERT INTO spl_icl_languages_translations VALUES ('739', 'da', 'ru', 'Датский');
INSERT INTO spl_icl_languages_translations VALUES ('740', 'da', 'sl', 'Danščina');
INSERT INTO spl_icl_languages_translations VALUES ('741', 'da', 'so', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('742', 'da', 'sq', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('743', 'da', 'sr', 'дански');
INSERT INTO spl_icl_languages_translations VALUES ('744', 'da', 'sv', 'Danska');
INSERT INTO spl_icl_languages_translations VALUES ('745', 'da', 'ta', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('746', 'da', 'th', 'เดนมาร์ก');
INSERT INTO spl_icl_languages_translations VALUES ('747', 'da', 'tr', 'Danca');
INSERT INTO spl_icl_languages_translations VALUES ('748', 'da', 'uk', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('749', 'da', 'ur', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('750', 'da', 'uz', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('751', 'da', 'vi', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('752', 'da', 'yi', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('753', 'da', 'zh-hans', '丹麦语');
INSERT INTO spl_icl_languages_translations VALUES ('754', 'da', 'zu', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('755', 'da', 'zh-hant', '丹麥語');
INSERT INTO spl_icl_languages_translations VALUES ('756', 'da', 'ms', 'Danish');
INSERT INTO spl_icl_languages_translations VALUES ('757', 'el', 'en', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('758', 'el', 'es', 'Griego');
INSERT INTO spl_icl_languages_translations VALUES ('759', 'el', 'de', 'Griechisch');
INSERT INTO spl_icl_languages_translations VALUES ('760', 'el', 'fr', 'Grec moderne');
INSERT INTO spl_icl_languages_translations VALUES ('761', 'el', 'ar', 'اليونانية');
INSERT INTO spl_icl_languages_translations VALUES ('762', 'el', 'bs', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('763', 'el', 'bg', 'Гръцки');
INSERT INTO spl_icl_languages_translations VALUES ('764', 'el', 'ca', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('765', 'el', 'cs', 'Řečtina');
INSERT INTO spl_icl_languages_translations VALUES ('766', 'el', 'sk', 'Gréčtina');
INSERT INTO spl_icl_languages_translations VALUES ('767', 'el', 'cy', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('768', 'el', 'da', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('769', 'el', 'el', 'Ελληνικα');
INSERT INTO spl_icl_languages_translations VALUES ('770', 'el', 'eo', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('771', 'el', 'et', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('772', 'el', 'eu', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('773', 'el', 'fa', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('774', 'el', 'fi', 'kreikka');
INSERT INTO spl_icl_languages_translations VALUES ('775', 'el', 'ga', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('776', 'el', 'he', 'יוונית');
INSERT INTO spl_icl_languages_translations VALUES ('777', 'el', 'hi', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('778', 'el', 'hr', 'Grčki');
INSERT INTO spl_icl_languages_translations VALUES ('779', 'el', 'hu', 'görög');
INSERT INTO spl_icl_languages_translations VALUES ('780', 'el', 'hy', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('781', 'el', 'id', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('782', 'el', 'is', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('783', 'el', 'it', 'Greco');
INSERT INTO spl_icl_languages_translations VALUES ('784', 'el', 'ja', 'ギリシア語');
INSERT INTO spl_icl_languages_translations VALUES ('785', 'el', 'ko', '그리스어');
INSERT INTO spl_icl_languages_translations VALUES ('786', 'el', 'ku', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('787', 'el', 'la', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('788', 'el', 'lv', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('789', 'el', 'lt', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('790', 'el', 'mk', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('791', 'el', 'mt', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('792', 'el', 'mn', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('793', 'el', 'ne', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('794', 'el', 'nl', 'Grieks');
INSERT INTO spl_icl_languages_translations VALUES ('795', 'el', 'nb', 'Gresk');
INSERT INTO spl_icl_languages_translations VALUES ('796', 'el', 'pa', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('797', 'el', 'pl', 'grecki');
INSERT INTO spl_icl_languages_translations VALUES ('798', 'el', 'pt-pt', 'Grego');
INSERT INTO spl_icl_languages_translations VALUES ('799', 'el', 'pt-br', 'Grego');
INSERT INTO spl_icl_languages_translations VALUES ('800', 'el', 'qu', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('801', 'el', 'ro', 'Greacă');
INSERT INTO spl_icl_languages_translations VALUES ('802', 'el', 'ru', 'Греческий');
INSERT INTO spl_icl_languages_translations VALUES ('803', 'el', 'sl', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('804', 'el', 'so', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('805', 'el', 'sq', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('806', 'el', 'sr', 'грчки');
INSERT INTO spl_icl_languages_translations VALUES ('807', 'el', 'sv', 'Grekiska');
INSERT INTO spl_icl_languages_translations VALUES ('808', 'el', 'ta', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('809', 'el', 'th', 'กรีก');
INSERT INTO spl_icl_languages_translations VALUES ('810', 'el', 'tr', 'Yunanca');
INSERT INTO spl_icl_languages_translations VALUES ('811', 'el', 'uk', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('812', 'el', 'ur', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('813', 'el', 'uz', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('814', 'el', 'vi', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('815', 'el', 'yi', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('816', 'el', 'zh-hans', '希腊语');
INSERT INTO spl_icl_languages_translations VALUES ('817', 'el', 'zu', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('818', 'el', 'zh-hant', '希臘語');
INSERT INTO spl_icl_languages_translations VALUES ('819', 'el', 'ms', 'Greek');
INSERT INTO spl_icl_languages_translations VALUES ('820', 'eo', 'en', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('821', 'eo', 'es', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('822', 'eo', 'de', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('823', 'eo', 'fr', 'Espéranto');
INSERT INTO spl_icl_languages_translations VALUES ('824', 'eo', 'ar', 'الاسبرانتو');
INSERT INTO spl_icl_languages_translations VALUES ('825', 'eo', 'bs', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('826', 'eo', 'bg', 'Есперанто');
INSERT INTO spl_icl_languages_translations VALUES ('827', 'eo', 'ca', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('828', 'eo', 'cs', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('829', 'eo', 'sk', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('830', 'eo', 'cy', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('831', 'eo', 'da', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('832', 'eo', 'el', 'Εσπεραντο');
INSERT INTO spl_icl_languages_translations VALUES ('833', 'eo', 'eo', 'Esperanta');
INSERT INTO spl_icl_languages_translations VALUES ('834', 'eo', 'et', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('835', 'eo', 'eu', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('836', 'eo', 'fa', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('837', 'eo', 'fi', 'esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('838', 'eo', 'ga', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('839', 'eo', 'he', 'אספרנטו');
INSERT INTO spl_icl_languages_translations VALUES ('840', 'eo', 'hi', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('841', 'eo', 'hr', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('842', 'eo', 'hu', 'eszperantó');
INSERT INTO spl_icl_languages_translations VALUES ('843', 'eo', 'hy', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('844', 'eo', 'id', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('845', 'eo', 'is', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('846', 'eo', 'it', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('847', 'eo', 'ja', 'エスペラント語');
INSERT INTO spl_icl_languages_translations VALUES ('848', 'eo', 'ko', '에스페란토어');
INSERT INTO spl_icl_languages_translations VALUES ('849', 'eo', 'ku', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('850', 'eo', 'la', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('851', 'eo', 'lv', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('852', 'eo', 'lt', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('853', 'eo', 'mk', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('854', 'eo', 'mt', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('855', 'eo', 'mn', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('856', 'eo', 'ne', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('857', 'eo', 'nl', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('858', 'eo', 'nb', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('859', 'eo', 'pa', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('860', 'eo', 'pl', 'esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('861', 'eo', 'pt-pt', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('862', 'eo', 'pt-br', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('863', 'eo', 'qu', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('864', 'eo', 'ro', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('865', 'eo', 'ru', 'Эсперанто');
INSERT INTO spl_icl_languages_translations VALUES ('866', 'eo', 'sl', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('867', 'eo', 'so', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('868', 'eo', 'sq', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('869', 'eo', 'sr', 'есперанто');
INSERT INTO spl_icl_languages_translations VALUES ('870', 'eo', 'sv', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('871', 'eo', 'ta', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('872', 'eo', 'th', 'เอสเปอรันโต');
INSERT INTO spl_icl_languages_translations VALUES ('873', 'eo', 'tr', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('874', 'eo', 'uk', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('875', 'eo', 'ur', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('876', 'eo', 'uz', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('877', 'eo', 'vi', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('878', 'eo', 'yi', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('879', 'eo', 'zh-hans', '世界语');
INSERT INTO spl_icl_languages_translations VALUES ('880', 'eo', 'zu', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('881', 'eo', 'zh-hant', '世界語');
INSERT INTO spl_icl_languages_translations VALUES ('882', 'eo', 'ms', 'Esperanto');
INSERT INTO spl_icl_languages_translations VALUES ('883', 'et', 'en', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('884', 'et', 'es', 'Estonio');
INSERT INTO spl_icl_languages_translations VALUES ('885', 'et', 'de', 'Estnisch');
INSERT INTO spl_icl_languages_translations VALUES ('886', 'et', 'fr', 'Estonien');
INSERT INTO spl_icl_languages_translations VALUES ('887', 'et', 'ar', 'الأستونية');
INSERT INTO spl_icl_languages_translations VALUES ('888', 'et', 'bs', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('889', 'et', 'bg', 'Естонски');
INSERT INTO spl_icl_languages_translations VALUES ('890', 'et', 'ca', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('891', 'et', 'cs', 'Estonština');
INSERT INTO spl_icl_languages_translations VALUES ('892', 'et', 'sk', 'Estónčina');
INSERT INTO spl_icl_languages_translations VALUES ('893', 'et', 'cy', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('894', 'et', 'da', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('895', 'et', 'el', 'Εσθονικα');
INSERT INTO spl_icl_languages_translations VALUES ('896', 'et', 'eo', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('897', 'et', 'et', 'Eesti');
INSERT INTO spl_icl_languages_translations VALUES ('898', 'et', 'eu', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('899', 'et', 'fa', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('900', 'et', 'fi', 'eesti');
INSERT INTO spl_icl_languages_translations VALUES ('901', 'et', 'ga', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('902', 'et', 'he', 'אסטונית');
INSERT INTO spl_icl_languages_translations VALUES ('903', 'et', 'hi', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('904', 'et', 'hr', 'Estonski');
INSERT INTO spl_icl_languages_translations VALUES ('905', 'et', 'hu', 'észt');
INSERT INTO spl_icl_languages_translations VALUES ('906', 'et', 'hy', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('907', 'et', 'id', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('908', 'et', 'is', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('909', 'et', 'it', 'Estone');
INSERT INTO spl_icl_languages_translations VALUES ('910', 'et', 'ja', 'エストニア語');
INSERT INTO spl_icl_languages_translations VALUES ('911', 'et', 'ko', '에스토니아어');
INSERT INTO spl_icl_languages_translations VALUES ('912', 'et', 'ku', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('913', 'et', 'la', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('914', 'et', 'lv', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('915', 'et', 'lt', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('916', 'et', 'mk', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('917', 'et', 'mt', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('918', 'et', 'mn', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('919', 'et', 'ne', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('920', 'et', 'nl', 'Ests');
INSERT INTO spl_icl_languages_translations VALUES ('921', 'et', 'nb', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('922', 'et', 'pa', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('923', 'et', 'pl', 'estoński');
INSERT INTO spl_icl_languages_translations VALUES ('924', 'et', 'pt-pt', 'Estoniano');
INSERT INTO spl_icl_languages_translations VALUES ('925', 'et', 'pt-br', 'Estoniano');
INSERT INTO spl_icl_languages_translations VALUES ('926', 'et', 'qu', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('927', 'et', 'ro', 'Estoniană');
INSERT INTO spl_icl_languages_translations VALUES ('928', 'et', 'ru', 'Эстонский');
INSERT INTO spl_icl_languages_translations VALUES ('929', 'et', 'sl', 'Estonščina');
INSERT INTO spl_icl_languages_translations VALUES ('930', 'et', 'so', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('931', 'et', 'sq', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('932', 'et', 'sr', 'естонски');
INSERT INTO spl_icl_languages_translations VALUES ('933', 'et', 'sv', 'Estniska');
INSERT INTO spl_icl_languages_translations VALUES ('934', 'et', 'ta', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('935', 'et', 'th', 'เอสโตเนียน');
INSERT INTO spl_icl_languages_translations VALUES ('936', 'et', 'tr', 'Estonya dili');
INSERT INTO spl_icl_languages_translations VALUES ('937', 'et', 'uk', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('938', 'et', 'ur', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('939', 'et', 'uz', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('940', 'et', 'vi', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('941', 'et', 'yi', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('942', 'et', 'zh-hans', '爱沙尼亚语');
INSERT INTO spl_icl_languages_translations VALUES ('943', 'et', 'zu', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('944', 'et', 'zh-hant', '愛沙尼亞語');
INSERT INTO spl_icl_languages_translations VALUES ('945', 'et', 'ms', 'Estonian');
INSERT INTO spl_icl_languages_translations VALUES ('946', 'eu', 'en', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('947', 'eu', 'es', 'Euskera');
INSERT INTO spl_icl_languages_translations VALUES ('948', 'eu', 'de', 'Baskisch');
INSERT INTO spl_icl_languages_translations VALUES ('949', 'eu', 'fr', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('950', 'eu', 'ar', 'لغة الباسك');
INSERT INTO spl_icl_languages_translations VALUES ('951', 'eu', 'bs', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('952', 'eu', 'bg', 'Баски');
INSERT INTO spl_icl_languages_translations VALUES ('953', 'eu', 'ca', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('954', 'eu', 'cs', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('955', 'eu', 'sk', 'Baskičtina');
INSERT INTO spl_icl_languages_translations VALUES ('956', 'eu', 'cy', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('957', 'eu', 'da', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('958', 'eu', 'el', 'Βασκικα');
INSERT INTO spl_icl_languages_translations VALUES ('959', 'eu', 'eo', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('960', 'eu', 'et', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('961', 'eu', 'eu', 'Euskara');
INSERT INTO spl_icl_languages_translations VALUES ('962', 'eu', 'fa', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('963', 'eu', 'fi', 'baski');
INSERT INTO spl_icl_languages_translations VALUES ('964', 'eu', 'ga', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('965', 'eu', 'he', 'בסקית');
INSERT INTO spl_icl_languages_translations VALUES ('966', 'eu', 'hi', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('967', 'eu', 'hr', 'Baskijski');
INSERT INTO spl_icl_languages_translations VALUES ('968', 'eu', 'hu', 'baszk');
INSERT INTO spl_icl_languages_translations VALUES ('969', 'eu', 'hy', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('970', 'eu', 'id', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('971', 'eu', 'is', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('972', 'eu', 'it', 'Basco');
INSERT INTO spl_icl_languages_translations VALUES ('973', 'eu', 'ja', 'バスク語');
INSERT INTO spl_icl_languages_translations VALUES ('974', 'eu', 'ko', '바스크어');
INSERT INTO spl_icl_languages_translations VALUES ('975', 'eu', 'ku', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('976', 'eu', 'la', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('977', 'eu', 'lv', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('978', 'eu', 'lt', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('979', 'eu', 'mk', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('980', 'eu', 'mt', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('981', 'eu', 'mn', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('982', 'eu', 'ne', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('983', 'eu', 'nl', 'Baskisch');
INSERT INTO spl_icl_languages_translations VALUES ('984', 'eu', 'nb', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('985', 'eu', 'pa', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('986', 'eu', 'pl', 'baskijski');
INSERT INTO spl_icl_languages_translations VALUES ('987', 'eu', 'pt-pt', 'Basco');
INSERT INTO spl_icl_languages_translations VALUES ('988', 'eu', 'pt-br', 'Basco');
INSERT INTO spl_icl_languages_translations VALUES ('989', 'eu', 'qu', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('990', 'eu', 'ro', 'Bască');
INSERT INTO spl_icl_languages_translations VALUES ('991', 'eu', 'ru', 'Баскский');
INSERT INTO spl_icl_languages_translations VALUES ('992', 'eu', 'sl', 'Baskovščina');
INSERT INTO spl_icl_languages_translations VALUES ('993', 'eu', 'so', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('994', 'eu', 'sq', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('995', 'eu', 'sr', 'баскијски');
INSERT INTO spl_icl_languages_translations VALUES ('996', 'eu', 'sv', 'Baskiska');
INSERT INTO spl_icl_languages_translations VALUES ('997', 'eu', 'ta', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('998', 'eu', 'th', 'บาสค์');
INSERT INTO spl_icl_languages_translations VALUES ('999', 'eu', 'tr', 'Bask dili');
INSERT INTO spl_icl_languages_translations VALUES ('1000', 'eu', 'uk', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('1001', 'eu', 'ur', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('1002', 'eu', 'uz', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('1003', 'eu', 'vi', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('1004', 'eu', 'yi', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('1005', 'eu', 'zh-hans', '巴斯克语');
INSERT INTO spl_icl_languages_translations VALUES ('1006', 'eu', 'zu', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('1007', 'eu', 'zh-hant', '巴斯克語');
INSERT INTO spl_icl_languages_translations VALUES ('1008', 'eu', 'ms', 'Basque');
INSERT INTO spl_icl_languages_translations VALUES ('1009', 'fa', 'en', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1010', 'fa', 'es', 'Persa');
INSERT INTO spl_icl_languages_translations VALUES ('1011', 'fa', 'de', 'Persisch');
INSERT INTO spl_icl_languages_translations VALUES ('1012', 'fa', 'fr', 'Perse');
INSERT INTO spl_icl_languages_translations VALUES ('1013', 'fa', 'ar', 'الفارسية');
INSERT INTO spl_icl_languages_translations VALUES ('1014', 'fa', 'bs', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1015', 'fa', 'bg', 'Персийски');
INSERT INTO spl_icl_languages_translations VALUES ('1016', 'fa', 'ca', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1017', 'fa', 'cs', 'Perský');
INSERT INTO spl_icl_languages_translations VALUES ('1018', 'fa', 'sk', 'Perzština');
INSERT INTO spl_icl_languages_translations VALUES ('1019', 'fa', 'cy', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1020', 'fa', 'da', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1021', 'fa', 'el', 'Περσικος');
INSERT INTO spl_icl_languages_translations VALUES ('1022', 'fa', 'eo', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1023', 'fa', 'et', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1024', 'fa', 'eu', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1025', 'fa', 'fa', 'فارسی');
INSERT INTO spl_icl_languages_translations VALUES ('1026', 'fa', 'fi', 'persia');
INSERT INTO spl_icl_languages_translations VALUES ('1027', 'fa', 'ga', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1028', 'fa', 'he', 'פרסית');
INSERT INTO spl_icl_languages_translations VALUES ('1029', 'fa', 'hi', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1030', 'fa', 'hr', 'Perzijski');
INSERT INTO spl_icl_languages_translations VALUES ('1031', 'fa', 'hu', 'perzsa');
INSERT INTO spl_icl_languages_translations VALUES ('1032', 'fa', 'hy', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1033', 'fa', 'id', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1034', 'fa', 'is', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1035', 'fa', 'it', 'Persiano');
INSERT INTO spl_icl_languages_translations VALUES ('1036', 'fa', 'ja', 'ペルシア語');
INSERT INTO spl_icl_languages_translations VALUES ('1037', 'fa', 'ko', '페르시아어');
INSERT INTO spl_icl_languages_translations VALUES ('1038', 'fa', 'ku', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1039', 'fa', 'la', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1040', 'fa', 'lv', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1041', 'fa', 'lt', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1042', 'fa', 'mk', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1043', 'fa', 'mt', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1044', 'fa', 'mn', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1045', 'fa', 'ne', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1046', 'fa', 'nl', 'Perzisch');
INSERT INTO spl_icl_languages_translations VALUES ('1047', 'fa', 'nb', 'Persisk');
INSERT INTO spl_icl_languages_translations VALUES ('1048', 'fa', 'pa', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1049', 'fa', 'pl', 'perski');
INSERT INTO spl_icl_languages_translations VALUES ('1050', 'fa', 'pt-pt', 'Persa');
INSERT INTO spl_icl_languages_translations VALUES ('1051', 'fa', 'pt-br', 'Persa');
INSERT INTO spl_icl_languages_translations VALUES ('1052', 'fa', 'qu', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1053', 'fa', 'ro', 'Persană');
INSERT INTO spl_icl_languages_translations VALUES ('1054', 'fa', 'ru', 'Персидский');
INSERT INTO spl_icl_languages_translations VALUES ('1055', 'fa', 'sl', 'Perzijski');
INSERT INTO spl_icl_languages_translations VALUES ('1056', 'fa', 'so', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1057', 'fa', 'sq', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1058', 'fa', 'sr', 'персијски');
INSERT INTO spl_icl_languages_translations VALUES ('1059', 'fa', 'sv', 'Persiska');
INSERT INTO spl_icl_languages_translations VALUES ('1060', 'fa', 'ta', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1061', 'fa', 'th', 'เปอร์เซียน');
INSERT INTO spl_icl_languages_translations VALUES ('1062', 'fa', 'tr', 'Farsça');
INSERT INTO spl_icl_languages_translations VALUES ('1063', 'fa', 'uk', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1064', 'fa', 'ur', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1065', 'fa', 'uz', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1066', 'fa', 'vi', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1067', 'fa', 'yi', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1068', 'fa', 'zh-hans', '波斯语');
INSERT INTO spl_icl_languages_translations VALUES ('1069', 'fa', 'zu', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1070', 'fa', 'zh-hant', '波斯語');
INSERT INTO spl_icl_languages_translations VALUES ('1071', 'fa', 'ms', 'Persian');
INSERT INTO spl_icl_languages_translations VALUES ('1072', 'fi', 'en', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1073', 'fi', 'es', 'Finlandés');
INSERT INTO spl_icl_languages_translations VALUES ('1074', 'fi', 'de', 'Finnisch');
INSERT INTO spl_icl_languages_translations VALUES ('1075', 'fi', 'fr', 'Finnois');
INSERT INTO spl_icl_languages_translations VALUES ('1076', 'fi', 'ar', 'الفنلندية');
INSERT INTO spl_icl_languages_translations VALUES ('1077', 'fi', 'bs', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1078', 'fi', 'bg', 'Фински');
INSERT INTO spl_icl_languages_translations VALUES ('1079', 'fi', 'ca', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1080', 'fi', 'cs', 'Finský');
INSERT INTO spl_icl_languages_translations VALUES ('1081', 'fi', 'sk', 'Fínština');
INSERT INTO spl_icl_languages_translations VALUES ('1082', 'fi', 'cy', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1083', 'fi', 'da', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1084', 'fi', 'el', 'Φινλανδικη');
INSERT INTO spl_icl_languages_translations VALUES ('1085', 'fi', 'eo', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1086', 'fi', 'et', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1087', 'fi', 'eu', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1088', 'fi', 'fa', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1089', 'fi', 'fi', 'Suomi');
INSERT INTO spl_icl_languages_translations VALUES ('1090', 'fi', 'ga', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1091', 'fi', 'he', 'פינית');
INSERT INTO spl_icl_languages_translations VALUES ('1092', 'fi', 'hi', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1093', 'fi', 'hr', 'Finski');
INSERT INTO spl_icl_languages_translations VALUES ('1094', 'fi', 'hu', 'finn');
INSERT INTO spl_icl_languages_translations VALUES ('1095', 'fi', 'hy', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1096', 'fi', 'id', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1097', 'fi', 'is', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1098', 'fi', 'it', 'Finlandese');
INSERT INTO spl_icl_languages_translations VALUES ('1099', 'fi', 'ja', 'フィンランド語');
INSERT INTO spl_icl_languages_translations VALUES ('1100', 'fi', 'ko', '핀란드어');
INSERT INTO spl_icl_languages_translations VALUES ('1101', 'fi', 'ku', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1102', 'fi', 'la', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1103', 'fi', 'lv', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1104', 'fi', 'lt', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1105', 'fi', 'mk', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1106', 'fi', 'mt', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1107', 'fi', 'mn', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1108', 'fi', 'ne', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1109', 'fi', 'nl', 'Fins');
INSERT INTO spl_icl_languages_translations VALUES ('1110', 'fi', 'nb', 'Finsk');
INSERT INTO spl_icl_languages_translations VALUES ('1111', 'fi', 'pa', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1112', 'fi', 'pl', 'fiński');
INSERT INTO spl_icl_languages_translations VALUES ('1113', 'fi', 'pt-pt', 'Finlandês');
INSERT INTO spl_icl_languages_translations VALUES ('1114', 'fi', 'pt-br', 'Finlandês');
INSERT INTO spl_icl_languages_translations VALUES ('1115', 'fi', 'qu', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1116', 'fi', 'ro', 'Finlandeză');
INSERT INTO spl_icl_languages_translations VALUES ('1117', 'fi', 'ru', 'Финский');
INSERT INTO spl_icl_languages_translations VALUES ('1118', 'fi', 'sl', 'Finski');
INSERT INTO spl_icl_languages_translations VALUES ('1119', 'fi', 'so', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1120', 'fi', 'sq', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1121', 'fi', 'sr', 'фински');
INSERT INTO spl_icl_languages_translations VALUES ('1122', 'fi', 'sv', 'Finska');
INSERT INTO spl_icl_languages_translations VALUES ('1123', 'fi', 'ta', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1124', 'fi', 'th', 'ฟินนิช');
INSERT INTO spl_icl_languages_translations VALUES ('1125', 'fi', 'tr', 'Fince');
INSERT INTO spl_icl_languages_translations VALUES ('1126', 'fi', 'uk', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1127', 'fi', 'ur', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1128', 'fi', 'uz', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1129', 'fi', 'vi', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1130', 'fi', 'yi', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1131', 'fi', 'zh-hans', '芬兰语');
INSERT INTO spl_icl_languages_translations VALUES ('1132', 'fi', 'zu', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1133', 'fi', 'zh-hant', '芬蘭語');
INSERT INTO spl_icl_languages_translations VALUES ('1134', 'fi', 'ms', 'Finnish');
INSERT INTO spl_icl_languages_translations VALUES ('1135', 'ga', 'en', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1136', 'ga', 'es', 'Irlandés');
INSERT INTO spl_icl_languages_translations VALUES ('1137', 'ga', 'de', 'Irisch');
INSERT INTO spl_icl_languages_translations VALUES ('1138', 'ga', 'fr', 'Irlandais');
INSERT INTO spl_icl_languages_translations VALUES ('1139', 'ga', 'ar', 'الأيرلندية');
INSERT INTO spl_icl_languages_translations VALUES ('1140', 'ga', 'bs', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1141', 'ga', 'bg', 'Ирландски');
INSERT INTO spl_icl_languages_translations VALUES ('1142', 'ga', 'ca', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1143', 'ga', 'cs', 'Irský');
INSERT INTO spl_icl_languages_translations VALUES ('1144', 'ga', 'sk', 'Írština');
INSERT INTO spl_icl_languages_translations VALUES ('1145', 'ga', 'cy', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1146', 'ga', 'da', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1147', 'ga', 'el', 'Ιρλανδικα');
INSERT INTO spl_icl_languages_translations VALUES ('1148', 'ga', 'eo', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1149', 'ga', 'et', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1150', 'ga', 'eu', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1151', 'ga', 'fa', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1152', 'ga', 'fi', 'iiri');
INSERT INTO spl_icl_languages_translations VALUES ('1153', 'ga', 'ga', 'Gaeilge');
INSERT INTO spl_icl_languages_translations VALUES ('1154', 'ga', 'he', 'אירית');
INSERT INTO spl_icl_languages_translations VALUES ('1155', 'ga', 'hi', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1156', 'ga', 'hr', 'Irci');
INSERT INTO spl_icl_languages_translations VALUES ('1157', 'ga', 'hu', 'ír');
INSERT INTO spl_icl_languages_translations VALUES ('1158', 'ga', 'hy', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1159', 'ga', 'id', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1160', 'ga', 'is', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1161', 'ga', 'it', 'Irlandese');
INSERT INTO spl_icl_languages_translations VALUES ('1162', 'ga', 'ja', 'アイルランド語');
INSERT INTO spl_icl_languages_translations VALUES ('1163', 'ga', 'ko', '아일랜드어');
INSERT INTO spl_icl_languages_translations VALUES ('1164', 'ga', 'ku', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1165', 'ga', 'la', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1166', 'ga', 'lv', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1167', 'ga', 'lt', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1168', 'ga', 'mk', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1169', 'ga', 'mt', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1170', 'ga', 'mn', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1171', 'ga', 'ne', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1172', 'ga', 'nl', 'Iers');
INSERT INTO spl_icl_languages_translations VALUES ('1173', 'ga', 'nb', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1174', 'ga', 'pa', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1175', 'ga', 'pl', 'irlandzki');
INSERT INTO spl_icl_languages_translations VALUES ('1176', 'ga', 'pt-pt', 'Irlandês');
INSERT INTO spl_icl_languages_translations VALUES ('1177', 'ga', 'pt-br', 'Irlandês');
INSERT INTO spl_icl_languages_translations VALUES ('1178', 'ga', 'qu', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1179', 'ga', 'ro', 'Irlandeză');
INSERT INTO spl_icl_languages_translations VALUES ('1180', 'ga', 'ru', 'Ирландский');
INSERT INTO spl_icl_languages_translations VALUES ('1181', 'ga', 'sl', 'Irski');
INSERT INTO spl_icl_languages_translations VALUES ('1182', 'ga', 'so', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1183', 'ga', 'sq', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1184', 'ga', 'sr', 'ирски');
INSERT INTO spl_icl_languages_translations VALUES ('1185', 'ga', 'sv', 'Irländska');
INSERT INTO spl_icl_languages_translations VALUES ('1186', 'ga', 'ta', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1187', 'ga', 'th', 'ไอริช');
INSERT INTO spl_icl_languages_translations VALUES ('1188', 'ga', 'tr', 'İrlanda dili');
INSERT INTO spl_icl_languages_translations VALUES ('1189', 'ga', 'uk', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1190', 'ga', 'ur', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1191', 'ga', 'uz', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1192', 'ga', 'vi', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1193', 'ga', 'yi', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1194', 'ga', 'zh-hans', '爱尔兰语');
INSERT INTO spl_icl_languages_translations VALUES ('1195', 'ga', 'zu', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1196', 'ga', 'zh-hant', '愛爾蘭語');
INSERT INTO spl_icl_languages_translations VALUES ('1197', 'ga', 'ms', 'Irish');
INSERT INTO spl_icl_languages_translations VALUES ('1198', 'he', 'en', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1199', 'he', 'es', 'Hebreo');
INSERT INTO spl_icl_languages_translations VALUES ('1200', 'he', 'de', 'Hebräisch');
INSERT INTO spl_icl_languages_translations VALUES ('1201', 'he', 'fr', 'Hébreu');
INSERT INTO spl_icl_languages_translations VALUES ('1202', 'he', 'ar', 'العبرية');
INSERT INTO spl_icl_languages_translations VALUES ('1203', 'he', 'bs', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1204', 'he', 'bg', 'Иврит');
INSERT INTO spl_icl_languages_translations VALUES ('1205', 'he', 'ca', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1206', 'he', 'cs', 'Hebrejština');
INSERT INTO spl_icl_languages_translations VALUES ('1207', 'he', 'sk', 'Hebrejčina');
INSERT INTO spl_icl_languages_translations VALUES ('1208', 'he', 'cy', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1209', 'he', 'da', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1210', 'he', 'el', 'Εβραικα');
INSERT INTO spl_icl_languages_translations VALUES ('1211', 'he', 'eo', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1212', 'he', 'et', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1213', 'he', 'eu', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1214', 'he', 'fa', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1215', 'he', 'fi', 'heprea');
INSERT INTO spl_icl_languages_translations VALUES ('1216', 'he', 'ga', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1217', 'he', 'he', 'עברית');
INSERT INTO spl_icl_languages_translations VALUES ('1218', 'he', 'hi', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1219', 'he', 'hr', 'Hebrejski');
INSERT INTO spl_icl_languages_translations VALUES ('1220', 'he', 'hu', 'héber');
INSERT INTO spl_icl_languages_translations VALUES ('1221', 'he', 'hy', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1222', 'he', 'id', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1223', 'he', 'is', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1224', 'he', 'it', 'Ebraico');
INSERT INTO spl_icl_languages_translations VALUES ('1225', 'he', 'ja', 'ヘブライ語');
INSERT INTO spl_icl_languages_translations VALUES ('1226', 'he', 'ko', '히브리어');
INSERT INTO spl_icl_languages_translations VALUES ('1227', 'he', 'ku', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1228', 'he', 'la', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1229', 'he', 'lv', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1230', 'he', 'lt', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1231', 'he', 'mk', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1232', 'he', 'mt', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1233', 'he', 'mn', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1234', 'he', 'ne', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1235', 'he', 'nl', 'Hebreeuws');
INSERT INTO spl_icl_languages_translations VALUES ('1236', 'he', 'nb', 'Hebraisk');
INSERT INTO spl_icl_languages_translations VALUES ('1237', 'he', 'pa', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1238', 'he', 'pl', 'hebrajski');
INSERT INTO spl_icl_languages_translations VALUES ('1239', 'he', 'pt-pt', 'Hebraico');
INSERT INTO spl_icl_languages_translations VALUES ('1240', 'he', 'pt-br', 'Hebraico');
INSERT INTO spl_icl_languages_translations VALUES ('1241', 'he', 'qu', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1242', 'he', 'ro', 'Ebraică');
INSERT INTO spl_icl_languages_translations VALUES ('1243', 'he', 'ru', 'Иврит');
INSERT INTO spl_icl_languages_translations VALUES ('1244', 'he', 'sl', 'Hebrejščina');
INSERT INTO spl_icl_languages_translations VALUES ('1245', 'he', 'so', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1246', 'he', 'sq', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1247', 'he', 'sr', 'Хебрејски');
INSERT INTO spl_icl_languages_translations VALUES ('1248', 'he', 'sv', 'Hebreiska');
INSERT INTO spl_icl_languages_translations VALUES ('1249', 'he', 'ta', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1250', 'he', 'th', 'ฮิบรู');
INSERT INTO spl_icl_languages_translations VALUES ('1251', 'he', 'tr', 'İbranice');
INSERT INTO spl_icl_languages_translations VALUES ('1252', 'he', 'uk', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1253', 'he', 'ur', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1254', 'he', 'uz', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1255', 'he', 'vi', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1256', 'he', 'yi', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1257', 'he', 'zh-hans', '希伯来语');
INSERT INTO spl_icl_languages_translations VALUES ('1258', 'he', 'zu', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1259', 'he', 'zh-hant', '希伯來語');
INSERT INTO spl_icl_languages_translations VALUES ('1260', 'he', 'ms', 'Hebrew');
INSERT INTO spl_icl_languages_translations VALUES ('1261', 'hi', 'en', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1262', 'hi', 'es', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1263', 'hi', 'de', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1264', 'hi', 'fr', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1265', 'hi', 'ar', 'الهندية');
INSERT INTO spl_icl_languages_translations VALUES ('1266', 'hi', 'bs', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1267', 'hi', 'bg', 'Хинди');
INSERT INTO spl_icl_languages_translations VALUES ('1268', 'hi', 'ca', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1269', 'hi', 'cs', 'Hindština');
INSERT INTO spl_icl_languages_translations VALUES ('1270', 'hi', 'sk', 'Hindčina');
INSERT INTO spl_icl_languages_translations VALUES ('1271', 'hi', 'cy', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1272', 'hi', 'da', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1273', 'hi', 'el', 'Ινδικα');
INSERT INTO spl_icl_languages_translations VALUES ('1274', 'hi', 'eo', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1275', 'hi', 'et', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1276', 'hi', 'eu', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1277', 'hi', 'fa', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1278', 'hi', 'fi', 'hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1279', 'hi', 'ga', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1280', 'hi', 'he', 'הודית');
INSERT INTO spl_icl_languages_translations VALUES ('1281', 'hi', 'hi', 'हिन्दी');
INSERT INTO spl_icl_languages_translations VALUES ('1282', 'hi', 'hr', 'Hindski');
INSERT INTO spl_icl_languages_translations VALUES ('1283', 'hi', 'hu', 'hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1284', 'hi', 'hy', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1285', 'hi', 'id', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1286', 'hi', 'is', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1287', 'hi', 'it', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1288', 'hi', 'ja', 'ヒンディー語');
INSERT INTO spl_icl_languages_translations VALUES ('1289', 'hi', 'ko', '힌두어');
INSERT INTO spl_icl_languages_translations VALUES ('1290', 'hi', 'ku', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1291', 'hi', 'la', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1292', 'hi', 'lv', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1293', 'hi', 'lt', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1294', 'hi', 'mk', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1295', 'hi', 'mt', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1296', 'hi', 'mn', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1297', 'hi', 'ne', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1298', 'hi', 'nl', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1299', 'hi', 'nb', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1300', 'hi', 'pa', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1301', 'hi', 'pl', 'hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1302', 'hi', 'pt-pt', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1303', 'hi', 'pt-br', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1304', 'hi', 'qu', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1305', 'hi', 'ro', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1306', 'hi', 'ru', 'Хинди');
INSERT INTO spl_icl_languages_translations VALUES ('1307', 'hi', 'sl', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1308', 'hi', 'so', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1309', 'hi', 'sq', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1310', 'hi', 'sr', 'хинди');
INSERT INTO spl_icl_languages_translations VALUES ('1311', 'hi', 'sv', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1312', 'hi', 'ta', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1313', 'hi', 'th', 'ฮินดิ');
INSERT INTO spl_icl_languages_translations VALUES ('1314', 'hi', 'tr', 'Hintçe');
INSERT INTO spl_icl_languages_translations VALUES ('1315', 'hi', 'uk', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1316', 'hi', 'ur', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1317', 'hi', 'uz', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1318', 'hi', 'vi', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1319', 'hi', 'yi', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1320', 'hi', 'zh-hans', '印地语');
INSERT INTO spl_icl_languages_translations VALUES ('1321', 'hi', 'zu', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1322', 'hi', 'zh-hant', '印地語');
INSERT INTO spl_icl_languages_translations VALUES ('1323', 'hi', 'ms', 'Hindi');
INSERT INTO spl_icl_languages_translations VALUES ('1324', 'hr', 'en', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1325', 'hr', 'es', 'Croata');
INSERT INTO spl_icl_languages_translations VALUES ('1326', 'hr', 'de', 'Kroatisch');
INSERT INTO spl_icl_languages_translations VALUES ('1327', 'hr', 'fr', 'Croate');
INSERT INTO spl_icl_languages_translations VALUES ('1328', 'hr', 'ar', 'الكرواتية');
INSERT INTO spl_icl_languages_translations VALUES ('1329', 'hr', 'bs', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1330', 'hr', 'bg', 'Хърватски');
INSERT INTO spl_icl_languages_translations VALUES ('1331', 'hr', 'ca', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1332', 'hr', 'cs', 'Chorvatský');
INSERT INTO spl_icl_languages_translations VALUES ('1333', 'hr', 'sk', 'Chorvátština');
INSERT INTO spl_icl_languages_translations VALUES ('1334', 'hr', 'cy', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1335', 'hr', 'da', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1336', 'hr', 'el', 'Κροατικα');
INSERT INTO spl_icl_languages_translations VALUES ('1337', 'hr', 'eo', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1338', 'hr', 'et', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1339', 'hr', 'eu', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1340', 'hr', 'fa', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1341', 'hr', 'fi', 'kroatia');
INSERT INTO spl_icl_languages_translations VALUES ('1342', 'hr', 'ga', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1343', 'hr', 'he', 'קרוטאית');
INSERT INTO spl_icl_languages_translations VALUES ('1344', 'hr', 'hi', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1345', 'hr', 'hr', 'Hrvatski');
INSERT INTO spl_icl_languages_translations VALUES ('1346', 'hr', 'hu', 'horvát');
INSERT INTO spl_icl_languages_translations VALUES ('1347', 'hr', 'hy', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1348', 'hr', 'id', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1349', 'hr', 'is', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1350', 'hr', 'it', 'Croato');
INSERT INTO spl_icl_languages_translations VALUES ('1351', 'hr', 'ja', 'クロアチア語');
INSERT INTO spl_icl_languages_translations VALUES ('1352', 'hr', 'ko', '크로아시아어');
INSERT INTO spl_icl_languages_translations VALUES ('1353', 'hr', 'ku', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1354', 'hr', 'la', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1355', 'hr', 'lv', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1356', 'hr', 'lt', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1357', 'hr', 'mk', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1358', 'hr', 'mt', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1359', 'hr', 'mn', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1360', 'hr', 'ne', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1361', 'hr', 'nl', 'Kroatisch');
INSERT INTO spl_icl_languages_translations VALUES ('1362', 'hr', 'nb', 'Kroatisk');
INSERT INTO spl_icl_languages_translations VALUES ('1363', 'hr', 'pa', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1364', 'hr', 'pl', 'chorwacki');
INSERT INTO spl_icl_languages_translations VALUES ('1365', 'hr', 'pt-pt', 'Croata');
INSERT INTO spl_icl_languages_translations VALUES ('1366', 'hr', 'pt-br', 'Croata');
INSERT INTO spl_icl_languages_translations VALUES ('1367', 'hr', 'qu', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1368', 'hr', 'ro', 'Croată');
INSERT INTO spl_icl_languages_translations VALUES ('1369', 'hr', 'ru', 'Хорватский');
INSERT INTO spl_icl_languages_translations VALUES ('1370', 'hr', 'sl', 'Hrvaški');
INSERT INTO spl_icl_languages_translations VALUES ('1371', 'hr', 'so', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1372', 'hr', 'sq', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1373', 'hr', 'sr', 'хрватски');
INSERT INTO spl_icl_languages_translations VALUES ('1374', 'hr', 'sv', 'Kroatiska');
INSERT INTO spl_icl_languages_translations VALUES ('1375', 'hr', 'ta', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1376', 'hr', 'th', 'โครเอเชีย');
INSERT INTO spl_icl_languages_translations VALUES ('1377', 'hr', 'tr', 'Hırvatça');
INSERT INTO spl_icl_languages_translations VALUES ('1378', 'hr', 'uk', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1379', 'hr', 'ur', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1380', 'hr', 'uz', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1381', 'hr', 'vi', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1382', 'hr', 'yi', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1383', 'hr', 'zh-hans', '克罗地亚语');
INSERT INTO spl_icl_languages_translations VALUES ('1384', 'hr', 'zu', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1385', 'hr', 'zh-hant', '克羅地亞語');
INSERT INTO spl_icl_languages_translations VALUES ('1386', 'hr', 'ms', 'Croatian');
INSERT INTO spl_icl_languages_translations VALUES ('1387', 'hu', 'en', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1388', 'hu', 'es', 'Húngaro');
INSERT INTO spl_icl_languages_translations VALUES ('1389', 'hu', 'de', 'Ungarisch');
INSERT INTO spl_icl_languages_translations VALUES ('1390', 'hu', 'fr', 'Hongrois');
INSERT INTO spl_icl_languages_translations VALUES ('1391', 'hu', 'ar', 'الهنغارية');
INSERT INTO spl_icl_languages_translations VALUES ('1392', 'hu', 'bs', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1393', 'hu', 'bg', 'Унгарски');
INSERT INTO spl_icl_languages_translations VALUES ('1394', 'hu', 'ca', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1395', 'hu', 'cs', 'Maďarština');
INSERT INTO spl_icl_languages_translations VALUES ('1396', 'hu', 'sk', 'Maďarčina');
INSERT INTO spl_icl_languages_translations VALUES ('1397', 'hu', 'cy', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1398', 'hu', 'da', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1399', 'hu', 'el', 'Ουγγρικα');
INSERT INTO spl_icl_languages_translations VALUES ('1400', 'hu', 'eo', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1401', 'hu', 'et', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1402', 'hu', 'eu', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1403', 'hu', 'fa', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1404', 'hu', 'fi', 'unkari');
INSERT INTO spl_icl_languages_translations VALUES ('1405', 'hu', 'ga', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1406', 'hu', 'he', 'הונגרית');
INSERT INTO spl_icl_languages_translations VALUES ('1407', 'hu', 'hi', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1408', 'hu', 'hr', 'Mađarski');
INSERT INTO spl_icl_languages_translations VALUES ('1409', 'hu', 'hu', 'Magyar');
INSERT INTO spl_icl_languages_translations VALUES ('1410', 'hu', 'hy', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1411', 'hu', 'id', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1412', 'hu', 'is', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1413', 'hu', 'it', 'Ungherese');
INSERT INTO spl_icl_languages_translations VALUES ('1414', 'hu', 'ja', 'ハンガリー語');
INSERT INTO spl_icl_languages_translations VALUES ('1415', 'hu', 'ko', '헝가리어');
INSERT INTO spl_icl_languages_translations VALUES ('1416', 'hu', 'ku', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1417', 'hu', 'la', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1418', 'hu', 'lv', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1419', 'hu', 'lt', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1420', 'hu', 'mk', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1421', 'hu', 'mt', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1422', 'hu', 'mn', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1423', 'hu', 'ne', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1424', 'hu', 'nl', 'Hongaars');
INSERT INTO spl_icl_languages_translations VALUES ('1425', 'hu', 'nb', 'Ungarsk');
INSERT INTO spl_icl_languages_translations VALUES ('1426', 'hu', 'pa', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1427', 'hu', 'pl', 'węgierski');
INSERT INTO spl_icl_languages_translations VALUES ('1428', 'hu', 'pt-pt', 'Húngaro');
INSERT INTO spl_icl_languages_translations VALUES ('1429', 'hu', 'pt-br', 'Húngaro');
INSERT INTO spl_icl_languages_translations VALUES ('1430', 'hu', 'qu', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1431', 'hu', 'ro', 'Ungară');
INSERT INTO spl_icl_languages_translations VALUES ('1432', 'hu', 'ru', 'Венгерский');
INSERT INTO spl_icl_languages_translations VALUES ('1433', 'hu', 'sl', 'Madžarski');
INSERT INTO spl_icl_languages_translations VALUES ('1434', 'hu', 'so', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1435', 'hu', 'sq', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1436', 'hu', 'sr', 'мађарски');
INSERT INTO spl_icl_languages_translations VALUES ('1437', 'hu', 'sv', 'Ungerska');
INSERT INTO spl_icl_languages_translations VALUES ('1438', 'hu', 'ta', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1439', 'hu', 'th', 'ฮังการี');
INSERT INTO spl_icl_languages_translations VALUES ('1440', 'hu', 'tr', 'Macarca');
INSERT INTO spl_icl_languages_translations VALUES ('1441', 'hu', 'uk', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1442', 'hu', 'ur', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1443', 'hu', 'uz', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1444', 'hu', 'vi', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1445', 'hu', 'yi', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1446', 'hu', 'zh-hans', '匈牙利语');
INSERT INTO spl_icl_languages_translations VALUES ('1447', 'hu', 'zu', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1448', 'hu', 'zh-hant', '匈牙利語');
INSERT INTO spl_icl_languages_translations VALUES ('1449', 'hu', 'ms', 'Hungarian');
INSERT INTO spl_icl_languages_translations VALUES ('1450', 'hy', 'en', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1451', 'hy', 'es', 'Armenio');
INSERT INTO spl_icl_languages_translations VALUES ('1452', 'hy', 'de', 'Armenisch');
INSERT INTO spl_icl_languages_translations VALUES ('1453', 'hy', 'fr', 'Arménien');
INSERT INTO spl_icl_languages_translations VALUES ('1454', 'hy', 'ar', 'الأرمينية');
INSERT INTO spl_icl_languages_translations VALUES ('1455', 'hy', 'bs', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1456', 'hy', 'bg', 'Арменски');
INSERT INTO spl_icl_languages_translations VALUES ('1457', 'hy', 'ca', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1458', 'hy', 'cs', 'Arménský');
INSERT INTO spl_icl_languages_translations VALUES ('1459', 'hy', 'sk', 'Arménčina');
INSERT INTO spl_icl_languages_translations VALUES ('1460', 'hy', 'cy', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1461', 'hy', 'da', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1462', 'hy', 'el', 'Αρμενικα');
INSERT INTO spl_icl_languages_translations VALUES ('1463', 'hy', 'eo', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1464', 'hy', 'et', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1465', 'hy', 'eu', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1466', 'hy', 'fa', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1467', 'hy', 'fi', 'armenia');
INSERT INTO spl_icl_languages_translations VALUES ('1468', 'hy', 'ga', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1469', 'hy', 'he', 'ארמנית');
INSERT INTO spl_icl_languages_translations VALUES ('1470', 'hy', 'hi', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1471', 'hy', 'hr', 'Armenac');
INSERT INTO spl_icl_languages_translations VALUES ('1472', 'hy', 'hu', 'örmény');
INSERT INTO spl_icl_languages_translations VALUES ('1473', 'hy', 'hy', 'Հայերեն');
INSERT INTO spl_icl_languages_translations VALUES ('1474', 'hy', 'id', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1475', 'hy', 'is', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1476', 'hy', 'it', 'Armeno');
INSERT INTO spl_icl_languages_translations VALUES ('1477', 'hy', 'ja', 'アルメニア語');
INSERT INTO spl_icl_languages_translations VALUES ('1478', 'hy', 'ko', '아르메니아어');
INSERT INTO spl_icl_languages_translations VALUES ('1479', 'hy', 'ku', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1480', 'hy', 'la', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1481', 'hy', 'lv', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1482', 'hy', 'lt', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1483', 'hy', 'mk', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1484', 'hy', 'mt', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1485', 'hy', 'mn', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1486', 'hy', 'ne', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1487', 'hy', 'nl', 'Armeens');
INSERT INTO spl_icl_languages_translations VALUES ('1488', 'hy', 'nb', 'Armensk');
INSERT INTO spl_icl_languages_translations VALUES ('1489', 'hy', 'pa', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1490', 'hy', 'pl', 'ormiański');
INSERT INTO spl_icl_languages_translations VALUES ('1491', 'hy', 'pt-pt', 'Arménio');
INSERT INTO spl_icl_languages_translations VALUES ('1492', 'hy', 'pt-br', 'Arménio');
INSERT INTO spl_icl_languages_translations VALUES ('1493', 'hy', 'qu', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1494', 'hy', 'ro', 'Armeană');
INSERT INTO spl_icl_languages_translations VALUES ('1495', 'hy', 'ru', 'Армянский');
INSERT INTO spl_icl_languages_translations VALUES ('1496', 'hy', 'sl', 'Armenski');
INSERT INTO spl_icl_languages_translations VALUES ('1497', 'hy', 'so', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1498', 'hy', 'sq', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1499', 'hy', 'sr', 'јерменски');
INSERT INTO spl_icl_languages_translations VALUES ('1500', 'hy', 'sv', 'Armeniska');
INSERT INTO spl_icl_languages_translations VALUES ('1501', 'hy', 'ta', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1502', 'hy', 'th', 'อาร์เมเนีย');
INSERT INTO spl_icl_languages_translations VALUES ('1503', 'hy', 'tr', 'Ermenice');
INSERT INTO spl_icl_languages_translations VALUES ('1504', 'hy', 'uk', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1505', 'hy', 'ur', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1506', 'hy', 'uz', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1507', 'hy', 'vi', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1508', 'hy', 'yi', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1509', 'hy', 'zh-hans', '亚美尼亚语');
INSERT INTO spl_icl_languages_translations VALUES ('1510', 'hy', 'zu', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1511', 'hy', 'zh-hant', '亞美尼亞語');
INSERT INTO spl_icl_languages_translations VALUES ('1512', 'hy', 'ms', 'Armenian');
INSERT INTO spl_icl_languages_translations VALUES ('1513', 'id', 'en', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1514', 'id', 'es', 'Indonesio');
INSERT INTO spl_icl_languages_translations VALUES ('1515', 'id', 'de', 'Indonesisch');
INSERT INTO spl_icl_languages_translations VALUES ('1516', 'id', 'fr', 'Indonésien');
INSERT INTO spl_icl_languages_translations VALUES ('1517', 'id', 'ar', 'الأندونيسية');
INSERT INTO spl_icl_languages_translations VALUES ('1518', 'id', 'bs', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1519', 'id', 'bg', 'Индонезийски');
INSERT INTO spl_icl_languages_translations VALUES ('1520', 'id', 'ca', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1521', 'id', 'cs', 'Indonéský');
INSERT INTO spl_icl_languages_translations VALUES ('1522', 'id', 'sk', 'Indonézčina');
INSERT INTO spl_icl_languages_translations VALUES ('1523', 'id', 'cy', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1524', 'id', 'da', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1525', 'id', 'el', 'Ινδονησιακα');
INSERT INTO spl_icl_languages_translations VALUES ('1526', 'id', 'eo', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1527', 'id', 'et', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1528', 'id', 'eu', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1529', 'id', 'fa', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1530', 'id', 'fi', 'indonesia');
INSERT INTO spl_icl_languages_translations VALUES ('1531', 'id', 'ga', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1532', 'id', 'he', 'אינדונזית');
INSERT INTO spl_icl_languages_translations VALUES ('1533', 'id', 'hi', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1534', 'id', 'hr', 'Indonezijski');
INSERT INTO spl_icl_languages_translations VALUES ('1535', 'id', 'hu', 'indonéz');
INSERT INTO spl_icl_languages_translations VALUES ('1536', 'id', 'hy', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1537', 'id', 'id', 'Indonesia');
INSERT INTO spl_icl_languages_translations VALUES ('1538', 'id', 'is', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1539', 'id', 'it', 'Indonesiano');
INSERT INTO spl_icl_languages_translations VALUES ('1540', 'id', 'ja', 'インドネシア語');
INSERT INTO spl_icl_languages_translations VALUES ('1541', 'id', 'ko', '인도네시아어');
INSERT INTO spl_icl_languages_translations VALUES ('1542', 'id', 'ku', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1543', 'id', 'la', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1544', 'id', 'lv', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1545', 'id', 'lt', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1546', 'id', 'mk', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1547', 'id', 'mt', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1548', 'id', 'mn', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1549', 'id', 'ne', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1550', 'id', 'nl', 'Indonesisch');
INSERT INTO spl_icl_languages_translations VALUES ('1551', 'id', 'nb', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1552', 'id', 'pa', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1553', 'id', 'pl', 'indonezyjski');
INSERT INTO spl_icl_languages_translations VALUES ('1554', 'id', 'pt-pt', 'Indonésio');
INSERT INTO spl_icl_languages_translations VALUES ('1555', 'id', 'pt-br', 'Indonésio');
INSERT INTO spl_icl_languages_translations VALUES ('1556', 'id', 'qu', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1557', 'id', 'ro', 'Indoneziană');
INSERT INTO spl_icl_languages_translations VALUES ('1558', 'id', 'ru', 'Индонезийский');
INSERT INTO spl_icl_languages_translations VALUES ('1559', 'id', 'sl', 'Indonezijski');
INSERT INTO spl_icl_languages_translations VALUES ('1560', 'id', 'so', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1561', 'id', 'sq', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1562', 'id', 'sr', 'индонезијски');
INSERT INTO spl_icl_languages_translations VALUES ('1563', 'id', 'sv', 'Indonesiska');
INSERT INTO spl_icl_languages_translations VALUES ('1564', 'id', 'ta', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1565', 'id', 'th', 'อินโดนีเซีย');
INSERT INTO spl_icl_languages_translations VALUES ('1566', 'id', 'tr', 'Endonezya dili');
INSERT INTO spl_icl_languages_translations VALUES ('1567', 'id', 'uk', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1568', 'id', 'ur', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1569', 'id', 'uz', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1570', 'id', 'vi', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1571', 'id', 'yi', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1572', 'id', 'zh-hans', '印度尼西亚语');
INSERT INTO spl_icl_languages_translations VALUES ('1573', 'id', 'zu', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1574', 'id', 'zh-hant', '印尼語');
INSERT INTO spl_icl_languages_translations VALUES ('1575', 'id', 'ms', 'Indonesian');
INSERT INTO spl_icl_languages_translations VALUES ('1576', 'is', 'en', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1577', 'is', 'es', 'Islandés');
INSERT INTO spl_icl_languages_translations VALUES ('1578', 'is', 'de', 'Isländisch');
INSERT INTO spl_icl_languages_translations VALUES ('1579', 'is', 'fr', 'Islandais');
INSERT INTO spl_icl_languages_translations VALUES ('1580', 'is', 'ar', 'الأيسلاندية');
INSERT INTO spl_icl_languages_translations VALUES ('1581', 'is', 'bs', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1582', 'is', 'bg', 'Исландски');
INSERT INTO spl_icl_languages_translations VALUES ('1583', 'is', 'ca', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1584', 'is', 'cs', 'Islandský');
INSERT INTO spl_icl_languages_translations VALUES ('1585', 'is', 'sk', 'Islančina');
INSERT INTO spl_icl_languages_translations VALUES ('1586', 'is', 'cy', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1587', 'is', 'da', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1588', 'is', 'el', 'Ισλανδικα');
INSERT INTO spl_icl_languages_translations VALUES ('1589', 'is', 'eo', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1590', 'is', 'et', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1591', 'is', 'eu', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1592', 'is', 'fa', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1593', 'is', 'fi', 'islanti');
INSERT INTO spl_icl_languages_translations VALUES ('1594', 'is', 'ga', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1595', 'is', 'he', 'איסלנדית');
INSERT INTO spl_icl_languages_translations VALUES ('1596', 'is', 'hi', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1597', 'is', 'hr', 'Islandski');
INSERT INTO spl_icl_languages_translations VALUES ('1598', 'is', 'hu', 'izlandi');
INSERT INTO spl_icl_languages_translations VALUES ('1599', 'is', 'hy', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1600', 'is', 'id', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1601', 'is', 'is', 'Íslenska');
INSERT INTO spl_icl_languages_translations VALUES ('1602', 'is', 'it', 'Islandese');
INSERT INTO spl_icl_languages_translations VALUES ('1603', 'is', 'ja', 'アイスランド語');
INSERT INTO spl_icl_languages_translations VALUES ('1604', 'is', 'ko', '아이슬랜드어');
INSERT INTO spl_icl_languages_translations VALUES ('1605', 'is', 'ku', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1606', 'is', 'la', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1607', 'is', 'lv', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1608', 'is', 'lt', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1609', 'is', 'mk', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1610', 'is', 'mt', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1611', 'is', 'mn', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1612', 'is', 'ne', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1613', 'is', 'nl', 'Ijslands');
INSERT INTO spl_icl_languages_translations VALUES ('1614', 'is', 'nb', 'Islandsk');
INSERT INTO spl_icl_languages_translations VALUES ('1615', 'is', 'pa', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1616', 'is', 'pl', 'islandzki');
INSERT INTO spl_icl_languages_translations VALUES ('1617', 'is', 'pt-pt', 'Islandês');
INSERT INTO spl_icl_languages_translations VALUES ('1618', 'is', 'pt-br', 'Islandês');
INSERT INTO spl_icl_languages_translations VALUES ('1619', 'is', 'qu', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1620', 'is', 'ro', 'Islandeză');
INSERT INTO spl_icl_languages_translations VALUES ('1621', 'is', 'ru', 'Исландский');
INSERT INTO spl_icl_languages_translations VALUES ('1622', 'is', 'sl', 'Islandski');
INSERT INTO spl_icl_languages_translations VALUES ('1623', 'is', 'so', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1624', 'is', 'sq', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1625', 'is', 'sr', 'исландски');
INSERT INTO spl_icl_languages_translations VALUES ('1626', 'is', 'sv', 'Isländska');
INSERT INTO spl_icl_languages_translations VALUES ('1627', 'is', 'ta', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1628', 'is', 'th', 'ไอซ์แลนด์');
INSERT INTO spl_icl_languages_translations VALUES ('1629', 'is', 'tr', 'İzlandaca');
INSERT INTO spl_icl_languages_translations VALUES ('1630', 'is', 'uk', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1631', 'is', 'ur', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1632', 'is', 'uz', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1633', 'is', 'vi', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1634', 'is', 'yi', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1635', 'is', 'zh-hans', '冰岛语');
INSERT INTO spl_icl_languages_translations VALUES ('1636', 'is', 'zu', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1637', 'is', 'zh-hant', '冰島語');
INSERT INTO spl_icl_languages_translations VALUES ('1638', 'is', 'ms', 'Icelandic');
INSERT INTO spl_icl_languages_translations VALUES ('1639', 'it', 'en', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1640', 'it', 'es', 'Italiano');
INSERT INTO spl_icl_languages_translations VALUES ('1641', 'it', 'de', 'Italienisch');
INSERT INTO spl_icl_languages_translations VALUES ('1642', 'it', 'fr', 'Italien');
INSERT INTO spl_icl_languages_translations VALUES ('1643', 'it', 'ar', 'الإيطالية');
INSERT INTO spl_icl_languages_translations VALUES ('1644', 'it', 'bs', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1645', 'it', 'bg', 'Италиански');
INSERT INTO spl_icl_languages_translations VALUES ('1646', 'it', 'ca', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1647', 'it', 'cs', 'Ital');
INSERT INTO spl_icl_languages_translations VALUES ('1648', 'it', 'sk', 'Taliančina');
INSERT INTO spl_icl_languages_translations VALUES ('1649', 'it', 'cy', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1650', 'it', 'da', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1651', 'it', 'el', 'Ιταλικα');
INSERT INTO spl_icl_languages_translations VALUES ('1652', 'it', 'eo', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1653', 'it', 'et', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1654', 'it', 'eu', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1655', 'it', 'fa', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1656', 'it', 'fi', 'italia');
INSERT INTO spl_icl_languages_translations VALUES ('1657', 'it', 'ga', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1658', 'it', 'he', 'איטלקית');
INSERT INTO spl_icl_languages_translations VALUES ('1659', 'it', 'hi', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1660', 'it', 'hr', 'Talijanski');
INSERT INTO spl_icl_languages_translations VALUES ('1661', 'it', 'hu', 'olasz');
INSERT INTO spl_icl_languages_translations VALUES ('1662', 'it', 'hy', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1663', 'it', 'id', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1664', 'it', 'is', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1665', 'it', 'it', 'Italiano');
INSERT INTO spl_icl_languages_translations VALUES ('1666', 'it', 'ja', 'イタリア語');
INSERT INTO spl_icl_languages_translations VALUES ('1667', 'it', 'ko', '이태리어');
INSERT INTO spl_icl_languages_translations VALUES ('1668', 'it', 'ku', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1669', 'it', 'la', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1670', 'it', 'lv', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1671', 'it', 'lt', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1672', 'it', 'mk', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1673', 'it', 'mt', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1674', 'it', 'mn', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1675', 'it', 'ne', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1676', 'it', 'nl', 'Italiaans');
INSERT INTO spl_icl_languages_translations VALUES ('1677', 'it', 'nb', 'Italiensk');
INSERT INTO spl_icl_languages_translations VALUES ('1678', 'it', 'pa', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1679', 'it', 'pl', 'włoski');
INSERT INTO spl_icl_languages_translations VALUES ('1680', 'it', 'pt-pt', 'Italiano');
INSERT INTO spl_icl_languages_translations VALUES ('1681', 'it', 'pt-br', 'Italiano');
INSERT INTO spl_icl_languages_translations VALUES ('1682', 'it', 'qu', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1683', 'it', 'ro', 'Italiană');
INSERT INTO spl_icl_languages_translations VALUES ('1684', 'it', 'ru', 'Итальянский');
INSERT INTO spl_icl_languages_translations VALUES ('1685', 'it', 'sl', 'Italijanski');
INSERT INTO spl_icl_languages_translations VALUES ('1686', 'it', 'so', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1687', 'it', 'sq', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1688', 'it', 'sr', 'италијански');
INSERT INTO spl_icl_languages_translations VALUES ('1689', 'it', 'sv', 'Italienska');
INSERT INTO spl_icl_languages_translations VALUES ('1690', 'it', 'ta', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1691', 'it', 'th', 'อิตาลี');
INSERT INTO spl_icl_languages_translations VALUES ('1692', 'it', 'tr', 'İtalyanca');
INSERT INTO spl_icl_languages_translations VALUES ('1693', 'it', 'uk', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1694', 'it', 'ur', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1695', 'it', 'uz', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1696', 'it', 'vi', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1697', 'it', 'yi', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1698', 'it', 'zh-hans', '意大利语');
INSERT INTO spl_icl_languages_translations VALUES ('1699', 'it', 'zu', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1700', 'it', 'zh-hant', '義大利語');
INSERT INTO spl_icl_languages_translations VALUES ('1701', 'it', 'ms', 'Italian');
INSERT INTO spl_icl_languages_translations VALUES ('1702', 'ja', 'en', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1703', 'ja', 'es', 'Japonés');
INSERT INTO spl_icl_languages_translations VALUES ('1704', 'ja', 'de', 'Japanisch');
INSERT INTO spl_icl_languages_translations VALUES ('1705', 'ja', 'fr', 'Japonais');
INSERT INTO spl_icl_languages_translations VALUES ('1706', 'ja', 'ar', 'اليابانية');
INSERT INTO spl_icl_languages_translations VALUES ('1707', 'ja', 'bs', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1708', 'ja', 'bg', 'Японски');
INSERT INTO spl_icl_languages_translations VALUES ('1709', 'ja', 'ca', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1710', 'ja', 'cs', 'Japonský');
INSERT INTO spl_icl_languages_translations VALUES ('1711', 'ja', 'sk', 'Japonština');
INSERT INTO spl_icl_languages_translations VALUES ('1712', 'ja', 'cy', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1713', 'ja', 'da', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1714', 'ja', 'el', 'Ιαπωνικα');
INSERT INTO spl_icl_languages_translations VALUES ('1715', 'ja', 'eo', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1716', 'ja', 'et', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1717', 'ja', 'eu', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1718', 'ja', 'fa', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1719', 'ja', 'fi', 'japani');
INSERT INTO spl_icl_languages_translations VALUES ('1720', 'ja', 'ga', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1721', 'ja', 'he', 'יפנית');
INSERT INTO spl_icl_languages_translations VALUES ('1722', 'ja', 'hi', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1723', 'ja', 'hr', 'Japanski');
INSERT INTO spl_icl_languages_translations VALUES ('1724', 'ja', 'hu', 'japán');
INSERT INTO spl_icl_languages_translations VALUES ('1725', 'ja', 'hy', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1726', 'ja', 'id', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1727', 'ja', 'is', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1728', 'ja', 'it', 'Giapponese');
INSERT INTO spl_icl_languages_translations VALUES ('1729', 'ja', 'ja', '日本語');
INSERT INTO spl_icl_languages_translations VALUES ('1730', 'ja', 'ko', '일어');
INSERT INTO spl_icl_languages_translations VALUES ('1731', 'ja', 'ku', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1732', 'ja', 'la', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1733', 'ja', 'lv', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1734', 'ja', 'lt', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1735', 'ja', 'mk', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1736', 'ja', 'mt', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1737', 'ja', 'mn', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1738', 'ja', 'ne', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1739', 'ja', 'nl', 'Japans');
INSERT INTO spl_icl_languages_translations VALUES ('1740', 'ja', 'nb', 'Japansk');
INSERT INTO spl_icl_languages_translations VALUES ('1741', 'ja', 'pa', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1742', 'ja', 'pl', 'japoński');
INSERT INTO spl_icl_languages_translations VALUES ('1743', 'ja', 'pt-pt', 'Japonês');
INSERT INTO spl_icl_languages_translations VALUES ('1744', 'ja', 'pt-br', 'Japonês');
INSERT INTO spl_icl_languages_translations VALUES ('1745', 'ja', 'qu', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1746', 'ja', 'ro', 'Japoneză');
INSERT INTO spl_icl_languages_translations VALUES ('1747', 'ja', 'ru', 'Японский');
INSERT INTO spl_icl_languages_translations VALUES ('1748', 'ja', 'sl', 'Japonski');
INSERT INTO spl_icl_languages_translations VALUES ('1749', 'ja', 'so', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1750', 'ja', 'sq', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1751', 'ja', 'sr', 'јапански');
INSERT INTO spl_icl_languages_translations VALUES ('1752', 'ja', 'sv', 'Japanska');
INSERT INTO spl_icl_languages_translations VALUES ('1753', 'ja', 'ta', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1754', 'ja', 'th', 'ญี่ปุ่น');
INSERT INTO spl_icl_languages_translations VALUES ('1755', 'ja', 'tr', 'Japonca');
INSERT INTO spl_icl_languages_translations VALUES ('1756', 'ja', 'uk', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1757', 'ja', 'ur', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1758', 'ja', 'uz', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1759', 'ja', 'vi', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1760', 'ja', 'yi', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1761', 'ja', 'zh-hans', '日语');
INSERT INTO spl_icl_languages_translations VALUES ('1762', 'ja', 'zu', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1763', 'ja', 'zh-hant', '日語');
INSERT INTO spl_icl_languages_translations VALUES ('1764', 'ja', 'ms', 'Japanese');
INSERT INTO spl_icl_languages_translations VALUES ('1765', 'ko', 'en', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1766', 'ko', 'es', 'Coreano');
INSERT INTO spl_icl_languages_translations VALUES ('1767', 'ko', 'de', 'Koreanisch');
INSERT INTO spl_icl_languages_translations VALUES ('1768', 'ko', 'fr', 'Coréen');
INSERT INTO spl_icl_languages_translations VALUES ('1769', 'ko', 'ar', 'الكورية');
INSERT INTO spl_icl_languages_translations VALUES ('1770', 'ko', 'bs', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1771', 'ko', 'bg', 'Корейски');
INSERT INTO spl_icl_languages_translations VALUES ('1772', 'ko', 'ca', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1773', 'ko', 'cs', 'Korejský');
INSERT INTO spl_icl_languages_translations VALUES ('1774', 'ko', 'sk', 'Kórejčina');
INSERT INTO spl_icl_languages_translations VALUES ('1775', 'ko', 'cy', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1776', 'ko', 'da', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1777', 'ko', 'el', 'Κορεατικα');
INSERT INTO spl_icl_languages_translations VALUES ('1778', 'ko', 'eo', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1779', 'ko', 'et', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1780', 'ko', 'eu', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1781', 'ko', 'fa', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1782', 'ko', 'fi', 'korea');
INSERT INTO spl_icl_languages_translations VALUES ('1783', 'ko', 'ga', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1784', 'ko', 'he', 'קוראנית');
INSERT INTO spl_icl_languages_translations VALUES ('1785', 'ko', 'hi', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1786', 'ko', 'hr', 'Korejski');
INSERT INTO spl_icl_languages_translations VALUES ('1787', 'ko', 'hu', 'koreai');
INSERT INTO spl_icl_languages_translations VALUES ('1788', 'ko', 'hy', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1789', 'ko', 'id', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1790', 'ko', 'is', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1791', 'ko', 'it', 'Coreano');
INSERT INTO spl_icl_languages_translations VALUES ('1792', 'ko', 'ja', '韓国語');
INSERT INTO spl_icl_languages_translations VALUES ('1793', 'ko', 'ko', '한국어');
INSERT INTO spl_icl_languages_translations VALUES ('1794', 'ko', 'ku', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1795', 'ko', 'la', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1796', 'ko', 'lv', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1797', 'ko', 'lt', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1798', 'ko', 'mk', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1799', 'ko', 'mt', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1800', 'ko', 'mn', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1801', 'ko', 'ne', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1802', 'ko', 'nl', 'Koreaans');
INSERT INTO spl_icl_languages_translations VALUES ('1803', 'ko', 'nb', 'Koreanske');
INSERT INTO spl_icl_languages_translations VALUES ('1804', 'ko', 'pa', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1805', 'ko', 'pl', 'koreański');
INSERT INTO spl_icl_languages_translations VALUES ('1806', 'ko', 'pt-pt', 'Coreano');
INSERT INTO spl_icl_languages_translations VALUES ('1807', 'ko', 'pt-br', 'Coreano');
INSERT INTO spl_icl_languages_translations VALUES ('1808', 'ko', 'qu', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1809', 'ko', 'ro', 'Coreană');
INSERT INTO spl_icl_languages_translations VALUES ('1810', 'ko', 'ru', 'Корейский');
INSERT INTO spl_icl_languages_translations VALUES ('1811', 'ko', 'sl', 'Korejski');
INSERT INTO spl_icl_languages_translations VALUES ('1812', 'ko', 'so', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1813', 'ko', 'sq', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1814', 'ko', 'sr', 'корејски');
INSERT INTO spl_icl_languages_translations VALUES ('1815', 'ko', 'sv', 'Koreanska');
INSERT INTO spl_icl_languages_translations VALUES ('1816', 'ko', 'ta', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1817', 'ko', 'th', 'เกาหลี');
INSERT INTO spl_icl_languages_translations VALUES ('1818', 'ko', 'tr', 'Kore dili');
INSERT INTO spl_icl_languages_translations VALUES ('1819', 'ko', 'uk', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1820', 'ko', 'ur', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1821', 'ko', 'uz', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1822', 'ko', 'vi', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1823', 'ko', 'yi', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1824', 'ko', 'zh-hans', '韩语');
INSERT INTO spl_icl_languages_translations VALUES ('1825', 'ko', 'zu', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1826', 'ko', 'zh-hant', '韓語');
INSERT INTO spl_icl_languages_translations VALUES ('1827', 'ko', 'ms', 'Korean');
INSERT INTO spl_icl_languages_translations VALUES ('1828', 'ku', 'en', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1829', 'ku', 'es', 'Kurdo');
INSERT INTO spl_icl_languages_translations VALUES ('1830', 'ku', 'de', 'Kurdisch');
INSERT INTO spl_icl_languages_translations VALUES ('1831', 'ku', 'fr', 'Kurde');
INSERT INTO spl_icl_languages_translations VALUES ('1832', 'ku', 'ar', 'الكردية');
INSERT INTO spl_icl_languages_translations VALUES ('1833', 'ku', 'bs', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1834', 'ku', 'bg', 'Кюрдски');
INSERT INTO spl_icl_languages_translations VALUES ('1835', 'ku', 'ca', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1836', 'ku', 'cs', 'Kurdský');
INSERT INTO spl_icl_languages_translations VALUES ('1837', 'ku', 'sk', 'Kurdština');
INSERT INTO spl_icl_languages_translations VALUES ('1838', 'ku', 'cy', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1839', 'ku', 'da', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1840', 'ku', 'el', 'Κουρδικα');
INSERT INTO spl_icl_languages_translations VALUES ('1841', 'ku', 'eo', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1842', 'ku', 'et', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1843', 'ku', 'eu', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1844', 'ku', 'fa', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1845', 'ku', 'fi', 'kurdi');
INSERT INTO spl_icl_languages_translations VALUES ('1846', 'ku', 'ga', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1847', 'ku', 'he', 'כורדית');
INSERT INTO spl_icl_languages_translations VALUES ('1848', 'ku', 'hi', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1849', 'ku', 'hr', 'Kurdski');
INSERT INTO spl_icl_languages_translations VALUES ('1850', 'ku', 'hu', 'kurd');
INSERT INTO spl_icl_languages_translations VALUES ('1851', 'ku', 'hy', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1852', 'ku', 'id', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1853', 'ku', 'is', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1854', 'ku', 'it', 'Curdo');
INSERT INTO spl_icl_languages_translations VALUES ('1855', 'ku', 'ja', 'クルド語');
INSERT INTO spl_icl_languages_translations VALUES ('1856', 'ku', 'ko', '쿠르드어');
INSERT INTO spl_icl_languages_translations VALUES ('1857', 'ku', 'ku', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1858', 'ku', 'la', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1859', 'ku', 'lv', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1860', 'ku', 'lt', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1861', 'ku', 'mk', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1862', 'ku', 'mt', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1863', 'ku', 'mn', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1864', 'ku', 'ne', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1865', 'ku', 'nl', 'Koerdish');
INSERT INTO spl_icl_languages_translations VALUES ('1866', 'ku', 'nb', 'Kurdisk');
INSERT INTO spl_icl_languages_translations VALUES ('1867', 'ku', 'pa', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1868', 'ku', 'pl', 'kurdyjski');
INSERT INTO spl_icl_languages_translations VALUES ('1869', 'ku', 'pt-pt', 'Curdo');
INSERT INTO spl_icl_languages_translations VALUES ('1870', 'ku', 'pt-br', 'Curdo');
INSERT INTO spl_icl_languages_translations VALUES ('1871', 'ku', 'qu', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1872', 'ku', 'ro', 'Kurdă');
INSERT INTO spl_icl_languages_translations VALUES ('1873', 'ku', 'ru', 'Курдский');
INSERT INTO spl_icl_languages_translations VALUES ('1874', 'ku', 'sl', 'Kurdščina');
INSERT INTO spl_icl_languages_translations VALUES ('1875', 'ku', 'so', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1876', 'ku', 'sq', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1877', 'ku', 'sr', 'курдски');
INSERT INTO spl_icl_languages_translations VALUES ('1878', 'ku', 'sv', 'Kurdiska');
INSERT INTO spl_icl_languages_translations VALUES ('1879', 'ku', 'ta', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1880', 'ku', 'th', 'เคอร์ดิช');
INSERT INTO spl_icl_languages_translations VALUES ('1881', 'ku', 'tr', 'Kürtçe');
INSERT INTO spl_icl_languages_translations VALUES ('1882', 'ku', 'uk', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1883', 'ku', 'ur', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1884', 'ku', 'uz', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1885', 'ku', 'vi', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1886', 'ku', 'yi', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1887', 'ku', 'zh-hans', '库尔德语');
INSERT INTO spl_icl_languages_translations VALUES ('1888', 'ku', 'zu', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1889', 'ku', 'zh-hant', '庫爾德語');
INSERT INTO spl_icl_languages_translations VALUES ('1890', 'ku', 'ms', 'Kurdish');
INSERT INTO spl_icl_languages_translations VALUES ('1891', 'la', 'en', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1892', 'la', 'es', 'Latín');
INSERT INTO spl_icl_languages_translations VALUES ('1893', 'la', 'de', 'Latein');
INSERT INTO spl_icl_languages_translations VALUES ('1894', 'la', 'fr', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1895', 'la', 'ar', 'اللاتينية');
INSERT INTO spl_icl_languages_translations VALUES ('1896', 'la', 'bs', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1897', 'la', 'bg', 'Латински');
INSERT INTO spl_icl_languages_translations VALUES ('1898', 'la', 'ca', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1899', 'la', 'cs', 'Latina');
INSERT INTO spl_icl_languages_translations VALUES ('1900', 'la', 'sk', 'Latinčina');
INSERT INTO spl_icl_languages_translations VALUES ('1901', 'la', 'cy', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1902', 'la', 'da', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1903', 'la', 'el', 'Λατινικη');
INSERT INTO spl_icl_languages_translations VALUES ('1904', 'la', 'eo', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1905', 'la', 'et', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1906', 'la', 'eu', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1907', 'la', 'fa', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1908', 'la', 'fi', 'latina');
INSERT INTO spl_icl_languages_translations VALUES ('1909', 'la', 'ga', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1910', 'la', 'he', 'לטינית');
INSERT INTO spl_icl_languages_translations VALUES ('1911', 'la', 'hi', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1912', 'la', 'hr', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1913', 'la', 'hu', 'latin');
INSERT INTO spl_icl_languages_translations VALUES ('1914', 'la', 'hy', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1915', 'la', 'id', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1916', 'la', 'is', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1917', 'la', 'it', 'Latino');
INSERT INTO spl_icl_languages_translations VALUES ('1918', 'la', 'ja', 'ラテン語');
INSERT INTO spl_icl_languages_translations VALUES ('1919', 'la', 'ko', '라틴어');
INSERT INTO spl_icl_languages_translations VALUES ('1920', 'la', 'ku', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1921', 'la', 'la', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1922', 'la', 'lv', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1923', 'la', 'lt', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1924', 'la', 'mk', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1925', 'la', 'mt', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1926', 'la', 'mn', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1927', 'la', 'ne', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1928', 'la', 'nl', 'Latijn');
INSERT INTO spl_icl_languages_translations VALUES ('1929', 'la', 'nb', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1930', 'la', 'pa', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1931', 'la', 'pl', 'łaciński');
INSERT INTO spl_icl_languages_translations VALUES ('1932', 'la', 'pt-pt', 'Latim');
INSERT INTO spl_icl_languages_translations VALUES ('1933', 'la', 'pt-br', 'Latim');
INSERT INTO spl_icl_languages_translations VALUES ('1934', 'la', 'qu', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1935', 'la', 'ro', 'Latină');
INSERT INTO spl_icl_languages_translations VALUES ('1936', 'la', 'ru', 'Латинский');
INSERT INTO spl_icl_languages_translations VALUES ('1937', 'la', 'sl', 'Latinščina');
INSERT INTO spl_icl_languages_translations VALUES ('1938', 'la', 'so', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1939', 'la', 'sq', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1940', 'la', 'sr', 'латински');
INSERT INTO spl_icl_languages_translations VALUES ('1941', 'la', 'sv', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1942', 'la', 'ta', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1943', 'la', 'th', 'ละติน');
INSERT INTO spl_icl_languages_translations VALUES ('1944', 'la', 'tr', 'Latince');
INSERT INTO spl_icl_languages_translations VALUES ('1945', 'la', 'uk', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1946', 'la', 'ur', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1947', 'la', 'uz', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1948', 'la', 'vi', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1949', 'la', 'yi', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1950', 'la', 'zh-hans', '拉丁语');
INSERT INTO spl_icl_languages_translations VALUES ('1951', 'la', 'zu', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1952', 'la', 'zh-hant', '拉丁語');
INSERT INTO spl_icl_languages_translations VALUES ('1953', 'la', 'ms', 'Latin');
INSERT INTO spl_icl_languages_translations VALUES ('1954', 'lv', 'en', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1955', 'lv', 'es', 'Letón');
INSERT INTO spl_icl_languages_translations VALUES ('1956', 'lv', 'de', 'Lettisch');
INSERT INTO spl_icl_languages_translations VALUES ('1957', 'lv', 'fr', 'Letton');
INSERT INTO spl_icl_languages_translations VALUES ('1958', 'lv', 'ar', 'اللاتفية');
INSERT INTO spl_icl_languages_translations VALUES ('1959', 'lv', 'bs', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1960', 'lv', 'bg', 'Латвийски');
INSERT INTO spl_icl_languages_translations VALUES ('1961', 'lv', 'ca', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1962', 'lv', 'cs', 'Lotyština');
INSERT INTO spl_icl_languages_translations VALUES ('1963', 'lv', 'sk', 'Lotyština');
INSERT INTO spl_icl_languages_translations VALUES ('1964', 'lv', 'cy', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1965', 'lv', 'da', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1966', 'lv', 'el', 'Λετονικα');
INSERT INTO spl_icl_languages_translations VALUES ('1967', 'lv', 'eo', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1968', 'lv', 'et', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1969', 'lv', 'eu', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1970', 'lv', 'fa', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1971', 'lv', 'fi', 'latvia');
INSERT INTO spl_icl_languages_translations VALUES ('1972', 'lv', 'ga', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1973', 'lv', 'he', 'לטבית');
INSERT INTO spl_icl_languages_translations VALUES ('1974', 'lv', 'hi', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1975', 'lv', 'hr', 'Letonski');
INSERT INTO spl_icl_languages_translations VALUES ('1976', 'lv', 'hu', 'lett');
INSERT INTO spl_icl_languages_translations VALUES ('1977', 'lv', 'hy', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1978', 'lv', 'id', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1979', 'lv', 'is', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1980', 'lv', 'it', 'Lettone');
INSERT INTO spl_icl_languages_translations VALUES ('1981', 'lv', 'ja', 'ラトビア語');
INSERT INTO spl_icl_languages_translations VALUES ('1982', 'lv', 'ko', '라트비아어');
INSERT INTO spl_icl_languages_translations VALUES ('1983', 'lv', 'ku', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1984', 'lv', 'la', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1985', 'lv', 'lv', 'Latviešu');
INSERT INTO spl_icl_languages_translations VALUES ('1986', 'lv', 'lt', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1987', 'lv', 'mk', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1988', 'lv', 'mt', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1989', 'lv', 'mn', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1990', 'lv', 'ne', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1991', 'lv', 'nl', 'Lets');
INSERT INTO spl_icl_languages_translations VALUES ('1992', 'lv', 'nb', 'Latvisk');
INSERT INTO spl_icl_languages_translations VALUES ('1993', 'lv', 'pa', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1994', 'lv', 'pl', 'łotewski');
INSERT INTO spl_icl_languages_translations VALUES ('1995', 'lv', 'pt-pt', 'Letão');
INSERT INTO spl_icl_languages_translations VALUES ('1996', 'lv', 'pt-br', 'Letão');
INSERT INTO spl_icl_languages_translations VALUES ('1997', 'lv', 'qu', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('1998', 'lv', 'ro', 'Letoniană');
INSERT INTO spl_icl_languages_translations VALUES ('1999', 'lv', 'ru', 'латышский');
INSERT INTO spl_icl_languages_translations VALUES ('2000', 'lv', 'sl', 'Latvijščina');
INSERT INTO spl_icl_languages_translations VALUES ('2001', 'lv', 'so', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2002', 'lv', 'sq', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2003', 'lv', 'sr', 'летонски');
INSERT INTO spl_icl_languages_translations VALUES ('2004', 'lv', 'sv', 'Lettiska');
INSERT INTO spl_icl_languages_translations VALUES ('2005', 'lv', 'ta', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2006', 'lv', 'th', 'ลัตเวีย');
INSERT INTO spl_icl_languages_translations VALUES ('2007', 'lv', 'tr', 'Letonca');
INSERT INTO spl_icl_languages_translations VALUES ('2008', 'lv', 'uk', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2009', 'lv', 'ur', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2010', 'lv', 'uz', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2011', 'lv', 'vi', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2012', 'lv', 'yi', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2013', 'lv', 'zh-hans', '拉脱维亚语');
INSERT INTO spl_icl_languages_translations VALUES ('2014', 'lv', 'zu', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2015', 'lv', 'zh-hant', '拉脫維亞語');
INSERT INTO spl_icl_languages_translations VALUES ('2016', 'lv', 'ms', 'Latvian');
INSERT INTO spl_icl_languages_translations VALUES ('2017', 'lt', 'en', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2018', 'lt', 'es', 'Lituano');
INSERT INTO spl_icl_languages_translations VALUES ('2019', 'lt', 'de', 'Litauisch');
INSERT INTO spl_icl_languages_translations VALUES ('2020', 'lt', 'fr', 'Lituanien');
INSERT INTO spl_icl_languages_translations VALUES ('2021', 'lt', 'ar', 'اللتوانية');
INSERT INTO spl_icl_languages_translations VALUES ('2022', 'lt', 'bs', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2023', 'lt', 'bg', 'Литовски');
INSERT INTO spl_icl_languages_translations VALUES ('2024', 'lt', 'ca', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2025', 'lt', 'cs', 'litevský');
INSERT INTO spl_icl_languages_translations VALUES ('2026', 'lt', 'sk', 'Litovčina');
INSERT INTO spl_icl_languages_translations VALUES ('2027', 'lt', 'cy', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2028', 'lt', 'da', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2029', 'lt', 'el', 'Λιθουανικα');
INSERT INTO spl_icl_languages_translations VALUES ('2030', 'lt', 'eo', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2031', 'lt', 'et', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2032', 'lt', 'eu', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2033', 'lt', 'fa', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2034', 'lt', 'fi', 'liettua');
INSERT INTO spl_icl_languages_translations VALUES ('2035', 'lt', 'ga', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2036', 'lt', 'he', 'ליטאית');
INSERT INTO spl_icl_languages_translations VALUES ('2037', 'lt', 'hi', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2038', 'lt', 'hr', 'Litvanski');
INSERT INTO spl_icl_languages_translations VALUES ('2039', 'lt', 'hu', 'litván');
INSERT INTO spl_icl_languages_translations VALUES ('2040', 'lt', 'hy', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2041', 'lt', 'id', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2042', 'lt', 'is', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2043', 'lt', 'it', 'Lituano');
INSERT INTO spl_icl_languages_translations VALUES ('2044', 'lt', 'ja', 'リトアニア語');
INSERT INTO spl_icl_languages_translations VALUES ('2045', 'lt', 'ko', '리투아니아어');
INSERT INTO spl_icl_languages_translations VALUES ('2046', 'lt', 'ku', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2047', 'lt', 'la', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2048', 'lt', 'lv', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2049', 'lt', 'lt', 'Lietuvos');
INSERT INTO spl_icl_languages_translations VALUES ('2050', 'lt', 'mk', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2051', 'lt', 'mt', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2052', 'lt', 'mn', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2053', 'lt', 'ne', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2054', 'lt', 'nl', 'Litouws');
INSERT INTO spl_icl_languages_translations VALUES ('2055', 'lt', 'nb', 'Litauisk');
INSERT INTO spl_icl_languages_translations VALUES ('2056', 'lt', 'pa', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2057', 'lt', 'pl', 'litewski');
INSERT INTO spl_icl_languages_translations VALUES ('2058', 'lt', 'pt-pt', 'Lituano');
INSERT INTO spl_icl_languages_translations VALUES ('2059', 'lt', 'pt-br', 'Lituano');
INSERT INTO spl_icl_languages_translations VALUES ('2060', 'lt', 'qu', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2061', 'lt', 'ro', 'Lituaniană');
INSERT INTO spl_icl_languages_translations VALUES ('2062', 'lt', 'ru', 'Литовский');
INSERT INTO spl_icl_languages_translations VALUES ('2063', 'lt', 'sl', 'Litovščina');
INSERT INTO spl_icl_languages_translations VALUES ('2064', 'lt', 'so', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2065', 'lt', 'sq', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2066', 'lt', 'sr', 'литвански');
INSERT INTO spl_icl_languages_translations VALUES ('2067', 'lt', 'sv', 'Litauiska');
INSERT INTO spl_icl_languages_translations VALUES ('2068', 'lt', 'ta', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2069', 'lt', 'th', 'ลิธัวเนีย');
INSERT INTO spl_icl_languages_translations VALUES ('2070', 'lt', 'tr', 'Litvanyaca');
INSERT INTO spl_icl_languages_translations VALUES ('2071', 'lt', 'uk', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2072', 'lt', 'ur', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2073', 'lt', 'uz', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2074', 'lt', 'vi', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2075', 'lt', 'yi', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2076', 'lt', 'zh-hans', '立陶宛语');
INSERT INTO spl_icl_languages_translations VALUES ('2077', 'lt', 'zu', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2078', 'lt', 'zh-hant', '立陶宛語');
INSERT INTO spl_icl_languages_translations VALUES ('2079', 'lt', 'ms', 'Lithuanian');
INSERT INTO spl_icl_languages_translations VALUES ('2080', 'mk', 'en', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2081', 'mk', 'es', 'Macedonio');
INSERT INTO spl_icl_languages_translations VALUES ('2082', 'mk', 'de', 'Mazedonisch');
INSERT INTO spl_icl_languages_translations VALUES ('2083', 'mk', 'fr', 'Macédonien');
INSERT INTO spl_icl_languages_translations VALUES ('2084', 'mk', 'ar', 'المقدونية');
INSERT INTO spl_icl_languages_translations VALUES ('2085', 'mk', 'bs', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2086', 'mk', 'bg', 'Македонски');
INSERT INTO spl_icl_languages_translations VALUES ('2087', 'mk', 'ca', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2088', 'mk', 'cs', 'Makedonský');
INSERT INTO spl_icl_languages_translations VALUES ('2089', 'mk', 'sk', 'Macedónština');
INSERT INTO spl_icl_languages_translations VALUES ('2090', 'mk', 'cy', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2091', 'mk', 'da', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2092', 'mk', 'el', 'Μακεδονικο');
INSERT INTO spl_icl_languages_translations VALUES ('2093', 'mk', 'eo', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2094', 'mk', 'et', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2095', 'mk', 'eu', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2096', 'mk', 'fa', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2097', 'mk', 'fi', 'makedonia');
INSERT INTO spl_icl_languages_translations VALUES ('2098', 'mk', 'ga', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2099', 'mk', 'he', 'מקדונית');
INSERT INTO spl_icl_languages_translations VALUES ('2100', 'mk', 'hi', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2101', 'mk', 'hr', 'Makedonski');
INSERT INTO spl_icl_languages_translations VALUES ('2102', 'mk', 'hu', 'macedón');
INSERT INTO spl_icl_languages_translations VALUES ('2103', 'mk', 'hy', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2104', 'mk', 'id', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2105', 'mk', 'is', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2106', 'mk', 'it', 'Macedone');
INSERT INTO spl_icl_languages_translations VALUES ('2107', 'mk', 'ja', 'マケドニア語');
INSERT INTO spl_icl_languages_translations VALUES ('2108', 'mk', 'ko', '마케도니아어');
INSERT INTO spl_icl_languages_translations VALUES ('2109', 'mk', 'ku', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2110', 'mk', 'la', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2111', 'mk', 'lv', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2112', 'mk', 'lt', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2113', 'mk', 'mk', 'македонски');
INSERT INTO spl_icl_languages_translations VALUES ('2114', 'mk', 'mt', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2115', 'mk', 'mn', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2116', 'mk', 'ne', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2117', 'mk', 'nl', 'Macedonisch');
INSERT INTO spl_icl_languages_translations VALUES ('2118', 'mk', 'nb', 'Makedonsk');
INSERT INTO spl_icl_languages_translations VALUES ('2119', 'mk', 'pa', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2120', 'mk', 'pl', 'macedoński');
INSERT INTO spl_icl_languages_translations VALUES ('2121', 'mk', 'pt-pt', 'Macedônio');
INSERT INTO spl_icl_languages_translations VALUES ('2122', 'mk', 'pt-br', 'Macedônio');
INSERT INTO spl_icl_languages_translations VALUES ('2123', 'mk', 'qu', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2124', 'mk', 'ro', 'Macedoniană');
INSERT INTO spl_icl_languages_translations VALUES ('2125', 'mk', 'ru', 'Македонский');
INSERT INTO spl_icl_languages_translations VALUES ('2126', 'mk', 'sl', 'Makedonski');
INSERT INTO spl_icl_languages_translations VALUES ('2127', 'mk', 'so', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2128', 'mk', 'sq', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2129', 'mk', 'sr', 'македонски');
INSERT INTO spl_icl_languages_translations VALUES ('2130', 'mk', 'sv', 'Makedonska');
INSERT INTO spl_icl_languages_translations VALUES ('2131', 'mk', 'ta', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2132', 'mk', 'th', 'มาซิโดเนีย');
INSERT INTO spl_icl_languages_translations VALUES ('2133', 'mk', 'tr', 'Makedonyaca');
INSERT INTO spl_icl_languages_translations VALUES ('2134', 'mk', 'uk', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2135', 'mk', 'ur', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2136', 'mk', 'uz', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2137', 'mk', 'vi', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2138', 'mk', 'yi', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2139', 'mk', 'zh-hans', '马其顿语');
INSERT INTO spl_icl_languages_translations VALUES ('2140', 'mk', 'zu', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2141', 'mk', 'zh-hant', '馬其頓語');
INSERT INTO spl_icl_languages_translations VALUES ('2142', 'mk', 'ms', 'Macedonian');
INSERT INTO spl_icl_languages_translations VALUES ('2143', 'mt', 'en', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2144', 'mt', 'es', 'Maltés');
INSERT INTO spl_icl_languages_translations VALUES ('2145', 'mt', 'de', 'Maltesisch');
INSERT INTO spl_icl_languages_translations VALUES ('2146', 'mt', 'fr', 'Maltais');
INSERT INTO spl_icl_languages_translations VALUES ('2147', 'mt', 'ar', 'المالطية');
INSERT INTO spl_icl_languages_translations VALUES ('2148', 'mt', 'bs', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2149', 'mt', 'bg', 'Малтийски');
INSERT INTO spl_icl_languages_translations VALUES ('2150', 'mt', 'ca', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2151', 'mt', 'cs', 'Maltština');
INSERT INTO spl_icl_languages_translations VALUES ('2152', 'mt', 'sk', 'Maltézština');
INSERT INTO spl_icl_languages_translations VALUES ('2153', 'mt', 'cy', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2154', 'mt', 'da', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2155', 'mt', 'el', 'Μαλτεζικα');
INSERT INTO spl_icl_languages_translations VALUES ('2156', 'mt', 'eo', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2157', 'mt', 'et', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2158', 'mt', 'eu', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2159', 'mt', 'fa', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2160', 'mt', 'fi', 'malta');
INSERT INTO spl_icl_languages_translations VALUES ('2161', 'mt', 'ga', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2162', 'mt', 'he', 'מלטזית');
INSERT INTO spl_icl_languages_translations VALUES ('2163', 'mt', 'hi', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2164', 'mt', 'hr', 'Malteški');
INSERT INTO spl_icl_languages_translations VALUES ('2165', 'mt', 'hu', 'máltai');
INSERT INTO spl_icl_languages_translations VALUES ('2166', 'mt', 'hy', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2167', 'mt', 'id', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2168', 'mt', 'is', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2169', 'mt', 'it', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2170', 'mt', 'ja', 'マルタ語');
INSERT INTO spl_icl_languages_translations VALUES ('2171', 'mt', 'ko', '몰타어');
INSERT INTO spl_icl_languages_translations VALUES ('2172', 'mt', 'ku', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2173', 'mt', 'la', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2174', 'mt', 'lv', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2175', 'mt', 'lt', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2176', 'mt', 'mk', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2177', 'mt', 'mt', 'Malti');
INSERT INTO spl_icl_languages_translations VALUES ('2178', 'mt', 'mn', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2179', 'mt', 'ne', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2180', 'mt', 'nl', 'Maltees');
INSERT INTO spl_icl_languages_translations VALUES ('2181', 'mt', 'nb', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2182', 'mt', 'pa', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2183', 'mt', 'pl', 'maltański');
INSERT INTO spl_icl_languages_translations VALUES ('2184', 'mt', 'pt-pt', 'Maltês');
INSERT INTO spl_icl_languages_translations VALUES ('2185', 'mt', 'pt-br', 'Maltês');
INSERT INTO spl_icl_languages_translations VALUES ('2186', 'mt', 'qu', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2187', 'mt', 'ro', 'Malteză');
INSERT INTO spl_icl_languages_translations VALUES ('2188', 'mt', 'ru', 'Мальтийский');
INSERT INTO spl_icl_languages_translations VALUES ('2189', 'mt', 'sl', 'Malteški');
INSERT INTO spl_icl_languages_translations VALUES ('2190', 'mt', 'so', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2191', 'mt', 'sq', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2192', 'mt', 'sr', 'малтешки');
INSERT INTO spl_icl_languages_translations VALUES ('2193', 'mt', 'sv', 'Maltesiska');
INSERT INTO spl_icl_languages_translations VALUES ('2194', 'mt', 'ta', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2195', 'mt', 'th', 'มอลทีส');
INSERT INTO spl_icl_languages_translations VALUES ('2196', 'mt', 'tr', 'Malta dili');
INSERT INTO spl_icl_languages_translations VALUES ('2197', 'mt', 'uk', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2198', 'mt', 'ur', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2199', 'mt', 'uz', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2200', 'mt', 'vi', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2201', 'mt', 'yi', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2202', 'mt', 'zh-hans', '马耳他语');
INSERT INTO spl_icl_languages_translations VALUES ('2203', 'mt', 'zu', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2204', 'mt', 'zh-hant', '馬爾他語');
INSERT INTO spl_icl_languages_translations VALUES ('2205', 'mt', 'ms', 'Maltese');
INSERT INTO spl_icl_languages_translations VALUES ('2206', 'mn', 'en', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2207', 'mn', 'es', 'Mongol');
INSERT INTO spl_icl_languages_translations VALUES ('2208', 'mn', 'de', 'Mongolisch');
INSERT INTO spl_icl_languages_translations VALUES ('2209', 'mn', 'fr', 'Mongol');
INSERT INTO spl_icl_languages_translations VALUES ('2210', 'mn', 'ar', 'المنغولية');
INSERT INTO spl_icl_languages_translations VALUES ('2211', 'mn', 'bs', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2212', 'mn', 'bg', 'Монголски');
INSERT INTO spl_icl_languages_translations VALUES ('2213', 'mn', 'ca', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2214', 'mn', 'cs', 'Mongolský');
INSERT INTO spl_icl_languages_translations VALUES ('2215', 'mn', 'sk', 'Mongolština');
INSERT INTO spl_icl_languages_translations VALUES ('2216', 'mn', 'cy', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2217', 'mn', 'da', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2218', 'mn', 'el', 'Μογγολικα');
INSERT INTO spl_icl_languages_translations VALUES ('2219', 'mn', 'eo', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2220', 'mn', 'et', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2221', 'mn', 'eu', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2222', 'mn', 'fa', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2223', 'mn', 'fi', 'mongoli');
INSERT INTO spl_icl_languages_translations VALUES ('2224', 'mn', 'ga', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2225', 'mn', 'he', 'מונגולית');
INSERT INTO spl_icl_languages_translations VALUES ('2226', 'mn', 'hi', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2227', 'mn', 'hr', 'Mongolski');
INSERT INTO spl_icl_languages_translations VALUES ('2228', 'mn', 'hu', 'mongol');
INSERT INTO spl_icl_languages_translations VALUES ('2229', 'mn', 'hy', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2230', 'mn', 'id', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2231', 'mn', 'is', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2232', 'mn', 'it', 'Mongolo');
INSERT INTO spl_icl_languages_translations VALUES ('2233', 'mn', 'ja', 'モンゴル語');
INSERT INTO spl_icl_languages_translations VALUES ('2234', 'mn', 'ko', '몽골어');
INSERT INTO spl_icl_languages_translations VALUES ('2235', 'mn', 'ku', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2236', 'mn', 'la', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2237', 'mn', 'lv', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2238', 'mn', 'lt', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2239', 'mn', 'mk', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2240', 'mn', 'mt', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2241', 'mn', 'mn', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2242', 'mn', 'ne', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2243', 'mn', 'nl', 'Mongools');
INSERT INTO spl_icl_languages_translations VALUES ('2244', 'mn', 'nb', 'Mongolsk');
INSERT INTO spl_icl_languages_translations VALUES ('2245', 'mn', 'pa', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2246', 'mn', 'pl', 'mongolski');
INSERT INTO spl_icl_languages_translations VALUES ('2247', 'mn', 'pt-pt', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2248', 'mn', 'pt-br', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2249', 'mn', 'qu', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2250', 'mn', 'ro', 'Mongoleză');
INSERT INTO spl_icl_languages_translations VALUES ('2251', 'mn', 'ru', 'Монгольский');
INSERT INTO spl_icl_languages_translations VALUES ('2252', 'mn', 'sl', 'Mongolski');
INSERT INTO spl_icl_languages_translations VALUES ('2253', 'mn', 'so', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2254', 'mn', 'sq', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2255', 'mn', 'sr', 'монголски');
INSERT INTO spl_icl_languages_translations VALUES ('2256', 'mn', 'sv', 'Mongoliska');
INSERT INTO spl_icl_languages_translations VALUES ('2257', 'mn', 'ta', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2258', 'mn', 'th', 'มองโกเลีย');
INSERT INTO spl_icl_languages_translations VALUES ('2259', 'mn', 'tr', 'Mongolca');
INSERT INTO spl_icl_languages_translations VALUES ('2260', 'mn', 'uk', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2261', 'mn', 'ur', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2262', 'mn', 'uz', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2263', 'mn', 'vi', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2264', 'mn', 'yi', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2265', 'mn', 'zh-hans', '蒙古语');
INSERT INTO spl_icl_languages_translations VALUES ('2266', 'mn', 'zu', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2267', 'mn', 'zh-hant', '蒙古語');
INSERT INTO spl_icl_languages_translations VALUES ('2268', 'mn', 'ms', 'Mongolian');
INSERT INTO spl_icl_languages_translations VALUES ('2269', 'ne', 'en', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2270', 'ne', 'es', 'Nepalí');
INSERT INTO spl_icl_languages_translations VALUES ('2271', 'ne', 'de', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2272', 'ne', 'fr', 'Népalais');
INSERT INTO spl_icl_languages_translations VALUES ('2273', 'ne', 'ar', 'النيبالية');
INSERT INTO spl_icl_languages_translations VALUES ('2274', 'ne', 'bs', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2275', 'ne', 'bg', 'Непалски');
INSERT INTO spl_icl_languages_translations VALUES ('2276', 'ne', 'ca', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2277', 'ne', 'cs', 'Nepálský');
INSERT INTO spl_icl_languages_translations VALUES ('2278', 'ne', 'sk', 'Nepálčina');
INSERT INTO spl_icl_languages_translations VALUES ('2279', 'ne', 'cy', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2280', 'ne', 'da', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2281', 'ne', 'el', 'Νεπαλι');
INSERT INTO spl_icl_languages_translations VALUES ('2282', 'ne', 'eo', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2283', 'ne', 'et', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2284', 'ne', 'eu', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2285', 'ne', 'fa', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2286', 'ne', 'fi', 'nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2287', 'ne', 'ga', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2288', 'ne', 'he', 'נפאלית');
INSERT INTO spl_icl_languages_translations VALUES ('2289', 'ne', 'hi', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2290', 'ne', 'hr', 'Nepalski');
INSERT INTO spl_icl_languages_translations VALUES ('2291', 'ne', 'hu', 'nepáli');
INSERT INTO spl_icl_languages_translations VALUES ('2292', 'ne', 'hy', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2293', 'ne', 'id', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2294', 'ne', 'is', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2295', 'ne', 'it', 'Nepalese');
INSERT INTO spl_icl_languages_translations VALUES ('2296', 'ne', 'ja', 'ネパール語');
INSERT INTO spl_icl_languages_translations VALUES ('2297', 'ne', 'ko', '네팔어');
INSERT INTO spl_icl_languages_translations VALUES ('2298', 'ne', 'ku', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2299', 'ne', 'la', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2300', 'ne', 'lv', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2301', 'ne', 'lt', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2302', 'ne', 'mk', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2303', 'ne', 'mt', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2304', 'ne', 'mn', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2305', 'ne', 'ne', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2306', 'ne', 'nl', 'Nepalees');
INSERT INTO spl_icl_languages_translations VALUES ('2307', 'ne', 'nb', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2308', 'ne', 'pa', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2309', 'ne', 'pl', 'nepalski');
INSERT INTO spl_icl_languages_translations VALUES ('2310', 'ne', 'pt-pt', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2311', 'ne', 'pt-br', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2312', 'ne', 'qu', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2313', 'ne', 'ro', 'Nepaleză');
INSERT INTO spl_icl_languages_translations VALUES ('2314', 'ne', 'ru', 'Непальский');
INSERT INTO spl_icl_languages_translations VALUES ('2315', 'ne', 'sl', 'Nepalščina');
INSERT INTO spl_icl_languages_translations VALUES ('2316', 'ne', 'so', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2317', 'ne', 'sq', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2318', 'ne', 'sr', 'непалски');
INSERT INTO spl_icl_languages_translations VALUES ('2319', 'ne', 'sv', 'Nepalesiska');
INSERT INTO spl_icl_languages_translations VALUES ('2320', 'ne', 'ta', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2321', 'ne', 'th', 'เนปาล');
INSERT INTO spl_icl_languages_translations VALUES ('2322', 'ne', 'tr', 'Nepal dili');
INSERT INTO spl_icl_languages_translations VALUES ('2323', 'ne', 'uk', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2324', 'ne', 'ur', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2325', 'ne', 'uz', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2326', 'ne', 'vi', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2327', 'ne', 'yi', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2328', 'ne', 'zh-hans', '尼泊尔语');
INSERT INTO spl_icl_languages_translations VALUES ('2329', 'ne', 'zu', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2330', 'ne', 'zh-hant', '尼泊爾語');
INSERT INTO spl_icl_languages_translations VALUES ('2331', 'ne', 'ms', 'Nepali');
INSERT INTO spl_icl_languages_translations VALUES ('2332', 'nl', 'en', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2333', 'nl', 'es', 'Holandés');
INSERT INTO spl_icl_languages_translations VALUES ('2334', 'nl', 'de', 'Niederländisch');
INSERT INTO spl_icl_languages_translations VALUES ('2335', 'nl', 'fr', 'Néerlandais');
INSERT INTO spl_icl_languages_translations VALUES ('2336', 'nl', 'ar', 'الهولندية');
INSERT INTO spl_icl_languages_translations VALUES ('2337', 'nl', 'bs', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2338', 'nl', 'bg', 'Холандски');
INSERT INTO spl_icl_languages_translations VALUES ('2339', 'nl', 'ca', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2340', 'nl', 'cs', 'Holandský');
INSERT INTO spl_icl_languages_translations VALUES ('2341', 'nl', 'sk', 'Holandčina');
INSERT INTO spl_icl_languages_translations VALUES ('2342', 'nl', 'cy', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2343', 'nl', 'da', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2344', 'nl', 'el', 'Ολλανδικα');
INSERT INTO spl_icl_languages_translations VALUES ('2345', 'nl', 'eo', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2346', 'nl', 'et', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2347', 'nl', 'eu', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2348', 'nl', 'fa', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2349', 'nl', 'fi', 'hollanti');
INSERT INTO spl_icl_languages_translations VALUES ('2350', 'nl', 'ga', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2351', 'nl', 'he', 'הולנדית');
INSERT INTO spl_icl_languages_translations VALUES ('2352', 'nl', 'hi', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2353', 'nl', 'hr', 'Holandski');
INSERT INTO spl_icl_languages_translations VALUES ('2354', 'nl', 'hu', 'holland');
INSERT INTO spl_icl_languages_translations VALUES ('2355', 'nl', 'hy', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2356', 'nl', 'id', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2357', 'nl', 'is', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2358', 'nl', 'it', 'Olandese');
INSERT INTO spl_icl_languages_translations VALUES ('2359', 'nl', 'ja', 'オランダ語');
INSERT INTO spl_icl_languages_translations VALUES ('2360', 'nl', 'ko', '화란어');
INSERT INTO spl_icl_languages_translations VALUES ('2361', 'nl', 'ku', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2362', 'nl', 'la', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2363', 'nl', 'lv', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2364', 'nl', 'lt', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2365', 'nl', 'mk', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2366', 'nl', 'mt', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2367', 'nl', 'mn', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2368', 'nl', 'ne', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2369', 'nl', 'nl', 'Nederlands');
INSERT INTO spl_icl_languages_translations VALUES ('2370', 'nl', 'nb', 'Nederlandsk');
INSERT INTO spl_icl_languages_translations VALUES ('2371', 'nl', 'pa', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2372', 'nl', 'pl', 'holenderski');
INSERT INTO spl_icl_languages_translations VALUES ('2373', 'nl', 'pt-pt', 'Holandês');
INSERT INTO spl_icl_languages_translations VALUES ('2374', 'nl', 'pt-br', 'Holandês');
INSERT INTO spl_icl_languages_translations VALUES ('2375', 'nl', 'qu', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2376', 'nl', 'ro', 'Olaneză');
INSERT INTO spl_icl_languages_translations VALUES ('2377', 'nl', 'ru', 'Голландский');
INSERT INTO spl_icl_languages_translations VALUES ('2378', 'nl', 'sl', 'Nizozemščina');
INSERT INTO spl_icl_languages_translations VALUES ('2379', 'nl', 'so', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2380', 'nl', 'sq', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2381', 'nl', 'sr', 'холандски');
INSERT INTO spl_icl_languages_translations VALUES ('2382', 'nl', 'sv', 'Nederländska');
INSERT INTO spl_icl_languages_translations VALUES ('2383', 'nl', 'ta', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2384', 'nl', 'th', 'ดัตช์');
INSERT INTO spl_icl_languages_translations VALUES ('2385', 'nl', 'tr', 'Hollandaca');
INSERT INTO spl_icl_languages_translations VALUES ('2386', 'nl', 'uk', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2387', 'nl', 'ur', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2388', 'nl', 'uz', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2389', 'nl', 'vi', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2390', 'nl', 'yi', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2391', 'nl', 'zh-hans', '荷兰语');
INSERT INTO spl_icl_languages_translations VALUES ('2392', 'nl', 'zu', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2393', 'nl', 'zh-hant', '荷蘭語');
INSERT INTO spl_icl_languages_translations VALUES ('2394', 'nl', 'ms', 'Dutch');
INSERT INTO spl_icl_languages_translations VALUES ('2395', 'nb', 'en', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2396', 'nb', 'es', 'Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2397', 'nb', 'de', 'Norwegisch (Buchsprache)');
INSERT INTO spl_icl_languages_translations VALUES ('2398', 'nb', 'fr', 'Norvégien Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2399', 'nb', 'ar', 'البوكمالية النرويجية');
INSERT INTO spl_icl_languages_translations VALUES ('2400', 'nb', 'bs', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2401', 'nb', 'bg', 'Норвежки книжовен');
INSERT INTO spl_icl_languages_translations VALUES ('2402', 'nb', 'ca', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2403', 'nb', 'cs', 'Norwegian bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2404', 'nb', 'sk', 'Nórsky jazyk Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2405', 'nb', 'cy', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2406', 'nb', 'da', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2407', 'nb', 'el', 'Νορβηγικα');
INSERT INTO spl_icl_languages_translations VALUES ('2408', 'nb', 'eo', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2409', 'nb', 'et', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2410', 'nb', 'eu', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2411', 'nb', 'fa', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2412', 'nb', 'fi', 'kirjanorja');
INSERT INTO spl_icl_languages_translations VALUES ('2413', 'nb', 'ga', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2414', 'nb', 'he', 'נורווגית');
INSERT INTO spl_icl_languages_translations VALUES ('2415', 'nb', 'hi', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2416', 'nb', 'hr', 'Književni norveški');
INSERT INTO spl_icl_languages_translations VALUES ('2417', 'nb', 'hu', 'norvég bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2418', 'nb', 'hy', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2419', 'nb', 'id', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2420', 'nb', 'is', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2421', 'nb', 'it', 'Norvegese Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2422', 'nb', 'ja', 'ノルウェー・ブークモール');
INSERT INTO spl_icl_languages_translations VALUES ('2423', 'nb', 'ko', '노르웨이 보크말어');
INSERT INTO spl_icl_languages_translations VALUES ('2424', 'nb', 'ku', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2425', 'nb', 'la', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2426', 'nb', 'lv', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2427', 'nb', 'lt', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2428', 'nb', 'mk', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2429', 'nb', 'mt', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2430', 'nb', 'mn', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2431', 'nb', 'ne', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2432', 'nb', 'nl', 'Noors Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2433', 'nb', 'nb', 'Norsk bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2434', 'nb', 'pa', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2435', 'nb', 'pl', 'norweski bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2436', 'nb', 'pt-pt', 'Norueguês');
INSERT INTO spl_icl_languages_translations VALUES ('2437', 'nb', 'pt-br', 'Norueguês');
INSERT INTO spl_icl_languages_translations VALUES ('2438', 'nb', 'qu', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2439', 'nb', 'ro', 'Bokmål (norvegiană)');
INSERT INTO spl_icl_languages_translations VALUES ('2440', 'nb', 'ru', 'Норвежский букмол');
INSERT INTO spl_icl_languages_translations VALUES ('2441', 'nb', 'sl', 'Knjižna norveščina');
INSERT INTO spl_icl_languages_translations VALUES ('2442', 'nb', 'so', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2443', 'nb', 'sq', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2444', 'nb', 'sr', 'Норвешки бокмал');
INSERT INTO spl_icl_languages_translations VALUES ('2445', 'nb', 'sv', 'Norskt Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2446', 'nb', 'ta', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2447', 'nb', 'th', 'นอร์วิเจียนบอกมาล');
INSERT INTO spl_icl_languages_translations VALUES ('2448', 'nb', 'tr', 'Bokmal Norveç dili');
INSERT INTO spl_icl_languages_translations VALUES ('2449', 'nb', 'uk', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2450', 'nb', 'ur', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2451', 'nb', 'uz', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2452', 'nb', 'vi', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2453', 'nb', 'yi', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2454', 'nb', 'zh-hans', '挪威布克莫尔语');
INSERT INTO spl_icl_languages_translations VALUES ('2455', 'nb', 'zu', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2456', 'nb', 'zh-hant', '挪威布克莫爾語');
INSERT INTO spl_icl_languages_translations VALUES ('2457', 'nb', 'ms', 'Norwegian Bokmål');
INSERT INTO spl_icl_languages_translations VALUES ('2458', 'pa', 'en', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2459', 'pa', 'es', 'Panyabí');
INSERT INTO spl_icl_languages_translations VALUES ('2460', 'pa', 'de', 'Pandschabi');
INSERT INTO spl_icl_languages_translations VALUES ('2461', 'pa', 'fr', 'Panjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2462', 'pa', 'ar', 'البنجابية');
INSERT INTO spl_icl_languages_translations VALUES ('2463', 'pa', 'bs', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2464', 'pa', 'bg', 'Панджабски');
INSERT INTO spl_icl_languages_translations VALUES ('2465', 'pa', 'ca', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2466', 'pa', 'cs', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2467', 'pa', 'sk', 'Pandžábčina');
INSERT INTO spl_icl_languages_translations VALUES ('2468', 'pa', 'cy', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2469', 'pa', 'da', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2470', 'pa', 'el', 'Panjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2471', 'pa', 'eo', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2472', 'pa', 'et', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2473', 'pa', 'eu', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2474', 'pa', 'fa', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2475', 'pa', 'fi', 'pandzabi');
INSERT INTO spl_icl_languages_translations VALUES ('2476', 'pa', 'ga', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2477', 'pa', 'he', 'פנג\'אבית');
INSERT INTO spl_icl_languages_translations VALUES ('2478', 'pa', 'hi', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2479', 'pa', 'hr', 'Pendžabljanin');
INSERT INTO spl_icl_languages_translations VALUES ('2480', 'pa', 'hu', 'pandzsábi');
INSERT INTO spl_icl_languages_translations VALUES ('2481', 'pa', 'hy', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2482', 'pa', 'id', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2483', 'pa', 'is', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2484', 'pa', 'it', 'Panjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2485', 'pa', 'ja', 'パンジャーブ語');
INSERT INTO spl_icl_languages_translations VALUES ('2486', 'pa', 'ko', '펀자브어');
INSERT INTO spl_icl_languages_translations VALUES ('2487', 'pa', 'ku', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2488', 'pa', 'la', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2489', 'pa', 'lv', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2490', 'pa', 'lt', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2491', 'pa', 'mk', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2492', 'pa', 'mt', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2493', 'pa', 'mn', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2494', 'pa', 'ne', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2495', 'pa', 'nl', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2496', 'pa', 'nb', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2497', 'pa', 'pa', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2498', 'pa', 'pl', 'pendżabi');
INSERT INTO spl_icl_languages_translations VALUES ('2499', 'pa', 'pt-pt', 'Panjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2500', 'pa', 'pt-br', 'Panjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2501', 'pa', 'qu', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2502', 'pa', 'ro', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2503', 'pa', 'ru', 'Панджаби');
INSERT INTO spl_icl_languages_translations VALUES ('2504', 'pa', 'sl', 'Pandžabščina');
INSERT INTO spl_icl_languages_translations VALUES ('2505', 'pa', 'so', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2506', 'pa', 'sq', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2507', 'pa', 'sr', 'панџаби');
INSERT INTO spl_icl_languages_translations VALUES ('2508', 'pa', 'sv', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2509', 'pa', 'ta', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2510', 'pa', 'th', 'ปัญจาบ');
INSERT INTO spl_icl_languages_translations VALUES ('2511', 'pa', 'tr', 'Pencapça');
INSERT INTO spl_icl_languages_translations VALUES ('2512', 'pa', 'uk', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2513', 'pa', 'ur', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2514', 'pa', 'uz', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2515', 'pa', 'vi', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2516', 'pa', 'yi', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2517', 'pa', 'zh-hans', '旁遮普语');
INSERT INTO spl_icl_languages_translations VALUES ('2518', 'pa', 'zu', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2519', 'pa', 'zh-hant', '旁遮普語');
INSERT INTO spl_icl_languages_translations VALUES ('2520', 'pa', 'ms', 'Punjabi');
INSERT INTO spl_icl_languages_translations VALUES ('2521', 'pl', 'en', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2522', 'pl', 'es', 'Polaco');
INSERT INTO spl_icl_languages_translations VALUES ('2523', 'pl', 'de', 'Polnisch');
INSERT INTO spl_icl_languages_translations VALUES ('2524', 'pl', 'fr', 'Polonais');
INSERT INTO spl_icl_languages_translations VALUES ('2525', 'pl', 'ar', 'البولندية');
INSERT INTO spl_icl_languages_translations VALUES ('2526', 'pl', 'bs', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2527', 'pl', 'bg', 'Полски');
INSERT INTO spl_icl_languages_translations VALUES ('2528', 'pl', 'ca', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2529', 'pl', 'cs', 'Polský');
INSERT INTO spl_icl_languages_translations VALUES ('2530', 'pl', 'sk', 'Polština');
INSERT INTO spl_icl_languages_translations VALUES ('2531', 'pl', 'cy', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2532', 'pl', 'da', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2533', 'pl', 'el', 'Πολωνικα');
INSERT INTO spl_icl_languages_translations VALUES ('2534', 'pl', 'eo', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2535', 'pl', 'et', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2536', 'pl', 'eu', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2537', 'pl', 'fa', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2538', 'pl', 'fi', 'puola');
INSERT INTO spl_icl_languages_translations VALUES ('2539', 'pl', 'ga', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2540', 'pl', 'he', 'פולנית');
INSERT INTO spl_icl_languages_translations VALUES ('2541', 'pl', 'hi', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2542', 'pl', 'hr', 'Poljski');
INSERT INTO spl_icl_languages_translations VALUES ('2543', 'pl', 'hu', 'lengyel');
INSERT INTO spl_icl_languages_translations VALUES ('2544', 'pl', 'hy', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2545', 'pl', 'id', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2546', 'pl', 'is', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2547', 'pl', 'it', 'Polacco');
INSERT INTO spl_icl_languages_translations VALUES ('2548', 'pl', 'ja', 'ポーランド語');
INSERT INTO spl_icl_languages_translations VALUES ('2549', 'pl', 'ko', '폴란드어');
INSERT INTO spl_icl_languages_translations VALUES ('2550', 'pl', 'ku', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2551', 'pl', 'la', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2552', 'pl', 'lv', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2553', 'pl', 'lt', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2554', 'pl', 'mk', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2555', 'pl', 'mt', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2556', 'pl', 'mn', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2557', 'pl', 'ne', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2558', 'pl', 'nl', 'Pools');
INSERT INTO spl_icl_languages_translations VALUES ('2559', 'pl', 'nb', 'Polsk');
INSERT INTO spl_icl_languages_translations VALUES ('2560', 'pl', 'pa', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2561', 'pl', 'pl', 'polski');
INSERT INTO spl_icl_languages_translations VALUES ('2562', 'pl', 'pt-pt', 'Polonês');
INSERT INTO spl_icl_languages_translations VALUES ('2563', 'pl', 'pt-br', 'Polonês');
INSERT INTO spl_icl_languages_translations VALUES ('2564', 'pl', 'qu', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2565', 'pl', 'ro', 'Poloneză');
INSERT INTO spl_icl_languages_translations VALUES ('2566', 'pl', 'ru', 'Польский');
INSERT INTO spl_icl_languages_translations VALUES ('2567', 'pl', 'sl', 'Poljski');
INSERT INTO spl_icl_languages_translations VALUES ('2568', 'pl', 'so', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2569', 'pl', 'sq', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2570', 'pl', 'sr', 'пољски');
INSERT INTO spl_icl_languages_translations VALUES ('2571', 'pl', 'sv', 'Polska');
INSERT INTO spl_icl_languages_translations VALUES ('2572', 'pl', 'ta', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2573', 'pl', 'th', 'โปแลนด์');
INSERT INTO spl_icl_languages_translations VALUES ('2574', 'pl', 'tr', 'Polonyaca');
INSERT INTO spl_icl_languages_translations VALUES ('2575', 'pl', 'uk', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2576', 'pl', 'ur', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2577', 'pl', 'uz', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2578', 'pl', 'vi', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2579', 'pl', 'yi', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2580', 'pl', 'zh-hans', '波兰语');
INSERT INTO spl_icl_languages_translations VALUES ('2581', 'pl', 'zu', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2582', 'pl', 'zh-hant', '波蘭語');
INSERT INTO spl_icl_languages_translations VALUES ('2583', 'pl', 'ms', 'Polish');
INSERT INTO spl_icl_languages_translations VALUES ('2584', 'pt-pt', 'en', 'Portuguese (Portugal)');
INSERT INTO spl_icl_languages_translations VALUES ('2585', 'pt-pt', 'es', 'Portugués, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2586', 'pt-pt', 'de', 'Portugiesisch, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2587', 'pt-pt', 'fr', 'Portugais - du Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2588', 'pt-pt', 'ar', 'البرتغالية ، البرتغال');
INSERT INTO spl_icl_languages_translations VALUES ('2589', 'pt-pt', 'bs', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2590', 'pt-pt', 'bg', 'Португалски (Португалия)');
INSERT INTO spl_icl_languages_translations VALUES ('2591', 'pt-pt', 'ca', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2592', 'pt-pt', 'cs', 'Portugalština ( Portugalsko)');
INSERT INTO spl_icl_languages_translations VALUES ('2593', 'pt-pt', 'sk', 'Portugalština');
INSERT INTO spl_icl_languages_translations VALUES ('2594', 'pt-pt', 'cy', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2595', 'pt-pt', 'da', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2596', 'pt-pt', 'el', 'Πορτογαλικα');
INSERT INTO spl_icl_languages_translations VALUES ('2597', 'pt-pt', 'eo', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2598', 'pt-pt', 'et', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2599', 'pt-pt', 'eu', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2600', 'pt-pt', 'fa', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2601', 'pt-pt', 'fi', 'portugali');
INSERT INTO spl_icl_languages_translations VALUES ('2602', 'pt-pt', 'ga', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2603', 'pt-pt', 'he', 'פורטוגזית');
INSERT INTO spl_icl_languages_translations VALUES ('2604', 'pt-pt', 'hi', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2605', 'pt-pt', 'hr', 'Portugalski (Portugal)');
INSERT INTO spl_icl_languages_translations VALUES ('2606', 'pt-pt', 'hu', 'portugál');
INSERT INTO spl_icl_languages_translations VALUES ('2607', 'pt-pt', 'hy', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2608', 'pt-pt', 'id', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2609', 'pt-pt', 'is', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2610', 'pt-pt', 'it', 'Portoghese, Portogallo');
INSERT INTO spl_icl_languages_translations VALUES ('2611', 'pt-pt', 'ja', 'ポルトガル語');
INSERT INTO spl_icl_languages_translations VALUES ('2612', 'pt-pt', 'ko', '포르투갈 포르투갈어');
INSERT INTO spl_icl_languages_translations VALUES ('2613', 'pt-pt', 'ku', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2614', 'pt-pt', 'la', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2615', 'pt-pt', 'lv', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2616', 'pt-pt', 'lt', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2617', 'pt-pt', 'mk', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2618', 'pt-pt', 'mt', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2619', 'pt-pt', 'mn', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2620', 'pt-pt', 'ne', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2621', 'pt-pt', 'nl', 'Portugees, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2622', 'pt-pt', 'nb', 'Portugisisk (Portugal)');
INSERT INTO spl_icl_languages_translations VALUES ('2623', 'pt-pt', 'pa', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2624', 'pt-pt', 'pl', 'portugalski, Portugalia');
INSERT INTO spl_icl_languages_translations VALUES ('2625', 'pt-pt', 'pt-pt', 'Português');
INSERT INTO spl_icl_languages_translations VALUES ('2626', 'pt-pt', 'pt-br', 'Português');
INSERT INTO spl_icl_languages_translations VALUES ('2627', 'pt-pt', 'qu', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2628', 'pt-pt', 'ro', 'Portugheză (Portugalia)');
INSERT INTO spl_icl_languages_translations VALUES ('2629', 'pt-pt', 'ru', 'Португальский, Португалия');
INSERT INTO spl_icl_languages_translations VALUES ('2630', 'pt-pt', 'sl', 'Portugalščina ( Portugalska )');
INSERT INTO spl_icl_languages_translations VALUES ('2631', 'pt-pt', 'so', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2632', 'pt-pt', 'sq', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2633', 'pt-pt', 'sr', 'Португалски (Португалија)');
INSERT INTO spl_icl_languages_translations VALUES ('2634', 'pt-pt', 'sv', 'Portugisiska, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2635', 'pt-pt', 'ta', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2636', 'pt-pt', 'th', 'โปรตุเกส');
INSERT INTO spl_icl_languages_translations VALUES ('2637', 'pt-pt', 'tr', 'Portekizce, Portekiz');
INSERT INTO spl_icl_languages_translations VALUES ('2638', 'pt-pt', 'uk', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2639', 'pt-pt', 'ur', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2640', 'pt-pt', 'uz', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2641', 'pt-pt', 'vi', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2642', 'pt-pt', 'yi', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2643', 'pt-pt', 'zh-hans', '葡萄牙语（葡萄牙）');
INSERT INTO spl_icl_languages_translations VALUES ('2644', 'pt-pt', 'zu', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2645', 'pt-pt', 'zh-hant', '葡萄牙語（葡萄牙）');
INSERT INTO spl_icl_languages_translations VALUES ('2646', 'pt-pt', 'ms', 'Portuguese, Portugal');
INSERT INTO spl_icl_languages_translations VALUES ('2647', 'pt-br', 'en', 'Portuguese (Brazil)');
INSERT INTO spl_icl_languages_translations VALUES ('2648', 'pt-br', 'es', 'Portugués, Brasil');
INSERT INTO spl_icl_languages_translations VALUES ('2649', 'pt-br', 'de', 'Portugiesisch, Brasilien');
INSERT INTO spl_icl_languages_translations VALUES ('2650', 'pt-br', 'fr', 'Portugais - du Brésil');
INSERT INTO spl_icl_languages_translations VALUES ('2651', 'pt-br', 'ar', 'البرتغالية ،البرازيل');
INSERT INTO spl_icl_languages_translations VALUES ('2652', 'pt-br', 'bs', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2653', 'pt-br', 'bg', 'Португалски (Бразилия)');
INSERT INTO spl_icl_languages_translations VALUES ('2654', 'pt-br', 'ca', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2655', 'pt-br', 'cs', 'Portugalština ( Brazílie)');
INSERT INTO spl_icl_languages_translations VALUES ('2656', 'pt-br', 'sk', 'Brazílska Portugalština');
INSERT INTO spl_icl_languages_translations VALUES ('2657', 'pt-br', 'cy', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2658', 'pt-br', 'da', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2659', 'pt-br', 'el', 'Πορτογαλικα');
INSERT INTO spl_icl_languages_translations VALUES ('2660', 'pt-br', 'eo', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2661', 'pt-br', 'et', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2662', 'pt-br', 'eu', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2663', 'pt-br', 'fa', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2664', 'pt-br', 'fi', 'Brasilian portugali');
INSERT INTO spl_icl_languages_translations VALUES ('2665', 'pt-br', 'ga', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2666', 'pt-br', 'he', 'פורטוגזית - ברזיל');
INSERT INTO spl_icl_languages_translations VALUES ('2667', 'pt-br', 'hi', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2668', 'pt-br', 'hr', 'Portugalski (Brazil)');
INSERT INTO spl_icl_languages_translations VALUES ('2669', 'pt-br', 'hu', 'brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2670', 'pt-br', 'hy', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2671', 'pt-br', 'id', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2672', 'pt-br', 'is', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2673', 'pt-br', 'it', 'Portoghese, Brasile');
INSERT INTO spl_icl_languages_translations VALUES ('2674', 'pt-br', 'ja', 'ポルトガル語（ブラジル）');
INSERT INTO spl_icl_languages_translations VALUES ('2675', 'pt-br', 'ko', '브라질 포르투갈어');
INSERT INTO spl_icl_languages_translations VALUES ('2676', 'pt-br', 'ku', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2677', 'pt-br', 'la', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2678', 'pt-br', 'lv', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2679', 'pt-br', 'lt', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2680', 'pt-br', 'mk', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2681', 'pt-br', 'mt', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2682', 'pt-br', 'mn', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2683', 'pt-br', 'ne', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2684', 'pt-br', 'nl', 'Portugees, Brazilië');
INSERT INTO spl_icl_languages_translations VALUES ('2685', 'pt-br', 'nb', 'Portugisisk (Brasil)');
INSERT INTO spl_icl_languages_translations VALUES ('2686', 'pt-br', 'pa', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2687', 'pt-br', 'pl', 'portugalski, Brazylia');
INSERT INTO spl_icl_languages_translations VALUES ('2688', 'pt-br', 'pt-pt', 'Português');
INSERT INTO spl_icl_languages_translations VALUES ('2689', 'pt-br', 'pt-br', 'Português');
INSERT INTO spl_icl_languages_translations VALUES ('2690', 'pt-br', 'qu', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2691', 'pt-br', 'ro', 'Portugheză (Brazilia)');
INSERT INTO spl_icl_languages_translations VALUES ('2692', 'pt-br', 'ru', 'Португальский, Бразилия');
INSERT INTO spl_icl_languages_translations VALUES ('2693', 'pt-br', 'sl', 'Portugalščina ( Brazilija )');
INSERT INTO spl_icl_languages_translations VALUES ('2694', 'pt-br', 'so', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2695', 'pt-br', 'sq', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2696', 'pt-br', 'sr', 'Португалски (Бразил)');
INSERT INTO spl_icl_languages_translations VALUES ('2697', 'pt-br', 'sv', 'Portugisiska, Brasilien');
INSERT INTO spl_icl_languages_translations VALUES ('2698', 'pt-br', 'ta', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2699', 'pt-br', 'th', 'โปรตุเกสบราซิล');
INSERT INTO spl_icl_languages_translations VALUES ('2700', 'pt-br', 'tr', 'Portekizce, Brezilya');
INSERT INTO spl_icl_languages_translations VALUES ('2701', 'pt-br', 'uk', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2702', 'pt-br', 'ur', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2703', 'pt-br', 'uz', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2704', 'pt-br', 'vi', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2705', 'pt-br', 'yi', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2706', 'pt-br', 'zh-hans', '葡萄牙语（巴西）');
INSERT INTO spl_icl_languages_translations VALUES ('2707', 'pt-br', 'zu', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2708', 'pt-br', 'zh-hant', '葡萄牙語（巴西）');
INSERT INTO spl_icl_languages_translations VALUES ('2709', 'pt-br', 'ms', 'Portuguese, Brazil');
INSERT INTO spl_icl_languages_translations VALUES ('2710', 'qu', 'en', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2711', 'qu', 'es', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2712', 'qu', 'de', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2713', 'qu', 'fr', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2714', 'qu', 'ar', 'الكويتشوا');
INSERT INTO spl_icl_languages_translations VALUES ('2715', 'qu', 'bs', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2716', 'qu', 'bg', 'Кечуа');
INSERT INTO spl_icl_languages_translations VALUES ('2717', 'qu', 'ca', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2718', 'qu', 'cs', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2719', 'qu', 'sk', 'Jazyk Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2720', 'qu', 'cy', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2721', 'qu', 'da', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2722', 'qu', 'el', 'Κετσουα');
INSERT INTO spl_icl_languages_translations VALUES ('2723', 'qu', 'eo', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2724', 'qu', 'et', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2725', 'qu', 'eu', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2726', 'qu', 'fa', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2727', 'qu', 'fi', 'ketsua');
INSERT INTO spl_icl_languages_translations VALUES ('2728', 'qu', 'ga', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2729', 'qu', 'he', 'קצ\'ואה');
INSERT INTO spl_icl_languages_translations VALUES ('2730', 'qu', 'hi', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2731', 'qu', 'hr', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2732', 'qu', 'hu', 'quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2733', 'qu', 'hy', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2734', 'qu', 'id', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2735', 'qu', 'is', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2736', 'qu', 'it', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2737', 'qu', 'ja', 'ケチュア語');
INSERT INTO spl_icl_languages_translations VALUES ('2738', 'qu', 'ko', '케추아어');
INSERT INTO spl_icl_languages_translations VALUES ('2739', 'qu', 'ku', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2740', 'qu', 'la', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2741', 'qu', 'lv', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2742', 'qu', 'lt', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2743', 'qu', 'mk', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2744', 'qu', 'mt', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2745', 'qu', 'mn', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2746', 'qu', 'ne', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2747', 'qu', 'nl', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2748', 'qu', 'nb', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2749', 'qu', 'pa', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2750', 'qu', 'pl', 'keczua');
INSERT INTO spl_icl_languages_translations VALUES ('2751', 'qu', 'pt-pt', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2752', 'qu', 'pt-br', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2753', 'qu', 'qu', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2754', 'qu', 'ro', 'Quechuană');
INSERT INTO spl_icl_languages_translations VALUES ('2755', 'qu', 'ru', 'Кечуа');
INSERT INTO spl_icl_languages_translations VALUES ('2756', 'qu', 'sl', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2757', 'qu', 'so', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2758', 'qu', 'sq', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2759', 'qu', 'sr', 'Кечуа');
INSERT INTO spl_icl_languages_translations VALUES ('2760', 'qu', 'sv', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2761', 'qu', 'ta', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2762', 'qu', 'th', 'คิวชัว');
INSERT INTO spl_icl_languages_translations VALUES ('2763', 'qu', 'tr', 'Quechua dili');
INSERT INTO spl_icl_languages_translations VALUES ('2764', 'qu', 'uk', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2765', 'qu', 'ur', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2766', 'qu', 'uz', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2767', 'qu', 'vi', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2768', 'qu', 'yi', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2769', 'qu', 'zh-hans', '盖丘亚语');
INSERT INTO spl_icl_languages_translations VALUES ('2770', 'qu', 'zu', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2771', 'qu', 'zh-hant', '蓋丘亞語');
INSERT INTO spl_icl_languages_translations VALUES ('2772', 'qu', 'ms', 'Quechua');
INSERT INTO spl_icl_languages_translations VALUES ('2773', 'ro', 'en', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2774', 'ro', 'es', 'Rumano');
INSERT INTO spl_icl_languages_translations VALUES ('2775', 'ro', 'de', 'Rumänisch');
INSERT INTO spl_icl_languages_translations VALUES ('2776', 'ro', 'fr', 'Roumain');
INSERT INTO spl_icl_languages_translations VALUES ('2777', 'ro', 'ar', 'الرومانية');
INSERT INTO spl_icl_languages_translations VALUES ('2778', 'ro', 'bs', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2779', 'ro', 'bg', 'Румънски');
INSERT INTO spl_icl_languages_translations VALUES ('2780', 'ro', 'ca', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2781', 'ro', 'cs', 'Rumunština');
INSERT INTO spl_icl_languages_translations VALUES ('2782', 'ro', 'sk', 'Rumunčina');
INSERT INTO spl_icl_languages_translations VALUES ('2783', 'ro', 'cy', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2784', 'ro', 'da', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2785', 'ro', 'el', 'Ρουμανικα');
INSERT INTO spl_icl_languages_translations VALUES ('2786', 'ro', 'eo', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2787', 'ro', 'et', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2788', 'ro', 'eu', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2789', 'ro', 'fa', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2790', 'ro', 'fi', 'romania');
INSERT INTO spl_icl_languages_translations VALUES ('2791', 'ro', 'ga', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2792', 'ro', 'he', 'רומנית');
INSERT INTO spl_icl_languages_translations VALUES ('2793', 'ro', 'hi', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2794', 'ro', 'hr', 'Rumunjski');
INSERT INTO spl_icl_languages_translations VALUES ('2795', 'ro', 'hu', 'román');
INSERT INTO spl_icl_languages_translations VALUES ('2796', 'ro', 'hy', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2797', 'ro', 'id', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2798', 'ro', 'is', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2799', 'ro', 'it', 'Rumeno');
INSERT INTO spl_icl_languages_translations VALUES ('2800', 'ro', 'ja', 'ルーマニア語');
INSERT INTO spl_icl_languages_translations VALUES ('2801', 'ro', 'ko', '로마니아어');
INSERT INTO spl_icl_languages_translations VALUES ('2802', 'ro', 'ku', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2803', 'ro', 'la', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2804', 'ro', 'lv', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2805', 'ro', 'lt', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2806', 'ro', 'mk', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2807', 'ro', 'mt', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2808', 'ro', 'mn', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2809', 'ro', 'ne', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2810', 'ro', 'nl', 'Roemeens');
INSERT INTO spl_icl_languages_translations VALUES ('2811', 'ro', 'nb', 'Rumensk');
INSERT INTO spl_icl_languages_translations VALUES ('2812', 'ro', 'pa', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2813', 'ro', 'pl', 'rumuński');
INSERT INTO spl_icl_languages_translations VALUES ('2814', 'ro', 'pt-pt', 'Romeno');
INSERT INTO spl_icl_languages_translations VALUES ('2815', 'ro', 'pt-br', 'Romeno');
INSERT INTO spl_icl_languages_translations VALUES ('2816', 'ro', 'qu', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2817', 'ro', 'ro', 'Română');
INSERT INTO spl_icl_languages_translations VALUES ('2818', 'ro', 'ru', 'Румынский');
INSERT INTO spl_icl_languages_translations VALUES ('2819', 'ro', 'sl', 'Romunščina');
INSERT INTO spl_icl_languages_translations VALUES ('2820', 'ro', 'so', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2821', 'ro', 'sq', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2822', 'ro', 'sr', 'румунски');
INSERT INTO spl_icl_languages_translations VALUES ('2823', 'ro', 'sv', 'Rumänska');
INSERT INTO spl_icl_languages_translations VALUES ('2824', 'ro', 'ta', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2825', 'ro', 'th', 'โรมาเนีย');
INSERT INTO spl_icl_languages_translations VALUES ('2826', 'ro', 'tr', 'Rumence');
INSERT INTO spl_icl_languages_translations VALUES ('2827', 'ro', 'uk', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2828', 'ro', 'ur', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2829', 'ro', 'uz', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2830', 'ro', 'vi', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2831', 'ro', 'yi', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2832', 'ro', 'zh-hans', '罗马尼亚语');
INSERT INTO spl_icl_languages_translations VALUES ('2833', 'ro', 'zu', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2834', 'ro', 'zh-hant', '羅馬尼亞語');
INSERT INTO spl_icl_languages_translations VALUES ('2835', 'ro', 'ms', 'Romanian');
INSERT INTO spl_icl_languages_translations VALUES ('2836', 'ru', 'en', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2837', 'ru', 'es', 'Ruso');
INSERT INTO spl_icl_languages_translations VALUES ('2838', 'ru', 'de', 'Russisch');
INSERT INTO spl_icl_languages_translations VALUES ('2839', 'ru', 'fr', 'Russe');
INSERT INTO spl_icl_languages_translations VALUES ('2840', 'ru', 'ar', 'الروسية');
INSERT INTO spl_icl_languages_translations VALUES ('2841', 'ru', 'bs', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2842', 'ru', 'bg', 'Руски');
INSERT INTO spl_icl_languages_translations VALUES ('2843', 'ru', 'ca', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2844', 'ru', 'cs', 'Ruský');
INSERT INTO spl_icl_languages_translations VALUES ('2845', 'ru', 'sk', 'Ruština');
INSERT INTO spl_icl_languages_translations VALUES ('2846', 'ru', 'cy', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2847', 'ru', 'da', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2848', 'ru', 'el', 'Ρωσικα');
INSERT INTO spl_icl_languages_translations VALUES ('2849', 'ru', 'eo', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2850', 'ru', 'et', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2851', 'ru', 'eu', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2852', 'ru', 'fa', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2853', 'ru', 'fi', 'venäjä');
INSERT INTO spl_icl_languages_translations VALUES ('2854', 'ru', 'ga', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2855', 'ru', 'he', 'רוסית');
INSERT INTO spl_icl_languages_translations VALUES ('2856', 'ru', 'hi', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2857', 'ru', 'hr', 'Ruski');
INSERT INTO spl_icl_languages_translations VALUES ('2858', 'ru', 'hu', 'orosz');
INSERT INTO spl_icl_languages_translations VALUES ('2859', 'ru', 'hy', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2860', 'ru', 'id', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2861', 'ru', 'is', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2862', 'ru', 'it', 'Russo');
INSERT INTO spl_icl_languages_translations VALUES ('2863', 'ru', 'ja', 'ロシア語');
INSERT INTO spl_icl_languages_translations VALUES ('2864', 'ru', 'ko', '러시아어');
INSERT INTO spl_icl_languages_translations VALUES ('2865', 'ru', 'ku', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2866', 'ru', 'la', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2867', 'ru', 'lv', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2868', 'ru', 'lt', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2869', 'ru', 'mk', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2870', 'ru', 'mt', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2871', 'ru', 'mn', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2872', 'ru', 'ne', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2873', 'ru', 'nl', 'Russisch');
INSERT INTO spl_icl_languages_translations VALUES ('2874', 'ru', 'nb', 'Russisk');
INSERT INTO spl_icl_languages_translations VALUES ('2875', 'ru', 'pa', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2876', 'ru', 'pl', 'rosyjski');
INSERT INTO spl_icl_languages_translations VALUES ('2877', 'ru', 'pt-pt', 'Russo');
INSERT INTO spl_icl_languages_translations VALUES ('2878', 'ru', 'pt-br', 'Russo');
INSERT INTO spl_icl_languages_translations VALUES ('2879', 'ru', 'qu', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2880', 'ru', 'ro', 'Rusă');
INSERT INTO spl_icl_languages_translations VALUES ('2881', 'ru', 'ru', 'Русский');
INSERT INTO spl_icl_languages_translations VALUES ('2882', 'ru', 'sl', 'Ruščina');
INSERT INTO spl_icl_languages_translations VALUES ('2883', 'ru', 'so', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2884', 'ru', 'sq', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2885', 'ru', 'sr', 'руски');
INSERT INTO spl_icl_languages_translations VALUES ('2886', 'ru', 'sv', 'Ryska');
INSERT INTO spl_icl_languages_translations VALUES ('2887', 'ru', 'ta', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2888', 'ru', 'th', 'รัสเซีย');
INSERT INTO spl_icl_languages_translations VALUES ('2889', 'ru', 'tr', 'Rusça');
INSERT INTO spl_icl_languages_translations VALUES ('2890', 'ru', 'uk', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2891', 'ru', 'ur', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2892', 'ru', 'uz', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2893', 'ru', 'vi', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2894', 'ru', 'yi', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2895', 'ru', 'zh-hans', '俄语');
INSERT INTO spl_icl_languages_translations VALUES ('2896', 'ru', 'zu', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2897', 'ru', 'zh-hant', '俄語');
INSERT INTO spl_icl_languages_translations VALUES ('2898', 'ru', 'ms', 'Russian');
INSERT INTO spl_icl_languages_translations VALUES ('2899', 'sl', 'en', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2900', 'sl', 'es', 'Esloveno');
INSERT INTO spl_icl_languages_translations VALUES ('2901', 'sl', 'de', 'Slowenisch');
INSERT INTO spl_icl_languages_translations VALUES ('2902', 'sl', 'fr', 'Slovène');
INSERT INTO spl_icl_languages_translations VALUES ('2903', 'sl', 'ar', 'السلوفانية');
INSERT INTO spl_icl_languages_translations VALUES ('2904', 'sl', 'bs', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2905', 'sl', 'bg', 'Словенски');
INSERT INTO spl_icl_languages_translations VALUES ('2906', 'sl', 'ca', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2907', 'sl', 'cs', 'Slovinština');
INSERT INTO spl_icl_languages_translations VALUES ('2908', 'sl', 'sk', 'Slovinčina');
INSERT INTO spl_icl_languages_translations VALUES ('2909', 'sl', 'cy', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2910', 'sl', 'da', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2911', 'sl', 'el', 'Σλοβενικα');
INSERT INTO spl_icl_languages_translations VALUES ('2912', 'sl', 'eo', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2913', 'sl', 'et', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2914', 'sl', 'eu', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2915', 'sl', 'fa', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2916', 'sl', 'fi', 'sloveeni');
INSERT INTO spl_icl_languages_translations VALUES ('2917', 'sl', 'ga', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2918', 'sl', 'he', 'סלובנית');
INSERT INTO spl_icl_languages_translations VALUES ('2919', 'sl', 'hi', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2920', 'sl', 'hr', 'Slovenac');
INSERT INTO spl_icl_languages_translations VALUES ('2921', 'sl', 'hu', 'szlovén');
INSERT INTO spl_icl_languages_translations VALUES ('2922', 'sl', 'hy', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2923', 'sl', 'id', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2924', 'sl', 'is', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2925', 'sl', 'it', 'Sloveno');
INSERT INTO spl_icl_languages_translations VALUES ('2926', 'sl', 'ja', 'スロベニア語');
INSERT INTO spl_icl_languages_translations VALUES ('2927', 'sl', 'ko', '슬로베니아어');
INSERT INTO spl_icl_languages_translations VALUES ('2928', 'sl', 'ku', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2929', 'sl', 'la', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2930', 'sl', 'lv', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2931', 'sl', 'lt', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2932', 'sl', 'mk', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2933', 'sl', 'mt', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2934', 'sl', 'mn', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2935', 'sl', 'ne', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2936', 'sl', 'nl', 'Sloveens');
INSERT INTO spl_icl_languages_translations VALUES ('2937', 'sl', 'nb', 'Slovensk');
INSERT INTO spl_icl_languages_translations VALUES ('2938', 'sl', 'pa', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2939', 'sl', 'pl', 'słoweński');
INSERT INTO spl_icl_languages_translations VALUES ('2940', 'sl', 'pt-pt', 'Esloveno');
INSERT INTO spl_icl_languages_translations VALUES ('2941', 'sl', 'pt-br', 'Esloveno');
INSERT INTO spl_icl_languages_translations VALUES ('2942', 'sl', 'qu', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2943', 'sl', 'ro', 'Slovenă');
INSERT INTO spl_icl_languages_translations VALUES ('2944', 'sl', 'ru', 'Словенский');
INSERT INTO spl_icl_languages_translations VALUES ('2945', 'sl', 'sl', 'Slovenščina');
INSERT INTO spl_icl_languages_translations VALUES ('2946', 'sl', 'so', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2947', 'sl', 'sq', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2948', 'sl', 'sr', 'словеначки');
INSERT INTO spl_icl_languages_translations VALUES ('2949', 'sl', 'sv', 'Slovenska');
INSERT INTO spl_icl_languages_translations VALUES ('2950', 'sl', 'ta', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2951', 'sl', 'th', 'สโลวีเนียน');
INSERT INTO spl_icl_languages_translations VALUES ('2952', 'sl', 'tr', 'Sloven dili');
INSERT INTO spl_icl_languages_translations VALUES ('2953', 'sl', 'uk', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2954', 'sl', 'ur', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2955', 'sl', 'uz', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2956', 'sl', 'vi', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2957', 'sl', 'yi', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2958', 'sl', 'zh-hans', '斯洛文尼亚语');
INSERT INTO spl_icl_languages_translations VALUES ('2959', 'sl', 'zu', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2960', 'sl', 'zh-hant', '斯洛文尼亞語');
INSERT INTO spl_icl_languages_translations VALUES ('2961', 'sl', 'ms', 'Slovenian');
INSERT INTO spl_icl_languages_translations VALUES ('2962', 'so', 'en', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2963', 'so', 'es', 'Somalí');
INSERT INTO spl_icl_languages_translations VALUES ('2964', 'so', 'de', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2965', 'so', 'fr', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2966', 'so', 'ar', 'الصومالية');
INSERT INTO spl_icl_languages_translations VALUES ('2967', 'so', 'bs', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2968', 'so', 'bg', 'Сомалийски');
INSERT INTO spl_icl_languages_translations VALUES ('2969', 'so', 'ca', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2970', 'so', 'cs', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2971', 'so', 'sk', 'Somálčina');
INSERT INTO spl_icl_languages_translations VALUES ('2972', 'so', 'cy', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2973', 'so', 'da', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2974', 'so', 'el', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2975', 'so', 'eo', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2976', 'so', 'et', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2977', 'so', 'eu', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2978', 'so', 'fa', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2979', 'so', 'fi', 'somali');
INSERT INTO spl_icl_languages_translations VALUES ('2980', 'so', 'ga', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2981', 'so', 'he', 'סומלית');
INSERT INTO spl_icl_languages_translations VALUES ('2982', 'so', 'hi', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2983', 'so', 'hr', 'Somalijski');
INSERT INTO spl_icl_languages_translations VALUES ('2984', 'so', 'hu', 'szomáli');
INSERT INTO spl_icl_languages_translations VALUES ('2985', 'so', 'hy', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2986', 'so', 'id', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2987', 'so', 'is', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2988', 'so', 'it', 'Somalo');
INSERT INTO spl_icl_languages_translations VALUES ('2989', 'so', 'ja', 'ソマリ語');
INSERT INTO spl_icl_languages_translations VALUES ('2990', 'so', 'ko', '소말리아어');
INSERT INTO spl_icl_languages_translations VALUES ('2991', 'so', 'ku', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2992', 'so', 'la', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2993', 'so', 'lv', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2994', 'so', 'lt', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2995', 'so', 'mk', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2996', 'so', 'mt', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2997', 'so', 'mn', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2998', 'so', 'ne', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('2999', 'so', 'nl', 'Somalisch');
INSERT INTO spl_icl_languages_translations VALUES ('3000', 'so', 'nb', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3001', 'so', 'pa', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3002', 'so', 'pl', 'somalijski');
INSERT INTO spl_icl_languages_translations VALUES ('3003', 'so', 'pt-pt', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3004', 'so', 'pt-br', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3005', 'so', 'qu', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3006', 'so', 'ro', 'Somaleză');
INSERT INTO spl_icl_languages_translations VALUES ('3007', 'so', 'ru', 'Сомалийский');
INSERT INTO spl_icl_languages_translations VALUES ('3008', 'so', 'sl', 'Somalski');
INSERT INTO spl_icl_languages_translations VALUES ('3009', 'so', 'so', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3010', 'so', 'sq', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3011', 'so', 'sr', 'Сомалијски');
INSERT INTO spl_icl_languages_translations VALUES ('3012', 'so', 'sv', 'Somaliska');
INSERT INTO spl_icl_languages_translations VALUES ('3013', 'so', 'ta', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3014', 'so', 'th', 'โซมาลี');
INSERT INTO spl_icl_languages_translations VALUES ('3015', 'so', 'tr', 'Somalice');
INSERT INTO spl_icl_languages_translations VALUES ('3016', 'so', 'uk', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3017', 'so', 'ur', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3018', 'so', 'uz', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3019', 'so', 'vi', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3020', 'so', 'yi', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3021', 'so', 'zh-hans', '索马里语');
INSERT INTO spl_icl_languages_translations VALUES ('3022', 'so', 'zu', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3023', 'so', 'zh-hant', '索馬里語');
INSERT INTO spl_icl_languages_translations VALUES ('3024', 'so', 'ms', 'Somali');
INSERT INTO spl_icl_languages_translations VALUES ('3025', 'sq', 'en', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3026', 'sq', 'es', 'Albanés');
INSERT INTO spl_icl_languages_translations VALUES ('3027', 'sq', 'de', 'Albanisch');
INSERT INTO spl_icl_languages_translations VALUES ('3028', 'sq', 'fr', 'Albanais');
INSERT INTO spl_icl_languages_translations VALUES ('3029', 'sq', 'ar', 'الألبانية');
INSERT INTO spl_icl_languages_translations VALUES ('3030', 'sq', 'bs', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3031', 'sq', 'bg', 'Албански');
INSERT INTO spl_icl_languages_translations VALUES ('3032', 'sq', 'ca', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3033', 'sq', 'cs', 'Albánský');
INSERT INTO spl_icl_languages_translations VALUES ('3034', 'sq', 'sk', 'Albánčina');
INSERT INTO spl_icl_languages_translations VALUES ('3035', 'sq', 'cy', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3036', 'sq', 'da', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3037', 'sq', 'el', 'Αλβανικα');
INSERT INTO spl_icl_languages_translations VALUES ('3038', 'sq', 'eo', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3039', 'sq', 'et', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3040', 'sq', 'eu', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3041', 'sq', 'fa', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3042', 'sq', 'fi', 'albania');
INSERT INTO spl_icl_languages_translations VALUES ('3043', 'sq', 'ga', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3044', 'sq', 'he', 'אלבנית');
INSERT INTO spl_icl_languages_translations VALUES ('3045', 'sq', 'hi', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3046', 'sq', 'hr', 'Albanac');
INSERT INTO spl_icl_languages_translations VALUES ('3047', 'sq', 'hu', 'albán');
INSERT INTO spl_icl_languages_translations VALUES ('3048', 'sq', 'hy', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3049', 'sq', 'id', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3050', 'sq', 'is', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3051', 'sq', 'it', 'Albanese');
INSERT INTO spl_icl_languages_translations VALUES ('3052', 'sq', 'ja', 'アルバニア語');
INSERT INTO spl_icl_languages_translations VALUES ('3053', 'sq', 'ko', '알바니아어');
INSERT INTO spl_icl_languages_translations VALUES ('3054', 'sq', 'ku', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3055', 'sq', 'la', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3056', 'sq', 'lv', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3057', 'sq', 'lt', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3058', 'sq', 'mk', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3059', 'sq', 'mt', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3060', 'sq', 'mn', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3061', 'sq', 'ne', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3062', 'sq', 'nl', 'Albaans');
INSERT INTO spl_icl_languages_translations VALUES ('3063', 'sq', 'nb', 'Albansk');
INSERT INTO spl_icl_languages_translations VALUES ('3064', 'sq', 'pa', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3065', 'sq', 'pl', 'albański');
INSERT INTO spl_icl_languages_translations VALUES ('3066', 'sq', 'pt-pt', 'Albanês');
INSERT INTO spl_icl_languages_translations VALUES ('3067', 'sq', 'pt-br', 'Albanês');
INSERT INTO spl_icl_languages_translations VALUES ('3068', 'sq', 'qu', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3069', 'sq', 'ro', 'Albaneză');
INSERT INTO spl_icl_languages_translations VALUES ('3070', 'sq', 'ru', 'Албанский');
INSERT INTO spl_icl_languages_translations VALUES ('3071', 'sq', 'sl', 'Albanski');
INSERT INTO spl_icl_languages_translations VALUES ('3072', 'sq', 'so', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3073', 'sq', 'sq', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3074', 'sq', 'sr', 'албански');
INSERT INTO spl_icl_languages_translations VALUES ('3075', 'sq', 'sv', 'Albanska');
INSERT INTO spl_icl_languages_translations VALUES ('3076', 'sq', 'ta', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3077', 'sq', 'th', 'อัลเบเนีย');
INSERT INTO spl_icl_languages_translations VALUES ('3078', 'sq', 'tr', 'Arnavutça');
INSERT INTO spl_icl_languages_translations VALUES ('3079', 'sq', 'uk', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3080', 'sq', 'ur', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3081', 'sq', 'uz', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3082', 'sq', 'vi', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3083', 'sq', 'yi', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3084', 'sq', 'zh-hans', '阿尔巴尼亚语');
INSERT INTO spl_icl_languages_translations VALUES ('3085', 'sq', 'zu', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3086', 'sq', 'zh-hant', '阿爾巴尼亞語');
INSERT INTO spl_icl_languages_translations VALUES ('3087', 'sq', 'ms', 'Albanian');
INSERT INTO spl_icl_languages_translations VALUES ('3088', 'sr', 'en', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3089', 'sr', 'es', 'Serbio');
INSERT INTO spl_icl_languages_translations VALUES ('3090', 'sr', 'de', 'Serbisch');
INSERT INTO spl_icl_languages_translations VALUES ('3091', 'sr', 'fr', 'Serbe');
INSERT INTO spl_icl_languages_translations VALUES ('3092', 'sr', 'ar', 'الصربية');
INSERT INTO spl_icl_languages_translations VALUES ('3093', 'sr', 'bs', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3094', 'sr', 'bg', 'Сръбски');
INSERT INTO spl_icl_languages_translations VALUES ('3095', 'sr', 'ca', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3096', 'sr', 'cs', 'Srbský');
INSERT INTO spl_icl_languages_translations VALUES ('3097', 'sr', 'sk', 'Srbština');
INSERT INTO spl_icl_languages_translations VALUES ('3098', 'sr', 'cy', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3099', 'sr', 'da', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3100', 'sr', 'el', 'Σερβικα');
INSERT INTO spl_icl_languages_translations VALUES ('3101', 'sr', 'eo', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3102', 'sr', 'et', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3103', 'sr', 'eu', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3104', 'sr', 'fa', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3105', 'sr', 'fi', 'serbia');
INSERT INTO spl_icl_languages_translations VALUES ('3106', 'sr', 'ga', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3107', 'sr', 'he', 'סרבית');
INSERT INTO spl_icl_languages_translations VALUES ('3108', 'sr', 'hi', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3109', 'sr', 'hr', 'Srpski');
INSERT INTO spl_icl_languages_translations VALUES ('3110', 'sr', 'hu', 'szerb');
INSERT INTO spl_icl_languages_translations VALUES ('3111', 'sr', 'hy', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3112', 'sr', 'id', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3113', 'sr', 'is', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3114', 'sr', 'it', 'Serbo');
INSERT INTO spl_icl_languages_translations VALUES ('3115', 'sr', 'ja', 'セルビア語');
INSERT INTO spl_icl_languages_translations VALUES ('3116', 'sr', 'ko', '세르비아어');
INSERT INTO spl_icl_languages_translations VALUES ('3117', 'sr', 'ku', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3118', 'sr', 'la', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3119', 'sr', 'lv', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3120', 'sr', 'lt', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3121', 'sr', 'mk', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3122', 'sr', 'mt', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3123', 'sr', 'mn', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3124', 'sr', 'ne', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3125', 'sr', 'nl', 'Servisch');
INSERT INTO spl_icl_languages_translations VALUES ('3126', 'sr', 'nb', 'Serbisk');
INSERT INTO spl_icl_languages_translations VALUES ('3127', 'sr', 'pa', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3128', 'sr', 'pl', 'serbski');
INSERT INTO spl_icl_languages_translations VALUES ('3129', 'sr', 'pt-pt', 'Sérvio');
INSERT INTO spl_icl_languages_translations VALUES ('3130', 'sr', 'pt-br', 'Sérvio');
INSERT INTO spl_icl_languages_translations VALUES ('3131', 'sr', 'qu', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3132', 'sr', 'ro', 'Sârbă');
INSERT INTO spl_icl_languages_translations VALUES ('3133', 'sr', 'ru', 'Сербский');
INSERT INTO spl_icl_languages_translations VALUES ('3134', 'sr', 'sl', 'Srbski');
INSERT INTO spl_icl_languages_translations VALUES ('3135', 'sr', 'so', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3136', 'sr', 'sq', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3137', 'sr', 'sr', 'српски');
INSERT INTO spl_icl_languages_translations VALUES ('3138', 'sr', 'sv', 'Serbiska');
INSERT INTO spl_icl_languages_translations VALUES ('3139', 'sr', 'ta', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3140', 'sr', 'th', 'เซอร์เบีย');
INSERT INTO spl_icl_languages_translations VALUES ('3141', 'sr', 'tr', 'Sırpça');
INSERT INTO spl_icl_languages_translations VALUES ('3142', 'sr', 'uk', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3143', 'sr', 'ur', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3144', 'sr', 'uz', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3145', 'sr', 'vi', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3146', 'sr', 'yi', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3147', 'sr', 'zh-hans', '赛尔维亚语');
INSERT INTO spl_icl_languages_translations VALUES ('3148', 'sr', 'zu', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3149', 'sr', 'zh-hant', '賽爾維亞語');
INSERT INTO spl_icl_languages_translations VALUES ('3150', 'sr', 'ms', 'Serbian');
INSERT INTO spl_icl_languages_translations VALUES ('3151', 'sv', 'en', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3152', 'sv', 'es', 'Sueco');
INSERT INTO spl_icl_languages_translations VALUES ('3153', 'sv', 'de', 'Schwedisch');
INSERT INTO spl_icl_languages_translations VALUES ('3154', 'sv', 'fr', 'Suédois');
INSERT INTO spl_icl_languages_translations VALUES ('3155', 'sv', 'ar', 'السويدية');
INSERT INTO spl_icl_languages_translations VALUES ('3156', 'sv', 'bs', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3157', 'sv', 'bg', 'Шведски');
INSERT INTO spl_icl_languages_translations VALUES ('3158', 'sv', 'ca', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3159', 'sv', 'cs', 'Švédský');
INSERT INTO spl_icl_languages_translations VALUES ('3160', 'sv', 'sk', 'Švédština');
INSERT INTO spl_icl_languages_translations VALUES ('3161', 'sv', 'cy', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3162', 'sv', 'da', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3163', 'sv', 'el', 'Σουηδικη');
INSERT INTO spl_icl_languages_translations VALUES ('3164', 'sv', 'eo', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3165', 'sv', 'et', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3166', 'sv', 'eu', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3167', 'sv', 'fa', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3168', 'sv', 'fi', 'ruotsi');
INSERT INTO spl_icl_languages_translations VALUES ('3169', 'sv', 'ga', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3170', 'sv', 'he', 'שוודית');
INSERT INTO spl_icl_languages_translations VALUES ('3171', 'sv', 'hi', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3172', 'sv', 'hr', 'švedski');
INSERT INTO spl_icl_languages_translations VALUES ('3173', 'sv', 'hu', 'svéd');
INSERT INTO spl_icl_languages_translations VALUES ('3174', 'sv', 'hy', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3175', 'sv', 'id', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3176', 'sv', 'is', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3177', 'sv', 'it', 'Svedese');
INSERT INTO spl_icl_languages_translations VALUES ('3178', 'sv', 'ja', 'スウェーデン語');
INSERT INTO spl_icl_languages_translations VALUES ('3179', 'sv', 'ko', '스웨덴어');
INSERT INTO spl_icl_languages_translations VALUES ('3180', 'sv', 'ku', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3181', 'sv', 'la', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3182', 'sv', 'lv', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3183', 'sv', 'lt', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3184', 'sv', 'mk', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3185', 'sv', 'mt', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3186', 'sv', 'mn', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3187', 'sv', 'ne', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3188', 'sv', 'nl', 'Zweeds');
INSERT INTO spl_icl_languages_translations VALUES ('3189', 'sv', 'nb', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3190', 'sv', 'pa', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3191', 'sv', 'pl', 'szwedzki');
INSERT INTO spl_icl_languages_translations VALUES ('3192', 'sv', 'pt-pt', 'Sueco');
INSERT INTO spl_icl_languages_translations VALUES ('3193', 'sv', 'pt-br', 'Sueco');
INSERT INTO spl_icl_languages_translations VALUES ('3194', 'sv', 'qu', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3195', 'sv', 'ro', 'Suedeză');
INSERT INTO spl_icl_languages_translations VALUES ('3196', 'sv', 'ru', 'Шведский');
INSERT INTO spl_icl_languages_translations VALUES ('3197', 'sv', 'sl', 'Švedščina');
INSERT INTO spl_icl_languages_translations VALUES ('3198', 'sv', 'so', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3199', 'sv', 'sq', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3200', 'sv', 'sr', 'шведски');
INSERT INTO spl_icl_languages_translations VALUES ('3201', 'sv', 'sv', 'Svenska');
INSERT INTO spl_icl_languages_translations VALUES ('3202', 'sv', 'ta', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3203', 'sv', 'th', 'สวีเดน');
INSERT INTO spl_icl_languages_translations VALUES ('3204', 'sv', 'tr', 'İsveççe');
INSERT INTO spl_icl_languages_translations VALUES ('3205', 'sv', 'uk', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3206', 'sv', 'ur', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3207', 'sv', 'uz', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3208', 'sv', 'vi', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3209', 'sv', 'yi', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3210', 'sv', 'zh-hans', '瑞典语');
INSERT INTO spl_icl_languages_translations VALUES ('3211', 'sv', 'zu', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3212', 'sv', 'zh-hant', '瑞典語');
INSERT INTO spl_icl_languages_translations VALUES ('3213', 'sv', 'ms', 'Swedish');
INSERT INTO spl_icl_languages_translations VALUES ('3214', 'ta', 'en', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3215', 'ta', 'es', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3216', 'ta', 'de', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3217', 'ta', 'fr', 'Tamoul');
INSERT INTO spl_icl_languages_translations VALUES ('3218', 'ta', 'ar', 'التاميلية');
INSERT INTO spl_icl_languages_translations VALUES ('3219', 'ta', 'bs', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3220', 'ta', 'bg', 'Тамилски');
INSERT INTO spl_icl_languages_translations VALUES ('3221', 'ta', 'ca', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3222', 'ta', 'cs', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3223', 'ta', 'sk', 'Tamilčina');
INSERT INTO spl_icl_languages_translations VALUES ('3224', 'ta', 'cy', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3225', 'ta', 'da', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3226', 'ta', 'el', 'Ταμιλ');
INSERT INTO spl_icl_languages_translations VALUES ('3227', 'ta', 'eo', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3228', 'ta', 'et', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3229', 'ta', 'eu', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3230', 'ta', 'fa', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3231', 'ta', 'fi', 'tamili');
INSERT INTO spl_icl_languages_translations VALUES ('3232', 'ta', 'ga', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3233', 'ta', 'he', 'טמילית');
INSERT INTO spl_icl_languages_translations VALUES ('3234', 'ta', 'hi', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3235', 'ta', 'hr', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3236', 'ta', 'hu', 'tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3237', 'ta', 'hy', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3238', 'ta', 'id', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3239', 'ta', 'is', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3240', 'ta', 'it', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3241', 'ta', 'ja', 'タミル語');
INSERT INTO spl_icl_languages_translations VALUES ('3242', 'ta', 'ko', '타밀어');
INSERT INTO spl_icl_languages_translations VALUES ('3243', 'ta', 'ku', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3244', 'ta', 'la', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3245', 'ta', 'lv', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3246', 'ta', 'lt', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3247', 'ta', 'mk', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3248', 'ta', 'mt', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3249', 'ta', 'mn', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3250', 'ta', 'ne', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3251', 'ta', 'nl', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3252', 'ta', 'nb', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3253', 'ta', 'pa', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3254', 'ta', 'pl', 'tamilski');
INSERT INTO spl_icl_languages_translations VALUES ('3255', 'ta', 'pt-pt', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3256', 'ta', 'pt-br', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3257', 'ta', 'qu', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3258', 'ta', 'ro', 'Tamilă');
INSERT INTO spl_icl_languages_translations VALUES ('3259', 'ta', 'ru', 'Тамильский');
INSERT INTO spl_icl_languages_translations VALUES ('3260', 'ta', 'sl', 'Tamilščina');
INSERT INTO spl_icl_languages_translations VALUES ('3261', 'ta', 'so', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3262', 'ta', 'sq', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3263', 'ta', 'sr', 'тамилски');
INSERT INTO spl_icl_languages_translations VALUES ('3264', 'ta', 'sv', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3265', 'ta', 'ta', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3266', 'ta', 'th', 'ทมิฬ');
INSERT INTO spl_icl_languages_translations VALUES ('3267', 'ta', 'tr', 'Tamil dili');
INSERT INTO spl_icl_languages_translations VALUES ('3268', 'ta', 'uk', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3269', 'ta', 'ur', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3270', 'ta', 'uz', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3271', 'ta', 'vi', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3272', 'ta', 'yi', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3273', 'ta', 'zh-hans', '泰米尔语');
INSERT INTO spl_icl_languages_translations VALUES ('3274', 'ta', 'zu', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3275', 'ta', 'zh-hant', '泰米爾語');
INSERT INTO spl_icl_languages_translations VALUES ('3276', 'ta', 'ms', 'Tamil');
INSERT INTO spl_icl_languages_translations VALUES ('3277', 'th', 'en', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3278', 'th', 'es', 'Tailandés');
INSERT INTO spl_icl_languages_translations VALUES ('3279', 'th', 'de', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3280', 'th', 'fr', 'Thaï');
INSERT INTO spl_icl_languages_translations VALUES ('3281', 'th', 'ar', 'التايلندية');
INSERT INTO spl_icl_languages_translations VALUES ('3282', 'th', 'bs', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3283', 'th', 'bg', 'Тайски');
INSERT INTO spl_icl_languages_translations VALUES ('3284', 'th', 'ca', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3285', 'th', 'cs', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3286', 'th', 'sk', 'Thajština');
INSERT INTO spl_icl_languages_translations VALUES ('3287', 'th', 'cy', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3288', 'th', 'da', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3289', 'th', 'el', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3290', 'th', 'eo', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3291', 'th', 'et', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3292', 'th', 'eu', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3293', 'th', 'fa', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3294', 'th', 'fi', 'thai');
INSERT INTO spl_icl_languages_translations VALUES ('3295', 'th', 'ga', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3296', 'th', 'he', 'תאילנדית');
INSERT INTO spl_icl_languages_translations VALUES ('3297', 'th', 'hi', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3298', 'th', 'hr', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3299', 'th', 'hu', 'tájföldi');
INSERT INTO spl_icl_languages_translations VALUES ('3300', 'th', 'hy', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3301', 'th', 'id', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3302', 'th', 'is', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3303', 'th', 'it', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3304', 'th', 'ja', 'タイ語');
INSERT INTO spl_icl_languages_translations VALUES ('3305', 'th', 'ko', '태국어');
INSERT INTO spl_icl_languages_translations VALUES ('3306', 'th', 'ku', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3307', 'th', 'la', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3308', 'th', 'lv', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3309', 'th', 'lt', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3310', 'th', 'mk', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3311', 'th', 'mt', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3312', 'th', 'mn', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3313', 'th', 'ne', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3314', 'th', 'nl', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3315', 'th', 'nb', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3316', 'th', 'pa', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3317', 'th', 'pl', 'tajski');
INSERT INTO spl_icl_languages_translations VALUES ('3318', 'th', 'pt-pt', 'Tailandês');
INSERT INTO spl_icl_languages_translations VALUES ('3319', 'th', 'pt-br', 'Tailandês');
INSERT INTO spl_icl_languages_translations VALUES ('3320', 'th', 'qu', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3321', 'th', 'ro', 'Tailandeză');
INSERT INTO spl_icl_languages_translations VALUES ('3322', 'th', 'ru', 'Тайский');
INSERT INTO spl_icl_languages_translations VALUES ('3323', 'th', 'sl', 'Tajski');
INSERT INTO spl_icl_languages_translations VALUES ('3324', 'th', 'so', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3325', 'th', 'sq', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3326', 'th', 'sr', 'Тајландски');
INSERT INTO spl_icl_languages_translations VALUES ('3327', 'th', 'sv', 'Thailändska');
INSERT INTO spl_icl_languages_translations VALUES ('3328', 'th', 'ta', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3329', 'th', 'th', 'ไทย');
INSERT INTO spl_icl_languages_translations VALUES ('3330', 'th', 'tr', 'Tayca');
INSERT INTO spl_icl_languages_translations VALUES ('3331', 'th', 'uk', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3332', 'th', 'ur', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3333', 'th', 'uz', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3334', 'th', 'vi', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3335', 'th', 'yi', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3336', 'th', 'zh-hans', '泰语');
INSERT INTO spl_icl_languages_translations VALUES ('3337', 'th', 'zu', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3338', 'th', 'zh-hant', '泰語');
INSERT INTO spl_icl_languages_translations VALUES ('3339', 'th', 'ms', 'Thai');
INSERT INTO spl_icl_languages_translations VALUES ('3340', 'tr', 'en', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3341', 'tr', 'es', 'Turco');
INSERT INTO spl_icl_languages_translations VALUES ('3342', 'tr', 'de', 'Türkisch');
INSERT INTO spl_icl_languages_translations VALUES ('3343', 'tr', 'fr', 'Turc');
INSERT INTO spl_icl_languages_translations VALUES ('3344', 'tr', 'ar', 'التركية');
INSERT INTO spl_icl_languages_translations VALUES ('3345', 'tr', 'bs', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3346', 'tr', 'bg', 'Турски');
INSERT INTO spl_icl_languages_translations VALUES ('3347', 'tr', 'ca', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3348', 'tr', 'cs', 'Turečtina');
INSERT INTO spl_icl_languages_translations VALUES ('3349', 'tr', 'sk', 'Turečtina');
INSERT INTO spl_icl_languages_translations VALUES ('3350', 'tr', 'cy', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3351', 'tr', 'da', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3352', 'tr', 'el', 'Τουρκικα');
INSERT INTO spl_icl_languages_translations VALUES ('3353', 'tr', 'eo', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3354', 'tr', 'et', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3355', 'tr', 'eu', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3356', 'tr', 'fa', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3357', 'tr', 'fi', 'turkki');
INSERT INTO spl_icl_languages_translations VALUES ('3358', 'tr', 'ga', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3359', 'tr', 'he', 'תורכית');
INSERT INTO spl_icl_languages_translations VALUES ('3360', 'tr', 'hi', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3361', 'tr', 'hr', 'Turski');
INSERT INTO spl_icl_languages_translations VALUES ('3362', 'tr', 'hu', 'török');
INSERT INTO spl_icl_languages_translations VALUES ('3363', 'tr', 'hy', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3364', 'tr', 'id', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3365', 'tr', 'is', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3366', 'tr', 'it', 'Turco');
INSERT INTO spl_icl_languages_translations VALUES ('3367', 'tr', 'ja', 'トルコ語');
INSERT INTO spl_icl_languages_translations VALUES ('3368', 'tr', 'ko', '터어키어');
INSERT INTO spl_icl_languages_translations VALUES ('3369', 'tr', 'ku', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3370', 'tr', 'la', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3371', 'tr', 'lv', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3372', 'tr', 'lt', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3373', 'tr', 'mk', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3374', 'tr', 'mt', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3375', 'tr', 'mn', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3376', 'tr', 'ne', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3377', 'tr', 'nl', 'Turks');
INSERT INTO spl_icl_languages_translations VALUES ('3378', 'tr', 'nb', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3379', 'tr', 'pa', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3380', 'tr', 'pl', 'turecki');
INSERT INTO spl_icl_languages_translations VALUES ('3381', 'tr', 'pt-pt', 'Turco');
INSERT INTO spl_icl_languages_translations VALUES ('3382', 'tr', 'pt-br', 'Turco');
INSERT INTO spl_icl_languages_translations VALUES ('3383', 'tr', 'qu', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3384', 'tr', 'ro', 'Turcă');
INSERT INTO spl_icl_languages_translations VALUES ('3385', 'tr', 'ru', 'Турецкий');
INSERT INTO spl_icl_languages_translations VALUES ('3386', 'tr', 'sl', 'Turščina');
INSERT INTO spl_icl_languages_translations VALUES ('3387', 'tr', 'so', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3388', 'tr', 'sq', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3389', 'tr', 'sr', 'турски');
INSERT INTO spl_icl_languages_translations VALUES ('3390', 'tr', 'sv', 'Turkiska');
INSERT INTO spl_icl_languages_translations VALUES ('3391', 'tr', 'ta', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3392', 'tr', 'th', 'ตุรกี');
INSERT INTO spl_icl_languages_translations VALUES ('3393', 'tr', 'tr', 'Türkçe');
INSERT INTO spl_icl_languages_translations VALUES ('3394', 'tr', 'uk', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3395', 'tr', 'ur', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3396', 'tr', 'uz', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3397', 'tr', 'vi', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3398', 'tr', 'yi', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3399', 'tr', 'zh-hans', '土耳其语');
INSERT INTO spl_icl_languages_translations VALUES ('3400', 'tr', 'zu', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3401', 'tr', 'zh-hant', '土耳其語');
INSERT INTO spl_icl_languages_translations VALUES ('3402', 'tr', 'ms', 'Turkish');
INSERT INTO spl_icl_languages_translations VALUES ('3403', 'uk', 'en', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3404', 'uk', 'es', 'Ucraniano');
INSERT INTO spl_icl_languages_translations VALUES ('3405', 'uk', 'de', 'Ukrainisch');
INSERT INTO spl_icl_languages_translations VALUES ('3406', 'uk', 'fr', 'Ukrainien');
INSERT INTO spl_icl_languages_translations VALUES ('3407', 'uk', 'ar', 'الأوكرانية');
INSERT INTO spl_icl_languages_translations VALUES ('3408', 'uk', 'bs', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3409', 'uk', 'bg', 'Украински');
INSERT INTO spl_icl_languages_translations VALUES ('3410', 'uk', 'ca', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3411', 'uk', 'cs', 'Ukrajinský');
INSERT INTO spl_icl_languages_translations VALUES ('3412', 'uk', 'sk', 'Ukrajinčina');
INSERT INTO spl_icl_languages_translations VALUES ('3413', 'uk', 'cy', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3414', 'uk', 'da', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3415', 'uk', 'el', 'Ουκρανικα');
INSERT INTO spl_icl_languages_translations VALUES ('3416', 'uk', 'eo', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3417', 'uk', 'et', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3418', 'uk', 'eu', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3419', 'uk', 'fa', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3420', 'uk', 'fi', 'ukraina');
INSERT INTO spl_icl_languages_translations VALUES ('3421', 'uk', 'ga', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3422', 'uk', 'he', 'אוקראינית');
INSERT INTO spl_icl_languages_translations VALUES ('3423', 'uk', 'hi', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3424', 'uk', 'hr', 'Ukrajinski');
INSERT INTO spl_icl_languages_translations VALUES ('3425', 'uk', 'hu', 'ukrán');
INSERT INTO spl_icl_languages_translations VALUES ('3426', 'uk', 'hy', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3427', 'uk', 'id', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3428', 'uk', 'is', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3429', 'uk', 'it', 'Ucraino');
INSERT INTO spl_icl_languages_translations VALUES ('3430', 'uk', 'ja', 'ウクライナ語');
INSERT INTO spl_icl_languages_translations VALUES ('3431', 'uk', 'ko', '우크라이나어');
INSERT INTO spl_icl_languages_translations VALUES ('3432', 'uk', 'ku', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3433', 'uk', 'la', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3434', 'uk', 'lv', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3435', 'uk', 'lt', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3436', 'uk', 'mk', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3437', 'uk', 'mt', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3438', 'uk', 'mn', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3439', 'uk', 'ne', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3440', 'uk', 'nl', 'Oekraïens');
INSERT INTO spl_icl_languages_translations VALUES ('3441', 'uk', 'nb', 'Ukrainsk');
INSERT INTO spl_icl_languages_translations VALUES ('3442', 'uk', 'pa', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3443', 'uk', 'pl', 'ukraiński');
INSERT INTO spl_icl_languages_translations VALUES ('3444', 'uk', 'pt-pt', 'Ucraniano');
INSERT INTO spl_icl_languages_translations VALUES ('3445', 'uk', 'pt-br', 'Ucraniano');
INSERT INTO spl_icl_languages_translations VALUES ('3446', 'uk', 'qu', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3447', 'uk', 'ro', 'Ucrainiană');
INSERT INTO spl_icl_languages_translations VALUES ('3448', 'uk', 'ru', 'Украинский');
INSERT INTO spl_icl_languages_translations VALUES ('3449', 'uk', 'sl', 'Ukrajinski');
INSERT INTO spl_icl_languages_translations VALUES ('3450', 'uk', 'so', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3451', 'uk', 'sq', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3452', 'uk', 'sr', 'украјински');
INSERT INTO spl_icl_languages_translations VALUES ('3453', 'uk', 'sv', 'Ukrainska');
INSERT INTO spl_icl_languages_translations VALUES ('3454', 'uk', 'ta', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3455', 'uk', 'th', 'ยูเครน');
INSERT INTO spl_icl_languages_translations VALUES ('3456', 'uk', 'tr', 'Ukraynaca');
INSERT INTO spl_icl_languages_translations VALUES ('3457', 'uk', 'uk', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3458', 'uk', 'ur', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3459', 'uk', 'uz', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3460', 'uk', 'vi', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3461', 'uk', 'yi', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3462', 'uk', 'zh-hans', '乌克兰语');
INSERT INTO spl_icl_languages_translations VALUES ('3463', 'uk', 'zu', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3464', 'uk', 'zh-hant', '烏克蘭語');
INSERT INTO spl_icl_languages_translations VALUES ('3465', 'uk', 'ms', 'Ukrainian');
INSERT INTO spl_icl_languages_translations VALUES ('3466', 'ur', 'en', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3467', 'ur', 'es', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3468', 'ur', 'de', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3469', 'ur', 'fr', 'Ourdu');
INSERT INTO spl_icl_languages_translations VALUES ('3470', 'ur', 'ar', 'الأردية');
INSERT INTO spl_icl_languages_translations VALUES ('3471', 'ur', 'bs', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3472', 'ur', 'bg', 'Урду');
INSERT INTO spl_icl_languages_translations VALUES ('3473', 'ur', 'ca', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3474', 'ur', 'cs', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3475', 'ur', 'sk', 'Urdština');
INSERT INTO spl_icl_languages_translations VALUES ('3476', 'ur', 'cy', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3477', 'ur', 'da', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3478', 'ur', 'el', 'Ουρντου');
INSERT INTO spl_icl_languages_translations VALUES ('3479', 'ur', 'eo', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3480', 'ur', 'et', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3481', 'ur', 'eu', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3482', 'ur', 'fa', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3483', 'ur', 'fi', 'urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3484', 'ur', 'ga', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3485', 'ur', 'he', 'אורדו');
INSERT INTO spl_icl_languages_translations VALUES ('3486', 'ur', 'hi', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3487', 'ur', 'hr', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3488', 'ur', 'hu', 'urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3489', 'ur', 'hy', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3490', 'ur', 'id', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3491', 'ur', 'is', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3492', 'ur', 'it', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3493', 'ur', 'ja', 'ウルドゥー語');
INSERT INTO spl_icl_languages_translations VALUES ('3494', 'ur', 'ko', '우르두어');
INSERT INTO spl_icl_languages_translations VALUES ('3495', 'ur', 'ku', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3496', 'ur', 'la', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3497', 'ur', 'lv', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3498', 'ur', 'lt', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3499', 'ur', 'mk', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3500', 'ur', 'mt', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3501', 'ur', 'mn', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3502', 'ur', 'ne', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3503', 'ur', 'nl', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3504', 'ur', 'nb', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3505', 'ur', 'pa', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3506', 'ur', 'pl', 'urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3507', 'ur', 'pt-pt', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3508', 'ur', 'pt-br', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3509', 'ur', 'qu', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3510', 'ur', 'ro', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3511', 'ur', 'ru', 'Урду');
INSERT INTO spl_icl_languages_translations VALUES ('3512', 'ur', 'sl', 'Urdujščina');
INSERT INTO spl_icl_languages_translations VALUES ('3513', 'ur', 'so', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3514', 'ur', 'sq', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3515', 'ur', 'sr', 'урду');
INSERT INTO spl_icl_languages_translations VALUES ('3516', 'ur', 'sv', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3517', 'ur', 'ta', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3518', 'ur', 'th', 'อุรดู');
INSERT INTO spl_icl_languages_translations VALUES ('3519', 'ur', 'tr', 'Urduca');
INSERT INTO spl_icl_languages_translations VALUES ('3520', 'ur', 'uk', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3521', 'ur', 'ur', 'اردو ');
INSERT INTO spl_icl_languages_translations VALUES ('3522', 'ur', 'uz', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3523', 'ur', 'vi', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3524', 'ur', 'yi', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3525', 'ur', 'zh-hans', '乌尔都语');
INSERT INTO spl_icl_languages_translations VALUES ('3526', 'ur', 'zu', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3527', 'ur', 'zh-hant', '烏爾都語');
INSERT INTO spl_icl_languages_translations VALUES ('3528', 'ur', 'ms', 'Urdu');
INSERT INTO spl_icl_languages_translations VALUES ('3529', 'uz', 'en', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3530', 'uz', 'es', 'Uzbeko');
INSERT INTO spl_icl_languages_translations VALUES ('3531', 'uz', 'de', 'Usbekisch');
INSERT INTO spl_icl_languages_translations VALUES ('3532', 'uz', 'fr', 'Ouzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3533', 'uz', 'ar', 'الاوزباكية');
INSERT INTO spl_icl_languages_translations VALUES ('3534', 'uz', 'bs', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3535', 'uz', 'bg', 'Узбекски');
INSERT INTO spl_icl_languages_translations VALUES ('3536', 'uz', 'ca', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3537', 'uz', 'cs', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3538', 'uz', 'sk', 'Uzbekčina');
INSERT INTO spl_icl_languages_translations VALUES ('3539', 'uz', 'cy', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3540', 'uz', 'da', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3541', 'uz', 'el', 'Ουζμπεκικα');
INSERT INTO spl_icl_languages_translations VALUES ('3542', 'uz', 'eo', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3543', 'uz', 'et', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3544', 'uz', 'eu', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3545', 'uz', 'fa', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3546', 'uz', 'fi', 'uzbekki');
INSERT INTO spl_icl_languages_translations VALUES ('3547', 'uz', 'ga', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3548', 'uz', 'he', 'אוזבקית');
INSERT INTO spl_icl_languages_translations VALUES ('3549', 'uz', 'hi', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3550', 'uz', 'hr', 'Uzbečki');
INSERT INTO spl_icl_languages_translations VALUES ('3551', 'uz', 'hu', 'üzbég');
INSERT INTO spl_icl_languages_translations VALUES ('3552', 'uz', 'hy', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3553', 'uz', 'id', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3554', 'uz', 'is', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3555', 'uz', 'it', 'Uzbeco');
INSERT INTO spl_icl_languages_translations VALUES ('3556', 'uz', 'ja', 'ウズベク語');
INSERT INTO spl_icl_languages_translations VALUES ('3557', 'uz', 'ko', '우즈베크어');
INSERT INTO spl_icl_languages_translations VALUES ('3558', 'uz', 'ku', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3559', 'uz', 'la', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3560', 'uz', 'lv', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3561', 'uz', 'lt', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3562', 'uz', 'mk', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3563', 'uz', 'mt', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3564', 'uz', 'mn', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3565', 'uz', 'ne', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3566', 'uz', 'nl', 'Oezbeeks');
INSERT INTO spl_icl_languages_translations VALUES ('3567', 'uz', 'nb', 'Usbekisk');
INSERT INTO spl_icl_languages_translations VALUES ('3568', 'uz', 'pa', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3569', 'uz', 'pl', 'uzbecki');
INSERT INTO spl_icl_languages_translations VALUES ('3570', 'uz', 'pt-pt', 'Uzbeque');
INSERT INTO spl_icl_languages_translations VALUES ('3571', 'uz', 'pt-br', 'Uzbeque');
INSERT INTO spl_icl_languages_translations VALUES ('3572', 'uz', 'qu', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3573', 'uz', 'ro', 'Uzbecă');
INSERT INTO spl_icl_languages_translations VALUES ('3574', 'uz', 'ru', 'Узбекский');
INSERT INTO spl_icl_languages_translations VALUES ('3575', 'uz', 'sl', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3576', 'uz', 'so', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3577', 'uz', 'sq', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3578', 'uz', 'sr', 'Узбек');
INSERT INTO spl_icl_languages_translations VALUES ('3579', 'uz', 'sv', 'Uzbekiska');
INSERT INTO spl_icl_languages_translations VALUES ('3580', 'uz', 'ta', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3581', 'uz', 'th', 'อุซเบก');
INSERT INTO spl_icl_languages_translations VALUES ('3582', 'uz', 'tr', 'Özbekçe');
INSERT INTO spl_icl_languages_translations VALUES ('3583', 'uz', 'uk', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3584', 'uz', 'ur', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3585', 'uz', 'uz', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3586', 'uz', 'vi', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3587', 'uz', 'yi', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3588', 'uz', 'zh-hans', '乌兹别克语');
INSERT INTO spl_icl_languages_translations VALUES ('3589', 'uz', 'zu', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3590', 'uz', 'zh-hant', '烏茲別克語');
INSERT INTO spl_icl_languages_translations VALUES ('3591', 'uz', 'ms', 'Uzbek');
INSERT INTO spl_icl_languages_translations VALUES ('3592', 'vi', 'en', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3593', 'vi', 'es', 'Vietnamita');
INSERT INTO spl_icl_languages_translations VALUES ('3594', 'vi', 'de', 'Vietnamesisch');
INSERT INTO spl_icl_languages_translations VALUES ('3595', 'vi', 'fr', 'Vietnamien');
INSERT INTO spl_icl_languages_translations VALUES ('3596', 'vi', 'ar', 'الفيتنامية');
INSERT INTO spl_icl_languages_translations VALUES ('3597', 'vi', 'bs', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3598', 'vi', 'bg', 'Виетнамски');
INSERT INTO spl_icl_languages_translations VALUES ('3599', 'vi', 'ca', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3600', 'vi', 'cs', 'Vietnamský');
INSERT INTO spl_icl_languages_translations VALUES ('3601', 'vi', 'sk', 'Vietnamčina');
INSERT INTO spl_icl_languages_translations VALUES ('3602', 'vi', 'cy', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3603', 'vi', 'da', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3604', 'vi', 'el', 'Βιετναμεζικα');
INSERT INTO spl_icl_languages_translations VALUES ('3605', 'vi', 'eo', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3606', 'vi', 'et', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3607', 'vi', 'eu', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3608', 'vi', 'fa', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3609', 'vi', 'fi', 'vietnam');
INSERT INTO spl_icl_languages_translations VALUES ('3610', 'vi', 'ga', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3611', 'vi', 'he', 'וייטנאמית');
INSERT INTO spl_icl_languages_translations VALUES ('3612', 'vi', 'hi', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3613', 'vi', 'hr', 'Vijetnamski');
INSERT INTO spl_icl_languages_translations VALUES ('3614', 'vi', 'hu', 'vietnámi');
INSERT INTO spl_icl_languages_translations VALUES ('3615', 'vi', 'hy', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3616', 'vi', 'id', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3617', 'vi', 'is', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3618', 'vi', 'it', 'Vietnamita');
INSERT INTO spl_icl_languages_translations VALUES ('3619', 'vi', 'ja', 'ベトナム語');
INSERT INTO spl_icl_languages_translations VALUES ('3620', 'vi', 'ko', '베트남어');
INSERT INTO spl_icl_languages_translations VALUES ('3621', 'vi', 'ku', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3622', 'vi', 'la', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3623', 'vi', 'lv', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3624', 'vi', 'lt', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3625', 'vi', 'mk', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3626', 'vi', 'mt', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3627', 'vi', 'mn', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3628', 'vi', 'ne', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3629', 'vi', 'nl', 'Vietnamees');
INSERT INTO spl_icl_languages_translations VALUES ('3630', 'vi', 'nb', 'Vietnamesisk');
INSERT INTO spl_icl_languages_translations VALUES ('3631', 'vi', 'pa', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3632', 'vi', 'pl', 'wietnamski');
INSERT INTO spl_icl_languages_translations VALUES ('3633', 'vi', 'pt-pt', 'Vietnamita');
INSERT INTO spl_icl_languages_translations VALUES ('3634', 'vi', 'pt-br', 'Vietnamita');
INSERT INTO spl_icl_languages_translations VALUES ('3635', 'vi', 'qu', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3636', 'vi', 'ro', 'Vietnameză');
INSERT INTO spl_icl_languages_translations VALUES ('3637', 'vi', 'ru', 'Вьетнамский');
INSERT INTO spl_icl_languages_translations VALUES ('3638', 'vi', 'sl', 'Vietnamščina');
INSERT INTO spl_icl_languages_translations VALUES ('3639', 'vi', 'so', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3640', 'vi', 'sq', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3641', 'vi', 'sr', 'вијетнамски');
INSERT INTO spl_icl_languages_translations VALUES ('3642', 'vi', 'sv', 'Vietnamesiska');
INSERT INTO spl_icl_languages_translations VALUES ('3643', 'vi', 'ta', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3644', 'vi', 'th', 'เวียดนาม');
INSERT INTO spl_icl_languages_translations VALUES ('3645', 'vi', 'tr', 'Vietnamca');
INSERT INTO spl_icl_languages_translations VALUES ('3646', 'vi', 'uk', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3647', 'vi', 'ur', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3648', 'vi', 'uz', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3649', 'vi', 'vi', 'Tiếng Việt');
INSERT INTO spl_icl_languages_translations VALUES ('3650', 'vi', 'yi', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3651', 'vi', 'zh-hans', '越南语');
INSERT INTO spl_icl_languages_translations VALUES ('3652', 'vi', 'zu', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3653', 'vi', 'zh-hant', '越南語');
INSERT INTO spl_icl_languages_translations VALUES ('3654', 'vi', 'ms', 'Vietnamese');
INSERT INTO spl_icl_languages_translations VALUES ('3655', 'yi', 'en', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3656', 'yi', 'es', 'Yidis');
INSERT INTO spl_icl_languages_translations VALUES ('3657', 'yi', 'de', 'Jiddisch');
INSERT INTO spl_icl_languages_translations VALUES ('3658', 'yi', 'fr', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3659', 'yi', 'ar', 'اليديشية');
INSERT INTO spl_icl_languages_translations VALUES ('3660', 'yi', 'bs', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3661', 'yi', 'bg', 'Идиш');
INSERT INTO spl_icl_languages_translations VALUES ('3662', 'yi', 'ca', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3663', 'yi', 'cs', 'Jidiš');
INSERT INTO spl_icl_languages_translations VALUES ('3664', 'yi', 'sk', 'Jidiš');
INSERT INTO spl_icl_languages_translations VALUES ('3665', 'yi', 'cy', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3666', 'yi', 'da', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3667', 'yi', 'el', 'Γιντις');
INSERT INTO spl_icl_languages_translations VALUES ('3668', 'yi', 'eo', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3669', 'yi', 'et', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3670', 'yi', 'eu', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3671', 'yi', 'fa', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3672', 'yi', 'fi', 'jiddi');
INSERT INTO spl_icl_languages_translations VALUES ('3673', 'yi', 'ga', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3674', 'yi', 'he', 'יידיש');
INSERT INTO spl_icl_languages_translations VALUES ('3675', 'yi', 'hi', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3676', 'yi', 'hr', 'Jidiš');
INSERT INTO spl_icl_languages_translations VALUES ('3677', 'yi', 'hu', 'jiddis');
INSERT INTO spl_icl_languages_translations VALUES ('3678', 'yi', 'hy', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3679', 'yi', 'id', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3680', 'yi', 'is', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3681', 'yi', 'it', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3682', 'yi', 'ja', 'イディッシュ語');
INSERT INTO spl_icl_languages_translations VALUES ('3683', 'yi', 'ko', '이디시어');
INSERT INTO spl_icl_languages_translations VALUES ('3684', 'yi', 'ku', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3685', 'yi', 'la', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3686', 'yi', 'lv', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3687', 'yi', 'lt', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3688', 'yi', 'mk', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3689', 'yi', 'mt', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3690', 'yi', 'mn', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3691', 'yi', 'ne', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3692', 'yi', 'nl', 'Jiddisch');
INSERT INTO spl_icl_languages_translations VALUES ('3693', 'yi', 'nb', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3694', 'yi', 'pa', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3695', 'yi', 'pl', 'jidysz');
INSERT INTO spl_icl_languages_translations VALUES ('3696', 'yi', 'pt-pt', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3697', 'yi', 'pt-br', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3698', 'yi', 'qu', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3699', 'yi', 'ro', 'Idiş');
INSERT INTO spl_icl_languages_translations VALUES ('3700', 'yi', 'ru', 'Идиш');
INSERT INTO spl_icl_languages_translations VALUES ('3701', 'yi', 'sl', 'Jidiš');
INSERT INTO spl_icl_languages_translations VALUES ('3702', 'yi', 'so', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3703', 'yi', 'sq', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3704', 'yi', 'sr', 'јидиш');
INSERT INTO spl_icl_languages_translations VALUES ('3705', 'yi', 'sv', 'Jiddisch');
INSERT INTO spl_icl_languages_translations VALUES ('3706', 'yi', 'ta', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3707', 'yi', 'th', 'ยิชดิช');
INSERT INTO spl_icl_languages_translations VALUES ('3708', 'yi', 'tr', 'Eski İbranice');
INSERT INTO spl_icl_languages_translations VALUES ('3709', 'yi', 'uk', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3710', 'yi', 'ur', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3711', 'yi', 'uz', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3712', 'yi', 'vi', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3713', 'yi', 'yi', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3714', 'yi', 'zh-hans', '依地语');
INSERT INTO spl_icl_languages_translations VALUES ('3715', 'yi', 'zu', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3716', 'yi', 'zh-hant', '依地語');
INSERT INTO spl_icl_languages_translations VALUES ('3717', 'yi', 'ms', 'Yiddish');
INSERT INTO spl_icl_languages_translations VALUES ('3718', 'zh-hans', 'en', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3719', 'zh-hans', 'es', 'Chino simplificado');
INSERT INTO spl_icl_languages_translations VALUES ('3720', 'zh-hans', 'de', 'Vereinfachtes Chinesisch');
INSERT INTO spl_icl_languages_translations VALUES ('3721', 'zh-hans', 'fr', 'Chinois simplifié');
INSERT INTO spl_icl_languages_translations VALUES ('3722', 'zh-hans', 'ar', 'الصينية المبسطة');
INSERT INTO spl_icl_languages_translations VALUES ('3723', 'zh-hans', 'bs', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3724', 'zh-hans', 'bg', 'Китайски  (опростен)');
INSERT INTO spl_icl_languages_translations VALUES ('3725', 'zh-hans', 'ca', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3726', 'zh-hans', 'cs', 'Čínština ( Zjednodušený )');
INSERT INTO spl_icl_languages_translations VALUES ('3727', 'zh-hans', 'sk', 'Zjednodušená Čínština');
INSERT INTO spl_icl_languages_translations VALUES ('3728', 'zh-hans', 'cy', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3729', 'zh-hans', 'da', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3730', 'zh-hans', 'el', 'Κινεζικα (Απλοποιημένα)');
INSERT INTO spl_icl_languages_translations VALUES ('3731', 'zh-hans', 'eo', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3732', 'zh-hans', 'et', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3733', 'zh-hans', 'eu', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3734', 'zh-hans', 'fa', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3735', 'zh-hans', 'fi', 'kiina');
INSERT INTO spl_icl_languages_translations VALUES ('3736', 'zh-hans', 'ga', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3737', 'zh-hans', 'he', 'סינית');
INSERT INTO spl_icl_languages_translations VALUES ('3738', 'zh-hans', 'hi', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3739', 'zh-hans', 'hr', 'Kineski (pojednostavljeni)');
INSERT INTO spl_icl_languages_translations VALUES ('3740', 'zh-hans', 'hu', 'egyszerűsített kínai');
INSERT INTO spl_icl_languages_translations VALUES ('3741', 'zh-hans', 'hy', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3742', 'zh-hans', 'id', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3743', 'zh-hans', 'is', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3744', 'zh-hans', 'it', 'Cinese semplificato');
INSERT INTO spl_icl_languages_translations VALUES ('3745', 'zh-hans', 'ja', '簡体中国語');
INSERT INTO spl_icl_languages_translations VALUES ('3746', 'zh-hans', 'ko', '중국어 간체');
INSERT INTO spl_icl_languages_translations VALUES ('3747', 'zh-hans', 'ku', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3748', 'zh-hans', 'la', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3749', 'zh-hans', 'lv', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3750', 'zh-hans', 'lt', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3751', 'zh-hans', 'mk', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3752', 'zh-hans', 'mt', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3753', 'zh-hans', 'mn', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3754', 'zh-hans', 'ne', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3755', 'zh-hans', 'nl', 'Vereenvoudigd Chinees');
INSERT INTO spl_icl_languages_translations VALUES ('3756', 'zh-hans', 'nb', 'Kinesisk (forenklet)');
INSERT INTO spl_icl_languages_translations VALUES ('3757', 'zh-hans', 'pa', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3758', 'zh-hans', 'pl', 'chiński uproszczony');
INSERT INTO spl_icl_languages_translations VALUES ('3759', 'zh-hans', 'pt-pt', 'Chinês (Simplificado)');
INSERT INTO spl_icl_languages_translations VALUES ('3760', 'zh-hans', 'pt-br', 'Chinês (Simplificado)');
INSERT INTO spl_icl_languages_translations VALUES ('3761', 'zh-hans', 'qu', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3762', 'zh-hans', 'ro', 'Chineza simplificată');
INSERT INTO spl_icl_languages_translations VALUES ('3763', 'zh-hans', 'ru', 'Китайский (упрощенный)');
INSERT INTO spl_icl_languages_translations VALUES ('3764', 'zh-hans', 'sl', 'Kitajščina (poenostavljena )');
INSERT INTO spl_icl_languages_translations VALUES ('3765', 'zh-hans', 'so', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3766', 'zh-hans', 'sq', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3767', 'zh-hans', 'sr', 'Кинески (поједностављени)');
INSERT INTO spl_icl_languages_translations VALUES ('3768', 'zh-hans', 'sv', 'Förenklad kinesiska');
INSERT INTO spl_icl_languages_translations VALUES ('3769', 'zh-hans', 'ta', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3770', 'zh-hans', 'th', 'จีนประยุกต์');
INSERT INTO spl_icl_languages_translations VALUES ('3771', 'zh-hans', 'tr', 'Modern Çince');
INSERT INTO spl_icl_languages_translations VALUES ('3772', 'zh-hans', 'uk', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3773', 'zh-hans', 'ur', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3774', 'zh-hans', 'uz', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3775', 'zh-hans', 'vi', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3776', 'zh-hans', 'yi', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3777', 'zh-hans', 'zh-hans', '简体中文');
INSERT INTO spl_icl_languages_translations VALUES ('3778', 'zh-hans', 'zu', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3779', 'zh-hans', 'zh-hant', '簡體中文');
INSERT INTO spl_icl_languages_translations VALUES ('3780', 'zh-hans', 'ms', 'Chinese (Simplified)');
INSERT INTO spl_icl_languages_translations VALUES ('3781', 'zu', 'en', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3782', 'zu', 'es', 'Zulú');
INSERT INTO spl_icl_languages_translations VALUES ('3783', 'zu', 'de', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3784', 'zu', 'fr', 'Zoulou');
INSERT INTO spl_icl_languages_translations VALUES ('3785', 'zu', 'ar', 'الزولو');
INSERT INTO spl_icl_languages_translations VALUES ('3786', 'zu', 'bs', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3787', 'zu', 'bg', 'Зулу');
INSERT INTO spl_icl_languages_translations VALUES ('3788', 'zu', 'ca', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3789', 'zu', 'cs', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3790', 'zu', 'sk', 'Jazyk Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3791', 'zu', 'cy', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3792', 'zu', 'da', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3793', 'zu', 'el', 'Ζουλου');
INSERT INTO spl_icl_languages_translations VALUES ('3794', 'zu', 'eo', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3795', 'zu', 'et', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3796', 'zu', 'eu', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3797', 'zu', 'fa', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3798', 'zu', 'fi', 'zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3799', 'zu', 'ga', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3800', 'zu', 'he', 'זולו ');
INSERT INTO spl_icl_languages_translations VALUES ('3801', 'zu', 'hi', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3802', 'zu', 'hr', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3803', 'zu', 'hu', 'zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3804', 'zu', 'hy', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3805', 'zu', 'id', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3806', 'zu', 'is', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3807', 'zu', 'it', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3808', 'zu', 'ja', 'ズールー語');
INSERT INTO spl_icl_languages_translations VALUES ('3809', 'zu', 'ko', '줄루어');
INSERT INTO spl_icl_languages_translations VALUES ('3810', 'zu', 'ku', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3811', 'zu', 'la', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3812', 'zu', 'lv', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3813', 'zu', 'lt', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3814', 'zu', 'mk', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3815', 'zu', 'mt', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3816', 'zu', 'mn', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3817', 'zu', 'ne', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3818', 'zu', 'nl', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3819', 'zu', 'nb', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3820', 'zu', 'pa', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3821', 'zu', 'pl', 'zuluski');
INSERT INTO spl_icl_languages_translations VALUES ('3822', 'zu', 'pt-pt', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3823', 'zu', 'pt-br', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3824', 'zu', 'qu', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3825', 'zu', 'ro', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3826', 'zu', 'ru', 'Зулу');
INSERT INTO spl_icl_languages_translations VALUES ('3827', 'zu', 'sl', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3828', 'zu', 'so', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3829', 'zu', 'sq', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3830', 'zu', 'sr', 'зулу');
INSERT INTO spl_icl_languages_translations VALUES ('3831', 'zu', 'sv', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3832', 'zu', 'ta', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3833', 'zu', 'th', 'ซูลู');
INSERT INTO spl_icl_languages_translations VALUES ('3834', 'zu', 'tr', 'Zulu dili');
INSERT INTO spl_icl_languages_translations VALUES ('3835', 'zu', 'uk', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3836', 'zu', 'ur', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3837', 'zu', 'uz', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3838', 'zu', 'vi', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3839', 'zu', 'yi', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3840', 'zu', 'zh-hans', '祖鲁语');
INSERT INTO spl_icl_languages_translations VALUES ('3841', 'zu', 'zu', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3842', 'zu', 'zh-hant', '祖魯語');
INSERT INTO spl_icl_languages_translations VALUES ('3843', 'zu', 'ms', 'Zulu');
INSERT INTO spl_icl_languages_translations VALUES ('3844', 'zh-hant', 'en', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3845', 'zh-hant', 'es', 'Chino tradicional');
INSERT INTO spl_icl_languages_translations VALUES ('3846', 'zh-hant', 'de', 'Traditionelles Chinesisch');
INSERT INTO spl_icl_languages_translations VALUES ('3847', 'zh-hant', 'fr', 'Chinois traditionnel');
INSERT INTO spl_icl_languages_translations VALUES ('3848', 'zh-hant', 'ar', 'الصينية التقليدية');
INSERT INTO spl_icl_languages_translations VALUES ('3849', 'zh-hant', 'bs', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3850', 'zh-hant', 'bg', 'Китайски (традиционен)');
INSERT INTO spl_icl_languages_translations VALUES ('3851', 'zh-hant', 'ca', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3852', 'zh-hant', 'cs', 'Čínština (tradiční )');
INSERT INTO spl_icl_languages_translations VALUES ('3853', 'zh-hant', 'sk', 'Tradičná Čínština');
INSERT INTO spl_icl_languages_translations VALUES ('3854', 'zh-hant', 'cy', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3855', 'zh-hant', 'da', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3856', 'zh-hant', 'el', 'Κινεζικα (Παραδοσιακά)');
INSERT INTO spl_icl_languages_translations VALUES ('3857', 'zh-hant', 'eo', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3858', 'zh-hant', 'et', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3859', 'zh-hant', 'eu', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3860', 'zh-hant', 'fa', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3861', 'zh-hant', 'fi', 'perinteinen kiina');
INSERT INTO spl_icl_languages_translations VALUES ('3862', 'zh-hant', 'ga', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3863', 'zh-hant', 'he', 'סינית מסורתית');
INSERT INTO spl_icl_languages_translations VALUES ('3864', 'zh-hant', 'hi', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3865', 'zh-hant', 'hr', 'Kineski (tradicionalni)');
INSERT INTO spl_icl_languages_translations VALUES ('3866', 'zh-hant', 'hu', 'hagyományos kínai');
INSERT INTO spl_icl_languages_translations VALUES ('3867', 'zh-hant', 'hy', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3868', 'zh-hant', 'id', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3869', 'zh-hant', 'is', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3870', 'zh-hant', 'it', 'Cinese tradizionale');
INSERT INTO spl_icl_languages_translations VALUES ('3871', 'zh-hant', 'ja', '繁体中国語');
INSERT INTO spl_icl_languages_translations VALUES ('3872', 'zh-hant', 'ko', '중국어 번체');
INSERT INTO spl_icl_languages_translations VALUES ('3873', 'zh-hant', 'ku', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3874', 'zh-hant', 'la', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3875', 'zh-hant', 'lv', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3876', 'zh-hant', 'lt', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3877', 'zh-hant', 'mk', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3878', 'zh-hant', 'mt', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3879', 'zh-hant', 'mn', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3880', 'zh-hant', 'ne', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3881', 'zh-hant', 'nl', 'Traditioneel Chinees');
INSERT INTO spl_icl_languages_translations VALUES ('3882', 'zh-hant', 'nb', 'Kinesisk (tradisjonell)');
INSERT INTO spl_icl_languages_translations VALUES ('3883', 'zh-hant', 'pa', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3884', 'zh-hant', 'pl', 'chiński tradycyjny');
INSERT INTO spl_icl_languages_translations VALUES ('3885', 'zh-hant', 'pt-pt', 'Chinês (Tradicional)');
INSERT INTO spl_icl_languages_translations VALUES ('3886', 'zh-hant', 'pt-br', 'Chinês (Tradicional)');
INSERT INTO spl_icl_languages_translations VALUES ('3887', 'zh-hant', 'qu', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3888', 'zh-hant', 'ro', 'Chineza tradiţională');
INSERT INTO spl_icl_languages_translations VALUES ('3889', 'zh-hant', 'ru', 'Китайский (традиционный)');
INSERT INTO spl_icl_languages_translations VALUES ('3890', 'zh-hant', 'sl', 'Kitajščina (tradicionalna)');
INSERT INTO spl_icl_languages_translations VALUES ('3891', 'zh-hant', 'so', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3892', 'zh-hant', 'sq', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3893', 'zh-hant', 'sr', 'Кинески (традиционални)');
INSERT INTO spl_icl_languages_translations VALUES ('3894', 'zh-hant', 'sv', 'Traditionell kinesiska');
INSERT INTO spl_icl_languages_translations VALUES ('3895', 'zh-hant', 'ta', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3896', 'zh-hant', 'th', 'จีนดั้งเดิม');
INSERT INTO spl_icl_languages_translations VALUES ('3897', 'zh-hant', 'tr', 'Klasik Çince');
INSERT INTO spl_icl_languages_translations VALUES ('3898', 'zh-hant', 'uk', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3899', 'zh-hant', 'ur', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3900', 'zh-hant', 'uz', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3901', 'zh-hant', 'vi', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3902', 'zh-hant', 'yi', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3903', 'zh-hant', 'zh-hans', '繁体中文');
INSERT INTO spl_icl_languages_translations VALUES ('3904', 'zh-hant', 'zu', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3905', 'zh-hant', 'zh-hant', '繁體中文');
INSERT INTO spl_icl_languages_translations VALUES ('3906', 'zh-hant', 'ms', 'Chinese (Traditional)');
INSERT INTO spl_icl_languages_translations VALUES ('3907', 'ms', 'en', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3908', 'ms', 'es', 'Malayo');
INSERT INTO spl_icl_languages_translations VALUES ('3909', 'ms', 'de', 'Malaiisch');
INSERT INTO spl_icl_languages_translations VALUES ('3910', 'ms', 'fr', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3911', 'ms', 'ar', 'لغة الملايو');
INSERT INTO spl_icl_languages_translations VALUES ('3912', 'ms', 'bs', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3913', 'ms', 'bg', 'Малайски');
INSERT INTO spl_icl_languages_translations VALUES ('3914', 'ms', 'ca', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3915', 'ms', 'cs', 'Malajský');
INSERT INTO spl_icl_languages_translations VALUES ('3916', 'ms', 'sk', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3917', 'ms', 'cy', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3918', 'ms', 'da', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3919', 'ms', 'el', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3920', 'ms', 'eo', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3921', 'ms', 'et', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3922', 'ms', 'eu', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3923', 'ms', 'fa', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3924', 'ms', 'fi', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3925', 'ms', 'ga', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3926', 'ms', 'he', 'מלאית');
INSERT INTO spl_icl_languages_translations VALUES ('3927', 'ms', 'hi', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3928', 'ms', 'hr', 'Malajski');
INSERT INTO spl_icl_languages_translations VALUES ('3929', 'ms', 'hu', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3930', 'ms', 'hy', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3931', 'ms', 'id', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3932', 'ms', 'is', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3933', 'ms', 'it', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3934', 'ms', 'ja', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3935', 'ms', 'ko', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3936', 'ms', 'ku', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3937', 'ms', 'la', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3938', 'ms', 'lv', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3939', 'ms', 'lt', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3940', 'ms', 'mk', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3941', 'ms', 'mt', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3942', 'ms', 'mn', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3943', 'ms', 'ne', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3944', 'ms', 'nl', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3945', 'ms', 'nb', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3946', 'ms', 'pa', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3947', 'ms', 'pl', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3948', 'ms', 'pt-pt', 'Malaio');
INSERT INTO spl_icl_languages_translations VALUES ('3949', 'ms', 'pt-br', 'Malaio');
INSERT INTO spl_icl_languages_translations VALUES ('3950', 'ms', 'qu', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3951', 'ms', 'ro', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3952', 'ms', 'ru', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3953', 'ms', 'sl', 'Malajščina');
INSERT INTO spl_icl_languages_translations VALUES ('3954', 'ms', 'so', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3955', 'ms', 'sq', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3956', 'ms', 'sr', 'малајски');
INSERT INTO spl_icl_languages_translations VALUES ('3957', 'ms', 'sv', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3958', 'ms', 'ta', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3959', 'ms', 'th', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3960', 'ms', 'tr', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3961', 'ms', 'uk', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3962', 'ms', 'ur', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3963', 'ms', 'uz', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3964', 'ms', 'vi', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3965', 'ms', 'yi', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3966', 'ms', 'zh-hans', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3967', 'ms', 'zu', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3968', 'ms', 'zh-hant', 'Malay');
INSERT INTO spl_icl_languages_translations VALUES ('3969', 'ms', 'ms', 'Melayu');

-- ----------------------------
-- Table structure for `spl_icl_locale_map`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_locale_map`;
CREATE TABLE `spl_icl_locale_map` (
  `code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `code` (`code`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_locale_map
-- ----------------------------
INSERT INTO spl_icl_locale_map VALUES ('en', 'en_US');
INSERT INTO spl_icl_locale_map VALUES ('vi', 'vi_VN');

-- ----------------------------
-- Table structure for `spl_icl_message_status`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_message_status`;
CREATE TABLE `spl_icl_message_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) unsigned NOT NULL,
  `object_id` bigint(20) unsigned NOT NULL,
  `from_language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rid` (`rid`),
  KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_message_status
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_node`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_node`;
CREATE TABLE `spl_icl_node` (
  `nid` bigint(20) NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `links_fixed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_node
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_reminders`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_reminders`;
CREATE TABLE `spl_icl_reminders` (
  `id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `can_delete` tinyint(4) NOT NULL,
  `show` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_reminders
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_strings`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_strings`;
CREATE TABLE `spl_icl_strings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` varchar(160) CHARACTER SET utf8 NOT NULL,
  `name` varchar(160) CHARACTER SET utf8 NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `string_package_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LINE',
  `title` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `gettext_context` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain_name_context_md5` varchar(32) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_domain_name_context_md5` (`domain_name_context_md5`),
  KEY `language_context` (`language`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_strings
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_string_positions`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_string_positions`;
CREATE TABLE `spl_icl_string_positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) NOT NULL,
  `kind` tinyint(4) DEFAULT NULL,
  `position_in_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_id` (`string_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_string_positions
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_string_status`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_string_status`;
CREATE TABLE `spl_icl_string_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL,
  `string_translation_id` bigint(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_translation_id` (`string_translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_string_status
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_string_translations`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_string_translations`;
CREATE TABLE `spl_icl_string_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) unsigned NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `translator_id` bigint(20) unsigned DEFAULT NULL,
  `translation_service` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `batch_id` int(11) NOT NULL DEFAULT '0',
  `translation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `string_language` (`string_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_string_translations
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_translate`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_translate`;
CREATE TABLE `spl_icl_translate` (
  `tid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) unsigned NOT NULL,
  `content_id` bigint(20) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `field_type` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_format` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_translate` tinyint(4) NOT NULL,
  `field_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_data_translated` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_finished` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_translate
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_translate_job`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_translate_job`;
CREATE TABLE `spl_icl_translate_job` (
  `job_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) unsigned NOT NULL,
  `translator_id` int(10) unsigned NOT NULL,
  `translated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `manager_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `rid` (`rid`,`translator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_translate_job
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_translations`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_translations`;
CREATE TABLE `spl_icl_translations` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `element_type` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post_post',
  `element_id` bigint(20) DEFAULT NULL,
  `trid` bigint(20) NOT NULL,
  `language_code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_language_code` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `trid_lang` (`trid`,`language_code`),
  UNIQUE KEY `el_type_id` (`element_type`,`element_id`),
  KEY `trid` (`trid`),
  KEY `id_type_language` (`element_id`,`element_type`,`language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_translations
-- ----------------------------
INSERT INTO spl_icl_translations VALUES ('1', 'post_attachment', '7', '7', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('2', 'post_attachment', '8', '8', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('3', 'post_page', '3', '3', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('4', 'post_page', '2', '2', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('5', 'post_post', '1', '1', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('8', 'tax_category', '1', '10', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('9', 'comment', '1', '12', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('10', 'tax_category', '2', '10', 'en', 'vi');
INSERT INTO spl_icl_translations VALUES ('11', 'post_page', '12', '13', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('12', 'post_page', '14', '13', 'en', 'vi');
INSERT INTO spl_icl_translations VALUES ('13', 'post_page', '16', '14', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('14', 'post_page', '18', '15', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('15', 'post_page', '20', '16', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('16', 'post_page', '22', '17', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('17', 'post_page', '24', '18', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('18', 'post_page', '26', '19', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('19', 'post_page', '28', '20', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('20', 'post_page', '30', '21', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('21', 'post_page', '32', '22', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('22', 'tax_nav_menu', '3', '23', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('23', 'post_nav_menu_item', '34', '24', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('24', 'post_nav_menu_item', '35', '25', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('25', 'post_nav_menu_item', '36', '26', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('33', 'post_nav_menu_item', '45', '29', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('34', 'post_nav_menu_item', '46', '30', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('35', 'post_nav_menu_item', '47', '31', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('36', 'post_nav_menu_item', '48', '32', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('37', 'post_nav_menu_item', '49', '33', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('38', 'post_nav_menu_item', '50', '34', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('39', 'post_nav_menu_item', '51', '35', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('40', 'post_nav_menu_item', '52', '36', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('41', 'post_service', '43', '37', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('42', 'tax_danh-muc-dich-vu', '4', '38', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('43', 'tax_danh-muc-dich-vu', '5', '39', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('44', 'tax_danh-muc-dich-vu', '6', '40', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('45', 'tax_danh-muc-dich-vu', '7', '41', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('46', 'tax_danh-muc-dich-vu', '8', '42', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('47', 'tax_danh-muc-dich-vu', '9', '43', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('48', 'tax_danh-muc-dich-vu', '10', '44', 'vi', null);
INSERT INTO spl_icl_translations VALUES ('49', 'tax_danh-muc-dich-vu', '11', '45', 'vi', null);

-- ----------------------------
-- Table structure for `spl_icl_translation_batches`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_translation_batches`;
CREATE TABLE `spl_icl_translation_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp_id` int(11) DEFAULT NULL,
  `ts_url` text COLLATE utf8mb4_unicode_ci,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_translation_batches
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_icl_translation_status`
-- ----------------------------
DROP TABLE IF EXISTS `spl_icl_translation_status`;
CREATE TABLE `spl_icl_translation_status` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `translation_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `translator_id` bigint(20) NOT NULL,
  `needs_update` tinyint(4) NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_service` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` int(11) NOT NULL DEFAULT '0',
  `translation_package` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `links_fixed` tinyint(4) NOT NULL DEFAULT '0',
  `_prevstate` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `translation_id` (`translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_icl_translation_status
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_links`
-- ----------------------------
DROP TABLE IF EXISTS `spl_links`;
CREATE TABLE `spl_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_links
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_options`
-- ----------------------------
DROP TABLE IF EXISTS `spl_options`;
CREATE TABLE `spl_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_options
-- ----------------------------
INSERT INTO spl_options VALUES ('1', 'siteurl', 'http://space-plus.dev.vn', 'yes');
INSERT INTO spl_options VALUES ('2', 'home', 'http://space-plus.dev.vn', 'yes');
INSERT INTO spl_options VALUES ('3', 'blogname', 'Space Plus', 'yes');
INSERT INTO spl_options VALUES ('4', 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO spl_options VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO spl_options VALUES ('6', 'admin_email', 'hungdn0502@gmail.com', 'yes');
INSERT INTO spl_options VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO spl_options VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO spl_options VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO spl_options VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO spl_options VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO spl_options VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO spl_options VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO spl_options VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO spl_options VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO spl_options VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO spl_options VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO spl_options VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO spl_options VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO spl_options VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO spl_options VALUES ('21', 'default_pingback_flag', '0', 'yes');
INSERT INTO spl_options VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO spl_options VALUES ('23', 'date_format', 'F j, Y', 'yes');
INSERT INTO spl_options VALUES ('24', 'time_format', 'g:i a', 'yes');
INSERT INTO spl_options VALUES ('25', 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO spl_options VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO spl_options VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO spl_options VALUES ('28', 'permalink_structure', '/%postname%/', 'yes');
INSERT INTO spl_options VALUES ('29', 'rewrite_rules', 'a:200:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"banner/?$\";s:26:\"index.php?post_type=banner\";s:39:\"banner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:34:\"banner/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:26:\"banner/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=banner&paged=$matches[1]\";s:10:\"tin-tuc/?$\";s:27:\"index.php?post_type=article\";s:40:\"tin-tuc/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=article&feed=$matches[1]\";s:35:\"tin-tuc/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=article&feed=$matches[1]\";s:27:\"tin-tuc/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=article&paged=$matches[1]\";s:8:\"du-an/?$\";s:27:\"index.php?post_type=project\";s:38:\"du-an/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:33:\"du-an/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:25:\"du-an/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:10:\"dich-vu/?$\";s:27:\"index.php?post_type=service\";s:40:\"dich-vu/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:35:\"dich-vu/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:27:\"dich-vu/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=service&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"danh-muc-tin-tuc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?danh-muc-tin-tuc=$matches[1]&feed=$matches[2]\";s:52:\"danh-muc-tin-tuc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?danh-muc-tin-tuc=$matches[1]&feed=$matches[2]\";s:33:\"danh-muc-tin-tuc/([^/]+)/embed/?$\";s:49:\"index.php?danh-muc-tin-tuc=$matches[1]&embed=true\";s:45:\"danh-muc-tin-tuc/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?danh-muc-tin-tuc=$matches[1]&paged=$matches[2]\";s:27:\"danh-muc-tin-tuc/([^/]+)/?$\";s:38:\"index.php?danh-muc-tin-tuc=$matches[1]\";s:45:\"tag2/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tag2=$matches[1]&feed=$matches[2]\";s:40:\"tag2/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tag2=$matches[1]&feed=$matches[2]\";s:21:\"tag2/([^/]+)/embed/?$\";s:37:\"index.php?tag2=$matches[1]&embed=true\";s:33:\"tag2/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?tag2=$matches[1]&paged=$matches[2]\";s:15:\"tag2/([^/]+)/?$\";s:26:\"index.php?tag2=$matches[1]\";s:55:\"danh-muc-du-an/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?danh-muc-du-an=$matches[1]&feed=$matches[2]\";s:50:\"danh-muc-du-an/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?danh-muc-du-an=$matches[1]&feed=$matches[2]\";s:31:\"danh-muc-du-an/([^/]+)/embed/?$\";s:47:\"index.php?danh-muc-du-an=$matches[1]&embed=true\";s:43:\"danh-muc-du-an/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?danh-muc-du-an=$matches[1]&paged=$matches[2]\";s:25:\"danh-muc-du-an/([^/]+)/?$\";s:36:\"index.php?danh-muc-du-an=$matches[1]\";s:57:\"danh-muc-dich-vu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?danh-muc-dich-vu=$matches[1]&feed=$matches[2]\";s:52:\"danh-muc-dich-vu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?danh-muc-dich-vu=$matches[1]&feed=$matches[2]\";s:33:\"danh-muc-dich-vu/([^/]+)/embed/?$\";s:49:\"index.php?danh-muc-dich-vu=$matches[1]&embed=true\";s:45:\"danh-muc-dich-vu/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?danh-muc-dich-vu=$matches[1]&paged=$matches[2]\";s:27:\"danh-muc-dich-vu/([^/]+)/?$\";s:38:\"index.php?danh-muc-dich-vu=$matches[1]\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:47:\"banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:42:\"banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"tin-tuc/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"tin-tuc/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"tin-tuc/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"tin-tuc/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"tin-tuc/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"tin-tuc/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"tin-tuc/([^/]+)/embed/?$\";s:40:\"index.php?article=$matches[1]&embed=true\";s:28:\"tin-tuc/([^/]+)/trackback/?$\";s:34:\"index.php?article=$matches[1]&tb=1\";s:48:\"tin-tuc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?article=$matches[1]&feed=$matches[2]\";s:43:\"tin-tuc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?article=$matches[1]&feed=$matches[2]\";s:36:\"tin-tuc/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?article=$matches[1]&paged=$matches[2]\";s:43:\"tin-tuc/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?article=$matches[1]&cpage=$matches[2]\";s:32:\"tin-tuc/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?article=$matches[1]&page=$matches[2]\";s:24:\"tin-tuc/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"tin-tuc/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"tin-tuc/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"tin-tuc/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"tin-tuc/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"tin-tuc/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"du-an/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"du-an/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"du-an/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"du-an/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"du-an/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"du-an/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"du-an/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:26:\"du-an/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:46:\"du-an/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:41:\"du-an/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:34:\"du-an/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:41:\"du-an/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:30:\"du-an/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:22:\"du-an/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"du-an/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"du-an/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"du-an/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"du-an/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"du-an/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"dich-vu/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"dich-vu/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"dich-vu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"dich-vu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"dich-vu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"dich-vu/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"dich-vu/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"dich-vu/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:48:\"dich-vu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:43:\"dich-vu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:36:\"dich-vu/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"dich-vu/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"dich-vu/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"dich-vu/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"dich-vu/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"dich-vu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"dich-vu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"dich-vu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"dich-vu/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes');
INSERT INTO spl_options VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO spl_options VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO spl_options VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO spl_options VALUES ('33', 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:40:\"sitepress-multilingual-cms/sitepress.php\";}', 'yes');
INSERT INTO spl_options VALUES ('34', 'category_base', '', 'yes');
INSERT INTO spl_options VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO spl_options VALUES ('36', 'comment_max_links', '2', 'yes');
INSERT INTO spl_options VALUES ('37', 'gmt_offset', '0', 'yes');
INSERT INTO spl_options VALUES ('38', 'default_email_category', '1', 'yes');
INSERT INTO spl_options VALUES ('39', 'recently_edited', '', 'no');
INSERT INTO spl_options VALUES ('40', 'template', 'spaceplus', 'yes');
INSERT INTO spl_options VALUES ('41', 'stylesheet', 'spaceplus', 'yes');
INSERT INTO spl_options VALUES ('42', 'comment_whitelist', '1', 'yes');
INSERT INTO spl_options VALUES ('43', 'blacklist_keys', '', 'no');
INSERT INTO spl_options VALUES ('44', 'comment_registration', '0', 'yes');
INSERT INTO spl_options VALUES ('45', 'html_type', 'text/html', 'yes');
INSERT INTO spl_options VALUES ('46', 'use_trackback', '0', 'yes');
INSERT INTO spl_options VALUES ('47', 'default_role', 'subscriber', 'yes');
INSERT INTO spl_options VALUES ('48', 'db_version', '38590', 'yes');
INSERT INTO spl_options VALUES ('49', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO spl_options VALUES ('50', 'upload_path', '', 'yes');
INSERT INTO spl_options VALUES ('51', 'blog_public', '0', 'yes');
INSERT INTO spl_options VALUES ('52', 'default_link_category', '2', 'yes');
INSERT INTO spl_options VALUES ('53', 'show_on_front', 'page', 'yes');
INSERT INTO spl_options VALUES ('54', 'tag_base', '', 'yes');
INSERT INTO spl_options VALUES ('55', 'show_avatars', '1', 'yes');
INSERT INTO spl_options VALUES ('56', 'avatar_rating', 'G', 'yes');
INSERT INTO spl_options VALUES ('57', 'upload_url_path', '', 'yes');
INSERT INTO spl_options VALUES ('58', 'thumbnail_size_w', '150', 'yes');
INSERT INTO spl_options VALUES ('59', 'thumbnail_size_h', '150', 'yes');
INSERT INTO spl_options VALUES ('60', 'thumbnail_crop', '1', 'yes');
INSERT INTO spl_options VALUES ('61', 'medium_size_w', '300', 'yes');
INSERT INTO spl_options VALUES ('62', 'medium_size_h', '300', 'yes');
INSERT INTO spl_options VALUES ('63', 'avatar_default', 'mystery', 'yes');
INSERT INTO spl_options VALUES ('64', 'large_size_w', '1024', 'yes');
INSERT INTO spl_options VALUES ('65', 'large_size_h', '1024', 'yes');
INSERT INTO spl_options VALUES ('66', 'image_default_link_type', 'none', 'yes');
INSERT INTO spl_options VALUES ('67', 'image_default_size', '', 'yes');
INSERT INTO spl_options VALUES ('68', 'image_default_align', '', 'yes');
INSERT INTO spl_options VALUES ('69', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO spl_options VALUES ('70', 'close_comments_days_old', '14', 'yes');
INSERT INTO spl_options VALUES ('71', 'thread_comments', '1', 'yes');
INSERT INTO spl_options VALUES ('72', 'thread_comments_depth', '5', 'yes');
INSERT INTO spl_options VALUES ('73', 'page_comments', '0', 'yes');
INSERT INTO spl_options VALUES ('74', 'comments_per_page', '50', 'yes');
INSERT INTO spl_options VALUES ('75', 'default_comments_page', 'newest', 'yes');
INSERT INTO spl_options VALUES ('76', 'comment_order', 'asc', 'yes');
INSERT INTO spl_options VALUES ('77', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('79', 'widget_text', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('80', 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('81', 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO spl_options VALUES ('82', 'timezone_string', '', 'yes');
INSERT INTO spl_options VALUES ('83', 'page_for_posts', '0', 'yes');
INSERT INTO spl_options VALUES ('84', 'page_on_front', '12', 'yes');
INSERT INTO spl_options VALUES ('85', 'default_post_format', '0', 'yes');
INSERT INTO spl_options VALUES ('86', 'link_manager_enabled', '0', 'yes');
INSERT INTO spl_options VALUES ('87', 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO spl_options VALUES ('88', 'site_icon', '0', 'yes');
INSERT INTO spl_options VALUES ('89', 'medium_large_size_w', '768', 'yes');
INSERT INTO spl_options VALUES ('90', 'medium_large_size_h', '0', 'yes');
INSERT INTO spl_options VALUES ('91', 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO spl_options VALUES ('92', 'show_comments_cookies_opt_in', '0', 'yes');
INSERT INTO spl_options VALUES ('93', 'initial_db_version', '38590', 'yes');
INSERT INTO spl_options VALUES ('94', 'spl_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:34:\"wpml_manage_translation_management\";b:1;s:21:\"wpml_manage_languages\";b:1;s:41:\"wpml_manage_theme_and_plugin_localization\";b:1;s:19:\"wpml_manage_support\";b:1;s:36:\"wpml_manage_woocommerce_multilingual\";b:1;s:37:\"wpml_operate_woocommerce_multilingual\";b:1;s:29:\"wpml_manage_media_translation\";b:1;s:22:\"wpml_manage_navigation\";b:1;s:24:\"wpml_manage_sticky_links\";b:1;s:30:\"wpml_manage_string_translation\";b:1;s:33:\"wpml_manage_translation_analytics\";b:1;s:25:\"wpml_manage_wp_menus_sync\";b:1;s:32:\"wpml_manage_taxonomy_translation\";b:1;s:27:\"wpml_manage_troubleshooting\";b:1;s:31:\"wpml_manage_translation_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO spl_options VALUES ('95', 'fresh_site', '0', 'yes');
INSERT INTO spl_options VALUES ('96', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('97', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('98', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('99', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('100', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('101', 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO spl_options VALUES ('102', 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('103', 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('104', 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('105', 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('106', 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('107', 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('108', 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('109', 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('110', 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('111', 'cron', 'a:6:{i:1574263941;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1574285541;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574328770;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574329038;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574329303;a:1:{s:24:\"update_wpml_config_index\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO spl_options VALUES ('112', 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1574069579;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes');
INSERT INTO spl_options VALUES ('116', '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.3\";s:7:\"version\";s:5:\"5.1.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.7\";s:7:\"version\";s:5:\"5.0.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1574256076;s:15:\"version_checked\";s:6:\"4.9.12\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO spl_options VALUES ('124', '_site_transient_timeout_browser_f9f7120ce5a4a9cf082c424b40cf59f5', '1574674354', 'no');
INSERT INTO spl_options VALUES ('125', '_site_transient_browser_f9f7120ce5a4a9cf082c424b40cf59f5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"78.0.3904.97\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO spl_options VALUES ('126', 'can_compress_scripts', '1', 'no');
INSERT INTO spl_options VALUES ('140', 'current_theme', 'Space Plus', 'yes');
INSERT INTO spl_options VALUES ('141', 'theme_mods_spaceplus', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}}', 'yes');
INSERT INTO spl_options VALUES ('142', 'theme_switched', '', 'yes');
INSERT INTO spl_options VALUES ('145', 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('150', 'acf_version', '5.5.11', 'yes');
INSERT INTO spl_options VALUES ('158', 'icl_sitepress_version', '3.6.3', 'yes');
INSERT INTO spl_options VALUES ('159', 'icl_sitepress_settings', 'a:53:{s:19:\"hide_upgrade_notice\";s:5:\"3.6.3\";s:25:\"icl_capabilities_verified\";b:1;s:21:\"interview_translators\";i:1;s:34:\"existing_content_language_verified\";i:1;s:25:\"language_negotiation_type\";i:3;s:23:\"theme_localization_type\";i:2;s:18:\"icl_lso_link_empty\";i:0;s:18:\"sync_page_ordering\";i:1;s:16:\"sync_page_parent\";i:1;s:18:\"sync_page_template\";i:1;s:16:\"sync_ping_status\";i:1;s:19:\"sync_comment_status\";i:1;s:16:\"sync_sticky_flag\";i:1;s:13:\"sync_password\";i:1;s:17:\"sync_private_flag\";i:1;s:16:\"sync_post_format\";i:1;s:11:\"sync_delete\";i:0;s:15:\"sync_delete_tax\";i:0;s:20:\"sync_post_taxonomies\";i:1;s:14:\"sync_post_date\";i:0;s:21:\"sync_taxonomy_parents\";i:0;s:25:\"translation_pickup_method\";i:0;s:15:\"notify_complete\";i:1;s:26:\"translated_document_status\";i:1;s:17:\"remote_management\";i:0;s:15:\"auto_adjust_ids\";i:1;s:11:\"alert_delay\";i:0;s:12:\"promote_wpml\";i:0;s:18:\"automatic_redirect\";i:0;s:17:\"remember_language\";i:24;s:28:\"icl_lang_sel_copy_parameters\";s:0:\"\";s:28:\"translated_document_page_url\";s:13:\"auto-generate\";s:28:\"sync_comments_on_duplicates \";i:0;s:3:\"seo\";a:3:{s:10:\"head_langs\";i:1;s:27:\"canonicalization_duplicates\";i:1;s:19:\"head_langs_priority\";i:1;}s:22:\"posts_slug_translation\";a:1:{s:2:\"on\";i:0;}s:15:\"languages_order\";a:2:{i:0;s:2:\"en\";i:1;s:2:\"vi\";}s:4:\"urls\";a:5:{s:30:\"directory_for_default_language\";i:0;s:12:\"show_on_root\";s:0:\"\";s:19:\"root_html_file_path\";s:0:\"\";s:9:\"root_page\";i:0;s:23:\"hide_language_switchers\";i:1;}s:12:\"xdomain_data\";i:1;s:16:\"active_languages\";a:2:{i:0;s:2:\"en\";i:1;s:2:\"vi\";}s:22:\"admin_default_language\";s:9:\"_default_\";s:32:\"theme_localization_type_previous\";i:1;s:22:\"taxonomy_names_checked\";b:1;s:14:\"setup_complete\";i:1;s:18:\"ajx_health_checked\";b:1;s:18:\"default_categories\";a:2:{s:2:\"vi\";s:1:\"1\";s:2:\"en\";i:2;}s:16:\"default_language\";s:2:\"vi\";s:17:\"setup_wizard_step\";i:4;s:22:\"translation-management\";a:13:{s:12:\"notification\";a:5:{s:7:\"new-job\";i:1;s:9:\"completed\";i:1;s:8:\"resigned\";i:1;s:9:\"dashboard\";b:1;s:9:\"purge-old\";i:7;}s:25:\"custom_fields_translation\";a:18:{s:5:\"title\";i:2;s:11:\"description\";i:2;s:8:\"keywords\";i:2;s:10:\"_edit_last\";i:0;s:10:\"_edit_lock\";i:0;s:17:\"_wp_page_template\";i:0;s:23:\"_wp_attachment_metadata\";i:0;s:16:\"original_post_id\";i:0;s:22:\"_wpml_original_post_id\";i:0;s:12:\"_wp_old_slug\";i:0;s:20:\"_icl_translator_note\";i:0;s:14:\"_alp_processed\";i:0;s:7:\"_pingme\";i:0;s:10:\"_encloseme\";i:0;s:22:\"_icl_lang_duplicate_of\";i:0;s:13:\"_thumbnail_id\";i:0;s:17:\"_wp_attached_file\";i:0;s:24:\"_wp_attachment_image_alt\";i:2;}s:29:\"custom_fields_readonly_config\";a:18:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:8:\"keywords\";i:3;s:10:\"_edit_last\";i:4;s:10:\"_edit_lock\";i:5;s:17:\"_wp_page_template\";i:6;s:23:\"_wp_attachment_metadata\";i:7;s:16:\"original_post_id\";i:8;s:22:\"_wpml_original_post_id\";i:9;s:12:\"_wp_old_slug\";i:10;s:20:\"_icl_translator_note\";i:11;s:14:\"_alp_processed\";i:12;s:7:\"_pingme\";i:13;s:10:\"_encloseme\";i:14;s:22:\"_icl_lang_duplicate_of\";i:15;s:13:\"_thumbnail_id\";i:16;s:17:\"_wp_attached_file\";i:17;s:24:\"_wp_attachment_image_alt\";}s:32:\"custom_fields_translation_custom\";a:0:{}s:41:\"custom_fields_translation_custom_readonly\";a:0:{}s:22:\"doc_translation_method\";i:0;s:35:\"__custom_types_readonly_config_prev\";a:0:{}s:28:\"custom_types_readonly_config\";a:0:{}s:36:\"__custom_fields_readonly_config_prev\";a:18:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:8:\"keywords\";i:3;s:10:\"_edit_last\";i:4;s:10:\"_edit_lock\";i:5;s:17:\"_wp_page_template\";i:6;s:23:\"_wp_attachment_metadata\";i:7;s:16:\"original_post_id\";i:8;s:22:\"_wpml_original_post_id\";i:9;s:12:\"_wp_old_slug\";i:10;s:20:\"_icl_translator_note\";i:11;s:14:\"_alp_processed\";i:12;s:7:\"_pingme\";i:13;s:10:\"_encloseme\";i:14;s:22:\"_icl_lang_duplicate_of\";i:15;s:13:\"_thumbnail_id\";i:16;s:17:\"_wp_attached_file\";i:17;s:24:\"_wp_attachment_image_alt\";}s:41:\"__custom_term_fields_readonly_config_prev\";a:0:{}s:34:\"custom_term_fields_readonly_config\";a:0:{}s:26:\"taxonomies_readonly_config\";a:1:{s:20:\"translation_priority\";i:1;}s:28:\"custom-types_readonly_config\";a:2:{s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;}}s:24:\"custom_posts_sync_option\";a:12:{s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;s:10:\"custom_css\";s:1:\"0\";s:19:\"customize_changeset\";s:1:\"0\";s:12:\"oembed_cache\";s:1:\"0\";s:12:\"user_request\";s:1:\"0\";s:15:\"acf-field-group\";s:1:\"0\";s:9:\"acf-field\";s:1:\"0\";s:6:\"banner\";s:1:\"0\";s:7:\"article\";s:1:\"1\";s:7:\"project\";s:1:\"0\";s:7:\"service\";s:1:\"1\";}s:22:\"taxonomies_sync_option\";a:5:{s:20:\"translation_priority\";i:1;s:16:\"danh-muc-tin-tuc\";s:1:\"1\";s:4:\"tag2\";s:1:\"0\";s:14:\"danh-muc-du-an\";s:1:\"0\";s:16:\"danh-muc-dich-vu\";s:1:\"1\";}s:24:\"custom-types_sync_option\";a:2:{s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;}s:29:\"language_selector_initialized\";i:1;s:21:\"site_does_not_use_icl\";b:1;}', 'yes');
INSERT INTO spl_options VALUES ('160', 'wpml_dependencies:needs_validation', '', 'yes');
INSERT INTO spl_options VALUES ('161', 'wpml_dependencies:valid_plugins', 'a:1:{i:0;s:26:\"sitepress-multilingual-cms\";}', 'yes');
INSERT INTO spl_options VALUES ('162', 'wpml_dependencies:invalid_plugins', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('163', 'wpml_config_index', 'O:8:\"stdClass\":2:{s:7:\"plugins\";a:70:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:33:\"10bit WooCommerce Gateway Yaadpay\";s:14:\"override_local\";b:1;s:4:\"path\";s:61:\"wpml-config/10bit-woocommerce-gateway-yaadpay/wpml-config.xml\";s:7:\"updated\";i:1464939780;s:4:\"hash\";s:32:\"ebdce80f3b6bfa13112b1d4c6a31b560\";}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Book Now\";s:14:\"override_local\";b:0;s:4:\"path\";s:36:\"wpml-config/book-now/wpml-config.xml\";s:7:\"updated\";i:1505319840;s:4:\"hash\";s:32:\"d123c0bb22d447095c3c443cb41c273a\";}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Cornerstone\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/cornerstone/wpml-config.xml\";s:7:\"updated\";i:1573317283;s:4:\"hash\";s:32:\"d2e378d57e72ebfe58d3bd62b9c54f17\";}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"Custom Post Type UI\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/custom-post-type-ui/wpml-config.xml\";s:7:\"updated\";i:1523893440;s:4:\"hash\";s:32:\"e947352f481e0d8ab9cce6bd97316419\";}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"Divi Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/divi-builder/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"c39e7a35f68f1deadd8b86ba65bca0f9\";}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Event Tickets Plus\";s:14:\"override_local\";b:0;s:4:\"path\";s:46:\"wpml-config/event-tickets-plus/wpml-config.xml\";s:7:\"updated\";i:1477310580;s:4:\"hash\";s:32:\"f333802d6c6c9836466d3ff52cfe2bd7\";}i:6;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WPBakery Visual Composer\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/js_composer/wpml-config.xml\";s:7:\"updated\";i:1566492840;s:4:\"hash\";s:32:\"7ef24bd7ea76d60c1bb7adf8439c5957\";}i:7;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/js_composer/wpml-config.xml\";s:7:\"updated\";i:1566492840;s:4:\"hash\";s:32:\"7ef24bd7ea76d60c1bb7adf8439c5957\";}i:8;O:8:\"stdClass\":5:{s:4:\"name\";s:37:\"Uncode Page Builder (Visual Composer)\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/uncode-js_composer/wpml-config.xml\";s:7:\"updated\";i:1566492840;s:4:\"hash\";s:32:\"f53eabe7952414574c9e9f551613ac76\";}i:9;O:8:\"stdClass\":5:{s:4:\"name\";s:28:\"Uncode WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/uncode-js_composer/wpml-config.xml\";s:7:\"updated\";i:1566492840;s:4:\"hash\";s:32:\"f53eabe7952414574c9e9f551613ac76\";}i:10;O:8:\"stdClass\":5:{s:4:\"name\";s:26:\"The7 WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/js_composer-dt-the7/wpml-config.xml\";s:7:\"updated\";i:1566492840;s:4:\"hash\";s:32:\"caf05daa7509c1127194c88dee427879\";}i:11;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"MailChimp for WordPress\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/mailchimp-for-wp/wpml-config.xml\";s:7:\"updated\";i:1509614640;s:4:\"hash\";s:32:\"c4f8573312cdf0f71d9329ae82d4ec49\";}i:12;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Members\";s:14:\"override_local\";b:0;s:4:\"path\";s:35:\"wpml-config/members/wpml-config.xml\";s:7:\"updated\";i:1497367620;s:4:\"hash\";s:32:\"37e638f5a56f59208150c3649c291e41\";}i:13;O:8:\"stdClass\":5:{s:4:\"name\";s:46:\"Multibanco (IfthenPay gateway) for WooCommerce\";s:14:\"override_local\";b:0;s:4:\"path\";s:72:\"wpml-config/multibanco-ifthenpay-gateway-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1441014780;s:4:\"hash\";s:32:\"3cddef77fd163e090472f995aa2388d4\";}i:14;O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"NW ADCart for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:53:\"wpml-config/nw-adcart-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1409734260;s:4:\"hash\";s:32:\"91d62df0659fc7b561a3932a7a52de6a\";}i:15;O:8:\"stdClass\":5:{s:4:\"name\";s:22:\"PayPal for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:50:\"wpml-config/paypal-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1504696980;s:4:\"hash\";s:32:\"8d98b39c86e95094e6b7727fda7a6f00\";}i:16;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"Product Enquiry Pro for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:63:\"wpml-config/product-enquiry-pro-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1409734500;s:4:\"hash\";s:32:\"305232f06370d52a29c346d6b711f50a\";}i:17;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"ProductPrint\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/productprint/wpml-config.xml\";s:7:\"updated\";i:1447155240;s:4:\"hash\";s:32:\"8003e16bcd6efca83d3b83dc3e01dc89\";}i:18;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Sensei\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/sensei/wpml-config.xml\";s:7:\"updated\";i:1519733580;s:4:\"hash\";s:32:\"ae69c1b9e4f553d0153d561cda3e5e9f\";}i:19;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Subscriptio\";s:14:\"override_local\";b:0;s:4:\"path\";s:39:\"wpml-config/subscriptio/wpml-config.xml\";s:7:\"updated\";i:1519647600;s:4:\"hash\";s:32:\"a23128c1dde651ef63093336042948e5\";}i:20;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WPML Multilingual CMS\";s:14:\"override_local\";b:1;s:4:\"path\";s:54:\"wpml-config/sitepress-multilingual-cms/wpml-config.xml\";s:7:\"updated\";i:1570112607;s:4:\"hash\";s:32:\"38c5ff5f649c25ca04655a2a825b7206\";}i:21;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"The Events Calendar\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/the-events-calendar/wpml-config.xml\";s:7:\"updated\";i:1570099950;s:4:\"hash\";s:32:\"63b4a9e620c90153b1fef1d8a00fd8a2\";}i:22;O:8:\"stdClass\":5:{s:4:\"name\";s:31:\"The Events Calendar: Filter Bar\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/events-filterbar/wpml-config.xml\";s:7:\"updated\";i:1529671740;s:4:\"hash\";s:32:\"787231e7b7cdb54ca447512234be0768\";}i:23;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"Woocomerce Brands Pro\";s:14:\"override_local\";b:0;s:4:\"path\";s:37:\"wpml-config/woo-brand/wpml-config.xml\";s:7:\"updated\";i:1442243400;s:4:\"hash\";s:32:\"dc7eeb10cd6e0eb80b7960eb8b6058a4\";}i:24;O:8:\"stdClass\":5:{s:4:\"name\";s:39:\"WooCommerce Additional Variation Images\";s:14:\"override_local\";b:1;s:4:\"path\";s:67:\"wpml-config/woocommerce-additional-variation-images/wpml-config.xml\";s:7:\"updated\";i:1479214860;s:4:\"hash\";s:32:\"39b5f72684021b09b12b53b7ff9c7100\";}i:25;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"WooCommerce Advanced Product Labels\";s:14:\"override_local\";b:0;s:4:\"path\";s:63:\"wpml-config/woocommerce-advanced-product-labels/wpml-config.xml\";s:7:\"updated\";i:1441177080;s:4:\"hash\";s:32:\"4b29c29516a1a33b328d90ffc5c4aad7\";}i:26;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"WooCommerce Bookings\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/woocommerce-bookings/wpml-config.xml\";s:7:\"updated\";i:1518696060;s:4:\"hash\";s:32:\"cf704fa60399163e82de88dfca25b644\";}i:27;O:8:\"stdClass\":5:{s:4:\"name\";s:38:\"WooCommerce Catalog Visibility Options\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-catalog-visibility-options/wpml-config.xml\";s:7:\"updated\";i:1408625580;s:4:\"hash\";s:32:\"d10bd6388a88521e488f7e4ba295c94c\";}i:28;O:8:\"stdClass\":5:{s:4:\"name\";s:30:\"WooCommerce Composite Products\";s:14:\"override_local\";b:0;s:4:\"path\";s:58:\"wpml-config/woocommerce-composite-products/wpml-config.xml\";s:7:\"updated\";i:1491207900;s:4:\"hash\";s:32:\"a6c0ed6554be69f56779f64506ab96d1\";}i:29;O:8:\"stdClass\":5:{s:4:\"name\";s:30:\"WooCommerce Currency Converter\";s:14:\"override_local\";b:1;s:4:\"path\";s:58:\"wpml-config/woocommerce-currency-converter/wpml-config.xml\";s:7:\"updated\";i:1452009180;s:4:\"hash\";s:32:\"b2191d7affaf1efe74e6a3ca4b0494c6\";}i:30;O:8:\"stdClass\":5:{s:4:\"name\";s:32:\"WooCommerce DIBS FlexWin Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:60:\"wpml-config/woocommerce-dibs-flexwin-gateway/wpml-config.xml\";s:7:\"updated\";i:1459514460;s:4:\"hash\";s:32:\"d9237f895f0f133c8e11f4753d96eeca\";}i:31;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WooCommerce Embed Slides\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/woocommerce-embed-slides/wpml-config.xml\";s:7:\"updated\";i:1499457300;s:4:\"hash\";s:32:\"243e3a54d920cc2ddf96f17f4ff38f2d\";}i:32;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"WooCommerce Local Pickup Plus\";s:14:\"override_local\";b:1;s:4:\"path\";s:57:\"wpml-config/woocommerce-local-pickup-plus/wpml-config.xml\";s:7:\"updated\";i:1442582820;s:4:\"hash\";s:32:\"816774f477bfa1c481cdba021d33f705\";}i:33;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WooCommerce Multilingual\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/woocommerce-multilingual/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"bd4f489abd951b8cd74db2e69c9d8574\";}i:34;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"WooCommerce Memberships\";s:14:\"override_local\";b:1;s:4:\"path\";s:51:\"wpml-config/woocommerce-memberships/wpml-config.xml\";s:7:\"updated\";i:1509008280;s:4:\"hash\";s:32:\"216897217946e73b59e0e4f8958cad88\";}i:35;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Name Your Price\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-name-your-price/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"055de38e55802236ee636eec63bdde5e\";}i:36;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Paymill Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-paymill-gateway/wpml-config.xml\";s:7:\"updated\";i:1408626540;s:4:\"hash\";s:32:\"46409842584ff8df43a2aa922ad1d388\";}i:37;O:8:\"stdClass\":5:{s:4:\"name\";s:40:\"WooCommerce PDF Invoices & Packing Slips\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-pdf-invoices-packing-slips/wpml-config.xml\";s:7:\"updated\";i:1461579300;s:4:\"hash\";s:32:\"34ecf8066c5c9042a0bd60b5d40c4c55\";}i:38;O:8:\"stdClass\":5:{s:4:\"name\";s:17:\"WooCommerce Plivo\";s:14:\"override_local\";b:1;s:4:\"path\";s:45:\"wpml-config/woocommerce-plivo/wpml-config.xml\";s:7:\"updated\";i:1409734680;s:4:\"hash\";s:32:\"539d172825c4714d69b8a42ad1826c5d\";}i:39;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"WooCommerce PostePay\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/woocommerce-postepay/wpml-config.xml\";s:7:\"updated\";i:1409063100;s:4:\"hash\";s:32:\"b08722979a25b15ba4a02a16fb555ccc\";}i:40;O:8:\"stdClass\":5:{s:4:\"name\";s:28:\"WooCommerce Price by Country\";s:14:\"override_local\";b:1;s:4:\"path\";s:56:\"wpml-config/woocommerce-price-by-country/wpml-config.xml\";s:7:\"updated\";i:1415282880;s:4:\"hash\";s:32:\"9b296d64ba8afee80cb1ff4fac80144b\";}i:41;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Product Add-ons\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-product-add-ons/wpml-config.xml\";s:7:\"updated\";i:1476961740;s:4:\"hash\";s:32:\"69f94bed6e4b3546cc7be2fbd2bf392b\";}i:42;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Product Bundles\";s:14:\"override_local\";b:0;s:4:\"path\";s:55:\"wpml-config/woocommerce-product-bundles/wpml-config.xml\";s:7:\"updated\";i:1487080740;s:4:\"hash\";s:32:\"7cddba745169acd899b12f24e3580dcc\";}i:43;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"WooCommerce Product Gift Wrap\";s:14:\"override_local\";b:1;s:4:\"path\";s:57:\"wpml-config/woocommerce-product-gift-wrap/wpml-config.xml\";s:7:\"updated\";i:1429639980;s:4:\"hash\";s:32:\"dd3371d64d2ee01e6e42fd7e0bd134cf\";}i:44;O:8:\"stdClass\":5:{s:4:\"name\";s:38:\"Woocommerce Social Media Share Buttons\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-social-media-share-buttons/wpml-config.xml\";s:7:\"updated\";i:1464934800;s:4:\"hash\";s:32:\"3130bbf2a35424d9ecd8d6c3255bf817\";}i:45;O:8:\"stdClass\":5:{s:4:\"name\";s:26:\"WooCommerce Stripe Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:54:\"wpml-config/woocommerce-gateway-stripe/wpml-config.xml\";s:7:\"updated\";i:1409061480;s:4:\"hash\";s:32:\"4139e23bcdd0bb3e78cb079fa851ce85\";}i:46;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"WooCommerce Tab Manager\";s:14:\"override_local\";b:1;s:4:\"path\";s:51:\"wpml-config/woocommerce-tab-manager/wpml-config.xml\";s:7:\"updated\";i:1505158140;s:4:\"hash\";s:32:\"477be025d13abe1c1b89bb7666564ed6\";}i:47;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WooCommerce Video Tab\";s:14:\"override_local\";b:1;s:4:\"path\";s:49:\"wpml-config/woocommerce-video-tab/wpml-config.xml\";s:7:\"updated\";i:1415284320;s:4:\"hash\";s:32:\"7f9769bc2769e07ae730f3b4cd307741\";}i:48;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"WP Job Manager\";s:14:\"override_local\";b:0;s:4:\"path\";s:42:\"wpml-config/wp-job-manager/wpml-config.xml\";s:7:\"updated\";i:1499098260;s:4:\"hash\";s:32:\"36842c6b8a11a733ef00ef8d9bc410b9\";}i:49;O:8:\"stdClass\":5:{s:4:\"name\";s:16:\"WPML Test Config\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/wpml-test-config/wpml-config.xml\";s:7:\"updated\";i:1429103280;s:4:\"hash\";s:32:\"9c3bb313d5a4f028bebfa8fc8af990a3\";}i:50;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"YITH WooCommerce Catalog Mode\";s:14:\"override_local\";b:0;s:4:\"path\";s:57:\"wpml-config/yith-woocommerce-catalog-mode/wpml-config.xml\";s:7:\"updated\";i:1441961340;s:4:\"hash\";s:32:\"ca50a47d4254cbd04254c4448c511e22\";}i:51;O:8:\"stdClass\":5:{s:4:\"name\";s:49:\"YITH WooCommerce Minimum Maximum Quantity Premium\";s:14:\"override_local\";b:1;s:4:\"path\";s:77:\"wpml-config/yith-woocommerce-minimum-maximum-quantity-premium/wpml-config.xml\";s:7:\"updated\";i:1459278720;s:4:\"hash\";s:32:\"8e8c7961e72461a498849880ad418163\";}i:52;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"YITH WooCommerce Quick View Premium\";s:14:\"override_local\";b:0;s:4:\"path\";s:63:\"wpml-config/yith-woocommerce-quick-view-premium/wpml-config.xml\";s:7:\"updated\";i:1439206200;s:4:\"hash\";s:32:\"656f1dcbcad67f5a4cbc7747520ef4e2\";}i:53;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Yoast SEO\";s:14:\"override_local\";b:1;s:4:\"path\";s:37:\"wpml-config/yoast-seo/wpml-config.xml\";s:7:\"updated\";i:1530098880;s:4:\"hash\";s:32:\"4014a9b37ac42f0cc726390fb9088ebc\";}i:54;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Yoast SEO\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/wordpress-seo/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"1308d47129421d9cbcde366c141a5499\";}i:55;O:8:\"stdClass\":5:{s:4:\"name\";s:17:\"Yoast SEO Premium\";s:14:\"override_local\";b:1;s:4:\"path\";s:49:\"wpml-config/wordpress-seo-premium/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"1308d47129421d9cbcde366c141a5499\";}i:56;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Elementor\";s:14:\"override_local\";b:1;s:4:\"path\";s:37:\"wpml-config/elementor/wpml-config.xml\";s:7:\"updated\";i:1573317283;s:4:\"hash\";s:32:\"1b6770aeda4d80d734e7182956d72186\";}i:57;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Exit Popup\";s:14:\"override_local\";b:0;s:4:\"path\";s:38:\"wpml-config/exit-popup/wpml-config.xml\";s:7:\"updated\";i:1532441340;s:4:\"hash\";s:32:\"9759f24db8621dfa772d7222c9c336dd\";}i:58;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Ninja Forms\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/ninja-forms/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"7b3321902299b49238e59d0741ce1f8d\";}i:59;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"Rezgo Online Booking\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/rezgo/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"6f3433a4c5eafa13eaf125eea7d84239\";}i:60;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"MasterSlider\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/master-slider/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"2b5b8d5c1d934ee19a547b66d6c76b69\";}i:61;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"Advanced Comment Form\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/comment-form/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"a84c0e28e4c97dec1a3053c316c27892\";}i:62;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Search & Filter\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/search-filter/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"104b64d62b408a4ae7c5da7ff0acd0b2\";}i:63;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"KingComposer\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/kingcomposer/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"cadb27cc7ba0e61d3fd2acaf27fef4df\";}i:64;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Ultimate Member\";s:14:\"override_local\";b:1;s:4:\"path\";s:43:\"wpml-config/ultimate-member/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"c80a46117b6be17e1099cb0640f8e722\";}i:65;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"Google Analytics Opt-Out\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/google-analytics-opt-out/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"823965222ce323c88eadbcf95dcde0ff\";}i:66;O:8:\"stdClass\":5:{s:4:\"name\";s:16:\"Ajax Search Lite\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/ajax-search-lite/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"79dc60103bbc2eaaf6ac2ff25ca8dfa7\";}i:67;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"Paid Memberships Pro\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/paid-memberships-pro/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"a26838992708887d6825bd1fbdceca59\";}i:68;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"Bold Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:45:\"wpml-config/bold-page-builder/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"0157f9a404c3f952deb6025a3d9ed961\";}i:69;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Forminator\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/forminator/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"ae0a6b1f1bc9fc80ada4833f9ee8917c\";}}s:6:\"themes\";a:24:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:5:\"Avada\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/avada/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"d7e4672d74ad74278146ccf79fdb4520\";}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Brooklyn\";s:14:\"override_local\";b:1;s:4:\"path\";s:36:\"wpml-config/brooklyn/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"960edb3057ad96e2863221e82a4c69d2\";}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Canvas\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/canvas/wpml-config.xml\";s:7:\"updated\";i:1476729660;s:4:\"hash\";s:32:\"ea1da43b18f87c4aa73982113067cd95\";}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Customizr\";s:14:\"override_local\";b:0;s:4:\"path\";s:37:\"wpml-config/customizr/wpml-config.xml\";s:7:\"updated\";i:1440909000;s:4:\"hash\";s:32:\"d63f73a0df72ab558bdbfaadaeb9c737\";}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"Divi\";s:14:\"override_local\";b:1;s:4:\"path\";s:32:\"wpml-config/Divi/wpml-config.xml\";s:7:\"updated\";i:1571064204;s:4:\"hash\";s:32:\"5cdec5a7b72107e6ca74e4b992af35a7\";}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"The7\";s:14:\"override_local\";b:1;s:4:\"path\";s:35:\"wpml-config/dt-the7/wpml-config.xml\";s:7:\"updated\";i:1534160160;s:4:\"hash\";s:32:\"b99fe39e5d53275b0237a65894036893\";}i:6;O:8:\"stdClass\":5:{s:4:\"name\";s:5:\"Extra\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/extra/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"71285f08b490ff25c2efcc2344e5e088\";}i:7;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Emerald CV\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/emerald-cv/wpml-config.xml\";s:7:\"updated\";i:1460387160;s:4:\"hash\";s:32:\"3ab5fd101b71e7b306e48a07801c7557\";}i:8;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Enfold\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/enfold/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"4d77ef040715fb40660a705b8d1d5d24\";}i:9;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Function\";s:14:\"override_local\";b:1;s:4:\"path\";s:36:\"wpml-config/function/wpml-config.xml\";s:7:\"updated\";i:1476729720;s:4:\"hash\";s:32:\"bb6dd583fb2a28ee5c4e2a264a770d60\";}i:10;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Genesis\";s:14:\"override_local\";b:1;s:4:\"path\";s:35:\"wpml-config/genesis/wpml-config.xml\";s:7:\"updated\";i:1456825680;s:4:\"hash\";s:32:\"795657d127a84e450ad21218284bdd28\";}i:11;O:8:\"stdClass\":5:{s:4:\"name\";s:36:\"IDStore - Responsive WordPress Theme\";s:14:\"override_local\";b:1;s:4:\"path\";s:62:\"wpml-config/idstore-responsive-wordpress-theme/wpml-config.xml\";s:7:\"updated\";i:1499457240;s:4:\"hash\";s:32:\"1c49e6754e661e5eb1c301f8874829da\";}i:12;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"Kleo\";s:14:\"override_local\";b:0;s:4:\"path\";s:32:\"wpml-config/kleo/wpml-config.xml\";s:7:\"updated\";i:1424767800;s:4:\"hash\";s:32:\"442023138b716c2f410690eabeeab185\";}i:13;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Luster\";s:14:\"override_local\";b:0;s:4:\"path\";s:34:\"wpml-config/luster/wpml-config.xml\";s:7:\"updated\";i:1566489840;s:4:\"hash\";s:32:\"82a924b258dea8a7d87ba0002b561b1a\";}i:14;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"Port\";s:14:\"override_local\";b:1;s:4:\"path\";s:32:\"wpml-config/port/wpml-config.xml\";s:7:\"updated\";i:1426496160;s:4:\"hash\";s:32:\"788cce209545b94cfede660d543d7013\";}i:15;O:8:\"stdClass\":5:{s:4:\"name\";s:3:\"Pro\";s:14:\"override_local\";b:1;s:4:\"path\";s:31:\"wpml-config/pro/wpml-config.xml\";s:7:\"updated\";i:1532099940;s:4:\"hash\";s:32:\"dcb42604ed20598ed1bee40a90e45f39\";}i:16;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Relevanssi\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/relevanssi/wpml-config.xml\";s:7:\"updated\";i:1519735440;s:4:\"hash\";s:32:\"c630dfd3df777607e8f43ea201b413d0\";}i:17;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Relevanssi Premium\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/relevanssi-premium/wpml-config.xml\";s:7:\"updated\";i:1519735440;s:4:\"hash\";s:32:\"c630dfd3df777607e8f43ea201b413d0\";}i:18;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Resort\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/resort/wpml-config.xml\";s:7:\"updated\";i:1491314280;s:4:\"hash\";s:32:\"363adea9467157a4e0b49d50c2be3b3f\";}i:19;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Reveal\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/reveal/wpml-config.xml\";s:7:\"updated\";i:1461595980;s:4:\"hash\";s:32:\"58db88b09a090c9fcff3d65bd031d14a\";}i:20;O:8:\"stdClass\":5:{s:4:\"name\";s:13:\"ReWalk Parent\";s:14:\"override_local\";b:0;s:4:\"path\";s:41:\"wpml-config/rewalk-parent/wpml-config.xml\";s:7:\"updated\";i:1480345020;s:4:\"hash\";s:32:\"7b17377ed5e4226bc7e3d44270bc7924\";}i:21;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Scrollider\";s:14:\"override_local\";b:0;s:4:\"path\";s:38:\"wpml-config/scrollider/wpml-config.xml\";s:7:\"updated\";i:1479395940;s:4:\"hash\";s:32:\"83fbe85052a8e7eb7ac61496187c7271\";}i:22;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Uncode\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/uncode/wpml-config.xml\";s:7:\"updated\";i:1563359880;s:4:\"hash\";s:32:\"204c2f3ad5235c1a47423a6ce48b3b8b\";}i:23;O:8:\"stdClass\":5:{s:4:\"name\";s:1:\"X\";s:14:\"override_local\";b:1;s:4:\"path\";s:29:\"wpml-config/x/wpml-config.xml\";s:7:\"updated\";i:1534248540;s:4:\"hash\";s:32:\"0d41ca410c22810705838d664c5fa296\";}}}', 'yes');
INSERT INTO spl_options VALUES ('164', 'wpml_config_index_updated', '1574256180', 'yes');
INSERT INTO spl_options VALUES ('165', 'wpml_config_files_arr', 'O:8:\"stdClass\":2:{s:6:\"themes\";a:0:{}s:7:\"plugins\";a:1:{s:21:\"WPML Multilingual CMS\";s:15520:\"<wpml-config>\n    <custom-fields>\n        <custom-field action=\"translate\">title</custom-field>\n        <custom-field action=\"translate\">description</custom-field>\n        <custom-field action=\"translate\">keywords</custom-field>\n        <custom-field action=\"ignore\">_edit_last</custom-field>\n        <custom-field action=\"ignore\">_edit_lock</custom-field>\n        <custom-field action=\"ignore\">_wp_page_template</custom-field>\n        <custom-field action=\"ignore\">_wp_attachment_metadata</custom-field>\n        <custom-field action=\"ignore\">original_post_id</custom-field>\n        <custom-field action=\"ignore\">_wpml_original_post_id</custom-field>\n        <custom-field action=\"ignore\">_wp_old_slug</custom-field>\n        <custom-field action=\"ignore\">_icl_translator_note</custom-field>\n        <custom-field action=\"ignore\">_alp_processed</custom-field>\n        <custom-field action=\"ignore\">_pingme</custom-field>\n        <custom-field action=\"ignore\">_encloseme</custom-field>\n        <custom-field action=\"ignore\">_icl_lang_duplicate_of</custom-field>\n        <custom-field action=\"ignore\">_thumbnail_id</custom-field>\n        <custom-field action=\"ignore\">_wp_attached_file</custom-field>\n        <custom-field action=\"translate\">_wp_attachment_image_alt</custom-field>\n    </custom-fields>\n    <taxonomies>\n        <taxonomy translate=\"1\">translation_priority</taxonomy>\n    </taxonomies>\n    <language-switcher-settings>\n        <key name=\"link_empty\">0</key>\n        <key name=\"statics\">\n            <key name=\"footer\">\n                <key name=\"show\">0</key>\n                <key name=\"display_flags\">1</key>\n                <key name=\"display_names_in_current_lang\">1</key>\n                <key name=\"display_names_in_native_lang\">1</key>\n                <key name=\"display_link_for_current_lang\">1</key>\n                <key name=\"font_current_normal\">#444444</key>\n                <key name=\"font_current_hover\">#000000</key>\n                <key name=\"background_current_normal\">#ffffff</key>\n                <key name=\"background_current_hover\">#eeeeee</key>\n                <key name=\"font_other_normal\">#444444</key>\n                <key name=\"font_other_hover\">#000000</key>\n                <key name=\"background_other_normal\">#ffffff</key>\n                <key name=\"background_other_hover\">#eeeeee</key>\n                <key name=\"border\">#cdcdcd</key>\n            </key>\n            <key name=\"post_translations\">\n                <key name=\"show\">0</key>\n                <key name=\"display_flags\">0</key>\n                <key name=\"display_names_in_current_lang\">1</key>\n                <key name=\"display_names_in_native_lang\">1</key>\n                <key name=\"display_link_for_current_lang\">0</key>\n                <key name=\"display_before_content\">1</key>\n                <key name=\"display_after_content\">0</key>\n                <key name=\"availability_text\">This post is also available in: %s</key>\n            </key>\n            <key name=\"shortcode_actions\">\n                <key name=\"show\">0</key>\n                <key name=\"display_flags\">0</key>\n                <key name=\"display_names_in_current_lang\">1</key>\n                <key name=\"display_names_in_native_lang\">1</key>\n                <key name=\"display_link_for_current_lang\">1</key>\n            </key>\n        </key>\n    </language-switcher-settings>\n    <custom-types>\n        <custom-type translate=\"1\">attachment</custom-type>\n        <custom-type translate=\"1\">wp_block</custom-type>\n    </custom-types>\n	<shortcode-list>call_to_action,newsletter,tours_shortcode,cta_button,woocommerce_thankyou,woocommerce_shop,table,custom_profile,symple_heading,row,tagcloud,sform,nano,add_eventon_list,che,era,essa,nel,gli,per,come,anima,ella,quel,show_gd_mylist_btn,su_spoiler,email,vul,wpv-view,wpv-post-field,accordion_item,citation,gallery,foogallery,user-submitted-posts,chronologie,adresse,get_unit_label,get_reference_label,woocommerce_api_manager_lost_api_key,wp-knowledgebase,testimonials_slider,rpwe,posts,nowotworu,intima-media,dostarcza,standaryzowany,jako,czarny,ekstrakt,kwas,std,dwuwodzian,stm_icon_box,ess_grid,rev_slider,linkview,dropcap,permalinklist,testimonial_slider,woocommerce_software_lost_license,text-blocks,wp_sitemap_page,wcmp_vendor,vendor_registration,efsrow,efscolumn,efsbutton,md_rev_slider,md_live_text,md_imagebox_full,flagallery,pbr_quicklinksmenu,rev_slider_vc,opalhotel_reservation_form,pbr_title_heading,pbr_testimonials,embedyt,yith_wcwl_wishlist,wcm_content_restricted,feature_box,woocommerce_en_check,wc_box,wc_row,wc_column,wc_fullwidth,wc_center,wp_social_sharing,infoboxes,testimonials,woocommerce_social_media_share_buttons,wcv_vendor_dashboard,wcv_shop_settings,wcv_orders,inplayer,useyourdrive,wp_blog_designer,us_blog,tt_address,tt_dashboard,envira-gallery,hotspotitem,woocommerce_klarna_checkout,wpml_mailto,contact-field,ux_banner,advanced_iframe,siteorigin_widget,ec_store,simpay_payment_receipt,su-mensaje,borlabs_cookie,contact_info,stm_boats_video,packages_orderdata,yith_ywraq_request_quote,woocommerce_pay,button,supsystic-tables,clean-login,woocommerce_pay,pdf-embedder,insertgenerator,youzer_register,wysija_form,video,customer-area,customer-area-dashboard,customer-area-private-files-home,customer-area-private-files,customer-account-home,customer-area-account,customer-area-logout,bookly-form,bookly-cancellation-confirmation,stm_classic_filter,popup_trigger,mainwp_archived_lists,wcv_vendorslist,dotpay_content,formularz,cyberactive_school_courses_selection_form,cyberactive_school_session_timeout,ditty_news_ticker,donationcampaign,das-list-events,event_embed,sectiontitle,learn_press_profile,ticket-submit,tickets,aanduiding,datum,thim-icon-box,ngg_images,wpdomainchecker,visualizer,mk_page_section,rssreviews,animate_this,simple-sitemap,gravityform,stm_tech_info,fep_submission_form,ucaddon_diagonal_event_box,wcv_feedback_form,newsletters_management,wcv_pro_dashboard,tm_pb_section,wwof_product_listing,res_map,jssupportticket,socialbar,socialbar_service,front-end-pm,stm_sidebar,give_receipt,donation_history,simpay_error,tm_pb_contact_field,jwp,woocommerce_checkout,mk_custom_list,sg_popup,icon,extra_wrap,frontier-post,invierno,appbox,highlight,ci_alert,vc_mad_products,dt_list,geoip-continent,geoip-country,geoip-region,geoip-city,geoip-postalcode,geoip-latitude,geoip-longitude,geoip-location,woocommerce_notices,stm_icon_box,post-timeline,tt_address,private-message,visualizer,ga_optout,manage_serial_key_usage,ut_header,site_name,bfname,order_id,menu-country,menu-prefer,accordion-item,mini-icon,gvlogic,stm_gmap,contact-form,iconbox,woocommerce_my_account,super_form,wpdm-all-packages,photoblocks,et_pb_map_pin,ginger_reset_cookie,su_divider,fbl_login_button,gmw_single_location,one_full,recent_products,custom_list,endif,jours,wpuf-login,lyte,product_table,wpuf-registration,wpuf_dashboard,amazon,member-pricing-table,rozinky,ngg_images,add_to_cart_url,srizonfbgallery,wysija_form,cl-itext,embedyt,icon_counter,text_block,vtftable,header_static,bookingcalendar,flexslider,anova-geoip-meta,zp_vc_slideshow_element,zp_scrollto,my_calendar_upcoming,wpv-post-url,fusion_button,su_tab,freeconsultation_technical_forum_link,vc_images_carousel,otgs_logo_url,wpv-conditional,wpv-view,teaser,dt_fancy_image,fusion_tagline_box,contact_us_add,content_box,tagline_box,us_iconbox,fusion_tab,fisicamente,one_half_sidebar,action-btn,invicta_contacts,pricing_price,button,icon_link,slideshow,vcex_milestone,secondary-demo,vh_pricing_table,category_name,blogurl,q_team,tab_nav_item</shortcode-list>\n\n    <built-with-page-builder><![CDATA[/<!-- wp:/]]></built-with-page-builder>\n\n    <gutenberg-blocks>\n        <gutenberg-block type=\"core/paragraph\" translate=\"1\">\n            <xpath>//p</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/heading\" translate=\"1\">\n            <xpath>//*[self::h1 or self::h2 or self::h3 or self::h4 or self::h5 or self::h6]</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/button\" translate=\"1\">\n            <xpath>//a</xpath>\n            <xpath type=\'link\'>//a/@href</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/image\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n            <xpath>//figure/img/@alt</xpath>\n            <xpath type=\'link\'>//figure/a/@href</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/gallery\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n            <xpath>//figure/img/@alt</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/media-text\" translate=\"1\">\n            <xpath>//figure/img/@alt</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/list\" translate=\"1\">\n            <xpath>//ul/li|//ol/li</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/quote\" translate=\"1\">\n            <xpath>//blockquote/p</xpath>\n            <xpath>//blockquote/cite</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/audio\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/video\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/file\" translate=\"1\">\n            <xpath>//div/a</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/cover\" translate=\"1\">\n            <xpath>//div/p</xpath>\n        </gutenberg-block>\n        <!-- Since WP 5.0.0 core/cover-image is replaced with core/cover -->\n        <gutenberg-block type=\"core/cover-image\" translate=\"1\">\n            <xpath>//div/p</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/subhead\" translate=\"1\">\n            <xpath>//p</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/verse\" translate=\"1\">\n            <xpath>//pre</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/table\" translate=\"1\">\n            <xpath>//td</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/preformatted\" translate=\"1\">\n            <xpath>//pre</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/pullquote\" translate=\"1\">\n            <xpath>//blockquote/p</xpath>\n            <xpath>//blockquote/cite</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/column\" translate=\"0\" />\n        <gutenberg-block type=\"core/columns\" translate=\"0\" />\n        <gutenberg-block type=\"core/code\" translate=\"0\" />\n        <gutenberg-block type=\"core/more\" translate=\"0\" />\n        <gutenberg-block type=\"core/nextpage\" translate=\"0\" />\n        <gutenberg-block type=\"core/separator\" translate=\"0\" />\n        <gutenberg-block type=\"core/spacer\" translate=\"0\" />\n        <gutenberg-block type=\"core/shortcode\" translate=\"0\" />\n        <gutenberg-block type=\"core-embed/twitter\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/youtube\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/facebook\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/instagram\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/vimeo\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/soundcloud\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/spotify\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/flickr\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/animoto\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/collegehumor\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/dailymotion\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/funnyordie\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/hulu\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/imgur\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/issuu\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/kickstarter\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/meetup-com\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/mixcloud\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/photobucket\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/photobucket\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/polldaddy\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/reddit\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/reverbnation\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/screencast\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/scribd\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/slideshare\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/smugmug\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/speaker\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/ted\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/tumblr\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/videopress\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/wordpress\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/wordpress-tv\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n    </gutenberg-blocks>\n</wpml-config>\n\";}}', 'yes');
INSERT INTO spl_options VALUES ('167', 'icl_admin_messages', 'a:2:{s:8:\"messages\";a:0:{}s:16:\"instant_messages\";a:0:{}}', 'yes');
INSERT INTO spl_options VALUES ('168', 'wp_installer_settings', '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', 'yes');
INSERT INTO spl_options VALUES ('169', '_site_transient_timeout_wpml_language_switcher_template_objects', '1576854932', 'no');
INSERT INTO spl_options VALUES ('170', '_site_transient_wpml_language_switcher_template_objects', 'a:6:{s:20:\"wpml-legacy-dropdown\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:152:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-dropdown\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:8:\"Dropdown\";s:4:\"slug\";s:20:\"wpml-legacy-dropdown\";s:8:\"base_uri\";s:116:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown/\";s:3:\"css\";a:1:{i:0;s:125:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown/style.css\";}s:2:\"js\";a:1:{i:0;s:125:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown/script.js\";}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:2:{i:0;s:8:\"sidebars\";i:1;s:17:\"shortcode_actions\";}s:14:\"force_settings\";a:1:{s:29:\"display_link_for_current_lang\";i:1;}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:152:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-dropdown\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:26:\"wpml-legacy-dropdown-click\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:158:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-dropdown-click\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:14:\"Dropdown click\";s:4:\"slug\";s:26:\"wpml-legacy-dropdown-click\";s:8:\"base_uri\";s:122:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown-click/\";s:3:\"css\";a:1:{i:0;s:131:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown-click/style.css\";}s:2:\"js\";a:1:{i:0;s:131:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown-click/script.js\";}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:2:{i:0;s:8:\"sidebars\";i:1;s:17:\"shortcode_actions\";}s:14:\"force_settings\";a:1:{s:29:\"display_link_for_current_lang\";i:1;}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:158:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-dropdown-click\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:27:\"wpml-legacy-horizontal-list\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:159:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-list-horizontal\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:15:\"Horizontal List\";s:4:\"slug\";s:27:\"wpml-legacy-horizontal-list\";s:8:\"base_uri\";s:123:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-horizontal/\";s:3:\"css\";a:1:{i:0;s:132:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-horizontal/style.css\";}s:2:\"js\";a:0:{}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:3:{i:0;s:8:\"sidebars\";i:1;s:6:\"footer\";i:2;s:17:\"shortcode_actions\";}s:14:\"force_settings\";a:0:{}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:159:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-list-horizontal\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:25:\"wpml-legacy-vertical-list\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:157:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-list-vertical\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:13:\"Vertical List\";s:4:\"slug\";s:25:\"wpml-legacy-vertical-list\";s:8:\"base_uri\";s:121:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-vertical/\";s:3:\"css\";a:1:{i:0;s:130:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-vertical/style.css\";}s:2:\"js\";a:0:{}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:3:{i:0;s:8:\"sidebars\";i:1;s:6:\"footer\";i:2;s:17:\"shortcode_actions\";}s:14:\"force_settings\";a:0:{}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:157:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-list-vertical\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:29:\"wpml-legacy-post-translations\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:161:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-post-translations\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:17:\"Post translations\";s:4:\"slug\";s:29:\"wpml-legacy-post-translations\";s:8:\"base_uri\";s:125:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-post-translations/\";s:3:\"css\";a:1:{i:0;s:134:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-post-translations/style.css\";}s:2:\"js\";a:0:{}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:1:{i:0;s:17:\"post_translations\";}s:14:\"force_settings\";a:0:{}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:161:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-post-translations\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:14:\"wpml-menu-item\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:146:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\menu-item\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:9:\"Menu Item\";s:4:\"slug\";s:14:\"wpml-menu-item\";s:8:\"base_uri\";s:110:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/menu-item/\";s:3:\"css\";a:1:{i:0;s:119:\"http://space-plus.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/menu-item/style.css\";}s:2:\"js\";a:0:{}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:1:{i:0;s:5:\"menus\";}s:14:\"force_settings\";a:0:{}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:146:\"C:\\xampp\\htdocs\\project\\2019\\space-plus\\03.WWW\\space-plus-dev\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\menu-item\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}}', 'no');
INSERT INTO spl_options VALUES ('172', 'wpml_dependencies:installed_plugins', 'a:1:{s:26:\"sitepress-multilingual-cms\";s:5:\"3.6.3\";}', 'yes');
INSERT INTO spl_options VALUES ('173', 'wpml_update_statuses', 'a:1:{s:31:\"wpml-upgrade-localization-files\";b:1;}', 'yes');
INSERT INTO spl_options VALUES ('175', 'category_children_all', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('176', 'category_children_', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('179', 'wpml_language_switcher', 'a:9:{s:8:\"migrated\";i:0;s:18:\"converted_menu_ids\";i:0;s:15:\"languages_order\";a:2:{i:0;s:2:\"en\";i:1;s:2:\"vi\";}s:10:\"link_empty\";i:0;s:14:\"additional_css\";s:0:\"\";s:15:\"copy_parameters\";s:0:\"\";s:5:\"menus\";a:0:{}s:8:\"sidebars\";a:0:{}s:7:\"statics\";a:3:{s:6:\"footer\";O:19:\"WPML_LS_Footer_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:19:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:6:\"footer\";s:4:\"show\";i:0;s:8:\"template\";s:27:\"wpml-legacy-horizontal-list\";s:13:\"display_flags\";i:1;s:29:\"display_link_for_current_lang\";i:1;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";s:0:\"\";s:13:\"border_normal\";s:0:\"\";s:19:\"font_current_normal\";s:7:\"#444444\";s:18:\"font_current_hover\";s:7:\"#000000\";s:25:\"background_current_normal\";s:7:\"#ffffff\";s:24:\"background_current_hover\";s:7:\"#eeeeee\";s:17:\"font_other_normal\";s:7:\"#444444\";s:16:\"font_other_hover\";s:7:\"#000000\";s:23:\"background_other_normal\";s:7:\"#ffffff\";s:22:\"background_other_hover\";s:7:\"#eeeeee\";s:15:\"template_string\";N;}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}s:17:\"post_translations\";O:30:\"WPML_LS_Post_Translations_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:22:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:17:\"post_translations\";s:4:\"show\";i:0;s:8:\"template\";s:29:\"wpml-legacy-post-translations\";s:13:\"display_flags\";i:0;s:29:\"display_link_for_current_lang\";i:0;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";N;s:13:\"border_normal\";N;s:19:\"font_current_normal\";N;s:18:\"font_current_hover\";N;s:25:\"background_current_normal\";N;s:24:\"background_current_hover\";N;s:17:\"font_other_normal\";N;s:16:\"font_other_hover\";N;s:23:\"background_other_normal\";N;s:22:\"background_other_hover\";N;s:15:\"template_string\";N;s:22:\"display_before_content\";i:1;s:21:\"display_after_content\";i:0;s:17:\"availability_text\";s:34:\"This post is also available in: %s\";}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}s:17:\"shortcode_actions\";O:30:\"WPML_LS_Shortcode_Actions_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:19:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:17:\"shortcode_actions\";s:4:\"show\";i:1;s:8:\"template\";s:27:\"wpml-legacy-horizontal-list\";s:13:\"display_flags\";i:0;s:29:\"display_link_for_current_lang\";i:1;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";s:0:\"\";s:13:\"border_normal\";s:0:\"\";s:19:\"font_current_normal\";s:0:\"\";s:18:\"font_current_hover\";s:0:\"\";s:25:\"background_current_normal\";s:0:\"\";s:24:\"background_current_hover\";s:0:\"\";s:17:\"font_other_normal\";s:0:\"\";s:16:\"font_other_hover\";s:0:\"\";s:23:\"background_other_normal\";s:0:\"\";s:22:\"background_other_hover\";s:0:\"\";s:15:\"template_string\";N;}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}}}', 'yes');
INSERT INTO spl_options VALUES ('180', 'category_children_vi', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('181', 'category_children', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('182', '_icl_cache', 'a:2:{s:25:\"language_name_cache_class\";a:198:{s:19:\"language_details_sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:19:\"language_details_ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:19:\"language_details_hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:19:\"language_details_eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:19:\"language_details_bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:19:\"language_details_bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:19:\"language_details_ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:24:\"language_details_zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:24:\"language_details_zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:19:\"language_details_hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:19:\"language_details_cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:19:\"language_details_da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:19:\"language_details_nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:19:\"language_details_en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:19:\"language_details_eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:19:\"language_details_et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:19:\"language_details_fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:19:\"language_details_fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:19:\"language_details_de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:19:\"language_details_el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:19:\"language_details_he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:19:\"language_details_hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:19:\"language_details_hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:19:\"language_details_is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:19:\"language_details_id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:19:\"language_details_ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:19:\"language_details_it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:19:\"language_details_ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:19:\"language_details_ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:19:\"language_details_ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:19:\"language_details_la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:19:\"language_details_lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:19:\"language_details_lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:19:\"language_details_mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:19:\"language_details_ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:19:\"language_details_mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:19:\"language_details_mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:19:\"language_details_ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:19:\"language_details_nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:19:\"language_details_fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:19:\"language_details_pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:22:\"language_details_pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:22:\"language_details_pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:19:\"language_details_pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:19:\"language_details_qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:19:\"language_details_ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:19:\"language_details_ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:19:\"language_details_sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:19:\"language_details_sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:19:\"language_details_sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:19:\"language_details_so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:19:\"language_details_es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:19:\"language_details_sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:19:\"language_details_ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:19:\"language_details_th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:19:\"language_details_tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:19:\"language_details_uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:19:\"language_details_ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:19:\"language_details_uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:19:\"language_details_vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:19:\"language_details_cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:19:\"language_details_yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:19:\"language_details_zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}s:27:\"all_language___english_name\";a:63:{s:2:\"sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:2:\"ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:2:\"hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:2:\"eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:2:\"bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:2:\"bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:2:\"ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:7:\"zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:7:\"zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:2:\"hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:2:\"cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:2:\"da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:2:\"nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:2:\"et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:2:\"fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:2:\"fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:2:\"de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:2:\"el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:2:\"he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:2:\"hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:2:\"hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:2:\"is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:2:\"id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:2:\"ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:2:\"it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:2:\"ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:2:\"ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:2:\"ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:2:\"la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:2:\"lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:2:\"lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:2:\"mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:2:\"ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:2:\"mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:2:\"mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:2:\"ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:2:\"nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:2:\"fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:2:\"pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:5:\"pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:5:\"pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:2:\"pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:2:\"qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:2:\"ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:2:\"ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:2:\"sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:2:\"sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:2:\"sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:2:\"so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:2:\"es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:2:\"sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:2:\"ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:2:\"th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:2:\"tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:2:\"uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:2:\"ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:2:\"uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:2:\"cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:2:\"yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:2:\"zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}}s:21:\"language_details_sqen\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:21:\"language_details_aren\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:21:\"language_details_hyen\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:21:\"language_details_euen\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:21:\"language_details_bsen\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:21:\"language_details_bgen\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:21:\"language_details_caen\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:26:\"language_details_zh-hansen\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:26:\"language_details_zh-hanten\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:21:\"language_details_hren\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:21:\"language_details_csen\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:21:\"language_details_daen\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:21:\"language_details_nlen\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:21:\"language_details_enen\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:21:\"language_details_eoen\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:21:\"language_details_eten\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:21:\"language_details_fien\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:21:\"language_details_fren\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:21:\"language_details_deen\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:21:\"language_details_elen\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:21:\"language_details_heen\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:21:\"language_details_hien\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:21:\"language_details_huen\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:21:\"language_details_isen\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:21:\"language_details_iden\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:21:\"language_details_gaen\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:21:\"language_details_iten\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:21:\"language_details_jaen\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:21:\"language_details_koen\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:21:\"language_details_kuen\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:21:\"language_details_laen\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:21:\"language_details_lven\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:21:\"language_details_lten\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:21:\"language_details_mken\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:21:\"language_details_msen\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:21:\"language_details_mten\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:21:\"language_details_mnen\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:21:\"language_details_neen\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:21:\"language_details_nben\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:21:\"language_details_faen\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:21:\"language_details_plen\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:24:\"language_details_pt-bren\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:24:\"language_details_pt-pten\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:21:\"language_details_paen\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:21:\"language_details_quen\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:21:\"language_details_roen\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:21:\"language_details_ruen\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:21:\"language_details_sren\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:21:\"language_details_sken\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:21:\"language_details_slen\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:21:\"language_details_soen\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:21:\"language_details_esen\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:21:\"language_details_sven\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:21:\"language_details_taen\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:21:\"language_details_then\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:21:\"language_details_tren\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:21:\"language_details_uken\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:21:\"language_details_uren\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:21:\"language_details_uzen\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:21:\"language_details_vien\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:21:\"language_details_cyen\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:21:\"language_details_yien\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:21:\"language_details_zuen\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}s:29:\"all_language_en__english_name\";a:63:{s:2:\"sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:2:\"ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:2:\"hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:2:\"eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:2:\"bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:2:\"bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:2:\"ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:7:\"zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:7:\"zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:2:\"hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:2:\"cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:2:\"da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:2:\"nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:2:\"et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:2:\"fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:2:\"fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:2:\"de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:2:\"el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:2:\"he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:2:\"hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:2:\"hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:2:\"is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:2:\"id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:2:\"ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:2:\"it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:2:\"ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:2:\"ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:2:\"ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:2:\"la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:2:\"lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:2:\"lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:2:\"mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:2:\"ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:2:\"mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:2:\"mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:2:\"ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:2:\"nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:2:\"fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:2:\"pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:5:\"pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:5:\"pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:2:\"pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:2:\"qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:2:\"ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:2:\"ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:2:\"sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:2:\"sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:2:\"sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:2:\"so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:2:\"es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:2:\"sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:2:\"ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:2:\"th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:2:\"tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:2:\"uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:2:\"ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:2:\"uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:2:\"cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:2:\"yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:2:\"zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}}s:28:\"in_language_en__english_name\";a:2:{s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}}s:29:\"all_language_en__display_name\";a:63:{s:2:\"sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:2:\"ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:2:\"hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:2:\"eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:2:\"bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:2:\"bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:2:\"ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:7:\"zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:7:\"zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:2:\"hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:2:\"cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:2:\"da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:2:\"nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:2:\"et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:2:\"fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:2:\"fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:2:\"de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:2:\"el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:2:\"he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:2:\"hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:2:\"hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:2:\"is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:2:\"id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:2:\"ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:2:\"it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:2:\"ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:2:\"ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:2:\"ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:2:\"la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:2:\"lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:2:\"lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:2:\"mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:2:\"ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:2:\"mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:2:\"mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:2:\"ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:2:\"nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:2:\"fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:2:\"pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:5:\"pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:5:\"pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:2:\"pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:2:\"qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:2:\"ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:2:\"ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:2:\"sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:2:\"sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:2:\"sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:2:\"so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:2:\"es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:2:\"sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:2:\"ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:2:\"th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:2:\"tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:2:\"uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:2:\"ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:2:\"uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:2:\"cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:2:\"yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:2:\"zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}}s:21:\"language_details_sqvi\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:21:\"language_details_arvi\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:21:\"language_details_hyvi\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:21:\"language_details_euvi\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:21:\"language_details_bsvi\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:21:\"language_details_bgvi\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:21:\"language_details_cavi\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:26:\"language_details_zh-hansvi\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:26:\"language_details_zh-hantvi\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:21:\"language_details_hrvi\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:21:\"language_details_csvi\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:21:\"language_details_davi\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:21:\"language_details_nlvi\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:21:\"language_details_envi\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:21:\"language_details_eovi\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:21:\"language_details_etvi\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:21:\"language_details_fivi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:21:\"language_details_frvi\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:21:\"language_details_devi\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:21:\"language_details_elvi\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:21:\"language_details_hevi\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:21:\"language_details_hivi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:21:\"language_details_huvi\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:21:\"language_details_isvi\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:21:\"language_details_idvi\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:21:\"language_details_gavi\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:21:\"language_details_itvi\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:21:\"language_details_javi\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:21:\"language_details_kovi\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:21:\"language_details_kuvi\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:21:\"language_details_lavi\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:21:\"language_details_lvvi\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:21:\"language_details_ltvi\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:21:\"language_details_mkvi\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:21:\"language_details_msvi\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:21:\"language_details_mtvi\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:21:\"language_details_mnvi\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:21:\"language_details_nevi\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:21:\"language_details_nbvi\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:21:\"language_details_favi\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:21:\"language_details_plvi\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:24:\"language_details_pt-brvi\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:18:\"Portuguese, Brazil\";}s:24:\"language_details_pt-ptvi\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:20:\"Portuguese, Portugal\";}s:21:\"language_details_pavi\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:21:\"language_details_quvi\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:21:\"language_details_rovi\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:21:\"language_details_ruvi\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:21:\"language_details_srvi\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:21:\"language_details_skvi\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:21:\"language_details_slvi\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:21:\"language_details_sovi\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:21:\"language_details_esvi\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:21:\"language_details_svvi\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:21:\"language_details_tavi\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:21:\"language_details_thvi\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:21:\"language_details_trvi\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:21:\"language_details_ukvi\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:21:\"language_details_urvi\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:21:\"language_details_uzvi\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:21:\"language_details_vivi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:14:\"Tiếng Việt\";}s:21:\"language_details_cyvi\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:21:\"language_details_yivi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:21:\"language_details_zuvi\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}s:29:\"all_language_vi__english_name\";a:63:{s:2:\"sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:2:\"ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:2:\"hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:2:\"eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:2:\"bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:2:\"bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:2:\"ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:7:\"zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:7:\"zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:2:\"hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:2:\"cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:2:\"da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:2:\"nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:2:\"et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:2:\"fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:2:\"fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:2:\"de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:2:\"el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:2:\"he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:2:\"hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:2:\"hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:2:\"is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:2:\"id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:2:\"ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:2:\"it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:2:\"ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:2:\"ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:2:\"ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:2:\"la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:2:\"lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:2:\"lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:2:\"mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:2:\"ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:2:\"mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:2:\"mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:2:\"ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:2:\"nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:2:\"fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:2:\"pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:5:\"pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:18:\"Portuguese, Brazil\";}s:5:\"pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:20:\"Portuguese, Portugal\";}s:2:\"pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:2:\"qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:2:\"ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:2:\"ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:2:\"sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:2:\"sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:2:\"sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:2:\"so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:2:\"es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:2:\"sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:2:\"ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:2:\"th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:2:\"tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:2:\"uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:2:\"ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:2:\"uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:14:\"Tiếng Việt\";}s:2:\"cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:2:\"yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:2:\"zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}}s:28:\"in_language_vi__english_name\";a:2:{s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:14:\"Tiếng Việt\";}}s:4:\"enen\";s:7:\"English\";s:4:\"envi\";s:7:\"English\";s:4:\"vivi\";s:14:\"Tiếng Việt\";}s:17:\"flags_cache_class\";a:63:{s:2:\"en\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"en.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"vi\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"vi.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sq\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sq.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ar\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ar.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"hy\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"hy.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"eu\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"eu.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"bs\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"bs.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"bg\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"bg.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ca\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ca.png\";s:13:\"from_template\";s:1:\"0\";}s:7:\"zh-hans\";O:8:\"stdClass\":2:{s:4:\"flag\";s:11:\"zh-hans.png\";s:13:\"from_template\";s:1:\"0\";}s:7:\"zh-hant\";O:8:\"stdClass\":2:{s:4:\"flag\";s:11:\"zh-hant.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"hr\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"hr.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"cs\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"cs.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"da\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"da.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"nl\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"nl.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"eo\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"eo.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"et\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"et.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"fi\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"fi.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"fr\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"fr.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"de\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"de.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"el\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"el.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"he\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"he.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"hi\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"hi.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"hu\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"hu.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"is\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"is.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"id\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"id.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ga\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ga.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"it\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"it.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ja\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ja.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ko\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ko.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ku\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ku.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"la\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"la.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"lv\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"lv.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"lt\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"lt.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"mk\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"mk.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ms\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ms.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"mt\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"mt.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"mn\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"mn.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ne\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ne.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"nb\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"nb.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"fa\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"fa.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"pl\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"pl.png\";s:13:\"from_template\";s:1:\"0\";}s:5:\"pt-br\";O:8:\"stdClass\":2:{s:4:\"flag\";s:9:\"pt-br.png\";s:13:\"from_template\";s:1:\"0\";}s:5:\"pt-pt\";O:8:\"stdClass\":2:{s:4:\"flag\";s:9:\"pt-pt.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"pa\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"pa.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"qu\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"qu.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ro\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ro.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ru\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ru.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sr\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sr.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sk\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sk.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sl\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sl.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"so\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"so.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"es\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"es.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sv\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sv.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ta\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ta.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"th\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"th.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"tr\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"tr.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"uk\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"uk.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ur\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ur.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"uz\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"uz.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"cy\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"cy.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"yi\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"yi.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"zu\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"zu.png\";s:13:\"from_template\";s:1:\"0\";}}}', 'yes');
INSERT INTO spl_options VALUES ('183', 'wpml_notices', 'a:0:{}', 'no');
INSERT INTO spl_options VALUES ('184', 'widget_icl_lang_sel_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO spl_options VALUES ('189', 'nav_menu_children_en', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('190', 'nav_menu_children_vi', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('191', 'nav_menu_children_all', 'a:0:{}', 'yes');
INSERT INTO spl_options VALUES ('192', 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes');
INSERT INTO spl_options VALUES ('195', '_transient_timeout_acf_get_remote_plugin_info', '1574342484', 'no');
INSERT INTO spl_options VALUES ('196', '_transient_acf_get_remote_plugin_info', 'a:16:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"5.8.7\";s:8:\"homepage\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"author\";s:64:\"<a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>\";s:12:\"contributors\";a:1:{s:12:\"elliotcondon\";a:3:{s:7:\"profile\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"avatar\";s:81:\"https://secure.gravatar.com/avatar/c296f449f92233e8d1102ff01c9bc71e?s=96&d=mm&r=g\";s:12:\"display_name\";s:22:\"Advanced Custom Fields\";}}s:8:\"requires\";s:5:\"4.7.0\";s:12:\"requires_php\";s:3:\"5.4\";s:6:\"tested\";s:5:\"5.3.0\";s:5:\"added\";s:10:\"2014-07-11\";s:12:\"last_updated\";s:10:\"2019-11-12\";s:9:\"changelog\";s:589:\"<h4>5.8.7</h4><p><em>Release Date - 12 November 2019</em></p>\n\n<ul>\n<li>New - Updated admin CSS for new WordPress 5.3 styling.</li>\n<li>Fix - Fixed various issues affecting dynamic metaboxes in the block editor (requires WordPress 5.3)</li>\n<li>Fix - Fixed performance issue when checking network sites for upgrades.</li>\n<li>Fix - Fixed Select2 clones appearing after duplicating a Relationship field.</li>\n<li>Tweak - Repeater field \"Add row\" icons will now hide when maximum rows are reached.</li>\n<li>Tweak - Removed ACF Blocks keyword limit for later versions of Gutenberg.</li>\n</ul>\";s:14:\"upgrade_notice\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"versions\";a:104:{i:0;s:5:\"5.8.6\";i:1;s:5:\"5.8.5\";i:2;s:5:\"5.8.4\";i:3;s:5:\"5.8.3\";i:4;s:5:\"5.8.2\";i:5;s:5:\"5.8.1\";i:6;s:13:\"5.8.0-beta4.1\";i:7;s:11:\"5.8.0-beta4\";i:8;s:11:\"5.8.0-beta3\";i:9;s:11:\"5.8.0-beta2\";i:10;s:11:\"5.8.0-beta1\";i:11;s:9:\"5.8.0-RC2\";i:12;s:9:\"5.8.0-RC1\";i:13;s:5:\"5.8.0\";i:14;s:5:\"5.7.9\";i:15;s:5:\"5.7.8\";i:16;s:5:\"5.7.7\";i:17;s:5:\"5.7.6\";i:18;s:5:\"5.7.5\";i:19;s:5:\"5.7.4\";i:20;s:5:\"5.7.3\";i:21;s:5:\"5.7.2\";i:22;s:6:\"5.7.13\";i:23;s:6:\"5.7.12\";i:24;s:6:\"5.7.10\";i:25;s:5:\"5.7.1\";i:26;s:5:\"5.7.0\";i:27;s:5:\"5.6.9\";i:28;s:5:\"5.6.8\";i:29;s:5:\"5.6.7\";i:30;s:5:\"5.6.6\";i:31;s:5:\"5.6.5\";i:32;s:5:\"5.6.4\";i:33;s:5:\"5.6.3\";i:34;s:5:\"5.6.2\";i:35;s:6:\"5.6.10\";i:36;s:5:\"5.6.1\";i:37;s:11:\"5.6.0-beta2\";i:38;s:11:\"5.6.0-beta1\";i:39;s:9:\"5.6.0-RC2\";i:40;s:9:\"5.6.0-RC1\";i:41;s:5:\"5.6.0\";i:42;s:5:\"5.5.9\";i:43;s:5:\"5.5.7\";i:44;s:5:\"5.5.5\";i:45;s:5:\"5.5.3\";i:46;s:5:\"5.5.2\";i:47;s:6:\"5.5.14\";i:48;s:6:\"5.5.13\";i:49;s:6:\"5.5.12\";i:50;s:6:\"5.5.11\";i:51;s:6:\"5.5.10\";i:52;s:5:\"5.5.1\";i:53;s:5:\"5.5.0\";i:54;s:5:\"5.4.8\";i:55;s:5:\"5.4.7\";i:56;s:5:\"5.4.6\";i:57;s:5:\"5.4.5\";i:58;s:5:\"5.4.4\";i:59;s:5:\"5.4.3\";i:60;s:5:\"5.4.2\";i:61;s:5:\"5.4.1\";i:62;s:5:\"5.4.0\";i:63;s:5:\"5.3.9\";i:64;s:5:\"5.3.8\";i:65;s:5:\"5.3.7\";i:66;s:5:\"5.3.6\";i:67;s:5:\"5.3.5\";i:68;s:5:\"5.3.4\";i:69;s:5:\"5.3.3\";i:70;s:5:\"5.3.2\";i:71;s:6:\"5.3.10\";i:72;s:5:\"5.3.1\";i:73;s:5:\"5.3.0\";i:74;s:5:\"5.2.9\";i:75;s:5:\"5.2.8\";i:76;s:5:\"5.2.7\";i:77;s:5:\"5.2.6\";i:78;s:5:\"5.2.5\";i:79;s:5:\"5.2.4\";i:80;s:5:\"5.2.3\";i:81;s:5:\"5.2.2\";i:82;s:5:\"5.2.1\";i:83;s:5:\"5.2.0\";i:84;s:5:\"5.1.9\";i:85;s:5:\"5.1.8\";i:86;s:5:\"5.1.7\";i:87;s:5:\"5.1.6\";i:88;s:5:\"5.1.5\";i:89;s:5:\"5.1.4\";i:90;s:5:\"5.1.3\";i:91;s:5:\"5.1.2\";i:92;s:5:\"5.1.1\";i:93;s:5:\"5.1.0\";i:94;s:5:\"5.0.9\";i:95;s:5:\"5.0.8\";i:96;s:5:\"5.0.7\";i:97;s:5:\"5.0.6\";i:98;s:5:\"5.0.5\";i:99;s:5:\"5.0.4\";i:100;s:5:\"5.0.3\";i:101;s:5:\"5.0.2\";i:102;s:5:\"5.0.1\";i:103;s:5:\"5.0.0\";}}', 'no');
INSERT INTO spl_options VALUES ('197', '_site_transient_timeout_theme_roots', '1574257890', 'no');
INSERT INTO spl_options VALUES ('198', '_site_transient_theme_roots', 'a:4:{s:9:\"spaceplus\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');
INSERT INTO spl_options VALUES ('199', '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574256153;s:7:\"checked\";a:4:{s:9:\"spaceplus\";s:3:\"2.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO spl_options VALUES ('200', '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1574256163;s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.5.11\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:40:\"sitepress-multilingual-cms/sitepress.php\";s:5:\"3.6.3\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:7:\"package\";s:0:\"\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO spl_options VALUES ('202', '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1574301130', 'no');
INSERT INTO spl_options VALUES ('203', '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no');
INSERT INTO spl_options VALUES ('204', '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1574301152', 'no');
INSERT INTO spl_options VALUES ('205', '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 139062451109888 bytes received</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 out of 0 bytes received</p></div>', 'no');
INSERT INTO spl_options VALUES ('215', 'danh-muc-dich-vu_children_vi', 'a:2:{i:4;a:5:{i:0;s:1:\"5\";i:1;s:1:\"6\";i:2;s:1:\"7\";i:3;s:1:\"8\";i:4;s:1:\"9\";}i:5;a:2:{i:0;s:2:\"10\";i:1;s:2:\"11\";}}', 'yes');
INSERT INTO spl_options VALUES ('216', '_site_transient_timeout_available_translations', '1574273919', 'no');
INSERT INTO spl_options VALUES ('217', '_site_transient_available_translations', 'a:114:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-23 12:40:30\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-22 22:32:51\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.12/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-09 14:00:48\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-12 07:38:11\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-25 20:24:41\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-20 06:58:38\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-28 19:06:35\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-22 10:36:32\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-02 13:26:35\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 15:11:46\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/core/4.9.12/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 15:11:37\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-13 12:21:45\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 07:15:15\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-20 22:34:15\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-20 22:34:08\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 14:34:43\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-20 00:25:37\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-24 14:32:41\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-22 17:01:37\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-21 23:58:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-17 18:18:53\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-12 17:57:39\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2019-03-02 06:27:10\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 23:11:17\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-26 11:04:10\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-22 14:09:45\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 15:01:55\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-20 19:34:46\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 22:09:13\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-05 14:00:18\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-28 08:30:56\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2018-12-16 15:53:35\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 16:39:23\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-13 18:47:35\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-04 08:16:57\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-05 01:54:38\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 19:21:11\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-30 19:40:03\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-20 07:54:58\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-14 09:00:04\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 05:36:09\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/core/4.9.12/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-06-19 21:14:43\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-23 19:49:40\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 15:12:37\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-12 22:36:53\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-13 16:57:09\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 14:38:33\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-22 15:02:38\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-20 12:35:07\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2018-12-19 11:12:50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-19 13:42:49\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-27 04:30:57\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-30 18:44:25\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-03 17:08:48\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-21 08:17:35\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 06:46:15\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-25 02:35:54\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-12 03:12:52\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-11-14 00:33:02\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- ----------------------------
-- Table structure for `spl_postmeta`
-- ----------------------------
DROP TABLE IF EXISTS `spl_postmeta`;
CREATE TABLE `spl_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_postmeta
-- ----------------------------
INSERT INTO spl_postmeta VALUES ('1', '2', '_wp_page_template', 'default');
INSERT INTO spl_postmeta VALUES ('2', '3', '_wp_page_template', 'default');
INSERT INTO spl_postmeta VALUES ('11', '2', '_wp_trash_meta_status', 'publish');
INSERT INTO spl_postmeta VALUES ('12', '2', '_wp_trash_meta_time', '1574070250');
INSERT INTO spl_postmeta VALUES ('13', '2', '_wp_desired_post_slug', 'sample-page');
INSERT INTO spl_postmeta VALUES ('14', '3', '_wp_trash_meta_status', 'draft');
INSERT INTO spl_postmeta VALUES ('15', '3', '_wp_trash_meta_time', '1574070252');
INSERT INTO spl_postmeta VALUES ('16', '3', '_wp_desired_post_slug', 'privacy-policy');
INSERT INTO spl_postmeta VALUES ('17', '12', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('18', '12', '_edit_lock', '1574070126:1');
INSERT INTO spl_postmeta VALUES ('19', '12', '_wp_page_template', 'page-homepage.php');
INSERT INTO spl_postmeta VALUES ('20', '14', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('21', '14', '_edit_lock', '1574071054:1');
INSERT INTO spl_postmeta VALUES ('22', '14', '_wp_page_template', 'page-homepage.php');
INSERT INTO spl_postmeta VALUES ('23', '16', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('24', '16', '_edit_lock', '1574070211:1');
INSERT INTO spl_postmeta VALUES ('25', '16', '_wp_page_template', 'page-service.php');
INSERT INTO spl_postmeta VALUES ('26', '18', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('27', '18', '_edit_lock', '1574070223:1');
INSERT INTO spl_postmeta VALUES ('28', '18', '_wp_page_template', 'page-news.php');
INSERT INTO spl_postmeta VALUES ('29', '20', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('30', '20', '_edit_lock', '1574070236:1');
INSERT INTO spl_postmeta VALUES ('31', '20', '_wp_page_template', 'page-about-us.php');
INSERT INTO spl_postmeta VALUES ('32', '22', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('33', '22', '_edit_lock', '1574071055:1');
INSERT INTO spl_postmeta VALUES ('34', '22', '_wp_page_template', 'page-contact.php');
INSERT INTO spl_postmeta VALUES ('35', '24', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('36', '24', '_edit_lock', '1574071115:1');
INSERT INTO spl_postmeta VALUES ('37', '24', '_wp_page_template', 'page-service.php');
INSERT INTO spl_postmeta VALUES ('38', '26', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('39', '26', '_edit_lock', '1574071134:1');
INSERT INTO spl_postmeta VALUES ('40', '26', '_wp_page_template', 'page-service.php');
INSERT INTO spl_postmeta VALUES ('41', '28', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('42', '28', '_edit_lock', '1574071154:1');
INSERT INTO spl_postmeta VALUES ('43', '28', '_wp_page_template', 'page-service.php');
INSERT INTO spl_postmeta VALUES ('44', '30', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('45', '30', '_edit_lock', '1574071175:1');
INSERT INTO spl_postmeta VALUES ('46', '30', '_wp_page_template', 'page-service.php');
INSERT INTO spl_postmeta VALUES ('47', '32', '_edit_last', '1');
INSERT INTO spl_postmeta VALUES ('48', '32', '_edit_lock', '1574071689:1');
INSERT INTO spl_postmeta VALUES ('49', '32', '_wp_page_template', 'page-service.php');
INSERT INTO spl_postmeta VALUES ('50', '34', '_menu_item_type', 'post_type');
INSERT INTO spl_postmeta VALUES ('51', '34', '_menu_item_menu_item_parent', '0');
INSERT INTO spl_postmeta VALUES ('52', '34', '_menu_item_object_id', '22');
INSERT INTO spl_postmeta VALUES ('53', '34', '_menu_item_object', 'page');
INSERT INTO spl_postmeta VALUES ('54', '34', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('55', '34', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('56', '34', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('57', '34', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('59', '35', '_menu_item_type', 'post_type');
INSERT INTO spl_postmeta VALUES ('60', '35', '_menu_item_menu_item_parent', '0');
INSERT INTO spl_postmeta VALUES ('61', '35', '_menu_item_object_id', '20');
INSERT INTO spl_postmeta VALUES ('62', '35', '_menu_item_object', 'page');
INSERT INTO spl_postmeta VALUES ('63', '35', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('64', '35', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('65', '35', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('66', '35', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('68', '36', '_menu_item_type', 'post_type');
INSERT INTO spl_postmeta VALUES ('69', '36', '_menu_item_menu_item_parent', '0');
INSERT INTO spl_postmeta VALUES ('70', '36', '_menu_item_object_id', '18');
INSERT INTO spl_postmeta VALUES ('71', '36', '_menu_item_object', 'page');
INSERT INTO spl_postmeta VALUES ('72', '36', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('73', '36', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('74', '36', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('75', '36', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('139', '45', '_menu_item_type', 'taxonomy');
INSERT INTO spl_postmeta VALUES ('140', '45', '_menu_item_menu_item_parent', '52');
INSERT INTO spl_postmeta VALUES ('141', '45', '_menu_item_object_id', '9');
INSERT INTO spl_postmeta VALUES ('142', '45', '_menu_item_object', 'danh-muc-dich-vu');
INSERT INTO spl_postmeta VALUES ('143', '45', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('144', '45', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('145', '45', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('146', '45', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('148', '46', '_menu_item_type', 'taxonomy');
INSERT INTO spl_postmeta VALUES ('149', '46', '_menu_item_menu_item_parent', '52');
INSERT INTO spl_postmeta VALUES ('150', '46', '_menu_item_object_id', '5');
INSERT INTO spl_postmeta VALUES ('151', '46', '_menu_item_object', 'danh-muc-dich-vu');
INSERT INTO spl_postmeta VALUES ('152', '46', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('153', '46', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('154', '46', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('155', '46', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('157', '47', '_menu_item_type', 'taxonomy');
INSERT INTO spl_postmeta VALUES ('158', '47', '_menu_item_menu_item_parent', '46');
INSERT INTO spl_postmeta VALUES ('159', '47', '_menu_item_object_id', '11');
INSERT INTO spl_postmeta VALUES ('160', '47', '_menu_item_object', 'danh-muc-dich-vu');
INSERT INTO spl_postmeta VALUES ('161', '47', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('162', '47', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('163', '47', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('164', '47', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('166', '48', '_menu_item_type', 'taxonomy');
INSERT INTO spl_postmeta VALUES ('167', '48', '_menu_item_menu_item_parent', '46');
INSERT INTO spl_postmeta VALUES ('168', '48', '_menu_item_object_id', '10');
INSERT INTO spl_postmeta VALUES ('169', '48', '_menu_item_object', 'danh-muc-dich-vu');
INSERT INTO spl_postmeta VALUES ('170', '48', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('171', '48', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('172', '48', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('173', '48', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('175', '49', '_menu_item_type', 'taxonomy');
INSERT INTO spl_postmeta VALUES ('176', '49', '_menu_item_menu_item_parent', '52');
INSERT INTO spl_postmeta VALUES ('177', '49', '_menu_item_object_id', '6');
INSERT INTO spl_postmeta VALUES ('178', '49', '_menu_item_object', 'danh-muc-dich-vu');
INSERT INTO spl_postmeta VALUES ('179', '49', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('180', '49', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('181', '49', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('182', '49', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('184', '50', '_menu_item_type', 'taxonomy');
INSERT INTO spl_postmeta VALUES ('185', '50', '_menu_item_menu_item_parent', '52');
INSERT INTO spl_postmeta VALUES ('186', '50', '_menu_item_object_id', '7');
INSERT INTO spl_postmeta VALUES ('187', '50', '_menu_item_object', 'danh-muc-dich-vu');
INSERT INTO spl_postmeta VALUES ('188', '50', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('189', '50', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('190', '50', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('191', '50', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('193', '51', '_menu_item_type', 'taxonomy');
INSERT INTO spl_postmeta VALUES ('194', '51', '_menu_item_menu_item_parent', '52');
INSERT INTO spl_postmeta VALUES ('195', '51', '_menu_item_object_id', '8');
INSERT INTO spl_postmeta VALUES ('196', '51', '_menu_item_object', 'danh-muc-dich-vu');
INSERT INTO spl_postmeta VALUES ('197', '51', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('198', '51', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('199', '51', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('200', '51', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('202', '52', '_menu_item_type', 'post_type');
INSERT INTO spl_postmeta VALUES ('203', '52', '_menu_item_menu_item_parent', '0');
INSERT INTO spl_postmeta VALUES ('204', '52', '_menu_item_object_id', '16');
INSERT INTO spl_postmeta VALUES ('205', '52', '_menu_item_object', 'page');
INSERT INTO spl_postmeta VALUES ('206', '52', '_menu_item_target', '');
INSERT INTO spl_postmeta VALUES ('207', '52', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO spl_postmeta VALUES ('208', '52', '_menu_item_xfn', '');
INSERT INTO spl_postmeta VALUES ('209', '52', '_menu_item_url', '');
INSERT INTO spl_postmeta VALUES ('211', '32', '_wp_trash_meta_status', 'publish');
INSERT INTO spl_postmeta VALUES ('212', '32', '_wp_trash_meta_time', '1574262970');
INSERT INTO spl_postmeta VALUES ('213', '32', '_wp_desired_post_slug', 'bat-dong-san');
INSERT INTO spl_postmeta VALUES ('214', '24', '_wp_trash_meta_status', 'publish');
INSERT INTO spl_postmeta VALUES ('215', '24', '_wp_trash_meta_time', '1574262970');
INSERT INTO spl_postmeta VALUES ('216', '24', '_wp_desired_post_slug', 'thiet-ke-kien-truc');
INSERT INTO spl_postmeta VALUES ('217', '26', '_wp_trash_meta_status', 'publish');
INSERT INTO spl_postmeta VALUES ('218', '26', '_wp_trash_meta_time', '1574262970');
INSERT INTO spl_postmeta VALUES ('219', '26', '_wp_desired_post_slug', 'thiet-ke-noi-that');
INSERT INTO spl_postmeta VALUES ('220', '28', '_wp_trash_meta_status', 'publish');
INSERT INTO spl_postmeta VALUES ('221', '28', '_wp_trash_meta_time', '1574262970');
INSERT INTO spl_postmeta VALUES ('222', '28', '_wp_desired_post_slug', 'thiet-ke-quy-hoach-canh-quan');
INSERT INTO spl_postmeta VALUES ('223', '30', '_wp_trash_meta_status', 'publish');
INSERT INTO spl_postmeta VALUES ('224', '30', '_wp_trash_meta_time', '1574262970');
INSERT INTO spl_postmeta VALUES ('225', '30', '_wp_desired_post_slug', 'thiet-ke-san-pham-kien-truc');

-- ----------------------------
-- Table structure for `spl_posts`
-- ----------------------------
DROP TABLE IF EXISTS `spl_posts`;
CREATE TABLE `spl_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_posts
-- ----------------------------
INSERT INTO spl_posts VALUES ('1', '1', '2019-11-18 09:32:20', '2019-11-18 09:32:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-11-18 09:32:20', '2019-11-18 09:32:20', '', '0', 'http://space-plus.dev.vn/?p=1', '0', 'post', '', '1');
INSERT INTO spl_posts VALUES ('2', '1', '2019-11-18 09:32:20', '2019-11-18 09:32:20', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://space-plus.dev.vn/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-11-18 09:44:10', '2019-11-18 09:44:10', '', '0', 'http://space-plus.dev.vn/?page_id=2', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('3', '1', '2019-11-18 09:32:20', '2019-11-18 09:32:20', '<h2>Who we are</h2><p>Our website address is: http://space-plus.dev.vn.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-11-18 09:44:12', '2019-11-18 09:44:12', '', '0', 'http://space-plus.dev.vn/?page_id=3', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('4', '1', '2019-11-18 09:32:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-11-18 09:32:35', '0000-00-00 00:00:00', '', '0', 'http://space-plus.dev.vn/?p=4', '0', 'post', '', '0');
INSERT INTO spl_posts VALUES ('6', '1', '2019-11-18 09:37:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-11-18 09:37:18', '0000-00-00 00:00:00', '', '0', 'http://space-plus.dev.vn/?page_id=6', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('10', '1', '2019-11-18 09:44:10', '2019-11-18 09:44:10', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://space-plus.dev.vn/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-11-18 09:44:10', '2019-11-18 09:44:10', '', '2', 'http://space-plus.dev.vn/2019/11/18/2-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('11', '1', '2019-11-18 09:44:12', '2019-11-18 09:44:12', '<h2>Who we are</h2><p>Our website address is: http://space-plus.dev.vn.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-11-18 09:44:12', '2019-11-18 09:44:12', '', '3', 'http://space-plus.dev.vn/2019/11/18/3-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('12', '1', '2019-11-18 09:44:26', '2019-11-18 09:44:26', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-11-18 09:44:26', '2019-11-18 09:44:26', '', '0', 'http://space-plus.dev.vn/?page_id=12', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('13', '1', '2019-11-18 09:44:26', '2019-11-18 09:44:26', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-11-18 09:44:26', '2019-11-18 09:44:26', '', '12', 'http://space-plus.dev.vn/2019/11/18/12-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('14', '1', '2019-11-18 09:44:46', '2019-11-18 09:44:46', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2019-11-18 09:44:46', '2019-11-18 09:44:46', '', '0', 'http://space-plus.dev.vn/?page_id=14', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('15', '1', '2019-11-18 09:44:46', '2019-11-18 09:44:46', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-11-18 09:44:46', '2019-11-18 09:44:46', '', '14', 'http://space-plus.dev.vn/2019/11/18/14-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('16', '1', '2019-11-18 09:45:52', '2019-11-18 09:45:52', '', 'Dịch vụ', '', 'publish', 'closed', 'closed', '', 'dich-vu', '', '', '2019-11-18 09:45:52', '2019-11-18 09:45:52', '', '0', 'http://space-plus.dev.vn/?page_id=16', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('17', '1', '2019-11-18 09:45:52', '2019-11-18 09:45:52', '', 'Dịch vụ', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-11-18 09:45:52', '2019-11-18 09:45:52', '', '16', 'http://space-plus.dev.vn/2019/11/18/16-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('18', '1', '2019-11-18 09:46:03', '2019-11-18 09:46:03', '', 'Tin tức', '', 'publish', 'closed', 'closed', '', 'tin-tuc', '', '', '2019-11-18 09:46:03', '2019-11-18 09:46:03', '', '0', 'http://space-plus.dev.vn/?page_id=18', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('19', '1', '2019-11-18 09:46:03', '2019-11-18 09:46:03', '', 'Tin tức', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-11-18 09:46:03', '2019-11-18 09:46:03', '', '18', 'http://space-plus.dev.vn/2019/11/18/18-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('20', '1', '2019-11-18 09:46:16', '2019-11-18 09:46:16', '', 'Về chúng tôi', '', 'publish', 'closed', 'closed', '', 've-chung-toi', '', '', '2019-11-18 09:46:16', '2019-11-18 09:46:16', '', '0', 'http://space-plus.dev.vn/?page_id=20', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('21', '1', '2019-11-18 09:46:16', '2019-11-18 09:46:16', '', 'Về chúng tôi', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-11-18 09:46:16', '2019-11-18 09:46:16', '', '20', 'http://space-plus.dev.vn/2019/11/18/20-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('22', '1', '2019-11-18 09:46:30', '2019-11-18 09:46:30', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2019-11-18 09:46:30', '2019-11-18 09:46:30', '', '0', 'http://space-plus.dev.vn/?page_id=22', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('23', '1', '2019-11-18 09:46:30', '2019-11-18 09:46:30', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-18 09:46:30', '2019-11-18 09:46:30', '', '22', 'http://space-plus.dev.vn/2019/11/18/22-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('24', '1', '2019-11-18 10:00:55', '2019-11-18 10:00:55', '', 'Thiết kế kiến trúc', '', 'trash', 'closed', 'closed', '', 'thiet-ke-kien-truc__trashed', '', '', '2019-11-20 15:16:10', '2019-11-20 15:16:10', '', '16', 'http://space-plus.dev.vn/?page_id=24', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('25', '1', '2019-11-18 10:00:55', '2019-11-18 10:00:55', '', 'Thiết kế kiến trúc', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-18 10:00:55', '2019-11-18 10:00:55', '', '24', 'http://space-plus.dev.vn/2019/11/18/24-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('26', '1', '2019-11-18 10:01:13', '2019-11-18 10:01:13', '', 'Thiết kế nội thất', '', 'trash', 'closed', 'closed', '', 'thiet-ke-noi-that__trashed', '', '', '2019-11-20 15:16:10', '2019-11-20 15:16:10', '', '16', 'http://space-plus.dev.vn/?page_id=26', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('27', '1', '2019-11-18 10:01:13', '2019-11-18 10:01:13', '', 'Thiết kế nội thất', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-11-18 10:01:13', '2019-11-18 10:01:13', '', '26', 'http://space-plus.dev.vn/2019/11/18/26-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('28', '1', '2019-11-18 10:01:34', '2019-11-18 10:01:34', '', 'Thiết kế quy hoạch - cảnh quan', '', 'trash', 'closed', 'closed', '', 'thiet-ke-quy-hoach-canh-quan__trashed', '', '', '2019-11-20 15:16:10', '2019-11-20 15:16:10', '', '16', 'http://space-plus.dev.vn/?page_id=28', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('29', '1', '2019-11-18 10:01:34', '2019-11-18 10:01:34', '', 'Thiết kế quy hoạch - cảnh quan', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-11-18 10:01:34', '2019-11-18 10:01:34', '', '28', 'http://space-plus.dev.vn/2019/11/18/28-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('30', '1', '2019-11-18 10:01:56', '2019-11-18 10:01:56', '', 'Thiết kế sản phẩm kiến trúc', '', 'trash', 'closed', 'closed', '', 'thiet-ke-san-pham-kien-truc__trashed', '', '', '2019-11-20 15:16:10', '2019-11-20 15:16:10', '', '16', 'http://space-plus.dev.vn/?page_id=30', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('31', '1', '2019-11-18 10:01:56', '2019-11-18 10:01:56', '', 'Thiết kế sản phẩm kiến trúc', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-11-18 10:01:56', '2019-11-18 10:01:56', '', '30', 'http://space-plus.dev.vn/2019/11/18/30-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('32', '1', '2019-11-18 10:02:11', '2019-11-18 10:02:11', '', 'Bất động sản', '', 'trash', 'closed', 'closed', '', 'bat-dong-san__trashed', '', '', '2019-11-20 15:16:10', '2019-11-20 15:16:10', '', '16', 'http://space-plus.dev.vn/?page_id=32', '0', 'page', '', '0');
INSERT INTO spl_posts VALUES ('33', '1', '2019-11-18 10:02:11', '2019-11-18 10:02:11', '', 'Bất động sản', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-11-18 10:02:11', '2019-11-18 10:02:11', '', '32', 'http://space-plus.dev.vn/2019/11/18/32-revision-v1/', '0', 'revision', '', '0');
INSERT INTO spl_posts VALUES ('34', '1', '2019-11-18 10:11:31', '2019-11-18 10:11:31', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-11-20 14:06:05', '2019-11-20 14:06:05', '', '0', 'http://space-plus.dev.vn/?p=34', '11', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('35', '1', '2019-11-18 10:11:31', '2019-11-18 10:11:31', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-11-20 14:06:05', '2019-11-20 14:06:05', '', '0', 'http://space-plus.dev.vn/?p=35', '10', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('36', '1', '2019-11-18 10:11:31', '2019-11-18 10:11:31', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-11-20 14:06:05', '2019-11-20 14:06:05', '', '0', 'http://space-plus.dev.vn/?p=36', '9', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('43', '1', '2019-11-20 13:54:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-11-20 13:54:59', '0000-00-00 00:00:00', '', '0', 'http://space-plus.dev.vn/?post_type=service&p=43', '0', 'service', '', '0');
INSERT INTO spl_posts VALUES ('45', '1', '2019-11-20 14:02:59', '2019-11-20 14:02:59', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2019-11-20 14:06:05', '2019-11-20 14:06:05', '', '4', 'http://space-plus.dev.vn/?p=45', '8', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('46', '1', '2019-11-20 14:02:59', '2019-11-20 14:02:59', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-11-20 14:06:04', '2019-11-20 14:06:04', '', '4', 'http://space-plus.dev.vn/?p=46', '2', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('47', '1', '2019-11-20 14:02:59', '2019-11-20 14:02:59', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-11-20 14:06:05', '2019-11-20 14:06:05', '', '5', 'http://space-plus.dev.vn/?p=47', '4', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('48', '1', '2019-11-20 14:02:59', '2019-11-20 14:02:59', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2019-11-20 14:06:04', '2019-11-20 14:06:04', '', '5', 'http://space-plus.dev.vn/?p=48', '3', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('49', '1', '2019-11-20 14:02:59', '2019-11-20 14:02:59', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2019-11-20 14:06:05', '2019-11-20 14:06:05', '', '4', 'http://space-plus.dev.vn/?p=49', '5', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('50', '1', '2019-11-20 14:02:59', '2019-11-20 14:02:59', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2019-11-20 14:06:05', '2019-11-20 14:06:05', '', '4', 'http://space-plus.dev.vn/?p=50', '6', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('51', '1', '2019-11-20 14:02:59', '2019-11-20 14:02:59', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2019-11-20 14:06:05', '2019-11-20 14:06:05', '', '4', 'http://space-plus.dev.vn/?p=51', '7', 'nav_menu_item', '', '0');
INSERT INTO spl_posts VALUES ('52', '1', '2019-11-20 14:06:04', '2019-11-20 14:06:04', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2019-11-20 14:06:04', '2019-11-20 14:06:04', '', '0', 'http://space-plus.dev.vn/?p=52', '1', 'nav_menu_item', '', '0');

-- ----------------------------
-- Table structure for `spl_termmeta`
-- ----------------------------
DROP TABLE IF EXISTS `spl_termmeta`;
CREATE TABLE `spl_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_termmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `spl_terms`
-- ----------------------------
DROP TABLE IF EXISTS `spl_terms`;
CREATE TABLE `spl_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_terms
-- ----------------------------
INSERT INTO spl_terms VALUES ('1', 'Uncategorized @vi', 'uncategorized-vi', '0');
INSERT INTO spl_terms VALUES ('2', 'Uncategorized', 'uncategorized', '0');
INSERT INTO spl_terms VALUES ('3', 'Primary Menu', 'primary-menu', '0');
INSERT INTO spl_terms VALUES ('4', 'Dịch Vụ', 'dich-vu', '0');
INSERT INTO spl_terms VALUES ('5', 'Thiết kế kiến trúc', 'thiet-ke-kien-truc', '0');
INSERT INTO spl_terms VALUES ('6', 'Thiết kế nội thất', 'thiet-ke-noi-that', '0');
INSERT INTO spl_terms VALUES ('7', 'Thiết kế quy hoạch - cảnh quan', 'thiet-ke-quy-hoach-canh-quan', '0');
INSERT INTO spl_terms VALUES ('8', 'Thiết kế sản phẩm kiến trúc', 'thiet-ke-san-pham-kien-truc', '0');
INSERT INTO spl_terms VALUES ('9', 'Bất động sản', 'bat-dong-san', '0');
INSERT INTO spl_terms VALUES ('10', 'Công trình dân dụng', 'cong-trinh-dan-dung', '0');
INSERT INTO spl_terms VALUES ('11', 'Công trình công cộng', 'cong-trinh-cong-cong', '0');

-- ----------------------------
-- Table structure for `spl_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `spl_term_relationships`;
CREATE TABLE `spl_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_term_relationships
-- ----------------------------
INSERT INTO spl_term_relationships VALUES ('1', '1', '0');
INSERT INTO spl_term_relationships VALUES ('34', '3', '0');
INSERT INTO spl_term_relationships VALUES ('35', '3', '0');
INSERT INTO spl_term_relationships VALUES ('36', '3', '0');
INSERT INTO spl_term_relationships VALUES ('45', '3', '0');
INSERT INTO spl_term_relationships VALUES ('46', '3', '0');
INSERT INTO spl_term_relationships VALUES ('47', '3', '0');
INSERT INTO spl_term_relationships VALUES ('48', '3', '0');
INSERT INTO spl_term_relationships VALUES ('49', '3', '0');
INSERT INTO spl_term_relationships VALUES ('50', '3', '0');
INSERT INTO spl_term_relationships VALUES ('51', '3', '0');
INSERT INTO spl_term_relationships VALUES ('52', '3', '0');

-- ----------------------------
-- Table structure for `spl_term_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `spl_term_taxonomy`;
CREATE TABLE `spl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_term_taxonomy
-- ----------------------------
INSERT INTO spl_term_taxonomy VALUES ('1', '1', 'category', '', '0', '1');
INSERT INTO spl_term_taxonomy VALUES ('2', '2', 'category', '', '0', '0');
INSERT INTO spl_term_taxonomy VALUES ('3', '3', 'nav_menu', '', '0', '11');
INSERT INTO spl_term_taxonomy VALUES ('4', '4', 'danh-muc-dich-vu', '', '0', '0');
INSERT INTO spl_term_taxonomy VALUES ('5', '5', 'danh-muc-dich-vu', '', '4', '0');
INSERT INTO spl_term_taxonomy VALUES ('6', '6', 'danh-muc-dich-vu', '', '4', '0');
INSERT INTO spl_term_taxonomy VALUES ('7', '7', 'danh-muc-dich-vu', '', '4', '0');
INSERT INTO spl_term_taxonomy VALUES ('8', '8', 'danh-muc-dich-vu', '', '4', '0');
INSERT INTO spl_term_taxonomy VALUES ('9', '9', 'danh-muc-dich-vu', '', '4', '0');
INSERT INTO spl_term_taxonomy VALUES ('10', '10', 'danh-muc-dich-vu', '', '5', '0');
INSERT INTO spl_term_taxonomy VALUES ('11', '11', 'danh-muc-dich-vu', '', '5', '0');

-- ----------------------------
-- Table structure for `spl_usermeta`
-- ----------------------------
DROP TABLE IF EXISTS `spl_usermeta`;
CREATE TABLE `spl_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_usermeta
-- ----------------------------
INSERT INTO spl_usermeta VALUES ('1', '1', 'nickname', 'sysadmin');
INSERT INTO spl_usermeta VALUES ('2', '1', 'first_name', '');
INSERT INTO spl_usermeta VALUES ('3', '1', 'last_name', '');
INSERT INTO spl_usermeta VALUES ('4', '1', 'description', '');
INSERT INTO spl_usermeta VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO spl_usermeta VALUES ('6', '1', 'syntax_highlighting', 'true');
INSERT INTO spl_usermeta VALUES ('7', '1', 'comment_shortcuts', 'false');
INSERT INTO spl_usermeta VALUES ('8', '1', 'admin_color', 'fresh');
INSERT INTO spl_usermeta VALUES ('9', '1', 'use_ssl', '0');
INSERT INTO spl_usermeta VALUES ('10', '1', 'show_admin_bar_front', 'true');
INSERT INTO spl_usermeta VALUES ('11', '1', 'locale', 'en_US');
INSERT INTO spl_usermeta VALUES ('12', '1', 'spl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO spl_usermeta VALUES ('13', '1', 'spl_user_level', '10');
INSERT INTO spl_usermeta VALUES ('14', '1', 'dismissed_wp_pointers', 'wp496_privacy');
INSERT INTO spl_usermeta VALUES ('15', '1', 'show_welcome_panel', '1');
INSERT INTO spl_usermeta VALUES ('16', '1', 'session_tokens', 'a:1:{s:64:\"61d9d57ea35351ae270ca8690aaaec04bdecb6aa2e3016d0f0340c9599a4be73\";a:4:{s:10:\"expiration\";i:1574430719;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36\";s:5:\"login\";i:1574257919;}}');
INSERT INTO spl_usermeta VALUES ('17', '1', 'spl_dashboard_quick_press_last_post_id', '4');
INSERT INTO spl_usermeta VALUES ('18', '1', 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO spl_usermeta VALUES ('19', '1', 'icl_admin_language', 'en');
INSERT INTO spl_usermeta VALUES ('20', '1', 'icl_admin_language_migrated_to_wp47', '1');
INSERT INTO spl_usermeta VALUES ('21', '1', 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO spl_usermeta VALUES ('22', '1', 'metaboxhidden_nav-menus', 'a:8:{i:0;s:20:\"add-post-type-banner\";i:1;s:21:\"add-post-type-article\";i:2;s:21:\"add-post-type-project\";i:3;s:12:\"add-post_tag\";i:4;s:15:\"add-post_format\";i:5;s:20:\"add-danh-muc-tin-tuc\";i:6;s:8:\"add-tag2\";i:7;s:18:\"add-danh-muc-du-an\";}');
INSERT INTO spl_usermeta VALUES ('23', '1', 'spl_nav_menu_recently_edited', '3');

-- ----------------------------
-- Table structure for `spl_users`
-- ----------------------------
DROP TABLE IF EXISTS `spl_users`;
CREATE TABLE `spl_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of spl_users
-- ----------------------------
INSERT INTO spl_users VALUES ('1', 'sysadmin', '$P$Bjc86jKQoY80NI1XJ5nh1GStxf.I8p0', 'sysadmin', 'hungdn0502@gmail.com', '', '2019-11-18 09:32:20', '', '0', 'sysadmin');

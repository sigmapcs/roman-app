-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-03-2016 a las 15:17:16
-- Versión del servidor: 5.5.48-cll
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `romancom_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leyes`
--

CREATE TABLE IF NOT EXISTS `leyes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'noname',
  `vinculo` varchar(255) NOT NULL DEFAULT 'noname.html',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `leyes`
--

INSERT INTO `leyes` (`id`, `name`, `vinculo`, `date`, `visible`) VALUES
(1, 'codigo fiscal de la federacion', 'codigofiscaldelafederacion.html', '2016-03-22 23:26:16', 1),
(2, 'ley del impuesto sobre la renta', 'leydelimpuestosobrelarenta.html', '2016-03-22 23:26:16', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date_crate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user_name`, `mail`, `pass`, `name`, `date_crate`) VALUES
(1, 'tinonav', 'tinonav@hotmail.com', 'Tino1018*', 'Florentino Navarro', '2016-03-24 00:02:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(500) NOT NULL,
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `link`, `create`) VALUES
(1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/wzxHWFkVjVo" frameborder="0" allowfullscreen></iframe>', '2016-03-23 00:30:15'),
(2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/PWmRy44zzPM" frameborder="0" allowfullscreen></iframe>', '2016-03-23 00:32:04');
--
-- Base de datos: `romancom_en`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_assets`
--

CREATE TABLE IF NOT EXISTS `ysr74_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Volcado de datos para la tabla `ysr74_assets`
--

INSERT INTO `ysr74_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 147, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 94, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 95, 96, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 97, 98, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 99, 100, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 101, 102, 1, 'com_login', 'com_login', '{}'),
(13, 1, 103, 104, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 105, 106, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 107, 108, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 109, 110, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 111, 112, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 113, 114, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 115, 118, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 119, 120, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 121, 122, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 123, 124, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 125, 126, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 127, 130, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 131, 134, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 135, 136, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 37, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 116, 117, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 132, 133, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 128, 129, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 137, 138, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 139, 140, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 141, 142, 1, 'com_gantry', 'gantry', '{}'),
(37, 1, 143, 144, 1, 'com_newsletter', 'com_newsletter', '{}'),
(38, 8, 38, 47, 2, 'com_content.category.8', 'Content', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(39, 8, 48, 53, 2, 'com_content.category.9', 'Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(40, 39, 49, 50, 3, 'com_content.article.1', 'Doloremque laudantium totam rem aperiam sequi nesciunt', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 39, 51, 52, 3, 'com_content.article.2', 'Quisque volutpat condimentum velit. Sed dignissim lacinia nunc', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 38, 39, 40, 3, 'com_content.article.3', 'Demo article', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 8, 54, 75, 2, 'com_content.category.10', 'Portfolio', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(44, 43, 55, 56, 3, 'com_content.article.4', 'Portfolio item01', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 43, 57, 58, 3, 'com_content.article.5', 'Portfolio item02', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 43, 59, 60, 3, 'com_content.article.6', 'Portfolio item08', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 43, 61, 62, 3, 'com_content.article.7', 'Portfolio item04', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 43, 63, 64, 3, 'com_content.article.8', 'Portfolio item07', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 43, 65, 66, 3, 'com_content.article.9', 'Portfolio item06', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 43, 67, 68, 3, 'com_content.article.10', 'Portfolio item05', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 43, 69, 70, 3, 'com_content.article.11', 'Portfolio item03', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 43, 71, 72, 3, 'com_content.article.12', 'Portfolio item10', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 43, 73, 74, 3, 'com_content.article.13', 'Portfolio item09', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 38, 41, 42, 3, 'com_content.article.14', 'Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 38, 43, 44, 3, 'com_content.article.15', 'Modules positions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 38, 45, 46, 3, 'com_content.article.16', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 8, 76, 77, 2, 'com_content.category.11', 'newsletters', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(58, 8, 78, 79, 2, 'com_content.category.12', 'news', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(59, 1, 145, 146, 1, 'com_nivoslider', 'com_nivoslider', '{}'),
(60, 27, 19, 20, 3, 'com_content.article.17', 'The Firm', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 21, 22, 3, 'com_content.article.18', 'Our Staff', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 27, 23, 24, 3, 'com_content.article.19', 'Foundation Román Rosales ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 8, 80, 93, 2, 'com_content.category.13', 'Practice Areas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(64, 63, 81, 82, 3, 'com_content.article.20', 'Tax Advisory and fiscal Consulting ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 27, 25, 26, 3, 'com_content.article.21', 'Tax Diagnostics', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 63, 83, 84, 3, 'com_content.article.22', 'Consulting Asset and Succession', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 27, 27, 28, 3, 'com_content.article.23', 'Opinion on disposal of shares', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 63, 85, 86, 3, 'com_content.article.24', 'Defense Attorney', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 63, 87, 88, 3, 'com_content.article.25', 'Legislative Technique and Deregulation', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 63, 89, 90, 3, 'com_content.article.26', 'Legal', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 63, 91, 92, 3, 'com_content.article.27', 'Due Dilligence', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 27, 29, 30, 3, 'com_content.article.28', 'Vision', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 27, 31, 32, 3, 'com_content.article.29', 'Our Firm', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 27, 33, 34, 3, 'com_content.article.30', 'Services Model', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 27, 35, 36, 3, 'com_content.article.31', 'News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_associations`
--

CREATE TABLE IF NOT EXISTS `ysr74_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_banner_clients`
--

CREATE TABLE IF NOT EXISTS `ysr74_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `ysr74_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_banners`
--

CREATE TABLE IF NOT EXISTS `ysr74_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_categories`
--

CREATE TABLE IF NOT EXISTS `ysr74_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `ysr74_categories`
--

INSERT INTO `ysr74_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 25, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 38, 1, 13, 14, 1, 'content', 'com_content', 'Content', 'content', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-19 18:24:31', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 39, 1, 15, 16, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-19 18:24:46', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 43, 1, 17, 18, 1, 'portfolio', 'com_content', 'Portfolio', 'portfolio', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-24 19:26:44', 0, '0000-00-00 00:00:00', 0, '*'),
(11, 57, 1, 19, 20, 1, 'newsletters', 'com_content', 'newsletters', 'newsletters', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-10-03 23:05:18', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 58, 1, 21, 22, 1, 'news', 'com_content', 'news', 'news', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-10-03 23:13:03', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 63, 1, 23, 24, 1, 'practice-areas', 'com_content', 'Practice Areas', 'practice-areas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-11-03 18:56:01', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_contact_details`
--

CREATE TABLE IF NOT EXISTS `ysr74_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_content`
--

CREATE TABLE IF NOT EXISTS `ysr74_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `ysr74_content`
--

INSERT INTO `ysr74_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 40, 'Doloremque laudantium totam rem aperiam sequi nesciunt', 'doloremque-laudantium-totam-rem-aperiam-sequi-nesciunt', '', '<p><img class="thumb alignleft" src="http://placehold.it/175x100" border="0" alt="" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n', '\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>', -2, 0, 0, 9, '2012-04-19 18:26:49', 42, '', '2012-05-05 10:42:43', 42, 0, '0000-00-00 00:00:00', '2012-04-19 18:26:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 41, 'Quisque volutpat condimentum velit. Sed dignissim lacinia nunc', 'quisque-volutpat-condimentum-velit-sed-dignissim-lacinia-nunc', '', '<p><img class="thumb alignleft" src="http://placehold.it/175x100" border="0" alt="" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n', '\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>', -2, 0, 0, 9, '2012-04-19 18:26:49', 42, '', '2012-05-05 10:42:05', 42, 0, '0000-00-00 00:00:00', '2012-04-19 18:26:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 42, 'Demo article', 'demo-article', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>', '', -2, 0, 0, 8, '2012-04-23 17:39:31', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-23 17:39:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 58, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 44, 'Portfolio item01', 'portfolio-item01', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:32:35', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/city-q-c-640-480-5.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/city-q-c-640-480-5.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 1, '', '', 1, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 45, 'Portfolio item02', 'portfolio-item02', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:08', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/fashion-q-c-640-480-6.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/fashion-q-c-640-480-6.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 46, 'Portfolio item08', 'portfolio-item08', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:49', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/technics-q-c-640-480-5.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/technics-q-c-640-480-5.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 8, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 47, 'Portfolio item04', 'portfolio-item04', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:21', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/nightlife-q-c-640-480-1.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/nightlife-q-c-640-480-1.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 48, 'Portfolio item07', 'portfolio-item07', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:43', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/sports-q-c-640-480-10.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/sports-q-c-640-480-10.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 7, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 49, 'Portfolio item06', 'portfolio-item06', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:37', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/people-q-c-640-480-7.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/people-q-c-640-480-7.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 6, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 50, 'Portfolio item05', 'portfolio-item05', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:31', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/people-q-c-640-480-1.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/people-q-c-640-480-1.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 51, 'Portfolio item03', 'portfolio-item03', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:15', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/food-q-c-640-480-2.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/food-q-c-640-480-2.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `ysr74_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(12, 52, 'Portfolio item10', 'portfolio-item10', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:34:03', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/sports-q-c-640-480-4.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/sports-q-c-640-480-4.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 53, 'Portfolio item09', 'portfolio-item09', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:56', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/city-q-c-640-480-9.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/city-q-c-640-480-9.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 54, 'Contact', 'contact', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/contacto.png" border="0" width="901" height="301" /></div>\r\n<p class="cont_tit">Get in Touch:</p>\r\n<div class="row-fluid">\r\n<div class="span6">\r\n<div class="contacto"><!-- contacto  --><form action="http://www.roman.com.mx/es/contacto.php" method="post">\r\n<ul>\r\n<li>\r\n<div class="etiqueta">Name:</div>\r\n</li>\r\n<li><input class="constyle" type="text" name="nombre" /></li>\r\n<li>\r\n<div class="etiqueta">Email:</div>\r\n</li>\r\n<li><input class="constyle" type="email" name="email" /></li>\r\n<li>\r\n<div class="etiqueta">Phone:</div>\r\n</li>\r\n<li><input class="constyle" type="text" name="telefono" /></li>\r\n<li>\r\n<div class="etiqueta">Message:</div>\r\n</li>\r\n<li><textarea id="" class="constyle2" name="comentario"></textarea></li>\r\n<li><input id="send" type="image" name="imagen" value="" src="images/btn_en.png" /></li>\r\n</ul>\r\n</form></div>\r\n<!-- contacto  --></div>\r\n<div class="span6">\r\n<div class="contacto_der"><!-- contacto  -->\r\n<div class="separador"> </div>\r\n<div class="cont">\r\n<p class="ciudad">Guadalajara</p>\r\n<p>Address: <strong>Corona Boreal No. 4138, Col. Arboledas, Zapopan, Jalisco C.P. 45070</strong></p>\r\n<p>Phone: <strong>01 (33) 15 42 69 45<br /></strong></p>\r\n<p><strong>          01 (33) 15 42 69 46<br /></strong></p>\r\n<p>email: <strong><a class="emailcon" href="mailto:info@roman.com.mx">info@roman.com.mx</a></strong></p>\r\n<p>email: <strong><a class="emailcon" href="mailto:info@dawson.com.mx">info@dawson.com.mx</a></strong></p>\r\n<div class="separador1"> </div>\r\n<div class="lin_hor"> </div>\r\n<div class="separador2"> </div>\r\n<p class="ciudad">Mexico City</p>\r\n<p>Address: <strong>Avenida 555 No. 158, Unidad Aragón 2da. sección, C.P. 07969, Del. Gustavo A. Madero, Mexico, D.F.</strong></p>\r\n<p>email: <strong><a class="emailcon" href="mailto:info@roman.com.mx">info@roman.com.mx</a></strong></p>\r\n<p>email: <strong><a class="emailcon" href="mailto:info@dawson.com.mx">info@dawson.com.mx</a></strong></p>\r\n</div>\r\n</div>\r\n<!-- contacto  --></div>\r\n</div>\r\n</div>', '', 1, 0, 0, 8, '2012-05-05 08:05:53', 42, '', '2013-12-10 19:14:50', 42, 0, '0000-00-00 00:00:00', '2012-05-05 08:05:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 26, 0, 2, '', '', 1, 416, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 55, 'Modules positions', 'modules-positions', '', '<p>Below i made a demonstration of each position. As you can see in most of the rows there are 6 positions per rows, which is more then enough when publishing modules.<strong> In total there are 69 modules positions!!!</strong></p>\r\n<p>View all module positions live by going to Template Manager and clicking on the button Options from right-top toolbar. Here, in the pop-up enable the option "<span>Preview Module Positions".</span></p>\r\n<p>The biggest advantage of this framework, because of it''s grid system, is that you can set-up your desired layout:</p>\r\n<p><img class="thumb" src="images/layouts.png" border="0" alt="layouts" width="531" height="260" /></p>\r\n<p><strong><br /></strong></p>\r\n<p><strong>THE PERFECT CHOICE FOR FLEXIBILITY!!</strong></p>\r\n<p><a href="images/positions.jpg" data-rel="prettyPhoto"><img class="thumb" src="images/positions.jpg" border="0" alt="Modules positions" width="700" height="1497" /></a></p>', '', -2, 0, 0, 8, '2012-05-05 09:38:05', 42, '', '2012-05-05 10:28:02', 42, 0, '0000-00-00 00:00:00', '2012-05-05 09:38:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 1, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 56, 'Typography', 'typography', '', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h1>H1 Tag Header</h1>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h2>H2 Tag Header</h2>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h3>H3 Tag Header</h3>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h4>H4 Tag Header</h4>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h5>H5 Tag Header</h5>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h6>H6 Tag Header</h6>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<p> </p>\r\n<h3>HTML code wrapped in [ code ]</h3>\r\n<p><code>#pre-sample {<br />  font-size:12px;<br />  color:#ffffff;<br />}</code></p>\r\n<h2> </h2>\r\n<h2>Blockquote</h2>\r\n<blockquote>In hendrerit molestie sapien, et pretium urna lobortis et. Mauris felis tortor, auctor a congue quis, interdum a arcu. Vivamus suscipit posuere accumsan. Vestibulum vitae ante nec quam volutpat convallis a vitae est. Praesent facilisis eros in quam congue eget pellentesque nunc interdum. Vestibulum dapibus, dui at pulvinar malesuada, massa purus fringilla elit, et mattis magna purus nec urna.</blockquote>\r\n<p> </p>\r\n<h2>Image in paragraph</h2>\r\n<p><img class="thumb alignleft" src="http://placehold.it/120x100" border="0" alt=".thumb alignleft css class" /><strong>Just add .thumb class to the image. The alignment is set by adding an "<span style="text-decoration: underline;">alignleft</span>" class to this image.</strong> Sed lacus risus, molestie eget fermentum in, vehicula ac est. Pellentesque vestibulum nunc nec quam fermentum at venenatis sapien consectetur. Nulla ut augue nec ligula ultricies pharetra ut nec dui. Etiam egestas facilisis volutpat. Quisque non fermentum nisl. Vivamus posuere laoreet augue, eget volutpat libero accumsan vitae. Aliquam ultrices, quam sed posuere pretium, sapien libero tempus mi, sed consequat erat leo et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at vestibulum libero. Phasellus nibh leo, pharetra vel dictum eu, faucibus in nibh.</p>\r\n<p><img class="thumb alignright" src="http://placehold.it/120x100" border="0" alt=".thumb alignright css class" />Aenean vulputate imperdiet arcu, eget tempus elit faucibus in. Suspendisse venenatis, justo ac faucibus imperdiet, neque dui suscipit ligula, ac condimentum dui neque et est. Duis sagittis rutrum erat sed aliquet. Ut eget purus et nunc iaculis congue eu eu nibh. Aliquam ac aliquet leo. Curabitur leo urna, vulputate id vulputate id, pulvinar et leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque dapibus lectus eu lorem consectetur sed porttitor ipsum congue.</p>\r\n<p>Etiam egestas facilisis volutpat. Quisque non fermentum nisl. Vivamus posuere laoreet augue, eget volutpat libero accumsan vitae. Aliquam ultrices, quam sed posuere pretium, sapien libero tempus mi, sed consequat erat leo et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at vestibulum libero. Phasellus nibh leo, pharetra vel dictum eu, faucibus in nibh.</p>\r\n<p> </p>\r\n<h2>Lists</h2>\r\n<ul>\r\n<li>List with no class</li>\r\n<li>List with no class</li>\r\n<li>List with no class</li>\r\n<li>List with no class</li>\r\n<li>List with no class</li>\r\n</ul>\r\n<ul class="list-type-1">\r\n<li>List with .list-type-1 class</li>\r\n<li>List with .list-type-1 class</li>\r\n<li>List with .list-type-1 class</li>\r\n<li>List with .list-type-1 class</li>\r\n<li>List with .list-type-1 class</li>\r\n</ul>\r\n<ul class="list-type-2">\r\n<li>List with .list-type-2 class</li>\r\n<li>List with .list-type-2 class</li>\r\n<li>List with .list-type-2 class</li>\r\n<li>List with .list-type-2 class</li>\r\n<li>List with .list-type-2 class</li>\r\n</ul>\r\n<ul class="list-type-3">\r\n<li>List with .list-type-3 class</li>\r\n<li>List with .list-type-3 class</li>\r\n<li>List with .list-type-3 class</li>\r\n<li>List with .list-type-3 class</li>\r\n<li>List with .list-type-3 class</li>\r\n</ul>\r\n<p> </p>\r\n<h4>WARNING BOXES</h4>\r\n<div class="info">Info message (class="info")</div>\r\n<div class="success">Successful operation message (class="success")</div>\r\n<div class="warning">Warning message (class="warning")</div>\r\n<div class="error">Error message (class="error")</div>', '', -2, 0, 0, 8, '2012-05-05 09:38:29', 42, '', '2012-05-05 10:39:24', 42, 0, '0000-00-00 00:00:00', '2012-05-05 09:38:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 62, 'Foundation Román Rosales ', 'foundation-roman-rosales', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/fundacion.png" border="0" width="901" height="301" /></div>\r\n<p><strong>Pro Bono and Social Responsibility</strong></p>\r\n<p><span style="font-size: medium;">The mission of the Foundation Roman Rosales is to give legal advice, accounting and tax free to nonprofit institutions or individuals of civil society to meet social requirements who need the help of the foundation.</span></p>\r\n<p><span style="font-size: medium;">Since we know the difficulty that can be help good causes in order to comply to who chase them.</span></p>\r\n<p> </p>\r\n<p><strong>Assistance</strong></p>\r\n<p><span style="font-size: medium;">The pro bono work provided by members of the firm will be of the highest professional standards, his fees being covered by the Foundation. Expenses not covered by the foundation are those relating to stationery, notarization of documents, travel expenses, etc.</span></p>\r\n<p> </p>\r\n<p><strong>Candidates for Pro Bono</strong></p>\r\n<p><span style="font-size: medium;">Fill out the questionnaire and send your case will be reviewed by the Department Pro Bono Foundation and in case of credit, we will contact you.</span></p>\r\n<div class="fundacion"><form action="http://roman.com.mx/envio1.php" method="post">\r\n<ul id="contac">\r\n<li>Name: <input class="constyle" type="text" name="nombre" /></li>\r\n<li>Nonprofit activity: <input class="constyle2" type="text" name="actividad" /></li>\r\n<li>Phone:<input class="constyle" type="text" name="telefono" /></li>\r\n<li>Email: <input class="constyle3" type="email" name="email" /></li>\r\n<li><input id="send" type="image" name="imagen" value="" src="images/btn_en.png" /></li>\r\n</ul>\r\n</form></div>\r\n</div>', '', 1, 0, 0, 2, '2013-10-30 18:07:28', 42, '', '2013-11-11 04:46:25', 42, 42, '2013-12-10 19:15:01', '2013-10-30 18:07:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 6, '', '', 1, 378, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 60, 'The Firm', 'the-firm', '', '<div class="notas">\r\n<p><span style="font-size: large;"><strong>Vision</strong></span></p>\r\n<p><span style="font-size: medium;">Román Salcido , S. C. is a law firm specializing in accounting and taxation advice on high level . The services offered by the firm have a high degree of technical quality and study.</span></p>\r\n<p> </p>\r\n<p><span style="font-size: large;"><strong>Our Firm</strong></span></p>\r\n<p><span style="font-size: medium;">Román Salcido, S. C. is a firm composed of accountants and lawyers who are governed by high ethical standards, technical and professionally, trained and updated to address current problems in taxation . Founded in 2003 , the firm has specialized in multidiscipline always remain the central axis fiscal and taxation.</span></p>\r\n<p> </p>\r\n<p><span style="font-size: large;"><strong>Services Model</strong></span></p>\r\n<p><span style="font-size: medium;">In Roman Salcido S.C. we identify the needs and problems of customers to focus on their solution always complying with the various applicable laws or failing to anticipate changes in the matter.</span></p>\r\n</div>', '', 1, 0, 0, 2, '2013-10-30 17:37:56', 42, '', '2013-11-03 17:15:04', 42, 0, '0000-00-00 00:00:00', '2013-10-30 17:37:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 8, '', '', 1, 46, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 61, 'Our Staff', 'our-staff', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/staff.png" border="0" width="901" height="301" /></div>\r\n<ul>\r\n<li><span style="font-size: large;"><a href="staff/roman.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Ernesto Alfonso Román Salcido</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/castaneda.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos M. Castañeda Aguilar</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/delriosr.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos del Rio Davalos Sr.</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/rios.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Nora Rios</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/delrio.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos del Rio Davalos</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/gonzalez.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Maguil Gonzalez Arciniega</a></span></li>\r\n</ul>\r\n</div>', '', 1, 0, 0, 2, '2013-10-30 17:48:42', 42, '', '2014-11-12 18:02:07', 42, 0, '0000-00-00 00:00:00', '2013-10-30 17:48:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 7, '', '', 1, 225, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 64, 'Tax Advisory and fiscal Consulting ', 'tax-advisory-and-fiscal-consulting', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/4.png" border="0" width="900" height="300" /></div>\r\n<p>Counseling to solve the problems in tax matters, the interpretation and the correct application of tax provisions, as well as advice for the timely fulfillment of tax obligations and representation before the authorities to complete the formalities.</p>\r\n<p>Design of all tax legal support of operations, Criterion confirmations presentation, discussion of the tax implications of fiscal strategies.</p>\r\n</div>', '', 1, 0, 0, 13, '2013-11-03 18:59:12', 42, '', '2013-11-11 04:50:32', 42, 0, '0000-00-00 00:00:00', '2013-11-03 18:59:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 5, '', '', 1, 214, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 65, 'Tax Diagnostics', 'tax-diagnostics', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/diagnostico.png" border="0" width="900" height="300" /></div>\r\n<p>Identifying potential tax risks, so diagnosis is possible by anticipating them, in the same way to identify optimization opportunities benefits and tax burdens.</p>\r\n</div>', '', 1, 0, 0, 2, '2013-11-03 19:01:06', 42, '', '2013-11-11 04:51:16', 42, 0, '0000-00-00 00:00:00', '2013-11-03 19:01:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 5, '', '', 1, 256, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 66, 'Consulting Asset and Succession', 'consulting-asset-and-succession', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/patrimonial.png" border="0" width="900" height="300" /></div>\r\n<p>Analysis of the equity of the entities and individuals, as well as Attorney Asset Protection and the same transmission options heritage.</p>\r\n</div>', '', 1, 0, 0, 13, '2013-11-03 19:02:10', 42, '', '2013-11-11 04:35:20', 42, 0, '0000-00-00 00:00:00', '2013-11-03 19:02:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 4, '', '', 1, 243, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 67, 'Opinion on disposal of shares', 'opinion-on-disposal-of-shares', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/patrimonial.png" border="0" width="901" height="301" /></div>\r\n<p>Realizations of the prosecutor on disposal of shares are purchased by both individuals and corporations, whether resident in Mexico or abroad.</p>\r\n</div>', '', 1, 0, 0, 2, '2013-11-03 19:03:27', 42, '', '2013-11-11 04:49:41', 42, 0, '0000-00-00 00:00:00', '2013-11-03 19:03:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 4, '', '', 1, 221, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 68, 'Defense Attorney', 'defense-attorney', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/def-fiscal.png" border="0" width="901" height="301" /></div>\r\n<p>The defense attorney before federal, state and municipal authority’s effect to defend or enforce the actions of authorities within the regulatory frameworks of Law</p>\r\n</div>', '', 1, 0, 0, 13, '2013-11-03 19:04:17', 42, '', '2013-11-11 04:40:44', 42, 0, '0000-00-00 00:00:00', '2013-11-03 19:04:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 239, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 69, 'Legislative Technique and Deregulation', 'legislative-technique-and-deregulation', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/tenica_leg.png" border="0" width="901" height="301" /></div>\r\n<p>Preparation and review of draft guidelines or manuals to develop projects or bills, completion of the form and structure that should contain an initiative.</p>\r\n</div>', '', 1, 0, 0, 13, '2013-11-03 19:05:01', 42, '', '2013-11-11 04:48:04', 42, 0, '0000-00-00 00:00:00', '2013-11-03 19:05:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 244, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 70, 'Legal', 'legal', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/legal.png" border="0" width="901" height="301" /></div>\r\n<p><strong>Corporate Legal Counsel/strong&gt;</strong></p>\r\n<p><span style="font-size: medium;">Company Incorporation, Bylaws design, formulation of corporate documents, minutes of meetings, corporate books, books of stocks or shares, etc. . And realization of commercial contracts, civil and atypical. Privacy and Protection of Personal Data.</span></p>\r\n<p> </p>\r\n<p><strong>Industrial Property</strong></p>\r\n<p><span style="font-size: medium;">Development of strategies for the protection of the rights of intellectual property such as brands, advertisements, models and industrial designs, etc.</span></p>\r\n<p> </p>\r\n<p><strong>Corporate structures, Reorganization and restructuring</strong></p>\r\n<p><span style="font-size: medium;">Mergers, business transfers, liquidations, acquisitions consultants and corporate adjustment.</span></p>\r\n</div>', '', 1, 0, 0, 13, '2013-11-03 19:12:05', 42, '', '2013-11-11 04:47:03', 42, 0, '0000-00-00 00:00:00', '2013-11-03 19:12:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 208, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 71, 'Due Dilligence', 'due-dilligence', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/dilligence.png" border="0" width="901" height="301" /></div>\r\n<strong>Corporate Legal and Audit Diagnostics Legal:</strong>\r\n<p><span style="font-size: medium;">Review of compliance with legal obligations and legal audits of acquisitions and / or actions.</span></p>\r\n</div>', '', 1, 0, 0, 13, '2013-11-03 19:17:46', 42, '', '2013-11-11 04:44:48', 42, 0, '0000-00-00 00:00:00', '2013-11-03 19:17:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 0, '', '', 1, 170, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 72, 'Vision', 'vision', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/vision.png" border="0" width="901" height="301" /></div>\r\n<p><span style="font-size: medium;">Román Salcido , S. C. is a law firm specializing in accounting and taxation advice on high level . The services offered by the firm have a high degree of technical quality and study.</span></p>\r\n</div>', '', 1, 0, 0, 2, '2013-11-11 05:00:24', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-11 05:00:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 244, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 73, 'Our Firm', 'our-firm', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/mision1.png" border="0" width="901" height="301" /></div>\r\n<p><span style="font-size: medium;">Román Salcido, S. C. is a firm composed of accountants and lawyers who are governed by high ethical standards, technical and professionally, trained and updated to address current problems in taxation . Founded in 2003 , the firm has specialized in multidiscipline always remain the central axis fiscal and taxation.</span></p>\r\n</div>', '', 1, 0, 0, 2, '2013-11-11 05:01:35', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-11 05:01:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 210, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 74, 'Services Model', 'services-model', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/modelo.png" border="0" width="901" height="301" /></div>\r\n<p><span style="font-size: medium;">In Roman Salcido S.C. we identify the needs and problems of customers to focus on their solution always complying with the various applicable laws or failing to anticipate changes in the matter.</span></p>\r\n</div>', '', 1, 0, 0, 2, '2013-11-11 05:03:36', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-11 05:03:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 223, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 75, 'News', 'news', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/noti.png" border="0" width="901" height="301" /></div>\r\n<p> </p>\r\n<a href="http://www.sat.gob.mx/sitio_internet/novedades/" target="_blank">SAT News</a>\r\n<div style="width: 300px;"> </div>\r\n</div>', '', 1, 0, 0, 2, '2013-12-10 18:47:56', 42, '', '2013-12-10 18:48:03', 42, 0, '0000-00-00 00:00:00', '2013-12-10 18:47:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 242, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `ysr74_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_content_rating`
--

CREATE TABLE IF NOT EXISTS `ysr74_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `ysr74_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_extensions`
--

CREATE TABLE IF NOT EXISTS `ysr74_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10046 ;

--
-- Volcado de datos para la tabla `ysr74_extensions`
--

INSERT INTO `ysr74_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"es-ES","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'Flickr Feed Module', 'module', 'mod_flickrfeed', '', 0, 1, 1, 0, '{"legacy":false,"name":"Flickr Feed Module","type":"module","creationDate":"August 2011","author":"Marius Hogas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com\\/ammon_joomla\\/","version":"1.0.0","description":"This plugin works by pulling a JSON feed from Flickr and applying the data it gets back to a template. ","group":""}', '{"limit":"9","flickrid":"","perrow":"3","follow_link":"","follow_text":"","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"applet","extended_elements":"script,applet,iframe","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `ysr74_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.17","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, '{"legacy":false,"name":"Gantry","type":"component","creationDate":"December 5, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.20","description":"Gantry Starting Template for Joomla! v4.1.20","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'EspaolspanishformalInternacional', 'language', 'es-ES', '', 1, 1, 0, 0, '{"legacy":false,"name":"Espa\\u00f1ol (spanish formal Internacional)","type":"language","creationDate":"2013-04-04","author":"Joomla! Spanish","copyright":"copyright (C) 2013 JoomlaSpanish.org  All rights reserved.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"2.5.10","description":"Idioma para usar en la parte administrativa de Joomla! 2.5 Creado por Joomla! Spanish","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Gantry","type":"plugin","creationDate":"December 5, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.20","description":"Gantry System Plugin for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10013, 'eris', 'template', 'eris', '', 0, 1, 1, 0, '{"legacy":false,"name":"eris","type":"template","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.19","description":"${project.description}","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokExtender","type":"plugin","creationDate":"February 24, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"System - Gantry","group":""}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10015, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokNavMenu","type":"module","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.10","description":"RocketTheme Customizable Navigation Menu","group":""}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Plus Slider Module', 'module', 'mod_plusslider', '', 0, 1, 1, 0, '{"legacy":false,"name":"Plus Slider Module","type":"module","creationDate":"Dec 2011","author":"Marius Hogas, Jamy Golden","copyright":"Copyright (C) 2012 www.hogash.com","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com","version":"1.0.0","description":"\\n\\tSimple but powerful image\\/content slider developed by Jamy Golden http:\\/\\/css-plus.com\\/examples\\/plugins\\/PlusSlider\\/, extended by Marius Hogas.\\n\\t","group":""}', '{"width":"940","height":"400","sliderType":"slider","sliderEasing":"easeOutQuad","displayTime":"4000","speed":"500","defaultSlide":"0","autoPlay":"true","keyboardNavigation":"true","pauseOnHover":"true","createArrows":"true","createPagination":"true","style":"yes","active1":"0","title1":"","title_small1":"","slide_align1":"center-left","type1":"image","url1":"","target1":"0","video1":"","flvfile1":"","active2":"0","title2":"","title_small2":"","slide_align2":"center-left","type2":"image","url2":"","target2":"0","video2":"","flvfile2":"","active3":"0","title3":"","title_small3":"","slide_align3":"center-left","type3":"image","url3":"","target3":"0","video3":"","flvfile3":"","active4":"0","title4":"","title_small4":"","slide_align4":"center-left","type4":"image","url4":"","target4":"0","video4":"","flvfile4":"","active5":"0","title5":"","title_small5":"","slide_align5":"center-left","type5":"image","url5":"","target5":"0","video5":"","flvfile5":"","active6":"0","title6":"","title_small6":"","slide_align6":"center-left","type6":"image","url6":"","target6":"0","video6":"","flvfile6":"","active7":"0","title7":"","title_small7":"","slide_align7":"center-left","type7":"image","url7":"","target7":"0","video7":"","flvfile7":"","active8":"0","title8":"","title_small8":"","slide_align8":"center-left","type8":"image","url8":"","target8":"0","video8":"","flvfile8":"","active9":"0","title9":"","title_small9":"","slide_align9":"center-left","type9":"image","url9":"","target9":"0","video9":"","flvfile9":"","active10":"0","title10":"","title_small10":"","slide_align10":"center-left","type10":"image","url10":"","target10":"0","video10":"","flvfile10":"","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'System - Jquery', 'plugin', 'jquery', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Jquery","type":"plugin","creationDate":"Nov 9th, 2011","author":"Marius Hogas","copyright":"Copyright (c) 2011 Marius Hogas. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com","version":"1","description":"Simple Load of jQuery from the Google''s CDN","group":""}', '{"version":"1.7.2","noconflict":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'Migur', 'library', 'migur', '', 0, 1, 1, 0, '{"legacy":false,"name":"Migur","type":"library","creationDate":"June 2011","author":"Migur","copyright":"Migur Ltd","authorEmail":"info@migur.com","authorUrl":"http:\\/\\/www.migur.com\\/","version":"13.08","description":"MIGUR_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'mod_newsletter_subscribe', 'module', 'mod_newsletter_subscribe', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_newsletter_subscribe","type":"module","creationDate":"May 2011","author":"Migur Newsletter Project","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"info@migur.com","authorUrl":"www.migur.com","version":"13.08","description":"This module allows to subscribe the J! user to one or more lists.","group":""}', '{"textprepend":"","textabovename":"","textaboveemail":"","textunderemail":"","showmailtype":"1","defaultmailtype":"1","listselector":"1","multilist":"0","showtermslink":"0","termslink":"","textappend":"","fbsecret":"","fbenabled":"0","fbappid":"","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'com_newsletter', 'component', 'com_newsletter', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_NEWSLETTER","type":"component","creationDate":"June 2011","author":"Migur","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"info@migur.com","authorUrl":"http:\\/\\/migur.com\\/","version":"13.08","description":"COM_NEWSLETTER_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'Migur Newsletter', 'package', 'pkg_newsletter', '', 0, 1, 1, 0, '{"legacy":false,"name":"Migur Newsletter","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"","authorUrl":"","version":"13.08","description":"Migur newsletter full package of a component.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Recent Projects Module', 'module', 'mod_recent_projects', '', 0, 1, 1, 0, '{"legacy":false,"name":"Recent Projects Module","type":"module","creationDate":"August 2011","author":"Marius Hogas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com\\/ammon_joomla\\/","version":"1.0.0","description":"This module adds 3 thumbnails with your latest works.","group":""}', '{"maintitle":"","maindescription":"","btntext":"view all of our projects \\u2192","title1":"","description1":"","linktype1":"none","articlelink1":"","title2":"","description2":"","linktype2":"none","articlelink2":"","title3":"","description3":"","linktype3":"none","articlelink3":"","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'Skyline Twitter', 'module', 'mod_sl_twitter', '', 0, 1, 0, 0, '{"legacy":false,"name":"Skyline Twitter","type":"module","creationDate":"January 2012","author":"Pham Minh Tuan","copyright":"Copyright (c) 2012 Skyline. All rights reserved.","authorEmail":" (admin@vnskyline.com)","authorUrl":"http:\\/\\/www.vnskyline.com","version":"1.0.0","description":"\\n\\t\\n\\t\\tSkyline Twitter Module For Joomla 1.7 - Displays Latest Twitter Posts<br \\/><br \\/>Developed by Skyline Software (<a target=\\"_blank\\" href=\\"http:\\/\\/www.vnskyline.com\\">http:\\/\\/www.vnskyline.com<\\/a>).\\n\\t\\n\\t","group":""}', '{"count":"5"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'HG Social Share Module', 'module', 'mod_hg_share', '', 0, 1, 1, 0, '{"legacy":false,"name":"HG Social Share Module","type":"module","creationDate":"Dec 2012","author":"Marius Hogas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com\\/","version":"1.0.0","description":"In this module you can control what tools you can use for social sharing, Facebook Like Button, Tweet This Button or Google Plus button.","group":""}', '{"fblike":"0","tweet":"0","text":"Put here a text that will be tweeted","via":"","url":"","gplus":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'Simple Image Gallery (by JoomlaWorks)', 'plugin', 'jw_simpleImageGallery', 'content', 0, 1, 1, 0, '{"legacy":true,"name":"Simple Image Gallery (by JoomlaWorks)","type":"plugin","creationDate":"April 11th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks, a business unit of Nuevvo Webware Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.2","description":"JW_SIG_DESC","group":""}', '{"galleries_rootfolder":"images","thb_width":"200","thb_height":"160","jpg_quality":"85","smartResize":"1","galleryMessages":"0","cache_expire_time":"120","memoryLimit":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'HG Google Map Module', 'module', 'mod_hg_googlemap', '', 0, 1, 1, 0, '{"legacy":false,"name":"HG Google Map Module","type":"module","creationDate":"Dec 2011","author":"Marius Hogas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com","version":"1.0.0","description":"\\n\\tThis module adds an awesome full width\\/height google map, a counter for event, color styling, custom pin markers etc. To find coordinates, go to <a href=\\"http:\\/\\/itouchmap.com\\/latlong.html\\" target=\\"_blank\\">http:\\/\\/itouchmap.com\\/latlong.html<\\/a>. <strong>Unlimited Pins<\\/strong>. To play with the map colors and styles you can try this tool right here <a href=\\"http:\\/\\/gmaps-samples-v3.googlecode.com\\/svn\\/trunk\\/styledmaps\\/wizard\\/index.html\\" target=\\"_blank\\">http:\\/\\/gmaps-samples-v3.googlecode.com\\/svn\\/trunk\\/styledmaps\\/wizard\\/index.html<\\/a>.\\n\\t","group":""}', '{"width":"940","height":"320","imagepin":"","anchor":"bottom-center","centerMap":"40.74455835,-74.0563488","zoom":"13","type":"ROADMAP","enable_control":"1","controll":"DROPDOWN_MENU","draging":"false","mousewheel":"false","marker_animation":"1","animation_type":"DROP","styling":"1","featureType":"all","visibility":"on","elementType":"geometry","hue":"#5AB2B6","saturation":"0","lightness":"0","gamma":"1","markers":"","enable_expand":"no","expand_text":"EXPAND MAP","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'Rapid Contact Form', 'module', 'mod_rapid_contact', '', 0, 1, 1, 0, '{"legacy":false,"name":"Rapid Contact Form","type":"module","creationDate":"March 2011","author":"Christopher Mavros","copyright":"Copyright (C) 2009-2011 Christopher Mavros. All rights reserved.","authorEmail":"mavrosxristoforos@gmail.com","authorUrl":"http:\\/\\/www.mavrosxristoforos.com\\/","version":"1.2","description":"Rapid Contact. Lightweight, fast and easy, configuring a contact form, was never a pleasure before.","group":""}', '{"department_mail_1":"","department_name_1":"","department_mail_2":"","department_name_2":"","department_mail_3":"","department_name_3":"","department_mail_4":"","department_name_4":"","department_mail_5":"","department_name_6":"","from_name":"Rapid Contact","from_email":"rapid_contact@yoursite.com","name_label":"Name:","email_label":"Email:","subject_label":"Subject:","message_label":"Message:","button_text":"Send Message","page_text":"Thank you for your contact.","error_text":"Your message could not be sent. Please try again.","no_email":"Please write your email","invalid_email":"Please write a valid email","wrong_antispam":"Wrong Anti-Spam Answer","pre_text":"","exact_url":"1","disable_https":"1","fixed_url":"0","fixed_url_address":"","enable_anti_spam":"1","anti_spam_q":"How many eyes has a typical person?","anti_spam_a":"2","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'es-ES', 'package', 'pkg_es-ES', '', 0, 1, 1, 0, '{"legacy":false,"name":"Espa\\u00f1ol (spanish formal Internacional) Pack","type":"package","creationDate":"01-04-2013","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.5.10","description":"<a href=\\"http:\\/\\/joomlaspanish.org\\" target=\\"_blank\\"><img src=\\"http:\\/\\/joomlaspanish.org\\/images\\/logo.png\\" width=\\"360\\" height=\\"62\\" alt=\\"Joomlaspanish.org\\" \\/><\\/a><br\\/><br\\/>Idioma completo creado por Joomla! Spanish para Joomla 2.5.10 Solo zona administrativa (Backend)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'Migur - User registration plugin', 'plugin', 'miguruserreg', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"Migur - User registration plugin","type":"plugin","creationDate":"September 2012","author":"Henrik Hussfelt","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"henrik@migur.com","authorUrl":"www.migur.com","version":"13.08","description":"Plugin to synchronise users during registration","group":""}', '{"listid":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'Migur - User synchronisation plugin', 'plugin', 'migurlistsync', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"Migur - User synchronisation plugin","type":"plugin","creationDate":"August 2012","author":"Henrik Hussfelt","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"henrik@migur.com","authorUrl":"www.migur.com","version":"13.08","description":"Plugin to synchronise users","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'Simple Image Gallery (by JoomlaWorks)', 'plugin', 'jw_sig', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"Simple Image Gallery (by JoomlaWorks)","type":"plugin","creationDate":"May 27th, 2013","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"3.0.0","description":"JW_PLG_SIG_XML_DESC","group":""}', '{"galleries_rootfolder":"images","jQueryHandling":"1.8","thb_width":"200","thb_height":"160","jpg_quality":"80","cache_expire_time":"1440","memoryLimit":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"library","creationDate":"December 5, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.20","description":"Gantry Starting Template for Joomla! v4.1.20","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'com_nivoslider', 'component', 'com_nivoslider', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_nivoslider","type":"component","creationDate":"March 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UnitCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"2.1.0","description":"\\n\\t\\tCreate slides source for Nivo Slider module \\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'Unite Nivo Slider', 'module', 'mod_unite_nivoslider', '', 0, 1, 0, 0, '{"legacy":false,"name":"Unite Nivo Slider","type":"module","creationDate":"March 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"2.1.0","description":"\\n\\t\\t\\t<div style=\\"font-weight:normal;text-align: left;\\">\\n\\t\\t\\t<p><strong>Unite Nivo Slider<\\/strong> module. Put nivo slider on any page. This module uses nivo slider component for slides select.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t&nbsp;Need support? Please visit the <a href=\\"http:\\/\\/unitecms.net\\/free-joomla-extensions\\/unite-nivo-slider\\/support\\" target=\\"_blank\\">Nivo Slider Support Page<\\/a>\\n\\t\\t\\t\\t<br>&nbsp;you''ll find there all the information you need.\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tLiked the slider? Check out the <a style=\\"font-weight:bold;font-size:14px;\\" href=\\"http:\\/\\/www.unitecms.net\\/free-joomla-extensions\\/unite-nivo-slider-pro\\/nivo-slider-pro-demo\\" target=\\"_blank\\">Unite Nivo Slider PRO<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<small style=\\"float:right\\">ver. 2.1<\\/small>\\n\\t\\t\\t<\\/div>\\n     \\n\\t ","group":""}', '{"width":"618","height":"246","pauseTime":"3000","animSpeed":"500","effect":"","theme":"default","controlNav":"true","directionNav":"true","prevText":"Prev","nextText":"Next","position":"center","margin_left":"0","margin_right":"0","margin_top":"0","margin_bottom":"0","clear_both":"false","startSlide":"0","randomStart":"false","pauseOnHover":"true","manualAdvance":"false","slices":"15","boxCols":"8","boxRows":"4","beforeChange":"function(){}","afterChange":"function(){}","slideshowEnd":"function(){}","lastSlide":"function(){}","afterLoad":"function(){}","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'Content - ARI Sexy Lightbox Lite', 'plugin', 'arisexylightboxlite', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - ARI Sexy Lightbox Lite","type":"plugin","creationDate":"July 2013","author":"ARI Soft","copyright":"ARI Soft","authorEmail":"info@ari-soft.com","authorUrl":"www.ari-soft.com","version":"1.2.3","description":"ARI_SEXY_LIGHTBOX_LITE_PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_filters`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ysr74_finder_taxonomy`
--

INSERT INTO `ysr74_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_terms`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ysr74_finder_terms_common`
--

INSERT INTO `ysr74_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_finder_types`
--

CREATE TABLE IF NOT EXISTS `ysr74_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_languages`
--

CREATE TABLE IF NOT EXISTS `ysr74_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ysr74_languages`
--

INSERT INTO `ysr74_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_menu`
--

CREATE TABLE IF NOT EXISTS `ysr74_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=171 ;

--
-- Volcado de datos para la tabla `ysr74_menu`
--

INSERT INTO `ysr74_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 173, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 79, 80, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 71, 72, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 73, 78, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 74, 75, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 76, 77, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 69, 70, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 81, 82, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Roman.com.mx","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 29, 30, 1, '*', 0),
(104, 'mainmenu', 'Full width page', 'full-width-page', '', '2012-05-05-09-36-04/full-width-page', 'index.php?option=com_content&view=article&id=3', 'component', -2, 125, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 84, 85, 0, '*', 0),
(105, 'mainmenu', 'Works', '2012-04-18-14-10-17', '', '2012-04-18-14-10-17', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 97, 112, 0, '*', 0),
(106, 'mainmenu', 'Features', '2012-04-18-14-10-28', '', '2012-04-18-14-10-28', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 113, 120, 0, '*', 0),
(107, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_content&view=article&id=14', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 121, 122, 0, '*', 0),
(108, 'mainmenu', 'Separator', 'separator', '', 'separator', '', 'separator', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 123, 124, 0, '*', 0),
(109, 'mainmenu', 'Submenu Item #1', '2012-04-18-14-11-48', '', '2012-04-18-14-10-17/2012-04-18-14-11-48', '#', 'url', -2, 105, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 98, 99, 0, '*', 0),
(110, 'mainmenu', 'Submenu Item #2', '2012-04-18-14-12-05', '', '2012-04-18-14-10-17/2012-04-18-14-12-05', '#', 'url', -2, 105, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 100, 105, 0, '*', 0),
(111, 'mainmenu', 'Submenu Item #3', '2012-04-18-14-12-30', '', '2012-04-18-14-10-17/2012-04-18-14-12-05/2012-04-18-14-12-30', '#', 'url', -2, 110, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 101, 102, 0, '*', 0),
(112, 'mainmenu', 'Submenu Item #4', '2012-04-18-14-12-50', '', '2012-04-18-14-10-17/2012-04-18-14-12-05/2012-04-18-14-12-50', '#', 'url', -2, 110, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 103, 104, 0, '*', 0),
(153, 'main', 'com_newsletter_menu', 'com-newsletter-menu', '', 'com-newsletter-menu', 'index.php?option=com_newsletter', 'component', 0, 1, 1, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_newsletter/images/migur-newsletter-16x16.png', 0, '', 169, 170, 0, '', 1),
(114, 'footer-menu', 'Curabitur iaculis', '2012-04-21-10-14-17', '', '2012-04-21-10-14-17', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 125, 126, 0, '*', 0),
(115, 'footer-menu', 'Cum sociis natoque', '2012-04-21-10-14-18', '', '2012-04-21-10-14-18', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 127, 128, 0, '*', 0),
(116, 'footer-menu', 'Parturient montes', '2012-04-21-10-14-19', '', '2012-04-21-10-14-19', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 129, 130, 0, '*', 0),
(117, 'footer-menu', 'Nulla varius commodo', '2012-04-21-10-14-20', '', '2012-04-21-10-14-20', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 131, 132, 0, '*', 0),
(118, 'footer-menu', 'Cum sociis natoque', '2012-04-21-10-14-21', '', '2012-04-21-10-14-21', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 133, 134, 0, '*', 0),
(119, 'footer-menu', 'Egestas augue', '2012-04-21-10-14-22', '', '2012-04-21-10-14-22', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 135, 136, 0, '*', 0),
(120, 'footer-menu', 'Vulputate magna', '2012-04-21-10-14-23', '', '2012-04-21-10-14-23', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 137, 138, 0, '*', 0),
(121, 'footer-menu', 'Donec consectetuer', '2012-04-21-10-14-24', '', '2012-04-21-10-14-24', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 139, 140, 0, '*', 0),
(122, 'mainmenu', 'Portfolio One Column', 'portfolio-one-column', '', '2012-04-18-14-10-17/portfolio-one-column', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', -2, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"5","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 106, 107, 0, '*', 0),
(123, 'mainmenu', 'Portfolio Two Columns', 'portfolio-two-columns', '', '2012-04-18-14-10-17/portfolio-two-columns', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', -2, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"6","num_columns":"2","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 108, 109, 0, '*', 0),
(124, 'mainmenu', 'Portfolio Three Columns', 'portfolio-three-columns', '', '2012-04-18-14-10-17/portfolio-three-columns', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', -2, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"6","num_columns":"3","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"0","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 110, 111, 0, '*', 0),
(125, 'mainmenu', 'Pages', '2012-05-05-09-36-04', '', '2012-05-05-09-36-04', '#', 'url', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 83, 94, 0, '*', 0),
(126, 'mainmenu', 'Right sidebar', 'right-sidebar', '', '2012-05-05-09-36-04/right-sidebar', 'index.php?option=com_content&view=article&id=3', 'component', -2, 125, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 86, 87, 0, '*', 0),
(127, 'mainmenu', 'Left Sidebar', 'left-sidebar', '', '2012-05-05-09-36-04/left-sidebar', 'index.php?option=com_content&view=article&id=3', 'component', -2, 125, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 88, 89, 0, '*', 0),
(128, 'mainmenu', 'Login page', 'login-page', '', '2012-05-05-09-36-04/login-page', 'index.php?option=com_users&view=login', 'component', -2, 125, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 90, 91, 0, '*', 0),
(129, 'mainmenu', 'Register page', 'register-page', '', '2012-05-05-09-36-04/register-page', 'index.php?option=com_users&view=registration', 'component', -2, 125, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 92, 93, 0, '*', 0),
(130, 'mainmenu', 'Typography', 'typography', '', '2012-04-18-14-10-28/typography', 'index.php?option=com_content&view=article&id=16', 'component', -2, 106, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 114, 115, 0, '*', 0),
(131, 'mainmenu', 'Modules positions', 'modules-positions', '', '2012-04-18-14-10-28/modules-positions', 'index.php?option=com_content&view=article&id=15', 'component', -2, 106, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 116, 117, 0, '*', 0),
(132, 'mainmenu', 'Blog', 'blog', '', '2012-04-18-14-10-28/blog', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', -2, 106, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"10","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 118, 119, 0, '*', 0),
(133, 'sidebar-menu', 'Curabitur iaculis', '2012-05-05-10-56-29', '', '2012-05-05-10-56-29', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 141, 142, 0, '*', 0),
(134, 'sidebar-menu', 'Parturient montes', '2012-05-05-10-56-30', '', '2012-05-05-10-56-30', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 143, 144, 0, '*', 0),
(135, 'sidebar-menu', 'Cum sociis natoque', '2012-05-05-10-56-31', '', '2012-05-05-10-56-31', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 145, 146, 0, '*', 0),
(136, 'sidebar-menu', 'Quisque fermentum', '2012-05-05-10-56-32', '', '2012-05-05-10-56-32', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 147, 152, 0, '*', 0),
(137, 'sidebar-menu', 'Egestas augue', '2012-05-05-10-56-33', '', '2012-05-05-10-56-33', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 155, 156, 0, '*', 0),
(138, 'sidebar-menu', 'Donec consectetuer', '2012-05-05-10-56-34', '', '2012-05-05-10-56-34', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 157, 158, 0, '*', 0),
(139, 'sidebar-menu', 'Fermentum vitae', '2012-05-05-10-56-35', '', '2012-05-05-10-56-35', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 159, 160, 0, '*', 0),
(140, 'sidebar-menu', 'Parturient montes', '2012-05-05-10-56-36', '', '2012-05-05-10-56-32/2012-05-05-10-56-36', '#', 'url', 1, 136, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 150, 151, 0, '*', 0),
(141, 'sidebar-menu', 'Vulputate magna', '2012-05-05-10-56-37', '', '2012-05-05-10-56-32/2012-05-05-10-56-37', '#', 'url', 1, 136, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 148, 149, 0, '*', 0),
(142, 'sidebar-menu', 'Nulla varius commodo', '2012-05-05-10-56-38', '', '2012-05-05-10-56-38', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 153, 154, 0, '*', 0),
(143, 'mainmenu', 'The Firm', 'the-firm', '', 'the-firm', '#', 'url', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 31, 38, 0, '*', 0),
(144, 'mainmenu', 'Departments', '2013-10-03-23-30-37', '', '2013-10-03-23-30-37', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 39, 40, 0, '*', 0),
(145, 'mainmenu', 'Lawyers', '2013-10-03-23-31-15', '', '2013-10-03-23-31-15', '', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 61, 62, 0, '*', 0),
(146, 'mainmenu', 'News', '2013-10-03-23-32-03', '', '2013-10-03-23-32-03', 'index.php?option=com_content&view=article&id=31', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 65, 66, 0, '*', 0),
(147, 'mainmenu', 'Foundation', '2013-10-03-23-32-46', '', '2013-10-03-23-32-46', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 67, 68, 0, '*', 0),
(148, 'footer-menu', 'Contact', '2013-10-03-23-37-53', '', '2013-10-03-23-37-53', 'http://www.roman.com.mx/en/index.php/contact', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 161, 162, 0, '*', 0),
(149, 'footer-menu', 'News', '2013-10-03-23-39-13', '', '2013-10-03-23-39-13', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 163, 164, 0, '*', 0),
(150, 'footer-menu', 'Privacy Notice', '2013-10-03-23-40-05', '', '2013-10-03-23-40-05', 'http://roman.com.mx/es/pdf/Aviso_de_Privacidad_Roman_Salcido.pdf', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 165, 166, 0, '*', 0),
(151, 'footer-menu', 'Terms and Conditions', '2013-10-03-23-40-31', '', '2013-10-03-23-40-31', 'http://roman.com.mx/es/pdf/Terminos_y_Condiciones_Roman.pdf', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 167, 168, 0, '*', 0),
(154, 'main', 'COM_NIVOSLIDER', 'com-nivoslider', '', 'com-nivoslider', 'index.php?option=com_nivoslider', 'component', 0, 1, 1, 10041, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 171, 172, 0, '', 1),
(167, 'mainmenu', 'Vision', 'vision', '', 'the-firm/vision', 'index.php?option=com_content&view=article&id=28', 'component', 1, 143, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 32, 33, 0, '*', 0),
(155, 'mainmenu', 'Staff', 'our-staff', '', 'our-staff', 'index.php?option=com_content&view=article&id=18', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 63, 64, 0, '*', 0),
(156, 'mainmenu', 'Foundation RR', 'foundation', '', 'foundation', 'index.php?option=com_content&view=article&id=19', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 95, 96, 0, '*', 0),
(157, 'mainmenu', 'Practice Areas', '2013-11-03-19-20-04', '', '2013-11-03-19-20-04', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 41, 60, 0, '*', 0),
(158, 'mainmenu', 'Fiscal Tax', '2013-11-03-19-22-18', '', '2013-11-03-19-20-04/2013-11-03-19-22-18', '#', 'url', 1, 157, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 42, 53, 0, '*', 0),
(159, 'mainmenu', 'Tax Advisory and fiscal Consulting', 'tax-advisory-and-fiscal-consulting', '', '2013-11-03-19-20-04/2013-11-03-19-22-18/tax-advisory-and-fiscal-consulting', 'index.php?option=com_content&view=article&id=20', 'component', 1, 158, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 43, 44, 0, '*', 0);
INSERT INTO `ysr74_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(160, 'mainmenu', 'Tax Diagnostics', 'tax-diagnostics', '', '2013-11-03-19-20-04/2013-11-03-19-22-18/tax-diagnostics', 'index.php?option=com_content&view=article&id=21', 'component', 1, 158, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 45, 46, 0, '*', 0),
(161, 'mainmenu', 'Consulting Asset and Succession', 'consulting-asset-and-succession', '', '2013-11-03-19-20-04/2013-11-03-19-22-18/consulting-asset-and-succession', 'index.php?option=com_content&view=article&id=22', 'component', 1, 158, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 47, 48, 0, '*', 0),
(162, 'mainmenu', 'Opinion on disposal of shares', 'opinion-on-disposal-of-shares', '', '2013-11-03-19-20-04/2013-11-03-19-22-18/opinion-on-disposal-of-shares', 'index.php?option=com_content&view=article&id=23', 'component', 1, 158, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 49, 50, 0, '*', 0),
(163, 'mainmenu', 'Defense Attorney', 'defense-attorney', '', '2013-11-03-19-20-04/2013-11-03-19-22-18/defense-attorney', 'index.php?option=com_content&view=article&id=24', 'component', 1, 158, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 51, 52, 0, '*', 0),
(164, 'mainmenu', 'Legislative Technique and Deregulation', 'legislative-technique-and-deregulation', '', '2013-11-03-19-20-04/legislative-technique-and-deregulation', 'index.php?option=com_content&view=article&id=25', 'component', 1, 157, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 54, 55, 0, '*', 0),
(165, 'mainmenu', 'Legal', 'legal', '', '2013-11-03-19-20-04/legal', 'index.php?option=com_content&view=article&id=26', 'component', 1, 157, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 56, 57, 0, '*', 0),
(166, 'mainmenu', 'Due Dilligence', 'due-dilligence', '', '2013-11-03-19-20-04/due-dilligence', 'index.php?option=com_content&view=article&id=27', 'component', 1, 157, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 58, 59, 0, '*', 0),
(168, 'mainmenu', 'Our Firm', 'our-firm', '', 'the-firm/our-firm', 'index.php?option=com_content&view=article&id=29', 'component', 1, 143, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 34, 35, 0, '*', 0),
(169, 'mainmenu', 'Services Model', 'services-model', '', 'the-firm/services-model', 'index.php?option=com_content&view=article&id=30', 'component', 1, 143, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 36, 37, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_menu_types`
--

CREATE TABLE IF NOT EXISTS `ysr74_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ysr74_menu_types`
--

INSERT INTO `ysr74_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'footer-menu', 'Footer menu', ''),
(3, 'sidebar-menu', 'Sidebar menu', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_messages`
--

CREATE TABLE IF NOT EXISTS `ysr74_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `ysr74_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_modules`
--

CREATE TABLE IF NOT EXISTS `ysr74_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=124 ;

--
-- Volcado de datos para la tabla `ysr74_modules`
--

INSERT INTO `ysr74_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(17, 'Breadcrumbs', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"Home","showLast":"1","separator":"\\/","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(89, 'Phone Number', '', '<p>Phone: 333-954-22-14</p>', 3, 'head_helpers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 'Email address', '', '<p>email: <a href="mailto:info@roman.com.mx">info@roman.com.mx</a></p>', 2, 'head_helpers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Search module', '', '', 1, 'head_helpers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"Search..","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"0","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(92, 'Plus slider', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_plusslider', 1, 0, '{"width":"1920","height":"500","sliderType":"fader","sliderEasing":"easeOutQuad","displayTime":"5000","speed":"300","defaultSlide":"0","autoPlay":"true","keyboardNavigation":"true","pauseOnHover":"true","createArrows":"true","createPagination":"true","active1":"1","title1":"Ejemplo de T\\u00edtulo Imagen 1","title_small1":"ejemplo de texto Imagen 1","type1":"image","image1":"images\\/slides\\/slider02.jpg","url1":"#","target1":"0","video1":"","flvfile1":"","flv_image1":"","active2":"1","title2":"Ejemplo de T\\u00edtulo Imagen 2","title_small2":"ejemplo de texto Imagen 2","type2":"image","image2":"images\\/slides\\/slider03.jpg","url2":"#","target2":"0","video2":"","flvfile2":"","flv_image2":"","active3":"1","title3":"Ejemplo de T\\u00edtulo Imagen 3","title_small3":"ejemplo de texto Imagen 3","type3":"image","image3":"images\\/slides\\/slider04.jpg","url3":"#","target3":"0","video3":"","flvfile3":"","flv_image3":"","active4":"0","title4":"","title_small4":"","type4":"image","image4":"","url4":"","target4":"0","video4":"","flvfile4":"","flv_image4":"","active5":"0","title5":"","title_small5":"","type5":"image","image5":"","url5":"","target5":"0","video5":"","flvfile5":"","flv_image5":"","active6":"0","title6":"","title_small6":"","type6":"image","image6":"","url6":"","target6":"0","video6":"","flvfile6":"","flv_image6":"","active7":"0","title7":"","title_small7":"","type7":"image","image7":"","url7":"","target7":"0","video7":"","flvfile7":"","flv_image7":"","active8":"0","title8":"","title_small8":"","type8":"image","image8":"","url8":"","target8":"0","video8":"","flvfile8":"","flv_image8":"","active9":"0","title9":"","title_small9":"","type9":"image","image9":"","url9":"","target9":"0","video9":"","flvfile9":"","flv_image9":"","active10":"0","title10":"","title_small10":"","type10":"image","image10":"","url10":"","target10":"0","video10":"","flvfile10":"","flv_image10":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(93, 'About Us', '', '<div class="notas">\r\n<p><img src="images/logo-roman-new.png" border="0" width="148" height="148" style="float: left; margin-right: 15px;" /></p>\r\n<p style="text-align: justify;"><em><span style="font-size: 16px; line-height: 22px;">Dawson Consultores, Román S.C. is a firm specialized in tax and corporative laws. We are governed by high ethical standards, technical and professionally, trained and updated to current problems in taxation.</span></em></p>\r\n<p style="text-align: justify;"><em><span style="font-size: 16px; line-height: 22px;">  <br /></span></em></p>\r\n</div>\r\n<div class="espacio"> </div>\r\n<div class="notas">\r\n<div class="tweets"><center>\r\n<div id="fb-root"> </div>\r\n<script type="text/javascript">// <![CDATA[\r\n(function(d, s, id) {\r\n            var js, fjs = d.getElementsByTagName(s)[0];\r\n            if (d.getElementById(id)) return;\r\n            js = d.createElement(s); js.id = id;\r\n            js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.5&appId=1512985975666334";\r\n            fjs.parentNode.insertBefore(js, fjs);\r\n          }(document, ''script'', ''facebook-jssdk''));\r\n// ]]></script>\r\n<div class="fb-page" data-href="https://www.facebook.com/Rom%C3%A1n-Salcido-y-C%C3%ADa-226673184046769/" data-width="500" data-height="450" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false" data-show-posts="true"> </div>\r\n</center></div>\r\n</div>', 1, 'showcase-a', 42, '2015-10-21 16:58:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, 'Contact form', '', '', 1, 'contact_form', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rapid_contact', 1, 0, '{"department_mail_1":"tino@sigmapcs.com.mx","department_name_1":"Roman","department_mail_2":"","department_name_2":"","department_mail_3":"","department_name_3":"","department_mail_4":"","department_name_4":"","department_mail_5":"","department_name_6":"","from_name":"Contacto desde P\\u00e1gina Web","from_email":"admin@roman.com.mx","name_label":"Name:","email_label":"Email:","subject_label":"Subject:","message_label":"Message:","button_text":"Send","page_text":"Thank you for your contact.","error_text":"Your message could not be sent. Please try again.","no_email":"Please write your email","invalid_email":"Please write a valid email","wrong_antispam":"Wrong Anti-Spam Answer","pre_text":"","exact_url":"1","disable_https":"1","fixed_url":"0","fixed_url_address":"","enable_anti_spam":"0","anti_spam_q":"How many eyes has a typical person?","anti_spam_a":"2","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(95, 'JOIN OUR MAILING LIST', '', '', 1, 'showcase-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_newsletter_subscribe', 1, 1, '{"textprepend":"Subscribe to our monthly newsletter to be updated with our new offers.","textabovename":"","textaboveemail":"","textunderemail":"","showmailtype":"1","defaultmailtype":"1","showtermslink":"0","termslink":"","textappend":"Your email address is safe and we also hate Spam.","fbsecret":"","fbenabled":"0","fbappid":"","layout":"_:default","moduleclass_sfx":"featured_box mail_icon","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(96, 'Our services', '', '<table class="services" style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td colspan="2">\r\n<h2>OUR SERVICES</h2>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="50%">\r\n<h3><img src="images/icon-webdesign.png" border="0" alt="" style="float: left; margin-right: 15px;" />Web design</h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta.<br /> <a href="#"><strong>Learn more →</strong></a></p>\r\n</td>\r\n<td width="50%">\r\n<h3>Search Engine Optimisation<img src="images/icon-seo.png" border="0" alt="" style="float: left; margin-right: 15px;" /></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta.<br /> <a href="#"><strong>Learn more →</strong></a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Social media<img src="images/icon-social.png" border="0" alt="" style="float: left; margin-right: 15px;" /></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta.<br /> <a href="#"><strong>Learn more →</strong></a></p>\r\n</td>\r\n<td>\r\n<h3>e-Commerce solutions<img src="images/icon-ecommerce.png" border="0" alt="" style="float: left; margin-right: 15px;" /></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta.<br /> <a href="#"><strong>Learn more →</strong></a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 'Google Map', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_hg_googlemap', 1, 0, '{"width":"100%","height":"300","imagepin":"","anchor":"bottom-center","centerMap":"20.630249,-103.425291","zoom":"17","type":"ROADMAP","enable_control":"true","controll":"DROPDOWN_MENU","draging":"true","mousewheel":"false","marker_animation":"1","animation_type":"DROP","markers":"20.630249,-103.425291","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(98, 'LATEST BLOG POSTS', '', '', 0, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["9"],"count":"2","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"grey_box comments_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 'Recent Projects', '', '', 1, 'utility-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_recent_projects', 1, 0, '{"maintitle":"RECENT PROJECTS","maindescription":"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.","mainlink":"105","btntext":"View all our projects \\u2192","title1":"Pellente tellus nunc","image1":"images\\/img02.jpg","description1":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. ","linktype1":"external","link1":"101","externallink1":"#","articlelink1":"1","title2":"Pellente tellus nunc","image2":"images\\/img03.jpg","description2":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. ","linktype2":"external","link2":"101","externallink2":"#","articlelink2":"1","title3":"Pellente tellus nunc","image3":"images\\/img04.jpg","description3":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. ","linktype3":"external","link3":"101","externallink3":"#","articlelink3":"1","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(100, 'Partners / Technologies used', '', '<p><img src="images/partners/mysql.png" border="0" alt="" /><img src="images/partners/php.png" border="0" alt="" /><img src="images/partners/wordpress.png" border="0" alt="" /><img src="images/partners/html5.png" border="0" alt="" /><img src="images/partners/css3.png" border="0" alt="" /><img src="images/partners/joomla.png" border="0" alt="" /><img src="images/partners/jquery.png" border="0" alt="" /></p>', 1, 'mainbottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"partners","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 'FOOTER NAVIGATION', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"footer-menu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(103, 'LATEST TWEETS', '', '', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_sl_twitter', 1, 1, '{"moduleclass_sfx":"","username":"joomla","count":"1"}', 0, '*'),
(104, 'GET SOCIAL WITH US', '', '<p><a href="https://www.facebook.com/Rom%C3%A1n-Salcido-y-C%C3%ADa-226673184046769/" target="_blank"><img src="images/social_icons/facebook.png" border="0" alt="Follow us on Facebook" /></a><a href="https://plus.google.com/u/0/112607801442764953685/posts" target="_blank"><img src="images/social_icons/gplus.png" border="0" alt="Follow us on Google Plus" /></a><a href="http://www.linkedin.com/company/dawson-consultores-rom-n-solis-garc-a-vel-zquez-s-c-" target="_blank"><img src="images/social_icons/linkedin.png" border="0" alt="Follow us on LinkedIn" /></a><a href="https://twitter.com/Dawson_SC" target="_blank"><img src="images/social_icons/twitter.png" border="0" alt="Follow us on Twitter" /></a></p>', 2, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"social_icons","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(105, 'GET IN TOUCH', '', '<p>Roman by Dawson</p>\r\n<p>Email: <a href="mailto:info@roman.com.mx">info@roman.com.mx</a></p>\r\n<p>Email: <a href="mailto:info@dawson.com.mx">info@dawson.com.mx</a></p>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(121, 'image', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_plusslider', 1, 0, '{"width":"1920","height":"300","sliderType":"fader","sliderEasing":"easeOutQuad","displayTime":"4000","speed":"500","defaultSlide":"0","autoPlay":"false","keyboardNavigation":"false","pauseOnHover":"false","createArrows":"false","createPagination":"false","active1":"1","title1":"","title_small1":"","type1":"image","image1":"images\\/slides\\/slider03.jpg","url1":"","target1":"0","video1":"","flvfile1":"","flv_image1":"","active2":"0","title2":"","title_small2":"","type2":"image","image2":"","url2":"","target2":"0","video2":"","flvfile2":"","flv_image2":"","active3":"0","title3":"","title_small3":"","type3":"image","image3":"","url3":"","target3":"0","video3":"","flvfile3":"","flv_image3":"","active4":"0","title4":"","title_small4":"","type4":"image","image4":"","url4":"","target4":"0","video4":"","flvfile4":"","flv_image4":"","active5":"0","title5":"","title_small5":"","type5":"image","image5":"","url5":"","target5":"0","video5":"","flvfile5":"","flv_image5":"","active6":"0","title6":"","title_small6":"","type6":"image","image6":"","url6":"","target6":"0","video6":"","flvfile6":"","flv_image6":"","active7":"0","title7":"","title_small7":"","type7":"image","image7":"","url7":"","target7":"0","video7":"","flvfile7":"","flv_image7":"","active8":"0","title8":"","title_small8":"","type8":"image","image8":"","url8":"","target8":"0","video8":"","flvfile8":"","flv_image8":"","active9":"0","title9":"","title_small9":"","type9":"image","image9":"","url9":"","target9":"0","video9":"","flvfile9":"","flv_image9":"","active10":"0","title10":"","title_small10":"","type10":"image","image10":"","url10":"","target10":"0","video10":"","flvfile10":"","flv_image10":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(119, 'Slider', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unite_nivoslider', 1, 0, '{"sliderid":"1","width":"940","height":"500","pauseTime":"5000","animSpeed":"500","effect":["sliceDownLeft"],"theme":"default","controlNav":"false","directionNav":"true","prevText":"Prev","nextText":"Next","position":"center","margin_left":"0","margin_right":"0","margin_top":"0","margin_bottom":"0","clear_both":"false","startSlide":"0","randomStart":"false","pauseOnHover":"true","manualAdvance":"false","slices":"15","boxCols":"8","boxRows":"4","beforeChange":"function(){}","afterChange":"function(){}","slideshowEnd":"function(){}","lastSlide":"function(){}","afterLoad":"function(){}","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(106, 'FLICKR STREAM', '', '', 1, 'bottom-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_flickrfeed', 1, 1, '{"limit":"10","flickrid":"52617155@N08","perrow":"4","width":"40","height":"40","follow_link":"","follow_text":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(107, 'Copyright', '', '<p>© Copyright 2013 Roman.com.mx. | Desarrollado por <a href="http://www.gsupportech.com" target="_blank">gSupporTech</a></p>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 'Social Sharing module', '', '', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_hg_share', 1, 0, '{"fblike":"0","tweet":"0","text":"Check out this awesome free  #joomlatemplate","via":"hogash","url":"www.hogash.com","follow":"0","gplus":"0","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(111, 'SIDEBAR MENU', '', '', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"sidebar-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(112, 'SOME ADS', '', '<p><a href="http://www.hogash.com/premium-joomla-templates/" target="_blank" title="Premium Joomla Templates"><img src="images/premium_joomla_templates_188x125.jpg" border="0" alt="Premium Joomla Templates" /></a></p>\r\n<p><a href="#"><img src="http://placehold.it/188x85" border="0" alt="" /></a></p>', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(113, 'SOME ADS', '', '<p><a href="http://www.hogash.com/premium-joomla-templates/" target="_blank" title="Premium Joomla Templates"><img src="images/premium_joomla_templates_188x125.jpg" border="0" alt="Premium Joomla Templates" /></a></p>\r\n<p><a href="#"><img src="http://placehold.it/188x85" border="0" alt="" /></a></p>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(114, 'Mobile Homepage Content', '', '<h3>ERIS Mobile</h3>\r\n<p>Quisque adipiscing convallis cursus. Cras in accumsan nisi. Nulla eu eros a leo gravida mattis. Aliquam mollis feugiat laoreet. Nullam nec eros magna, vel sagittis quam. Sed rhoncus, nunc ut auctor consectetur, orci metus dictum dui, ac sodales dui sem vel libero.</p>\r\n<p>Duis arcu est, commodo sit amet mattis in, iaculis ac ante. Nam dictum, turpis ut placerat aliquet, tortor est mattis diam, non varius lectus arcu sit amet lectus. Aenean non elementum lorem. Nam velit felis, viverra vitae scelerisque eget, bibendum vel dolor. Maecenas auctor ipsum ut nibh sollicitudin varius. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin condimentum metus sit amet purus congue non mollis augue tincidunt.</p>', 0, 'mobile-maintop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(115, 'idioma', '', '<p><a href="http://www.roman.com.mx/es/">Español</a></p>', 1, 'head_helpers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, 'Our Newsletters', '', '', 1, 'showcase-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["11"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"featured_box mail_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(117, 'Tweets', '', '<div class="notas">\r\n<div class="twits">\r\n<p style="width: 100%;"><a class="twitter-timeline" href="https://twitter.com/Dawson_SC" data-widget-id="403935564686041088">Tweets por @Dawson_SC</a></p>\r\n<script type="text/javascript">// <![CDATA[\r\n!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?''http'':''https'';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");\r\n// ]]></script>\r\n</div>\r\n</div>', 1, 'showcase-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(118, 'Latest News', '', '', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["12"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"grey_box comments_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(120, 'Our Newsletters', '', '<div class="boletin">\r\n<p><a href="pdf/reformafiscal2016.pdf" target="_blank">Ene-27-16 Reforma Fiscal 2016</a></p>\r\n<p><a href="images/boletines/reforma-fiscal-2015.pdf" target="_blank">Feb-18-15 Reformas Fiscales 2015</a></p>\r\n<p><a href="images/boletines/Reforma-Fiscal-y-Hacendaria-2014-Dawson-Exp-Gdl-Def.pdf" target="_blank">Ene-09-14 Reformas Fiscales 2014</a></p>\r\n<p><a href="images/boletines/Comparativo_LISR_13-14.pdf">Ene-09-14 Comparativo LISR 13-14</a></p>\r\n<p><a href="images/boletines/Comparativo-CFF.pdf" target="_blank">Ene-09-14 Comparativo CFF</a></p>\r\n<p><a href="images/boletines/Infodawson_Ago-02_Obligacion_Ley_Federal_de_Proteccion_de_Datos_personales_en_Posesion_de_los_particulares.pdf" target="_blank">Ago-02 Obligación Ley Federal de Protección de Datos personales en Posesión de los Partículares</a></p>\r\n<div class="boletin">\r\n<p><a href="images/boletines/Infodawson_Abr-01_Percepciones_y_Deducciones.pdf" target="_blank">Abr-01 Percepciones y Deducciones</a></p>\r\n<p><a href="images/boletines/Infodawson_Feb-5_Deducion_de_Creditos_Incobrables.pdf" target="_blank">Feb-5 Dedución de Créditos Incobrables</a></p>\r\n</div>\r\n</div>', 1, 'showcase-c', 42, '2016-01-28 02:24:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"featured_box mail_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(122, 'Latest News (2)', '', '', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["12"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"grey_box comments_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(123, 'Latest News', '', '<div class="noticias">\r\n<p><a href="http://www.sat.gob.mx/sitio_internet/novedades/" target="_blank">SAT News</a></p>\r\n</div>', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"grey_box comments_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_modules_menu`
--

CREATE TABLE IF NOT EXISTS `ysr74_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ysr74_modules_menu`
--

INSERT INTO `ysr74_modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, -101),
(79, 0),
(86, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 101),
(93, 101),
(95, 101),
(96, 101),
(98, 101),
(99, 101),
(100, 101),
(101, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 107),
(111, 106),
(111, 126),
(111, 130),
(111, 131),
(111, 132),
(112, 126),
(112, 128),
(112, 129),
(112, 130),
(112, 131),
(112, 132),
(113, 127),
(114, 101),
(115, 0),
(116, 101),
(117, 101),
(118, 101),
(119, 101),
(120, 101),
(121, 155),
(122, 101),
(123, 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_automailing_items`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_automailing_items` (
  `series_id` int(11) NOT NULL AUTO_INCREMENT,
  `automailing_id` int(11) DEFAULT NULL,
  `newsletter_id` bigint(11) DEFAULT NULL,
  `time_start` timestamp NULL DEFAULT NULL,
  `time_offset` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `sent` int(11) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`series_id`),
  KEY `automailing_ids_idxfk` (`automailing_id`),
  KEY `newsletter_ids_idxfk` (`newsletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_automailing_targets`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_automailing_targets` (
  `am_target_id` int(11) NOT NULL AUTO_INCREMENT,
  `automailing_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`am_target_id`),
  KEY `automailing_ids_idxfk` (`automailing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_automailings`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_automailings` (
  `automailing_id` int(11) NOT NULL AUTO_INCREMENT,
  `automailing_name` varchar(255) DEFAULT NULL,
  `automailing_type` enum('scheduled','eventbased') DEFAULT NULL,
  `automailing_event` enum('date','subscription') DEFAULT NULL,
  `automailing_state` int(11) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`automailing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_downloads`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_downloads` (
  `downloads_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  PRIMARY KEY (`downloads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_extensions`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `ysr74_newsletter_extensions`
--

INSERT INTO `ysr74_newsletter_extensions` (`extension_id`, `title`, `extension`, `params`, `type`) VALUES
(7, 'Article module', 'mod_article', '{"text_mode":"0","text_amount":"200","strip_tags":"0","show_articlelink":"1"}', 1),
(8, 'Image module', 'mod_img', '{"img_title":"","img_width":"auto","img_height":"auto","img_linkable":"0","img_link_url":"","img_link_target":"1"}', 1),
(9, 'RSS module', 'mod_rss', '{"feed_url":"http:\\/\\/"}', 1),
(10, 'Text module', 'mod_text', '[]', 1),
(11, 'WYSIWYG module', 'mod_wysiwyg', '[]', 1),
(12, 'Example of Import plugin', 'importexample', '{}', 2),
(13, 'Google Analytics Plugin', 'ganalytics', '{"goal":""}', 2),
(14, 'Standard doublecolumn template', 'doublecolumn1', '{}', 3),
(15, 'Standard singlecolumn template', 'singlecolumn1', '{}', 3),
(16, 'Standard threecolumn template', 'threecolumn1', '{}', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_lists`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_lists` (
  `list_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `smtp_profile_id` int(11) NOT NULL,
  `ordering` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  `internal` tinyint(3) NOT NULL DEFAULT '0',
  `send_at_reg` int(11) NOT NULL DEFAULT '0',
  `send_at_unsubscribe` int(11) NOT NULL DEFAULT '0',
  `extra` text,
  PRIMARY KEY (`list_id`),
  KEY `smtp_profile_id_idxfk` (`smtp_profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ysr74_newsletter_lists`
--

INSERT INTO `ysr74_newsletter_lists` (`list_id`, `name`, `state`, `description`, `smtp_profile_id`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `internal`, `send_at_reg`, `send_at_unsubscribe`, `extra`) VALUES
(2, 'Doe Family holiday!', 1, 'The letter for Doe family members about birthday of Baby Doe!', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_logs`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `date` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `category` varchar(255) NOT NULL DEFAULT 'common',
  `params` text,
  PRIMARY KEY (`log_id`),
  KEY `date_idfk` (`date`),
  KEY `category_idfk` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_mailbox_profiles`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_mailbox_profiles` (
  `mailbox_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `mailbox_profile_name` varchar(255) DEFAULT NULL,
  `mailbox_server` varchar(255) DEFAULT NULL,
  `mailbox_server_type` varchar(255) DEFAULT NULL,
  `mailbox_port` int(11) DEFAULT NULL,
  `is_ssl` enum('1','0') DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`mailbox_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_newsletters`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_newsletters` (
  `newsletter_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `smtp_profile_id` int(11) NOT NULL,
  `t_style_id` int(10) DEFAULT NULL,
  `plain` text,
  `params` text,
  `ordering` int(11) NOT NULL,
  `language` char(7) NOT NULL,
  `checked_out` int(10) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created` datetime NOT NULL,
  `sent_started` datetime NOT NULL,
  `type` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`newsletter_id`),
  KEY `smtp_profile_id_idxfk` (`smtp_profile_id`),
  KEY `t_style_id_idxfk` (`t_style_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ysr74_newsletter_newsletters`
--

INSERT INTO `ysr74_newsletter_newsletters` (`newsletter_id`, `name`, `subject`, `alias`, `smtp_profile_id`, `t_style_id`, `plain`, `params`, `ordering`, `language`, `checked_out`, `checked_out_time`, `created`, `sent_started`, `type`, `category`) VALUES
(1, 'Birthday of Baby Doe!', 'Baby Doe', 'birthdayofbabydoe', 0, 6, 'Meet the Baby Doe!\nCongratulations for [username]! \n\nTo unsubscribe: [unsubscription link]', '{"newsletter_from_name":"John Doe","newsletter_from_email":"johndoe@example.com","newsletter_to_name":"John Doe","newsletter_to_email":"johndoe@example.com"}', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_newsletters_ext`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_newsletters_ext` (
  `newsletters_ext_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_id` bigint(20) NOT NULL,
  `extension_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `params` text,
  `ordering` int(11) DEFAULT NULL,
  `native` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `showtitle` int(11) DEFAULT NULL,
  PRIMARY KEY (`newsletters_ext_id`),
  KEY `newsletter_idxfk` (`newsletter_id`),
  KEY `extension_id_idxfk` (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `ysr74_newsletter_newsletters_ext`
--

INSERT INTO `ysr74_newsletter_newsletters_ext` (`newsletters_ext_id`, `newsletter_id`, `extension_id`, `position`, `params`, `ordering`, `native`, `title`, `showtitle`) VALUES
(1, 1, 4, 'header_module_position', '{"text":"<p>Hi! Wellocme to migur newsletter. You need to complete registration. Please follow this link</p>\n<p>[confirmation link]</p>"}', 1, 0, 'Welcome to Migur Newsletter', 1),
(6, 96, 4, 'header_module_position', '{"text":"<p>Meet the Baby Doe!<\\/p>\\n<p>Congratulations for [username]!<\\/p>"}', 1, 0, 'Text Module', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_queue` (
  `queue_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `newsletter_id` bigint(20) DEFAULT NULL,
  `subscriber_id` bigint(20) DEFAULT NULL,
  `list_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`queue_id`),
  KEY `newsletter_queue_state` (`state`),
  KEY `newsletter_ids_idxfk` (`newsletter_id`),
  KEY `subscriber_ids_idxfk` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_sent`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_sent` (
  `sent_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscriber_id` bigint(20) NOT NULL,
  `list_id` bigint(20) NOT NULL,
  `newsletter_id` bigint(20) NOT NULL,
  `sent_date` datetime NOT NULL,
  `recieved_date` datetime NOT NULL,
  `bounced` enum('NO','HARD','SOFT','TECHNICAL') NOT NULL,
  `html_content` text,
  `plaintext_content` text,
  PRIMARY KEY (`sent_id`),
  KEY `list_id_idxfk` (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_smtp_profiles`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_smtp_profiles` (
  `smtp_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_profile_name` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `reply_to_email` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `smtp_server` varchar(255) DEFAULT NULL,
  `smtp_port` int(2) DEFAULT NULL,
  `is_ssl` int(11) DEFAULT NULL,
  `pop_before_smtp` enum('1','0') DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mailbox_profile_id` int(11) DEFAULT NULL,
  `params` text,
  `is_joomla` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`smtp_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_sub_history`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_sub_history` (
  `history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscriber_id` bigint(20) DEFAULT NULL,
  `list_id` bigint(20) DEFAULT NULL,
  `newsletter_id` bigint(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `action` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`history_id`),
  KEY `list_id_idxfk` (`list_id`),
  KEY `newsletter_id_idxfk` (`newsletter_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_sub_list`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_sub_list` (
  `sublist_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscriber_id` bigint(20) NOT NULL,
  `list_id` bigint(20) NOT NULL,
  `confirmed` varchar(255) NOT NULL,
  `extra` text,
  PRIMARY KEY (`sublist_id`),
  UNIQUE KEY `unique-subscriber` (`subscriber_id`,`list_id`),
  KEY `list_id_idxfk` (`list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ysr74_newsletter_sub_list`
--

INSERT INTO `ysr74_newsletter_sub_list` (`sublist_id`, `subscriber_id`, `list_id`, `confirmed`, `extra`) VALUES
(1, 2, 2, '', NULL),
(2, 1, 2, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_subscribers`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_subscribers` (
  `subscriber_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `html` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  `confirmed` varchar(255) NOT NULL,
  `subscription_key` varchar(40) NOT NULL,
  `extra` text,
  PRIMARY KEY (`subscriber_id`,`user_id`),
  KEY `email_idx` (`email`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ysr74_newsletter_subscribers`
--

INSERT INTO `ysr74_newsletter_subscribers` (`subscriber_id`, `name`, `email`, `state`, `html`, `user_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `confirmed`, `subscription_key`, `extra`) VALUES
(1, 'John Doe', 'john-doe123123123@gmail.com', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '1', '1234560000000011234567890', NULL),
(2, 'Jane Doe', 'jane-doe123123123@gmail.com', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '1', '6543210000000021234567895', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_template_styles`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_template_styles` (
  `t_style_id` int(10) NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`t_style_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `ysr74_newsletter_template_styles`
--

INSERT INTO `ysr74_newsletter_template_styles` (`t_style_id`, `template`, `title`, `params`) VALUES
(5, 'doublecolumn1.xml', 'Standard doublecolumn template (custom)', '{"width_column1":"50%","height_column1":"50%","width_column2":"50%","height_column2":"50%","image_top":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/top_image.png","image_top_alt":"The top image","image_top_width":"600px","image_top_height":"100px","image_bottom":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/bottom_image.png","image_bottom_alt":"The bottom image","image_bottom_width":"600px","image_bottom_height":"100px","table_background":"#FFFFFF","text_color":"#888888","t_style_id":"5"}'),
(6, 'singlecolumn1.xml', 'Standard singlecolumn template (custom)', '{"width_column1":"50%","height_column1":"50%","width_column2":"50%","height_column2":"50%","image_top":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/top_image.png","image_top_alt":"The top image","image_top_width":"600px","image_top_height":"100px","image_bottom":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/bottom_image.png","image_bottom_alt":"The bottom image","image_bottom_width":"600px","image_bottom_height":"100px","table_background":"#FFFFFF","text_color":"#888888","t_style_id":"6"}'),
(8, 'threecolumn1.xml', 'Standard threecolumn template (custom)', '{"width_column1":"50%","height_column1":"50%","width_column2":"50%","height_column2":"50%","image_top":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/top_image.png","image_top_alt":"The top image","image_top_width":"600px","image_top_height":"100px","image_bottom":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/bottom_image.png","image_bottom_alt":"The bottom image","image_bottom_width":"600px","image_bottom_height":"100px","table_background":"#FFFFFF","text_color":"#888888","t_style_id":"8"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_newsletter_threads`
--

CREATE TABLE IF NOT EXISTS `ysr74_newsletter_threads` (
  `thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `type` enum('send','automail','read') NOT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `resource` varchar(255) NOT NULL COMMENT 'The target point of a process. email for ''send'' and ''read''',
  `params` text,
  PRIMARY KEY (`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_nivoslider`
--

CREATE TABLE IF NOT EXISTS `ysr74_nivoslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ysr74_nivoslider`
--

INSERT INTO `ysr74_nivoslider` (`id`, `catid`, `sliderid`, `title`, `alias`, `image`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 0, 1, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"image":"images\\/slider02a.jpg","description":"","activate_link":"no","link":"","link_open_in":"new"}'),
(2, 0, 1, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 2, '{"image":"images\\/slider03a.jpg","description":"","activate_link":"no","link":"","link_open_in":"new"}'),
(3, 0, 1, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 3, '{"image":"images\\/slider04a.jpg","description":"","activate_link":"no","link":"","link_open_in":"new"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_nivoslider_sliders`
--

CREATE TABLE IF NOT EXISTS `ysr74_nivoslider_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ysr74_nivoslider_sliders`
--

INSERT INTO `ysr74_nivoslider_sliders` (`id`, `title`, `alias`, `image`, `description`, `published`, `ordering`, `params`) VALUES
(1, 'Home', 'home', '', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_overrider`
--

CREATE TABLE IF NOT EXISTS `ysr74_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_redirect_links`
--

CREATE TABLE IF NOT EXISTS `ysr74_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `ysr74_redirect_links`
--

INSERT INTO `ysr74_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://hogash.com/demo/eris_joomla/index.php/templates/rt_gantry/demo/jscolor/cross.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/contact', '', 0, '2012-05-06 14:44:23', '0000-00-00 00:00:00'),
(2, 'http://hogash.com/demo/eris_joomla/index.php/templates/rt_gantry/demo/jscolor/arrow.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/contact', '', 0, '2012-05-06 14:44:23', '0000-00-00 00:00:00'),
(3, 'http://hogash.com/demo/eris_joomla/index.php/templates/rt_gantry/demo/jscolor/hs.png', '', 'http://hogash.com/demo/eris_joomla/index.php/contact', '', 0, '2012-05-06 14:44:23', '0000-00-00 00:00:00'),
(4, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/templates/rt_gantry/demo/jscolor/cross.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/portfolio-two-columns', '', 0, '2012-05-06 14:48:20', '0000-00-00 00:00:00'),
(5, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/templates/rt_gantry/demo/jscolor/hs.png', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/portfolio-two-columns', '', 0, '2012-05-06 14:48:20', '0000-00-00 00:00:00'),
(6, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/templates/rt_gantry/demo/jscolor/arrow.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/portfolio-two-columns', '', 0, '2012-05-06 14:48:20', '0000-00-00 00:00:00'),
(7, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/templates/rt_gantry/demo/jscolor/hs.png', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/blog', '', 0, '2012-05-06 14:48:35', '0000-00-00 00:00:00'),
(8, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/templates/rt_gantry/demo/jscolor/arrow.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/blog', '', 0, '2012-05-06 14:48:35', '0000-00-00 00:00:00'),
(9, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/templates/rt_gantry/demo/jscolor/cross.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/blog', '', 0, '2012-05-06 14:48:35', '0000-00-00 00:00:00'),
(10, 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/templates/rt_gantry/demo/jscolor/arrow.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/full-width-page', '', 0, '2012-05-06 16:40:54', '0000-00-00 00:00:00'),
(11, 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/templates/rt_gantry/demo/jscolor/cross.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/full-width-page', '', 0, '2012-05-06 16:40:54', '0000-00-00 00:00:00'),
(12, 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/templates/rt_gantry/demo/jscolor/hs.png', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/full-width-page', '', 0, '2012-05-06 16:40:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_schemas`
--

CREATE TABLE IF NOT EXISTS `ysr74_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ysr74_schemas`
--

INSERT INTO `ysr74_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.17'),
(10021, '13.08a1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_session`
--

CREATE TABLE IF NOT EXISTS `ysr74_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ysr74_session`
--

INSERT INTO `ysr74_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('24abbd2dabe06b1d4bf63b3cf0c55f4d', 0, 1, '1458838547', '2oekp3I4u3dVjlwiFq_i_OMAURMX-tG_soYCe2tjW5W4nF4ioDmpOjhyv47_0RHnL5QX_3qp7MAsUhi8IlpRaA7LKDPo1ML9n9PjeYSA0PHdAKDI2DYYZOodxTGXSSQagVebMEiDYkjQpVEIS_2pbyWN95ue--wYBqodafUCetJZfWJR_HsYf8Ec1B1jNqWsYzH-fclDXbJfJe2pCCl9j-rQXbfzukIlSKjtqR7OEE5gN9DP3ebaYIRWg95R6kxPLeIPGq6SVvsqRVgAWuwqWV7_uQlyw2RJWkuvMI5pJo_kn-QOWy60rNz6f9iLfSEsPnrjk3KPLdDDalnAcf_slZc9HOiJMC8f1VDjRwDPVnge_hx81xKinDRsopL97fXKxl5-nPWeXAGCb7wksc-EpHKNbS0pvZdA2OZVZ30wqFvTrCTGfvLW1EKuyaPxXSvS55khTFwuEtqqVfXZ_JzW7g8MxAhBE88o263Wm1cpWQqXN8ZhnYM1Ri56-aEiKd8XFp3t9y23zcmMX3rqPr3qq4rVFtqAKo_tbgOls2Gy77EUp1qSD5w8uzD5lBybIcAQ5-n-48hqJ7SwJqGeW4ba0TDhiteIzqv15q5f2xyjy-gVtYbKwQNs0vTyEKxRzyGYeN8YXzTIQLAAj51b6w8sz49ZLuvIY8zJgZ9IcaNXF7H_sBUTVta_7vZy2DBfgAvJfZERdM4od-G3LoMHdWs1jLM_Mr7RBqlrphw64nLDmHEoKm7EQyJfcvwNMyh8BYKAw4WB03dgMeHbPSsqZ8iVV5SC8RzSM5krog0gH-fsHgHNjn69-2dIiC-yJZOtQSc9emrqirVjGprPbfs8Hv7ebdqq2gVqEuaWh_WShffDpoJ4DyzUPyYBteMvWj0Ze0oAkWRRiHM9UzdOrR539lU2LbUg3qy46A2tSamcq2qum56nLLrLvMwP8pD53xiPUGvDz4vhLW7awH-bW42_HnfymaeOSRK0i9dkoiutbnIsKLMQJWppXJklePZJNlfXulUgiTNqRhpmPh25a_4uNeHnHlGpmHpdMs2lOS5wZNz-HHNdGyiIsJPQBDmmYw5hOZh5o1aaFzbPAlP6IKpoReJTUYGhvv_U2diyhPdg641qiiPIG9a4r7OjGH81r2nPofR6D1gLZp8uEcphTFfHt38L2OUTxAUNLCJ2XxyE0yUHZyPo6VSnoSr4DX-xBRt7yhmuy2T05ZWdD3dXCn4p0gCRlZZVdCxE2uqhnhwnLfkVJcDvhdcNei7eKKSauTJhAsTg', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_template_styles`
--

CREATE TABLE IF NOT EXISTS `ysr74_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `ysr74_template_styles`
--

INSERT INTO `ysr74_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(11, 'eris', 0, '0', 'Eris Template - Left Sidebar', '{"master":"10","current_id":"11","mainbodyPosition":"a:1:{i:12;a:3:{i:1;a:1:{s:2:\\"mb\\";i:12;}i:2;a:2:{s:2:\\"sa\\";i:3;s:2:\\"mb\\";i:9;}i:3;a:3:{s:2:\\"sa\\";i:3;s:2:\\"mb\\";i:6;s:2:\\"sb\\";i:3;}}}"}'),
(10, 'eris', 0, '1', 'Eris Template', '{"master":"true","current_id":"10","template_full_name":"Gantry Template","grid_system":"12","template_prefix":"gantry-","cookie_time":"31536000","copy_lang_files_if_diff":"1","bgcolor":"#d7d7d7","body_color":"#02867f","header-gradient":{"from":"#d7d7d7","to":"#d7d7d7"},"elementscolor":"#02867f","bottomcolor":"#2b2b2b","footercolor":"#2b2b2b","linkcolor":"#02867f","webfonts":{"enabled":"1","source":"google"},"font":{"family":"g:Cuprum","size":"default","size-is":"default"},"demo_panel":"0","viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","iphonegradients-priority":"6","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","inactive-priority":"10","iphoneimages-priority":"11","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","belatedpng-priority":"17","fusionmenu-priority":"18","ie6menu-priority":"19","ie6warn-priority":"20","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","suckerfishmenu-priority":"25","touchmenu-priority":"26","webfonts-priority":"27","styledeclaration-enabled":"1","logo":{"enabled":"1","znlogo":"images\\/logo-roman-new2.png","autosize":"1","logowidth":"","logoheight":"","logopadding":"20px 0 20px 0","position":"logo"},"favicon":{"fav":"images\\/favicon32x32.png","favapple":"images\\/favicon72x72.png"},"prettyphoto":{"enabled":"1","theme":"light_rounded"},"date":{"enabled":"1","position":"date","clientside":"0","formats":"%A, %B %d, %Y"},"smartload":{"enabled":"0","text":"50","ignores":"com_contact","exclusion":""},"totop":{"enabled":"1","position":"totop","text":"Scroll to Top"},"systemmessages":{"enabled":"1","position":"syserrors"},"ie6warn":{"enabled":"1","delay":"2000"},"analytics":{"enabled":"1","code":"UA-4777573-25"},"menu":{"enabled":"1","type":"fusionmenu","fusionmenu":{"position":"header-a","enable_js":"1","opacity":"1","effect":"slidefade","hidedelay":"500","menu-animation":"Circ.easeOut","menu-duration":"300","centered-offset":"0","tweak-initial-x":"-10","tweak-initial-y":"-13","tweak-subsequent-x":"0","tweak-subsequent-y":"0","tweak-width":"20","tweak-height":"20","enable-current-id":"0","theme":"gantry-fusion","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","module_cache":"1"},"splitmenu":{"theme":"gantry-splitmenu","cache":"0","module_cache":"1","mainmenu-position":"header-b","mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-position":"sidebar-a","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"9","submenu-class_sfx":""}},"top":{"layout":"5,7","showall":"0","showmax":"6"},"header":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"showcase":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:8;i:1;i:4;}}}","showall":"0","showmax":"6"},"feature":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:8;i:1;i:4;}}}","showall":"0","showmax":"6"},"utility":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"6,3,3","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"iphone-enabled":"0","android-enabled":"0","iphone-scalable":"0","iphone-switcher":{"enabled":"0","position":"mobile-header"},"touchmenu":{"enabled":"1","position":"mobile-navigation","theme":"touch","animation":"cube","cache":"0","module_cache":"1","startLevel":"0","endLevel":"20","showAllChildren":"1"},"iphoneimages":{"enabled":"1","minWidth":"80","percentage":"33"},"iphone-header-gradient":{"from":"#ffffff","to":"#f5f5f5","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"iphone-showcase-gradient":{"from":"#ededed","to":"#fff","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"iphone-footer-gradient":{"from":"#545353","to":"#262626","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"mobile":{"drawer":"drawer","top":"top-a","header":"logo","navigation":"mobile-navigation","maintop":"mobile-maintop","showcase":"mobile-showcase","footer":"footer-a","copyright":"copyright"},"cache":{"enabled":"0","time":"900"},"gzipper":{"enabled":"0","time":"600","expirestime":"1440","stripwhitespace":"1"},"inputstyling":{"enabled":"0","exclusions":"''.content_vote''"},"component-enabled":"0","rtl-enabled":"1","buildspans-enabled":"0","pagesuffix-enabled":"1","inactive":{"enabled":"1"}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_update_categories`
--

CREATE TABLE IF NOT EXISTS `ysr74_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_update_sites`
--

CREATE TABLE IF NOT EXISTS `ysr74_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ysr74_update_sites`
--

INSERT INTO `ysr74_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1453947761),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1453947761),
(10, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1453947761),
(6, 'Migur', 'extension', 'http://update.migur.com/newsletter.xml', 1, 1389286277),
(7, 'Simple Image Gallery (by JoomlaWorks)', 'extension', 'http://www.joomlaworks.gr/extensions/updates/sig.xml', 0, 1389286279),
(9, 'Simple Image Gallery', 'extension', 'http://www.joomlaworks.net/updates/jw_sig.xml', 1, 1389286279);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `ysr74_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `ysr74_update_sites_extensions`
--

INSERT INTO `ysr74_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(6, 10021),
(7, 10028),
(9, 10040),
(10, 10045);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_updates`
--

CREATE TABLE IF NOT EXISTS `ysr74_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `ysr74_updates`
--

INSERT INTO `ysr74_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(2, 9, 10028, 0, 'Simple Image Gallery', 'The best free image gallery for Joomla!', 'jw_simpleimagegallery', 'plugin', 'content', 0, '3.0.0', '', 'http://www.joomlaworks.net/updates/jw_sig.xml', 'http://forum.joomlaworks.net/extension-updates/may-27th-2013-simple-image-gallery-v3-0-0/'),
(3, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.27', '', 'http://update.joomla.org/core/extension.xml', ''),
(4, 10, 10045, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.26', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(5, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(6, 10, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.27', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(7, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(8, 10, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(9, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(10, 10, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(11, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(12, 10, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(13, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(14, 10, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(15, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(16, 10, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(17, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(18, 10, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_user_notes`
--

CREATE TABLE IF NOT EXISTS `ysr74_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_user_profiles`
--

CREATE TABLE IF NOT EXISTS `ysr74_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `ysr74_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ysr74_user_usergroup_map`
--

INSERT INTO `ysr74_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8),
(43, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_usergroups`
--

CREATE TABLE IF NOT EXISTS `ysr74_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `ysr74_usergroups`
--

INSERT INTO `ysr74_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_users`
--

CREATE TABLE IF NOT EXISTS `ysr74_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `ysr74_users`
--

INSERT INTO `ysr74_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(42, 'Super User', 'tinonav', 'tino@sigmapcs.com.mx', '1e141e8ea2165df45798ee8c0c7d689e', 'deprecated', 0, 1, '2013-10-02 16:42:23', '2016-01-28 02:22:40', '0', ''),
(43, 'info100', 'info100', 'os.os@outlook.fr', '0edb7430411e9667dbe81853ce618d7d:9gD2jqzAbmAnVM98NinrIznEg7s0M8by', '', 1, 0, '2014-03-23 22:43:49', '0000-00-00 00:00:00', '5cb0223bd744e734215f09c235bcd4d9', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_viewlevels`
--

CREATE TABLE IF NOT EXISTS `ysr74_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ysr74_viewlevels`
--

INSERT INTO `ysr74_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ysr74_weblinks`
--

CREATE TABLE IF NOT EXISTS `ysr74_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Base de datos: `romancom_es`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_aicontactsafe_config`
--

CREATE TABLE IF NOT EXISTS `klhu1_aicontactsafe_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `config_key` varchar(50) NOT NULL DEFAULT '',
  `config_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `klhu1_aicontactsafe_config`
--

INSERT INTO `klhu1_aicontactsafe_config` (`id`, `config_key`, `config_value`) VALUES
(1, 'use_css_backend', '1'),
(2, 'use_SqueezeBox', '0'),
(3, 'highlight_errors', '1'),
(4, 'keep_session_alive', '0'),
(5, 'activate_help', '1'),
(6, 'date_format', 'l, d F Y H:i'),
(7, 'default_status_filter', '0'),
(8, 'editbox_cols', '40'),
(9, 'editbox_rows', '10'),
(10, 'default_name', ''),
(11, 'default_email', ''),
(12, 'default_subject', ''),
(13, 'activate_spam_control', '0'),
(14, 'block_words', 'url='),
(15, 'record_blocked_messages', '1'),
(16, 'activate_ip_ban', '0'),
(17, 'ban_ips', ''),
(18, 'redirect_ips', ''),
(19, 'ban_ips_blocked_words', '0'),
(20, 'maximum_messages_ban_ip', '0'),
(21, 'maximum_minutes_ban_ip', '0'),
(22, 'email_ban_ip', ''),
(23, 'set_sender_joomla', '0'),
(24, 'upload_attachments', 'media/aicontactsafe/attachments'),
(25, 'maximum_size', '5000000'),
(26, 'attachments_types', 'rar,zip,doc,xls,txt,gif,jpg,png,bmp'),
(27, 'attach_to_email', '1'),
(28, 'delete_after_sent', '0'),
(29, 'gid_messages', '8'),
(30, 'users_all_messages', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_aicontactsafe_contactinformations`
--

CREATE TABLE IF NOT EXISTS `klhu1_aicontactsafe_contactinformations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) unsigned NOT NULL,
  `info_key` varchar(50) NOT NULL DEFAULT '',
  `info_label` varchar(250) NOT NULL DEFAULT '',
  `info_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `klhu1_aicontactsafe_contactinformations`
--

INSERT INTO `klhu1_aicontactsafe_contactinformations` (`id`, `profile_id`, `info_key`, `info_label`, `info_value`) VALUES
(1, 1, 'contact_info', 'contact_info', '<img style="margin-left: 10px; float: right;" alt="powered by joomla" src="images/powered_by.png" width="165" height="68" /><div style="width: 150px; float: left;">Algis Info Grup SRL<br />Str. Hărmanului Nr.63<br />bl.1A sc.A ap.8<br />Brașov, România<br />500232<br /><a target="_blank" href="http://www.algisinfo.com/">www.algisinfo.com</a></div>'),
(2, 2, 'contact_info', 'contact_info', '<img style="margin-left: 10px; float: right;" alt="powered by joomla" src="images/powered_by.png" width="165" height="68" /><div style="width: 150px; float: left;">Algis Info Grup SRL<br />Str. Hărmanului Nr.63<br />bl.1A sc.A ap.8<br />Brașov, România<br />500232<br /><a target="_blank" href="http://www.algisinfo.com/">www.algisinfo.com</a></div>'),
(3, 1, 'meta_description', 'meta_description', ''),
(4, 2, 'meta_description', 'meta_description (Module form)', ''),
(5, 1, 'meta_keywords', 'meta_keywords', ''),
(6, 2, 'meta_keywords', 'meta_keywords (Module form)', ''),
(7, 1, 'meta_robots', 'meta_robots', ''),
(8, 2, 'meta_robots', 'meta_robots (Module form)', ''),
(9, 1, 'thank_you_message', 'thank_you_message', 'Email sent. Thank you for your message.'),
(10, 2, 'thank_you_message', 'thank_you_message (Module form)', 'Email sent. Thank you for your message.'),
(11, 1, 'required_field_notification', 'required_field_notification', 'Fields marked with %mark% are required.'),
(12, 2, 'required_field_notification', 'required_field_notification (Module form)', 'Fields marked with %mark% are required.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_aicontactsafe_fields`
--

CREATE TABLE IF NOT EXISTS `klhu1_aicontactsafe_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `field_label` text NOT NULL,
  `label_parameters` text NOT NULL,
  `field_label_message` text NOT NULL,
  `label_message_parameters` text NOT NULL,
  `label_after_field` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_type` varchar(2) NOT NULL DEFAULT 'TX',
  `field_parameters` text NOT NULL,
  `field_values` text NOT NULL,
  `field_limit` int(11) NOT NULL DEFAULT '0',
  `default_value` varchar(150) NOT NULL DEFAULT '',
  `auto_fill` varchar(10) NOT NULL DEFAULT '',
  `field_sufix` text NOT NULL,
  `field_prefix` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_in_message` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `send_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `klhu1_aicontactsafe_fields`
--

INSERT INTO `klhu1_aicontactsafe_fields` (`id`, `name`, `field_label`, `label_parameters`, `field_label_message`, `label_message_parameters`, `label_after_field`, `field_type`, `field_parameters`, `field_values`, `field_limit`, `default_value`, `auto_fill`, `field_sufix`, `field_prefix`, `ordering`, `field_required`, `field_in_message`, `send_message`, `date_added`, `last_update`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'aics_name', 'Nombre', '', 'Nombre', '', 0, 'TX', 'class=&#039;textbox&#039;', '', 0, '', 'UN', '', '', 1, 1, 1, 0, '2013-10-04 11:13:24', '2013-10-04 15:15:24', 1, 0, '0000-00-00'),
(2, 'aics_email', 'Email', '', 'Email', '', 0, 'EM', 'class=''email''', '', 0, '', 'UE', '', '', 2, 1, 1, 0, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00'),
(3, 'aics_phone', 'Phone', '', 'Phone', '', 0, 'TX', 'class=''textbox''', '', 15, '', '', '', '', 3, 0, 1, 0, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00'),
(4, 'aics_subject', 'Subject', '', 'Subject', '', 0, 'TX', 'class=''textbox''', '', 0, '', '', '', '', 4, 1, 1, 0, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00'),
(5, 'aics_message', 'Message', '', 'Message', '', 0, 'ED', 'class=''editbox''', '', 500, '', '', '', '', 5, 1, 1, 0, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00'),
(6, 'aics_send_to_sender', 'Send a copy of this message to yourself', '', 'Send a copy of this message to yourself', '', 1, 'CK', 'class=''checkbox''', '', 0, '', '', '', '', 6, 0, 0, 0, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_aicontactsafe_fieldvalues`
--

CREATE TABLE IF NOT EXISTS `klhu1_aicontactsafe_fieldvalues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `message_id` int(11) unsigned NOT NULL,
  `field_value` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_aicontactsafe_messagefiles`
--

CREATE TABLE IF NOT EXISTS `klhu1_aicontactsafe_messagefiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) unsigned NOT NULL,
  `name` text NOT NULL,
  `r_id` int(21) unsigned NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_aicontactsafe_messages`
--

CREATE TABLE IF NOT EXISTS `klhu1_aicontactsafe_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `subject` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `send_to_sender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sender_ip` varchar(20) NOT NULL DEFAULT '',
  `profile_id` int(11) unsigned NOT NULL,
  `status_id` int(11) unsigned NOT NULL,
  `manual_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_destination` text NOT NULL,
  `email_reply` varchar(100) NOT NULL DEFAULT '',
  `subject_reply` text NOT NULL,
  `message_reply` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_aicontactsafe_profiles`
--

CREATE TABLE IF NOT EXISTS `klhu1_aicontactsafe_profiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `use_ajax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_message_css` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contact_form_width` int(11) NOT NULL DEFAULT '0',
  `bottom_row_space` int(11) NOT NULL DEFAULT '0',
  `align_buttons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `contact_info_width` int(11) NOT NULL DEFAULT '0',
  `use_captcha` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `captcha_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `align_captcha` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `email_address` varchar(100) NOT NULL DEFAULT '',
  `always_send_to_email_address` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `subject_prefix` varchar(100) NOT NULL DEFAULT '',
  `email_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `record_message` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `record_fields` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom_date_format` varchar(30) NOT NULL DEFAULT '%d %B %Y',
  `custom_date_years_back` int(11) NOT NULL DEFAULT '70',
  `custom_date_years_forward` int(11) NOT NULL DEFAULT '0',
  `required_field_mark` text NOT NULL,
  `display_format` int(11) NOT NULL DEFAULT '2',
  `plg_contact_info` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_random_letters` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `min_word_length` tinyint(2) unsigned NOT NULL DEFAULT '5',
  `max_word_length` tinyint(2) unsigned NOT NULL DEFAULT '8',
  `set_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active_fields` text NOT NULL,
  `captcha_width` smallint(4) NOT NULL DEFAULT '400',
  `captcha_height` smallint(4) NOT NULL DEFAULT '55',
  `captcha_bgcolor` varchar(10) NOT NULL DEFAULT '#FFFFFF',
  `captcha_backgroundTransparent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `captcha_colors` text NOT NULL,
  `name_field_id` int(11) unsigned NOT NULL,
  `email_field_id` int(11) unsigned NOT NULL,
  `subject_field_id` int(11) unsigned NOT NULL,
  `send_to_sender_field_id` int(11) NOT NULL,
  `redirect_on_success` text NOT NULL,
  `fields_order` text NOT NULL,
  `use_mail_template` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default_status_id` int(11) unsigned NOT NULL,
  `read_status_id` int(11) unsigned NOT NULL,
  `reply_status_id` int(11) unsigned NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `klhu1_aicontactsafe_profiles`
--

INSERT INTO `klhu1_aicontactsafe_profiles` (`id`, `name`, `use_ajax`, `use_message_css`, `contact_form_width`, `bottom_row_space`, `align_buttons`, `contact_info_width`, `use_captcha`, `captcha_type`, `align_captcha`, `email_address`, `always_send_to_email_address`, `subject_prefix`, `email_mode`, `record_message`, `record_fields`, `custom_date_format`, `custom_date_years_back`, `custom_date_years_forward`, `required_field_mark`, `display_format`, `plg_contact_info`, `use_random_letters`, `min_word_length`, `max_word_length`, `set_default`, `active_fields`, `captcha_width`, `captcha_height`, `captcha_bgcolor`, `captcha_backgroundTransparent`, `captcha_colors`, `name_field_id`, `email_field_id`, `subject_field_id`, `send_to_sender_field_id`, `redirect_on_success`, `fields_order`, `use_mail_template`, `default_status_id`, `read_status_id`, `reply_status_id`, `date_added`, `last_update`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'Default form', 0, 1, 0, 0, 1, 0, 1, 0, 1, '', 1, '', 1, 1, 0, '%d %B %Y', 60, 0, '( ! )', 2, 0, 0, 5, 8, 1, '0', 300, 55, '#FFFFFF', 1, '#FF0000;#00FF00;#0000FF', 1, 2, 4, 6, '', '', 0, 1, 2, 3, '2009-01-01 00:00:00', '2009-01-01 00:00:00', 1, 0, '0000-00-00'),
(2, 'Module form', 1, 1, 300, 15, 1, 0, 2, 0, 1, 'tino@sigmapcs.com.mx', 1, 'mensaje desde el sitio', 1, 1, 0, 'dmy', 60, 0, '( ! )', 1, 0, 0, 5, 8, 0, '0', 180, 55, '#FFFFFF', 1, '#FF0000;#00FF00;#0000FF', 1, 2, 4, 6, '', '1,2,3,4,5,6', 0, 1, 2, 3, '2009-01-01 00:00:00', '2013-10-04 15:50:43', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_aicontactsafe_statuses`
--

CREATE TABLE IF NOT EXISTS `klhu1_aicontactsafe_statuses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `color` varchar(10) NOT NULL DEFAULT '#FFFFFF',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `klhu1_aicontactsafe_statuses`
--

INSERT INTO `klhu1_aicontactsafe_statuses` (`id`, `name`, `color`, `ordering`, `date_added`, `last_update`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'New', '#FF0000', 1, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00'),
(2, 'Read', '#000000', 2, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00'),
(3, 'Replied', '#009900', 3, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00'),
(4, 'Archived', '#CCCCCC', 4, '2013-10-04 11:13:24', '2013-10-04 11:13:24', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_assets`
--

CREATE TABLE IF NOT EXISTS `klhu1_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Volcado de datos para la tabla `klhu1_assets`
--

INSERT INTO `klhu1_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 171, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 114, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 115, 116, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 117, 118, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 119, 120, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 121, 122, 1, 'com_login', 'com_login', '{}'),
(13, 1, 123, 124, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 125, 126, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 127, 128, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 129, 130, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 131, 132, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 133, 134, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 135, 138, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 139, 140, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 141, 142, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 143, 144, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 145, 146, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 147, 150, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 151, 154, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 155, 156, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 39, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 136, 137, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 152, 153, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 148, 149, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 157, 158, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 159, 160, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 161, 162, 1, 'com_gantry', 'gantry', '{}'),
(37, 1, 163, 164, 1, 'com_newsletter', 'com_newsletter', '{}'),
(38, 8, 40, 51, 2, 'com_content.category.8', 'Content', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(39, 8, 52, 59, 2, 'com_content.category.9', 'Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(40, 39, 53, 54, 3, 'com_content.article.1', 'Doloremque laudantium totam rem aperiam sequi nesciunt', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 39, 55, 56, 3, 'com_content.article.2', 'Quisque volutpat condimentum velit. Sed dignissim lacinia nunc', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 38, 41, 42, 3, 'com_content.article.3', 'Demo article', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 8, 60, 81, 2, 'com_content.category.10', 'Portfolio', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(44, 43, 61, 62, 3, 'com_content.article.4', 'Portfolio item01', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 43, 63, 64, 3, 'com_content.article.5', 'Portfolio item02', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 43, 65, 66, 3, 'com_content.article.6', 'Portfolio item08', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 43, 67, 68, 3, 'com_content.article.7', 'Portfolio item04', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 43, 69, 70, 3, 'com_content.article.8', 'Portfolio item07', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 43, 71, 72, 3, 'com_content.article.9', 'Portfolio item06', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 43, 73, 74, 3, 'com_content.article.10', 'Portfolio item05', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 43, 75, 76, 3, 'com_content.article.11', 'Portfolio item03', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 43, 77, 78, 3, 'com_content.article.12', 'Portfolio item10', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 43, 79, 80, 3, 'com_content.article.13', 'Portfolio item09', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 38, 43, 44, 3, 'com_content.article.14', 'Contacto', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 38, 45, 46, 3, 'com_content.article.15', 'Modules positions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 38, 47, 48, 3, 'com_content.article.16', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 8, 82, 85, 2, 'com_content.category.11', 'Boletines', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(58, 57, 83, 84, 3, 'com_content.article.17', 'Boletin 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 1, 165, 166, 1, 'com_b2jcontact', 'com_b2jcontact', '{}'),
(60, 1, 167, 168, 1, 'com_aicontactsafe', 'aicontactsafe', '{}'),
(61, 38, 49, 50, 3, 'com_content.article.18', 'ejemplo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 69, 107, 108, 3, 'com_content.article.19', 'Visión', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 27, 19, 20, 3, 'com_content.article.20', 'Nuestra firma', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 27, 21, 22, 3, 'com_content.article.21', 'Modelo de Servicios', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 1, 169, 170, 1, 'com_nivoslider', 'com_nivoslider', '{}'),
(67, 8, 86, 105, 2, 'com_content.category.12', 'Areas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(68, 67, 87, 88, 3, 'com_content.article.22', 'Fiscal', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 8, 106, 113, 2, 'com_content.category.13', 'Nosotros', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(70, 67, 89, 90, 3, 'com_content.article.23', 'Defensa Fiscal', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 67, 91, 92, 3, 'com_content.article.24', 'Técnica Legislativa y Desregularización', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 67, 93, 94, 3, 'com_content.article.25', 'Legal', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 67, 95, 96, 3, 'com_content.article.26', 'Due Dilligence', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 27, 23, 24, 3, 'com_content.article.27', 'Fundación Román Rosales ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 27, 25, 26, 3, 'com_content.article.28', 'Mensaje Enviado', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(76, 27, 27, 28, 3, 'com_content.article.29', 'Nuestro Staff', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 27, 29, 30, 3, 'com_content.article.30', 'Staff1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(78, 27, 31, 32, 3, 'com_content.article.31', 'La Firma', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(79, 67, 99, 100, 3, 'com_content.article.32', 'Asesoría y Consultoría Fiscal', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(80, 67, 97, 98, 3, 'com_content.article.33', 'Diagnósticos Fiscales', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 67, 101, 102, 3, 'com_content.article.34', 'Consultoría Patrimonial y Sucesoria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 67, 103, 104, 3, 'com_content.article.35', 'Dictamen por enajenación de acciones', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 27, 33, 34, 3, 'com_content.article.36', 'contacto1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 27, 35, 36, 3, 'com_content.article.37', 'Acerca de Nosotros', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 39, 57, 58, 3, 'com_content.article.38', 'Ejemplo de Noticia', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(86, 69, 109, 110, 3, 'com_content.article.39', 'Nuestra firma', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(87, 69, 111, 112, 3, 'com_content.article.40', 'Modelo de Servicios', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(88, 27, 37, 38, 3, 'com_content.article.41', 'Noticias', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_associations`
--

CREATE TABLE IF NOT EXISTS `klhu1_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_b2jcontact_details`
--

CREATE TABLE IF NOT EXISTS `klhu1_b2jcontact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xreference` varchar(50) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `klhu1_b2jcontact_details`
--

INSERT INTO `klhu1_b2jcontact_details` (`id`, `name`, `alias`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'roman.com.mx', 'roman-com-mx', 0, 1, 42, '2013-10-10 16:15:24', 0, '{"to_address":"tino@sigmapcs.com.mx","cc_address":"","bcc_address":"","email_subject":"Informaci\\u00f3n solicitada deste tu sitio web","jmessenger_user":"0","page_subheading":"","form__width":{"text":"","select":"auto"},"customhtml0":"Si quieres m\\u00e1s informaci\\u00f3n, rellena este formulario. Ser\\u00e1s contestado tan pronto como sea posible.<br \\/>Por favor, rellena todos los <b>campos obligatorios<\\/b>.","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"Al enviar este formulario, est\\u00e1s aceptando nuestra pol\\u00edtica de privacidad.","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","form_layout":"extended","labels__width":"150","sender0":"Tu nombre","sender0display":"2","sender0order":"1","sender1":"Tu email","sender1display":"2","sender1order":"2","sender1isemail":"1","text__width":"270","dropdown__width":"270","textarea__width":"270","textarea__height":{"text":"180","select":"px"},"uploaddisplay":"0","uploadmethod":"1","upload":"Selecciona los archivos para subir","uploadmax_file_size":"102400","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittext":"Enviar","submittype":"0","resetbutton":"0","resettext":"Limpiar","resettype":"0","email_sent_action":"0","email_sent_text":"Tu mensaje ha sido recibido. Contactaremos contigo en unos d\\u00edas.","email_sent_textdisplay":"1","email_sent_page":"101","copy_to_submitter":"1","email_copy_subject":"Gracias por contactar con nosotros","email_copy_text":"Este mensaje es una confirmaci\\u00f3n de que tu informaci\\u00f3n ha sido enviada correctamente, y en breve ser\\u00e1 procesada.","email_copy_summary":"1","spam_check":"0","spam_words":"www,http,url=,href=,link=,.txt,mierda,joder","spam_detected_text":"Lo sentimos, pero parece que tu mensaje contiene spam, por lo que <b>ha sido bloqueado<\\/b>.<br \\/>Por favor, int\\u00e9ntalo de nuevo evitando palabras como <i>www, http,<\\/i> y similares.","spam_detected_textdisplay":"1","stdcaptchadisplay":"0","stdcaptcha":"C\\u00f3digo de seguridad","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"-1","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","itemgroups":"{\\"0\\":[{\\"title\\":\\"create new group\\",\\"class\\":\\"\\",\\"ordering\\":\\"0\\",\\"state\\":\\"1\\"}],\\"1\\":[{\\"title\\":\\"formulario\\",\\"ordering\\":\\"1\\",\\"class\\":\\"\\",\\"state\\":\\"1\\"}]}","dynamicfields":"{\\"0\\":[{\\"b2jDefaultValue\\":\\"1\\",\\"b2jFieldKey\\":\\"0\\",\\"type\\":\\"b2jDynamicText\\",\\"b2jFieldName\\":\\"Nombre:\\",\\"b2jFieldValue\\":\\"\\",\\"b2jFieldState\\":\\"2\\",\\"b2jFieldGroup\\":\\"1\\",\\"b2jFieldOrdering\\":\\"0\\"}],\\"1\\":[{\\"b2jDefaultValue\\":\\"2\\",\\"b2jFieldKey\\":\\"1\\",\\"type\\":\\"b2jDynamicText\\",\\"b2jFieldName\\":\\"Tel\\u00e9fono\\",\\"b2jFieldValue\\":\\"\\",\\"b2jFieldState\\":\\"2\\",\\"b2jFieldGroup\\":\\"1\\",\\"b2jFieldOrdering\\":\\"1\\"}],\\"2\\":[{\\"b2jDefaultValue\\":\\"3\\",\\"b2jFieldKey\\":\\"2\\",\\"type\\":\\"b2jDynamicText\\",\\"b2jFieldName\\":\\"Email:\\",\\"b2jFieldValue\\":\\"\\",\\"b2jFieldState\\":\\"2\\",\\"b2jFieldGroup\\":\\"1\\",\\"b2jFieldOrdering\\":\\"2\\"}],\\"3\\":[{\\"b2jDefaultValue\\":\\"4\\",\\"b2jFieldKey\\":\\"3\\",\\"type\\":\\"b2jDynamicTextarea\\",\\"b2jFieldName\\":\\"Mensaje:\\",\\"b2jFieldValue\\":\\"\\",\\"b2jFieldState\\":\\"2\\",\\"b2jFieldGroup\\":\\"1\\",\\"b2jFieldOrdering\\":\\"3\\"}]}"}', 0, 0, 1, '', '', '', '', '', '*', '2013-10-02 17:17:01', 42, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_b2jcontact_sessions`
--

CREATE TABLE IF NOT EXISTS `klhu1_b2jcontact_sessions` (
  `id` varchar(32) NOT NULL,
  `b2jcomid` int(11) NOT NULL,
  `b2jmoduleid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `keyword` varchar(32) NOT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text,
  UNIQUE KEY `index` (`id`,`b2jcomid`,`b2jmoduleid`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_b2jcontact_settings`
--

CREATE TABLE IF NOT EXISTS `klhu1_b2jcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `klhu1_b2jcontact_settings`
--

INSERT INTO `klhu1_b2jcontact_settings` (`name`, `value`) VALUES
('captchadrawer', 'use_gd'),
('mimefilter', 'use_exec'),
('dns', 'disabled');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_banner_clients`
--

CREATE TABLE IF NOT EXISTS `klhu1_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `klhu1_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_banners`
--

CREATE TABLE IF NOT EXISTS `klhu1_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_categories`
--

CREATE TABLE IF NOT EXISTS `klhu1_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `klhu1_categories`
--

INSERT INTO `klhu1_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 25, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 38, 1, 13, 14, 1, 'content', 'com_content', 'Content', 'content', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-19 18:24:31', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 39, 1, 15, 16, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-19 18:24:46', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 43, 1, 17, 18, 1, 'portfolio', 'com_content', 'Portfolio', 'portfolio', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-24 19:26:44', 0, '0000-00-00 00:00:00', 0, '*'),
(11, 57, 1, 19, 20, 1, 'boletines', 'com_content', 'Boletines', 'boletines', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-10-02 15:02:39', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 67, 1, 21, 22, 1, 'areas', 'com_content', 'Areas', 'areas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-10-21 16:55:38', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 69, 1, 23, 24, 1, 'nosotros', 'com_content', 'Nosotros', 'nosotros', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-10-21 17:29:55', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_contact_details`
--

CREATE TABLE IF NOT EXISTS `klhu1_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_content`
--

CREATE TABLE IF NOT EXISTS `klhu1_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Volcado de datos para la tabla `klhu1_content`
--

INSERT INTO `klhu1_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 40, 'Doloremque laudantium totam rem aperiam sequi nesciunt', 'doloremque-laudantium-totam-rem-aperiam-sequi-nesciunt', '', '<p><img class="thumb alignleft" src="http://placehold.it/175x100" border="0" alt="" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n', '\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>', -2, 0, 0, 9, '2012-04-19 18:26:49', 42, '', '2012-05-05 10:42:43', 42, 0, '0000-00-00 00:00:00', '2012-04-19 18:26:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 41, 'Quisque volutpat condimentum velit. Sed dignissim lacinia nunc', 'quisque-volutpat-condimentum-velit-sed-dignissim-lacinia-nunc', '', '<p><img class="thumb alignleft" src="http://placehold.it/175x100" border="0" alt="" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n', '\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>', -2, 0, 0, 9, '2012-04-19 18:26:49', 42, '', '2012-05-05 10:42:05', 42, 0, '0000-00-00 00:00:00', '2012-04-19 18:26:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 42, 'Demo article', 'demo-article', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>', '', -2, 0, 0, 8, '2012-04-23 17:39:31', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-23 17:39:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 58, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 44, 'Portfolio item01', 'portfolio-item01', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:32:35', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/city-q-c-640-480-5.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/city-q-c-640-480-5.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 1, '', '', 1, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 45, 'Portfolio item02', 'portfolio-item02', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:08', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/fashion-q-c-640-480-6.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/fashion-q-c-640-480-6.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 46, 'Portfolio item08', 'portfolio-item08', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:49', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/technics-q-c-640-480-5.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/technics-q-c-640-480-5.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 8, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 47, 'Portfolio item04', 'portfolio-item04', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:21', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/nightlife-q-c-640-480-1.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/nightlife-q-c-640-480-1.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 48, 'Portfolio item07', 'portfolio-item07', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:43', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/sports-q-c-640-480-10.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/sports-q-c-640-480-10.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 7, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 49, 'Portfolio item06', 'portfolio-item06', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:37', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/people-q-c-640-480-7.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/people-q-c-640-480-7.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 6, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 50, 'Portfolio item05', 'portfolio-item05', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:31', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/people-q-c-640-480-1.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/people-q-c-640-480-1.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 51, 'Portfolio item03', 'portfolio-item03', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:15', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/food-q-c-640-480-2.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/food-q-c-640-480-2.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `klhu1_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(12, 52, 'Portfolio item10', 'portfolio-item10', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:34:03', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/sports-q-c-640-480-4.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/sports-q-c-640-480-4.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 53, 'Portfolio item09', 'portfolio-item09', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong>. Vestibulum lacinia arcu eget nulla.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. <strong>Mauris massa</strong>. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. <strong>Curabitur tortor</strong>. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</p>\r\n<p>Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. <strong>Sed dignissim lacinia nunc</strong>. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. <em>Aenean quam</em>. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus.</p>\r\n<p>Integer euismod lacus luctus magna. <strong>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</strong>. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. <strong>Ut fringilla</strong>. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. <strong>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui</strong>. Nulla facilisi.</p>\r\n<p>Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. <strong>Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue</strong>. Ut eu diam at pede suscipit sodales.</p>\r\n<h3>Other images</h3>\r\n<p>{gallery}portfolio/some_project{/gallery}</p>', -2, 0, 0, 10, '2012-04-24 20:09:42', 42, '', '2012-04-25 09:33:56', 42, 0, '0000-00-00 00:00:00', '2012-04-24 20:09:42', '0000-00-00 00:00:00', '{"image_intro":"images\\/portfolio\\/city-q-c-640-480-9.jpg","float_intro":"left","image_intro_alt":"Demo image","image_intro_caption":"This is a caption","image_fulltext":"images\\/portfolio\\/city-q-c-640-480-9.jpg","float_fulltext":"left","image_fulltext_alt":"Demo image","image_fulltext_caption":"This is a caption"}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 54, 'Contacto', 'contact', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/contacto.png" border="0" width="901" height="301" /></div>\r\n<p class="cont_tit">Póngase en contacto con nosotros:</p>\r\n<div class="row-fluid">\r\n<div class="span6">\r\n<div class="contacto"><!-- contacto  --><form action="http://www.roman.com.mx/es/contacto.php" method="post">\r\n<ul>\r\n<li>\r\n<div class="etiqueta">Nombre:</div>\r\n</li>\r\n<li><input class="constyle" type="text" name="nombre" /></li>\r\n<li>\r\n<div class="etiqueta">Email:</div>\r\n</li>\r\n<li><input class="constyle" type="email" name="email" /></li>\r\n<li>\r\n<div class="etiqueta">Telefóno:</div>\r\n</li>\r\n<li><input class="constyle" type="text" name="telefono" /></li>\r\n<li>\r\n<div class="etiqueta">Mensaje:</div>\r\n</li>\r\n<li><textarea id="" class="constyle2" name="comentario"></textarea></li>\r\n<li><input id="send" type="image" name="imagen" value="" src="images/btn.png" /></li>\r\n</ul>\r\n</form></div>\r\n<!-- contacto  --></div>\r\n<div class="span6">\r\n<div class="contacto_der"><!-- contacto  -->\r\n<div class="separador"> </div>\r\n<div class="cont">\r\n<p class="ciudad">Guadalajara</p>\r\n<p>Domicilio: <strong>Corona Boreal No. 4138, Col. Arboledas, Zapopan, Jalisco, C.P. 45070<br /></strong></p>\r\n<p>Teléfono: <strong>01 (33) 15 42 69 45<br /></strong></p>\r\n<p><strong>              01 (33) 15 42 69 46<br /></strong></p>\r\n<p>email: <strong><a class="emailcon" href="mailto:info@roman.com.mx">info@roman.com.mx</a></strong></p>\r\n<p>email: <strong><a class="emailcon" href="mailto:info@dawson.com.mx">info@dawson.com.mx</a></strong></p>\r\n<div class="separador1"> </div>\r\n<div class="lin_hor"> </div>\r\n<div class="separador2"> </div>\r\n<p class="ciudad">Ciudad de Mexico</p>\r\n<p>Domicilio: <strong>Avenida 555 No. 158, Unidad Aragón 2da. sección, C.P. 07969, Del. Gustavo A. Madero, Mexico, D.F.</strong></p>\r\n<p>email: <strong><a class="emailcon" href="mailto:info@roman.com.mx">info@roman.com.mx</a></strong></p>\r\n<p>email: <strong><a class="emailcon" href="mailto:info@dawson.com.mx">info@dawson.com.mx</a></strong></p>\r\n</div>\r\n</div>\r\n<!-- contacto  --></div>\r\n</div>\r\n</div>', '', 1, 0, 0, 8, '2012-05-05 08:05:53', 42, '', '2013-12-10 19:13:24', 42, 0, '0000-00-00 00:00:00', '2012-05-05 08:05:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 34, 0, 3, '', '', 1, 709, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 55, 'Modules positions', 'modules-positions', '', '<p>Below i made a demonstration of each position. As you can see in most of the rows there are 6 positions per rows, which is more then enough when publishing modules.<strong> In total there are 69 modules positions!!!</strong></p>\r\n<p>View all module positions live by going to Template Manager and clicking on the button Options from right-top toolbar. Here, in the pop-up enable the option "<span>Preview Module Positions".</span></p>\r\n<p>The biggest advantage of this framework, because of it''s grid system, is that you can set-up your desired layout:</p>\r\n<p><img class="thumb" src="images/layouts.png" border="0" alt="layouts" width="531" height="260" /></p>\r\n<p><strong><br /></strong></p>\r\n<p><strong>THE PERFECT CHOICE FOR FLEXIBILITY!!</strong></p>\r\n<p><a href="images/positions.jpg" data-rel="prettyPhoto"><img class="thumb" src="images/positions.jpg" border="0" alt="Modules positions" width="700" height="1497" /></a></p>', '', -2, 0, 0, 8, '2012-05-05 09:38:05', 42, '', '2012-05-05 10:28:02', 42, 0, '0000-00-00 00:00:00', '2012-05-05 09:38:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 2, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 56, 'Typography', 'typography', '', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h1>H1 Tag Header</h1>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h2>H2 Tag Header</h2>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h3>H3 Tag Header</h3>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h4>H4 Tag Header</h4>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h5>H5 Tag Header</h5>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<h6>H6 Tag Header</h6>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n<p> </p>\r\n<h3>HTML code wrapped in [ code ]</h3>\r\n<p><code>#pre-sample {<br />  font-size:12px;<br />  color:#ffffff;<br />}</code></p>\r\n<h2> </h2>\r\n<h2>Blockquote</h2>\r\n<blockquote>In hendrerit molestie sapien, et pretium urna lobortis et. Mauris felis tortor, auctor a congue quis, interdum a arcu. Vivamus suscipit posuere accumsan. Vestibulum vitae ante nec quam volutpat convallis a vitae est. Praesent facilisis eros in quam congue eget pellentesque nunc interdum. Vestibulum dapibus, dui at pulvinar malesuada, massa purus fringilla elit, et mattis magna purus nec urna.</blockquote>\r\n<p> </p>\r\n<h2>Image in paragraph</h2>\r\n<p><img class="thumb alignleft" src="http://placehold.it/120x100" border="0" alt=".thumb alignleft css class" /><strong>Just add .thumb class to the image. The alignment is set by adding an "<span style="text-decoration: underline;">alignleft</span>" class to this image.</strong> Sed lacus risus, molestie eget fermentum in, vehicula ac est. Pellentesque vestibulum nunc nec quam fermentum at venenatis sapien consectetur. Nulla ut augue nec ligula ultricies pharetra ut nec dui. Etiam egestas facilisis volutpat. Quisque non fermentum nisl. Vivamus posuere laoreet augue, eget volutpat libero accumsan vitae. Aliquam ultrices, quam sed posuere pretium, sapien libero tempus mi, sed consequat erat leo et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at vestibulum libero. Phasellus nibh leo, pharetra vel dictum eu, faucibus in nibh.</p>\r\n<p><img class="thumb alignright" src="http://placehold.it/120x100" border="0" alt=".thumb alignright css class" />Aenean vulputate imperdiet arcu, eget tempus elit faucibus in. Suspendisse venenatis, justo ac faucibus imperdiet, neque dui suscipit ligula, ac condimentum dui neque et est. Duis sagittis rutrum erat sed aliquet. Ut eget purus et nunc iaculis congue eu eu nibh. Aliquam ac aliquet leo. Curabitur leo urna, vulputate id vulputate id, pulvinar et leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque dapibus lectus eu lorem consectetur sed porttitor ipsum congue.</p>\r\n<p>Etiam egestas facilisis volutpat. Quisque non fermentum nisl. Vivamus posuere laoreet augue, eget volutpat libero accumsan vitae. Aliquam ultrices, quam sed posuere pretium, sapien libero tempus mi, sed consequat erat leo et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at vestibulum libero. Phasellus nibh leo, pharetra vel dictum eu, faucibus in nibh.</p>\r\n<p> </p>\r\n<h2>Lists</h2>\r\n<ul>\r\n<li>List with no class</li>\r\n<li>List with no class</li>\r\n<li>List with no class</li>\r\n<li>List with no class</li>\r\n<li>List with no class</li>\r\n</ul>\r\n<ul class="list-type-1">\r\n<li>List with .list-type-1 class</li>\r\n<li>List with .list-type-1 class</li>\r\n<li>List with .list-type-1 class</li>\r\n<li>List with .list-type-1 class</li>\r\n<li>List with .list-type-1 class</li>\r\n</ul>\r\n<ul class="list-type-2">\r\n<li>List with .list-type-2 class</li>\r\n<li>List with .list-type-2 class</li>\r\n<li>List with .list-type-2 class</li>\r\n<li>List with .list-type-2 class</li>\r\n<li>List with .list-type-2 class</li>\r\n</ul>\r\n<ul class="list-type-3">\r\n<li>List with .list-type-3 class</li>\r\n<li>List with .list-type-3 class</li>\r\n<li>List with .list-type-3 class</li>\r\n<li>List with .list-type-3 class</li>\r\n<li>List with .list-type-3 class</li>\r\n</ul>\r\n<p> </p>\r\n<h4>WARNING BOXES</h4>\r\n<div class="info">Info message (class="info")</div>\r\n<div class="success">Successful operation message (class="success")</div>\r\n<div class="warning">Warning message (class="warning")</div>\r\n<div class="error">Error message (class="error")</div>', '', -2, 0, 0, 8, '2012-05-05 09:38:29', 42, '', '2012-05-05 10:39:24', 42, 0, '0000-00-00 00:00:00', '2012-05-05 09:38:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 1, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 58, 'Boletin 1', 'boletin-1', '', '<p>Ejemplo boletin</p>', '', -2, 0, 0, 11, '2013-10-02 16:32:27', 42, '', '2013-10-02 16:33:05', 42, 0, '0000-00-00 00:00:00', '2013-10-02 16:32:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 83, 'contacto1', 'contacto1', '', '<p><iframe width="320" height="240"></iframe></p>', '', 0, 0, 0, 2, '2013-10-25 17:32:48', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-10-25 17:32:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 61, 'ejemplo', 'ejemplo', '', '<p>esto es un ejemplo de un modulo dentro de un articulo</p>\r\n<p> </p>\r\n<p><span>{module Sexy Contact Form}</span></p>', '', 1, 0, 0, 8, '2013-10-10 04:34:57', 42, '', '2013-10-10 05:03:01', 42, 0, '0000-00-00 00:00:00', '2013-10-10 04:34:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 0, '', '', 1, 37, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 63, 'Visión', 'vision', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/vision.png" border="0" width="901" height="301" /></div>\r\n<p><span style="font-size: medium;">Román Salcido, S.C. es una firma legal y contable especializada en asesoría en materia fiscal de alto nivel. Los servicios que se ofrecidos por la firma cuentan con un alto grado de estudio y calidad técnica.</span></p>\r\n</div>', '', 1, 0, 0, 13, '2013-10-10 23:16:51', 42, '', '2013-11-11 03:11:25', 42, 0, '0000-00-00 00:00:00', '2013-10-10 23:16:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"1","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 20, 0, 2, '', '', 1, 329, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 64, 'Nuestra firma', 'nuestra-firma', '', '<div class="notas">\r\n<p style="text-align: justify;"><span>Román Salcido, S.C. es una firma formada por contadores y abogados que se rigen por altos estándares éticos, técnicos y profesionales, capacitados y actualizados para hacer frente a los problemas actuales en materia fiscal. Fundada en el año 2003, la firma se ha especializado en multidisciplinas siendo siempre el eje central la materia fiscal y tributaria.  </span></p>\r\n</div>', '', 1, 0, 0, 2, '2013-10-10 23:24:50', 42, '', '2013-10-21 18:08:29', 42, 0, '0000-00-00 00:00:00', '2013-10-10 23:24:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 7, '', '', 1, 80, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 65, 'Modelo de Servicios', 'modelo-de-servicios', '', '<div class="notas">\r\n<p style="text-align: justify;"><span style="font-size: large; line-height: 26px;">En Román Salcido S.C. identificamos las necesidades y los problemas de los clientes para enfocarnos en su solución siempre cumpliendo con las diversas leyes vigentes aplicables o en su defecto anticipándonos a los cambios en la materia.</span></p>\r\n</div>', '', 1, 0, 0, 2, '2013-10-10 23:30:41', 42, '', '2013-10-21 18:13:32', 42, 0, '0000-00-00 00:00:00', '2013-10-10 23:30:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 6, '', '', 1, 85, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 86, 'Nuestra firma', 'nuestra-firma', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/mision1.png" border="0" width="901" height="301" /></div>\r\n<p><span style="font-size: medium;">Román Salcido, S.C. es una firma formada por contadores y abogados que se rigen por altos estándares éticos, técnicos y profesionales, capacitados y actualizados para hacer frente a los problemas actuales en materia fiscal. Fundada en el año 2003, la firma se ha especializado en multidisciplinas siendo siempre el eje central la materia fiscal y tributaria. </span></p>\r\n</div>', '', 1, 0, 0, 13, '2013-11-11 03:14:55', 42, '', '2013-11-11 03:16:20', 42, 0, '0000-00-00 00:00:00', '2013-11-11 03:14:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 245, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 68, 'Fiscal', 'fiscal', '', '<div class="notas">\r\n<p><span style="font-size: large;"><strong>Asesoría y Consultoría Fiscal:</strong> </span></p>\r\n<p><span style="font-size: medium;">Asesoría para resolver la problemática en materia fiscal, la interpretación y la correcta aplicación de las disposiciones fiscales, así como la asesoría para el oportuno cumplimiento de las obligaciones fiscales y representación ante las autoridades para realizar los trámites.</span></p>\r\n<p><span style="font-size: medium;">Diseño de todo soporte jurídico tributario de las operaciones, presentación de confirmaciones de Criterio, análisis de las implicaciones fiscales de las estrategias fiscales.</span></p>\r\n<p> </p>\r\n<p><span style="font-size: large;"><strong>Diagnósticos Fiscales:</strong></span></p>\r\n<p><span style="font-size: medium;">Identificación de posibles riesgos fiscales, por lo que mediante diagnostico es posible anticiparnos a los mismos, de la misma forma identificar beneficios y oportunidades de optimización de las cargas tributarias.</span></p>\r\n<p> </p>\r\n<p><span style="font-size: large;"><strong>Consultoría  Patrimonial y Sucesoria:</strong></span></p>\r\n<p><span style="font-size: medium;">Análisis del patrimonio de las personas morales y de las personas físicas, así como la Protección Fiscal Patrimonial de los mismos así como opciones de transmisión de patrimonio</span>.</p>\r\n<p> </p>\r\n<p><span style="font-size: large;"><strong>Dictamen por enajenación de acciones:</strong></span></p>\r\n<p><span style="font-size: medium;">Realización del dictamen fiscal por enajenación de acciones tanto sean adquiridos por personas físicas y morales, ya sean residentes en México o en el extranjero.</span></p>\r\n</div>', '', 1, 0, 0, 12, '2013-10-21 16:59:51', 42, '', '2013-11-11 00:22:03', 42, 0, '0000-00-00 00:00:00', '2013-10-21 16:59:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 8, '', '', 1, 106, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 70, 'Defensa Fiscal', 'defensa-fiscal', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/def-fiscal.png" border="0" width="901" height="301" /></div>\r\n<p>La defensa fiscal ante autoridades federales, estatales y municipales a efecto de defender o hacer cumplir el proceder de las autoridades dentro de los marcos normativos de Ley..</p>\r\n</div>', '', 1, 0, 0, 12, '2013-10-21 18:24:40', 42, '', '2013-11-11 01:58:03', 42, 0, '0000-00-00 00:00:00', '2013-10-21 18:24:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 7, '', '', 1, 246, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 71, 'Técnica Legislativa y Desregularización', 'tecnica-legislativa-y-desregularizacion', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/tenica_leg.png" border="0" width="901" height="301" /></div>\r\n<p>Elaboración y revisión de proyectos de directrices o manuales para elaborar proyectos o iniciativas de ley, realización de la forma y estructura que deba contener una iniciativa.</p>\r\n<div> </div>\r\n</div>', '', 1, 0, 0, 12, '2013-10-21 18:37:41', 42, '', '2013-11-11 04:47:48', 42, 0, '0000-00-00 00:00:00', '2013-10-21 18:37:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 6, '', '', 1, 246, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 72, 'Legal', 'legal', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/legal.png" border="0" width="901" height="301" /></div>\r\n<p><strong>Consultoría Jurídica Corporativa</strong></p>\r\n<p><span style="font-size: medium;">Constitución de Sociedades, diseño de estatutos sociales, formulación de documentos societarios, actas de asamblea, libros corporativos, libros de acciones o partes sociales, etc.  así como realización de contratos mercantiles, civiles y atípicos. Privacidad y Protección de Datos Personales</span></p>\r\n<p> </p>\r\n<p><strong>Propiedad Industrial</strong></p>\r\n<p><span style="font-size: medium;">Desarrollo de las estrategias para la protección de los derechos de propiedad intelectual e industrial tales como marcas, avisos comerciales, modelos y diseños industriales, etc.</span></p>\r\n<p> </p>\r\n<p><strong>Estructuras Corporativas, Reorganización y reestructuración de empresas</strong></p>\r\n<p><span style="font-size: medium;">Fusiones, escisiones, transferencias de negocios, liquidaciones, Asesoría en adquisiciones de empresas y regularización corporativa</span></p>\r\n</div>', '', 1, 0, 0, 12, '2013-10-21 18:42:56', 42, '', '2013-11-11 04:47:15', 42, 0, '0000-00-00 00:00:00', '2013-10-21 18:42:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 5, '', '', 1, 187, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 73, 'Due Dilligence', 'due-dilligence', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/Dilligence.png" border="0" width="901" height="301" /></div>\r\n<p><strong>Diagnósticos Jurídicos Corporativos y Auditoria Legal:</strong></p>\r\n<p><span style="font-size: medium;">Examen de cumplimiento de las obligaciones legales, así como auditorias legales de adquisiciones de empresas y/o acciones. </span></p>\r\n</div>', '', 1, 0, 0, 12, '2013-10-21 18:50:51', 42, '', '2013-11-11 05:07:58', 42, 0, '0000-00-00 00:00:00', '2013-10-21 18:50:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 0, 4, '', '', 1, 321, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 74, 'Fundación Román Rosales ', 'fundacion-roman-rosales', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/fundacion.png" border="0" width="901" height="301" /></div>\r\n<p><strong>Pro-Bono y Responsabilidad Social</strong></p>\r\n<p><span style="font-size: medium;">La Misión de la Fundación Román Rosales es dar asesoría jurídica, contable y fiscal gratuita sin fines de lucro a instituciones o personas  de la sociedad civil que cumplan con requisitos sociales para necesitar de la ayuda de la fundación.</span></p>\r\n<p><span style="font-size: medium;">Ya que sabemos de los difíciles que pueden ser las buenas causas  ayudaremos en el objetivo de cumplirlas a quien las persiga.</span></p>\r\n<p> </p>\r\n<p><strong>Asistencia</strong></p>\r\n<p><span style="font-size: medium;">El trabajo probono prestado por miembros de la firma será de  los más altos estándares profesionales, siendo cubiertos sus honorarios por la Fundación. Los gastos que no serán cubiertos por la fundación son los relativos a papelería, protocolización de documentos, viáticos, etc</span></p>\r\n<p> </p>\r\n<p><strong>Candidatos a Pro bono</strong></p>\r\n<p><span style="font-size: medium;">Llenar el siguiente cuestionario y enviar, su caso será revisado por el departamento Probono de la Fundación y en caso de acreditar se contactarán con usted.</span></p>\r\n<div class="fundacion"><form action="http://roman.com.mx/envio1.php" method="post">\r\n<ul id="contac">\r\n<li>Nombre: <input class="constyle" type="text" name="nombre" /></li>\r\n<li>Actividad no lucrativa: <input class="constyle2" type="text" name="actividad" /></li>\r\n<li>Telefóno:<input class="constyle" type="text" name="telefono" /></li>\r\n<li>Email: <input class="constyle3" type="email" name="email" /></li>\r\n<li><input id="send" type="image" name="imagen" value="" src="images/btn.png" /></li>\r\n</ul>\r\n</form></div>\r\n</div>', '', 1, 0, 0, 2, '2013-10-21 18:58:41', 42, '', '2013-11-11 04:46:35', 42, 0, '0000-00-00 00:00:00', '2013-10-21 18:58:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, 5, '', '', 1, 371, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 75, 'Mensaje Enviado', 'mensaje-enviado', '', '<div class="notas">\r\n<p style="text-align: center;"><span style="font-size: large;"><strong>Su mensaje ha sido enviado con éxito</strong></span></p>\r\n<p style="text-align: center;"><span style="font-size: large;"><strong>En breve nos pondrémos en contacto con usted</strong></span></p>\r\n</div>', '', 1, 0, 0, 2, '2013-10-21 22:22:13', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-10-21 22:22:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 56, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 76, 'Nuestro Staff', 'staff', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/staff.png" border="0" width="901" height="301" /></div>\r\n<ul>\r\n<li><span style="font-size: large;"><a href="staff/roman.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Ernesto Alfonso Román Salcido</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/castaneda.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos M. Castañeda Aguilar</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/delriosr.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos del Rio Davalos Sr.</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/rios.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Nora Rios</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/delrio.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos del Rio Davalos</a></span></li>\r\n<li><span style="font-size: large;"><a href="staff/gonzalez.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Maguil Gonzalez Arciniega</a></span></li>\r\n</ul>\r\n</div>', '', 1, 0, 0, 2, '2013-10-21 22:46:23', 42, '', '2014-11-12 17:52:15', 42, 0, '0000-00-00 00:00:00', '2013-10-21 22:46:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 3, '', '', 1, 459, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 81, 'Consultoría Patrimonial y Sucesoria', 'consultoria-patrimonial-y-sucesoria', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/patrimonial.png" border="0" width="900" height="300" /></div>\r\n<p>Análisis del patrimonio de las personas morales y de las personas físicas, así como la Protección Fiscal Patrimonial de los mismos así como opciones de transmisión de patrimonio.</p>\r\n</div>', '', 1, 0, 0, 12, '2013-10-24 16:00:22', 42, '', '2013-11-11 01:29:34', 42, 0, '0000-00-00 00:00:00', '2013-10-24 16:00:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 1, '', '', 1, 173, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `klhu1_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(33, 80, 'Diagnósticos Fiscales', 'diagnosticos-fiscales', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/diagnostico.png" border="0" width="900" height="300" /></div>\r\n<p>Identificación de posibles riesgos fiscales, por lo que mediante diagnostico es posible anticiparnos a los mismos, de la misma forma identificar beneficios y oportunidades de optimización de las cargas tributarias.</p>\r\n</div>', '', 1, 0, 0, 12, '2013-10-24 15:57:07', 42, '', '2013-11-11 01:28:30', 42, 0, '0000-00-00 00:00:00', '2013-10-24 15:57:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 2, '', '', 1, 268, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 77, 'Staff1', 'staff1', '', '<div class="notas">\r\n<ul>\r\n<li><span style="font-size: large;"><a href="http://www.roman.com.mx/es/staff/roman.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Ernesto Alfonso Román Salcido</a></span></li>\r\n<li><span style="font-size: large;"><a href="http://www.roman.com.mx/es/staff/castaneda.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos M. Castañeda Aguilar</a></span></li>\r\n<li><span style="font-size: large;"><a href="http://www.roman.com.mx/es/staff/delriosr.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos del Rio Davalos Sr.</a></span></li>\r\n<li><span style="font-size: large;"><a href="http://www.roman.com.mx/es/staff/rosales.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Alma Gabriela Rosales Meza</a></span></li>\r\n<li><span style="font-size: large;"><a href="http://www.roman.com.mx/es/staff/rios.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Nora Rios</a></span></li>\r\n<li><span style="font-size: large;"><a href="http://www.roman.com.mx/es/staff/delrio.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Carlos del Rio Davalos</a></span></li>\r\n<li><span style="font-size: large;"><a href="http://www.roman.com.mx/es/staff/gonzalez.html?TB_iframe=true&amp;height=450&amp;width=800" rel="sexylightbox">Maguil Gonzalez Arciniega</a></span></li>\r\n</ul>\r\n</div>', '', -2, 0, 0, 2, '2013-10-23 20:02:30', 42, '', '2013-10-23 20:44:45', 42, 0, '0000-00-00 00:00:00', '2013-10-23 20:02:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 3, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 79, 'Asesoría y Consultoría Fiscal', 'asesoria-y-consultoria-fiscal', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/4.png" border="0" width="900" height="300" /></div>\r\n<p>Asesoría para resolver la problemática en materia fiscal, la interpretación y la correcta aplicación de las disposiciones fiscales, así como la asesoría para el oportuno cumplimiento de las obligaciones fiscales y representación ante las autoridades para realizar los trámites.</p>\r\n<p>Diseño de todo soporte jurídico tributario de las operaciones, presentación de confirmaciones de Criterio, análisis de las implicaciones fiscales de las estrategias fiscales.</p>\r\n</div>', '', 1, 0, 0, 12, '2013-10-24 15:50:10', 42, '', '2013-11-11 00:52:40', 42, 0, '0000-00-00 00:00:00', '2013-10-24 15:50:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 3, '', '', 1, 332, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 78, 'La Firma', 'la-firma', '', '<div class="notas">\r\n<p><span style="font-size: large;"><strong>Visión</strong></span></p>\r\n<p><span style="font-size: medium;">Román Salcido, S.C. es una firma legal  y contable especializada en asesoría en materia fiscal de alto nivel. Los servicios que se ofrecidos por la firma cuentan con un alto grado de estudio y calidad técnica.</span></p>\r\n<p> </p>\r\n<p><span style="font-size: large;"><strong>Nuestra firma</strong></span></p>\r\n<p><span style="font-size: medium;">Román Salcido, S.C. es una firma formada por contadores y abogados que se rigen por altos estándares éticos, técnicos y profesionales, capacitados y actualizados para hacer frente a los problemas actuales en materia fiscal. Fundada en el año 2003, la firma se ha especializado en multidisciplinas siendo siempre el eje central la materia fiscal y tributaria. </span></p>\r\n<p> </p>\r\n<p><span style="font-size: large;"><strong>Modelo de Servicios</strong></span></p>\r\n<p><span style="font-size: medium;">En Román Salcido S.C. identificamos las necesidades y los problemas de los clientes para enfocarnos en su solución siempre cumpliendo con las diversas leyes vigentes aplicables o en su defecto anticipándonos a los cambios en la materia.</span></p>\r\n</div>', '', 1, 0, 0, 2, '2013-10-24 15:42:35', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-10-24 15:42:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 89, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 82, 'Dictamen por enajenación de acciones', 'dictamen-por-enajenacion-de-acciones', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/patrimonial.png" border="0" width="901" height="301" /></div>\r\n<p>Realización del dictamen fiscal por enajenación de acciones tanto sean adquiridos por personas físicas y morales, ya sean residentes en México o en el extranjero.</p>\r\n</div>', '', 1, 0, 0, 12, '2013-10-24 16:04:42', 42, '', '2013-11-11 04:49:00', 42, 0, '0000-00-00 00:00:00', '2013-10-24 16:04:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', '', 1, 483, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 84, 'Acerca de Nosotros', 'acerca-de-nosotros', '', '<p><img src="images/logo-roman.png" border="0" style="float: left; margin-right: 15px;" /></p>\r\n<p style="text-align: justify;"><span style="font-size: 16px; line-height: 22px;">Roman by Dawson, es una de las firmas de abogados líderes en México y en Latinoamérica con una importante presencia en el extranjero. Nuestros abogados son reconocidos en sus respectivos campos de especialización y están comprometidos a proveer servicios de excelencia, conforme los más altos estándares profesionales y éticos.</span></p>', '', -2, 0, 0, 2, '2013-10-25 18:21:08', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-10-25 18:21:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(38, 85, 'Ejemplo de Noticia', 'ejemplo-de-noticia', '', '<div class="notas">\r\n<p style="text-align: justify;"><span style="line-height: 1.3em;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget cursus sem, id elementum eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras sed est id quam vestibulum porttitor. Nunc laoreet nisl quis mauris fringilla gravida vel cursus dui. Maecenas dictum semper purus, eu tincidunt massa adipiscing sed. Sed ac nunc quis nisi congue cursus. In elementum lacus quis enim ultricies, eu elementum eros porta. Donec egestas ipsum risus, vel fringilla ligula consequat eu. Donec lobortis dapibus ipsum, vitae volutpat purus ultricies nec. Aliquam id nisl id elit lacinia pulvinar. Vivamus leo est, aliquam eu lectus at, blandit ornare nisl.</span></p>\r\n<p style="text-align: justify;">Donec mauris est, accumsan sit amet diam nec, dictum varius diam. Vestibulum tincidunt semper ornare. Mauris volutpat elit id condimentum ullamcorper. Fusce fringilla magna eget adipiscing luctus. Proin sollicitudin posuere purus ut commodo. Suspendisse vitae metus ac nunc congue feugiat. Integer mi massa, pellentesque eget posuere et, tincidunt et ligula.</p>\r\n<p style="text-align: justify;">Maecenas ac odio quis augue auctor venenatis eget in nulla. Etiam eget erat sed leo ultricies sodales feugiat et mi. Pellentesque vitae est et purus sollicitudin molestie. In in porta lacus, ac cursus sapien. Nunc gravida neque sem, ac laoreet nibh faucibus a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fermentum lacus ac consectetur accumsan. Vestibulum nec ante dictum, ultricies velit vel, sagittis nunc. Aliquam ut blandit massa. Aenean egestas dolor vel velit placerat viverra.</p>\r\n<p style="text-align: justify;">Aenean condimentum nisi et diam pretium, eget mattis nisi eleifend. Phasellus in rutrum felis, et aliquam lacus. Morbi convallis risus in dolor pulvinar, ac mattis lorem fringilla. Phasellus vitae laoreet nisl, at lacinia nisl. Vivamus purus nulla, ultrices sit amet mauris in, interdum porta tortor. Proin ac sem dapibus, ultrices ipsum nec, molestie lectus. Nam quis metus a dolor pretium malesuada hendrerit at risus. Phasellus quis turpis id leo elementum ultrices nec sit amet arcu. Etiam laoreet arcu eu nisl luctus imperdiet. Nunc vitae augue lorem. Donec vitae faucibus orci. Sed egestas fringilla vulputate. Aenean nec commodo orci, quis dictum massa.</p>\r\n<p style="text-align: justify;">Donec et volutpat sapien, sit amet fringilla augue. Vestibulum sit amet diam in turpis euismod pharetra vel vitae elit. Ut ultricies semper nisi, nec aliquam velit mattis non. Quisque ornare non felis a lobortis. Quisque suscipit interdum felis. Suspendisse ornare lectus at risus viverra, et porta ante ornare. Vivamus ac rhoncus enim, non feugiat lacus. Nam lectus sapien, suscipit sed convallis nec, mollis euismod eros. Etiam pellentesque sit amet nunc a mattis. Vivamus sagittis non eros sed ultrices.</p>\r\n</div>', '', 1, 0, 0, 9, '2013-10-25 23:01:26', 42, '', '2013-10-29 15:37:01', 42, 0, '0000-00-00 00:00:00', '2013-10-25 23:01:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 0, '', '', 1, 21, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 87, 'Modelo de Servicios', 'modelo-de-servicios', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/modelo.png" border="0" width="901" height="301" /></div>\r\n<p><span style="font-size: medium;">En Román Salcido S.C. identificamos las necesidades y los problemas de los clientes para enfocarnos en su solución siempre cumpliendo con las diversas leyes vigentes aplicables o en su defecto anticipándonos a los cambios en la materia.</span></p>\r\n</div>', '', 1, 0, 0, 13, '2013-11-11 03:18:51', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-11 03:18:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 241, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(41, 88, 'Noticias', 'noticias', '', '<div class="notas">\r\n<div class="imagenes_top"><img src="images/img_art/noti.png" border="0" width="901" height="301" /></div>\r\n<p> </p>\r\n<a href="http://www.sat.gob.mx/sitio_internet/novedades/" target="_blank">Novedades SAT</a>\r\n<div style="width: 300px;"> </div>\r\n</div>', '', 1, 0, 0, 2, '2013-11-11 04:10:58', 42, '', '2013-12-10 18:25:11', 42, 0, '0000-00-00 00:00:00', '2013-11-11 04:10:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', '', 1, 306, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `klhu1_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `klhu1_content_frontpage`
--

INSERT INTO `klhu1_content_frontpage` (`content_id`, `ordering`) VALUES
(37, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_content_rating`
--

CREATE TABLE IF NOT EXISTS `klhu1_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `klhu1_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_extensions`
--

CREATE TABLE IF NOT EXISTS `klhu1_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10073 ;

--
-- Volcado de datos para la tabla `klhu1_extensions`
--

INSERT INTO `klhu1_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"es-ES","site":"es-ES"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'Flickr Feed Module', 'module', 'mod_flickrfeed', '', 0, 1, 1, 0, '{"legacy":false,"name":"Flickr Feed Module","type":"module","creationDate":"August 2011","author":"Marius Hogas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com\\/ammon_joomla\\/","version":"1.0.0","description":"This plugin works by pulling a JSON feed from Flickr and applying the data it gets back to a template. ","group":""}', '{"limit":"9","flickrid":"","perrow":"3","follow_link":"","follow_text":"","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"applet","extended_elements":"script,applet,iframe","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `klhu1_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"February 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.18","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, '{"legacy":false,"name":"Gantry","type":"component","creationDate":"December 5, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.20","description":"Gantry Starting Template for Joomla! v4.1.20","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'EspaolspanishformalInternacional', 'language', 'es-ES', '', 0, 1, 0, 0, '{"legacy":false,"name":"Espa\\u00f1ol (spanish formal Internacional)","type":"language","creationDate":"2013-04-04","author":"Joomla! Spanish","copyright":"(C) 2013 JoomlaSpanish.org  All rights reserved.","authorEmail":"","authorUrl":"","version":"2.5.10","description":"Idioma creado por Joomla! Spanish para Joomla 2.5 zona frontal","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Gantry","type":"plugin","creationDate":"December 5, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.20","description":"Gantry System Plugin for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10013, 'eris', 'template', 'eris', '', 0, 1, 1, 0, '{"legacy":false,"name":"eris","type":"template","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.19","description":"${project.description}","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokExtender","type":"plugin","creationDate":"February 24, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"System - Gantry","group":""}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10015, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokNavMenu","type":"module","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.10","description":"RocketTheme Customizable Navigation Menu","group":""}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Plus Slider Module', 'module', 'mod_plusslider', '', 0, 1, 1, 0, '{"legacy":false,"name":"Plus Slider Module","type":"module","creationDate":"Dec 2011","author":"Marius Hogas, Jamy Golden","copyright":"Copyright (C) 2012 www.hogash.com","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com","version":"1.0.0","description":"\\n\\tSimple but powerful image\\/content slider developed by Jamy Golden http:\\/\\/css-plus.com\\/examples\\/plugins\\/PlusSlider\\/, extended by Marius Hogas.\\n\\t","group":""}', '{"width":"940","height":"400","sliderType":"slider","sliderEasing":"easeOutQuad","displayTime":"4000","speed":"500","defaultSlide":"0","autoPlay":"true","keyboardNavigation":"true","pauseOnHover":"true","createArrows":"true","createPagination":"true","style":"yes","active1":"0","title1":"","title_small1":"","slide_align1":"center-left","type1":"image","url1":"","target1":"0","video1":"","flvfile1":"","active2":"0","title2":"","title_small2":"","slide_align2":"center-left","type2":"image","url2":"","target2":"0","video2":"","flvfile2":"","active3":"0","title3":"","title_small3":"","slide_align3":"center-left","type3":"image","url3":"","target3":"0","video3":"","flvfile3":"","active4":"0","title4":"","title_small4":"","slide_align4":"center-left","type4":"image","url4":"","target4":"0","video4":"","flvfile4":"","active5":"0","title5":"","title_small5":"","slide_align5":"center-left","type5":"image","url5":"","target5":"0","video5":"","flvfile5":"","active6":"0","title6":"","title_small6":"","slide_align6":"center-left","type6":"image","url6":"","target6":"0","video6":"","flvfile6":"","active7":"0","title7":"","title_small7":"","slide_align7":"center-left","type7":"image","url7":"","target7":"0","video7":"","flvfile7":"","active8":"0","title8":"","title_small8":"","slide_align8":"center-left","type8":"image","url8":"","target8":"0","video8":"","flvfile8":"","active9":"0","title9":"","title_small9":"","slide_align9":"center-left","type9":"image","url9":"","target9":"0","video9":"","flvfile9":"","active10":"0","title10":"","title_small10":"","slide_align10":"center-left","type10":"image","url10":"","target10":"0","video10":"","flvfile10":"","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'System - Jquery', 'plugin', 'jquery', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Jquery","type":"plugin","creationDate":"Nov 9th, 2011","author":"Marius Hogas","copyright":"Copyright (c) 2011 Marius Hogas. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com","version":"1","description":"Simple Load of jQuery from the Google''s CDN","group":""}', '{"version":"1.7.2","noconflict":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'Migur', 'library', 'migur', '', 0, 1, 1, 0, '{"legacy":false,"name":"Migur","type":"library","creationDate":"June 2011","author":"Migur","copyright":"Migur Ltd","authorEmail":"info@migur.com","authorUrl":"http:\\/\\/www.migur.com\\/","version":"13.08","description":"MIGUR_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'mod_newsletter_subscribe', 'module', 'mod_newsletter_subscribe', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_newsletter_subscribe","type":"module","creationDate":"May 2011","author":"Migur Newsletter Project","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"info@migur.com","authorUrl":"www.migur.com","version":"13.08","description":"This module allows to subscribe the J! user to one or more lists.","group":""}', '{"textprepend":"","textabovename":"","textaboveemail":"","textunderemail":"","showmailtype":"1","defaultmailtype":"1","listselector":"1","multilist":"0","showtermslink":"0","termslink":"","textappend":"","fbsecret":"","fbenabled":"0","fbappid":"","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'com_newsletter', 'component', 'com_newsletter', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_NEWSLETTER","type":"component","creationDate":"June 2011","author":"Migur","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"info@migur.com","authorUrl":"http:\\/\\/migur.com\\/","version":"13.08","description":"COM_NEWSLETTER_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'Migur Newsletter', 'package', 'pkg_newsletter', '', 0, 1, 1, 0, '{"legacy":false,"name":"Migur Newsletter","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"","authorUrl":"","version":"13.08","description":"Migur newsletter full package of a component.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Recent Projects Module', 'module', 'mod_recent_projects', '', 0, 1, 1, 0, '{"legacy":false,"name":"Recent Projects Module","type":"module","creationDate":"August 2011","author":"Marius Hogas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com\\/ammon_joomla\\/","version":"1.0.0","description":"This module adds 3 thumbnails with your latest works.","group":""}', '{"maintitle":"","maindescription":"","btntext":"view all of our projects \\u2192","title1":"","description1":"","linktype1":"none","articlelink1":"","title2":"","description2":"","linktype2":"none","articlelink2":"","title3":"","description3":"","linktype3":"none","articlelink3":"","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'Skyline Twitter', 'module', 'mod_sl_twitter', '', 0, 1, 0, 0, '{"legacy":false,"name":"Skyline Twitter","type":"module","creationDate":"January 2012","author":"Pham Minh Tuan","copyright":"Copyright (c) 2012 Skyline. All rights reserved.","authorEmail":" (admin@vnskyline.com)","authorUrl":"http:\\/\\/www.vnskyline.com","version":"1.0.0","description":"\\n\\t\\n\\t\\tSkyline Twitter Module For Joomla 1.7 - Displays Latest Twitter Posts<br \\/><br \\/>Developed by Skyline Software (<a target=\\"_blank\\" href=\\"http:\\/\\/www.vnskyline.com\\">http:\\/\\/www.vnskyline.com<\\/a>).\\n\\t\\n\\t","group":""}', '{"count":"5"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'HG Social Share Module', 'module', 'mod_hg_share', '', 0, 1, 1, 0, '{"legacy":false,"name":"HG Social Share Module","type":"module","creationDate":"Dec 2012","author":"Marius Hogas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com\\/","version":"1.0.0","description":"In this module you can control what tools you can use for social sharing, Facebook Like Button, Tweet This Button or Google Plus button.","group":""}', '{"fblike":"0","tweet":"0","text":"Put here a text that will be tweeted","via":"","url":"","gplus":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'Simple Image Gallery (by JoomlaWorks)', 'plugin', 'jw_simpleImageGallery', 'content', 0, 1, 1, 0, '{"legacy":true,"name":"Simple Image Gallery (by JoomlaWorks)","type":"plugin","creationDate":"April 11th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks, a business unit of Nuevvo Webware Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.2","description":"JW_SIG_DESC","group":""}', '{"galleries_rootfolder":"images","thb_width":"200","thb_height":"160","jpg_quality":"85","smartResize":"1","galleryMessages":"0","cache_expire_time":"120","memoryLimit":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'HG Google Map Module', 'module', 'mod_hg_googlemap', '', 0, 1, 1, 0, '{"legacy":false,"name":"HG Google Map Module","type":"module","creationDate":"Dec 2011","author":"Marius Hogas","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"mhogas@gmail.com","authorUrl":"www.hogash.com","version":"1.0.0","description":"\\n\\tThis module adds an awesome full width\\/height google map, a counter for event, color styling, custom pin markers etc. To find coordinates, go to <a href=\\"http:\\/\\/itouchmap.com\\/latlong.html\\" target=\\"_blank\\">http:\\/\\/itouchmap.com\\/latlong.html<\\/a>. <strong>Unlimited Pins<\\/strong>. To play with the map colors and styles you can try this tool right here <a href=\\"http:\\/\\/gmaps-samples-v3.googlecode.com\\/svn\\/trunk\\/styledmaps\\/wizard\\/index.html\\" target=\\"_blank\\">http:\\/\\/gmaps-samples-v3.googlecode.com\\/svn\\/trunk\\/styledmaps\\/wizard\\/index.html<\\/a>.\\n\\t","group":""}', '{"width":"940","height":"320","imagepin":"","anchor":"bottom-center","centerMap":"40.74455835,-74.0563488","zoom":"13","type":"ROADMAP","enable_control":"1","controll":"DROPDOWN_MENU","draging":"false","mousewheel":"false","marker_animation":"1","animation_type":"DROP","styling":"1","featureType":"all","visibility":"on","elementType":"geometry","hue":"#5AB2B6","saturation":"0","lightness":"0","gamma":"1","markers":"","enable_expand":"no","expand_text":"EXPAND MAP","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'Rapid Contact Form', 'module', 'mod_rapid_contact', '', 0, 1, 1, 0, '{"legacy":false,"name":"Rapid Contact Form","type":"module","creationDate":"March 2011","author":"Christopher Mavros","copyright":"Copyright (C) 2009-2011 Christopher Mavros. All rights reserved.","authorEmail":"mavrosxristoforos@gmail.com","authorUrl":"http:\\/\\/www.mavrosxristoforos.com\\/","version":"1.2","description":"Rapid Contact. Lightweight, fast and easy, configuring a contact form, was never a pleasure before.","group":""}', '{"department_mail_1":"","department_name_1":"","department_mail_2":"","department_name_2":"","department_mail_3":"","department_name_3":"","department_mail_4":"","department_name_4":"","department_mail_5":"","department_name_6":"","from_name":"Rapid Contact","from_email":"rapid_contact@yoursite.com","name_label":"Name:","email_label":"Email:","subject_label":"Subject:","message_label":"Message:","button_text":"Send Message","page_text":"Thank you for your contact.","error_text":"Your message could not be sent. Please try again.","no_email":"Please write your email","invalid_email":"Please write a valid email","wrong_antispam":"Wrong Anti-Spam Answer","pre_text":"","exact_url":"1","disable_https":"1","fixed_url":"0","fixed_url_address":"","enable_anti_spam":"1","anti_spam_q":"How many eyes has a typical person?","anti_spam_a":"2","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'EspaolspanishformalInternacional', 'language', 'es-ES', '', 1, 1, 0, 0, '{"legacy":false,"name":"Espa\\u00f1ol (spanish formal Internacional)","type":"language","creationDate":"2013-04-04","author":"Joomla! Spanish","copyright":"copyright (C) 2013 JoomlaSpanish.org  All rights reserved.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"2.5.10","description":"Idioma para usar en la parte administrativa de Joomla! 2.5 Creado por Joomla! Spanish","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'es-ES', 'package', 'pkg_es-ES', '', 0, 1, 1, 0, '{"legacy":false,"name":"Espa\\u00f1ol (spanish formal Internacional) Pack","type":"package","creationDate":"01-04-2013","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.5.10","description":"<a href=\\"http:\\/\\/joomlaspanish.org\\" target=\\"_blank\\"><img src=\\"http:\\/\\/joomlaspanish.org\\/images\\/logo.png\\" width=\\"360\\" height=\\"62\\" alt=\\"Joomlaspanish.org\\" \\/><\\/a><br\\/><br\\/>Idioma completo creado por Joomla! Spanish para Joomla 2.5.10 Zona frontal (Frontend)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'B2J Contact', 'library', 'b2jcontact', '', 0, 1, 1, 0, '{"legacy":false,"name":"B2J Contact","type":"library","creationDate":"September 2013","author":"Bang2Joom","copyright":"Copyright 2012 Bang2Joom. All rights reserved.","authorEmail":"info@bang2joom.com","authorUrl":"http:\\/\\/www.bang2joom.com","version":"1.5","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'B2J Contact', 'module', 'mod_b2jcontact', '', 0, 1, 0, 0, '{"legacy":false,"name":"B2J Contact","type":"module","creationDate":"September 2013","author":"Bang2Joom","copyright":"Copyright 2012 Bang2Joom. All rights reserved.","authorEmail":"info@bang2joom.com","authorUrl":"http:\\/\\/www.bang2joom.com","version":"1.5","description":"MOD_B2JCONTACT_DESCRIPTION","group":""}', '{"module_class_sfx":"b2j_contact"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'com_b2jcontact', 'component', 'com_b2jcontact', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_B2JCONTACT","type":"component","creationDate":"September 2013","author":"Bang2Joom","copyright":"Copyright 2013 Bang2Joom. All rights reserved.","authorEmail":"info@bang2joom.com","authorUrl":"http:\\/\\/www.bang2joom.com","version":"1.5","description":"","group":""}', '{"adminemailfrom":{"select":"admin"},"adminemailreplyto":{"select":"submitter"},"submitteremailfrom":{"select":"admin"},"submitteremailreplyto":{"select":"admin"}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'aicontactsafe', 'component', 'com_aicontactsafe', '', 1, 0, 0, 0, '{"legacy":true,"name":"aiContactSafe","type":"component","creationDate":"April 2010","author":"Algis Info Grup SRL","copyright":"(c)2010 Algis Info Grup SRL. All rights reserved.","authorEmail":"contact@algis.ro","authorUrl":"www.algis.ro","version":"2.0.21c.stable","description":"A contact form in which you can add any number of custom fields.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'aiContactSafe module', 'module', 'mod_aicontactsafe', '', 0, 0, 0, 0, '{"legacy":true,"name":"aiContactSafe module","type":"module","creationDate":"October 2009","author":"Algis Info Grup SRL","copyright":"(c)2010 Algis Info Grup SRL. All rights reserved.","authorEmail":"contact@algis.ro","authorUrl":"www.algis.ro","version":"1.0.13.stable","description":"A module to display the contact form generated by aiContactSafe. Just select the profile to use from aiContactSafe and publish the module in the template position where you need the contact form. For \\"Fields values\\" use something like this \\"aics_name=default name|field2_name=value field2\\". \\"aics_name=default name\\" will set the default value of the field aics_name to \\"default name\\". You can use here all the fields defined in aiContactSafe.","group":""}', '{"moduleclass_sfx":"","pf":"2","use_css":"1","fd_values":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'Migur - User registration plugin', 'plugin', 'miguruserreg', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"Migur - User registration plugin","type":"plugin","creationDate":"September 2012","author":"Henrik Hussfelt","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"henrik@migur.com","authorUrl":"www.migur.com","version":"13.08","description":"Plugin to synchronise users during registration","group":""}', '{"listid":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'Migur - User synchronisation plugin', 'plugin', 'migurlistsync', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"Migur - User synchronisation plugin","type":"plugin","creationDate":"August 2012","author":"Henrik Hussfelt","copyright":"Copyright (C) 2011 Migur Ltd. All rights reserved.","authorEmail":"henrik@migur.com","authorUrl":"www.migur.com","version":"13.08","description":"Plugin to synchronise users","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'Simple Image Gallery (by JoomlaWorks)', 'plugin', 'jw_sig', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"Simple Image Gallery (by JoomlaWorks)","type":"plugin","creationDate":"May 27th, 2013","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"3.0.0","description":"JW_PLG_SIG_XML_DESC","group":""}', '{"galleries_rootfolder":"images","jQueryHandling":"1.8","thb_width":"200","thb_height":"160","jpg_quality":"80","cache_expire_time":"1440","memoryLimit":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'PLG_SYSTEM_MODULESANYWHERE', 'plugin', 'modulesanywhere', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"PLG_SYSTEM_MODULESANYWHERE","type":"plugin","creationDate":"December 2013","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2013 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"3.4.0FREE","description":"PLG_SYSTEM_MODULESANYWHERE_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'PLG_EDITORS-XTD_MODULESANYWHERE', 'plugin', 'modulesanywhere', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"PLG_EDITORS-XTD_MODULESANYWHERE","type":"plugin","creationDate":"December 2013","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2013 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"3.4.0FREE","description":"PLG_EDITORS-XTD_MODULESANYWHERE_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'rt_missioncontrol', 'template', 'rt_missioncontrol', '', 1, 1, 1, 0, '{"legacy":false,"name":"rt_missioncontrol","type":"template","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6","description":"MC_TEMPLATE_DESC","group":""}', '{"adminTitle":"Joomla Administrator","templateWidth":"variable","dashboard":"MissionControl is a brand-new take on the Joomla Administrator template.  Primary objectives during development were clean modern design, optimal usability, configurable colors and logo, and enhanced functionality via optimizations and new extensions.","menuwidth":"small","extendmenu":"off","enableGravatar":"1","enableSessionBar":"1","enableTransitions":"enabled","enableQuickEditor":"1","enableViewSite":"1","enableQuickCheckin":"0","enableQuickCacheClean":"1","enableFancyHeaders":"fancy","showhelp":"1","showhelpbutton":"1","showlangmenu":"1","body_text_color":"#333333","body_link_color":"#4486BA","header_bg_color":"#333333","header_text_color":"#CCCCCC","header_link_color":"#FFFFFF","header_shadow_color":"#000000","tab_bg_color":"#4D4D4D","tab_text_color":"#FFFFFF","special_bg_color":"#C62D2D","special_text_color":"#FFFFFF","active_bg_color":"#4F9BD8","active_text_color":"#FFFFFF","hover_bg_color":"#88B719","hover_text_color":"#FFFFFF"}', '{"last_update":1380984995}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'System - MissionControl Support', 'plugin', 'missioncontrol', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - MissionControl Support","type":"plugin","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6","description":"MissionControl Support Plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10050, 'System - RokTracking', 'plugin', 'roktracking', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokTracking","type":"plugin","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6","description":"User Tracking Plugin","group":""}', '{"userpurgedays":"14","adminpurgedays":"14","trackusers":"1","trackadmins":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10051, 'RokQuickLinks', 'module', 'mod_rokquicklinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"RokQuickLinks","type":"module","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6","description":"MC_RQL_ROKQUICKLINKS_DESC","group":""}', '{"iconpath":"\\/administrator\\/modules\\/mod_rokquicklinks\\/tmpl\\/icons\\/","quickfields":"[{''icon'':''newspaper_add.png'',''target'':''self'',''link'':''index.php?option=com_content&task=article.edit'',''title'':''Add Article''},{''icon'':''images.png'',''target'':''self'',''link'':''index.php?option=com_media'',''title'':''Media Manager''},{''icon'':''drawer_open.png'',''target'':''self'',''link'':''index.php?option=com_categories&section=com_content'',''title'':''Category Manager''},{''icon'':''cog.png'',''target'':''self'',''link'':''index.php?option=com_config'',''title'':''Configuration''},{''icon'':''brick.png'',''target'':''self'',''link'':''index.php?option=com_installer'',''title'':''Install New''},{''icon'':''color_management.png'',''target'':''self'',''link'':''index.php?option=com_templates'',''title'':''Templates''}]"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'RokUserStats', 'module', 'mod_rokuserstats', '', 1, 1, 1, 0, '{"legacy":false,"name":"RokUserStats","type":"module","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6","description":"MC_RUS_ROKUSERSTATS_DESC","group":""}', '{"showstats":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'RokStats', 'module', 'mod_rokstats', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokStats","type":"module","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6","description":"MC_RS_ROKUSERSTATS_DESC","group":""}', '{"sessiontime":"","showcurrentactiveusers":"1","showactiveguests":"1","showactiveregistered":"1","showregisteredusernames":"0","showuniqueviststoday":"1","showuniquevistsyesterday":"1","showvisitsthisweek":"1","showvisitspreviousweek":"1","showtotalarticles":"0","shownewarticlesthisweek":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'RokUserChart', 'module', 'mod_rokuserchart', '', 1, 1, 1, 0, '{"legacy":false,"name":"RokUserChart","type":"module","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6","description":"MC_RUC_DESC","group":""}', '{"extra_class":"","history":"7","width":"285","height":"120"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'RokAdminAudit', 'module', 'mod_rokadminaudit', '', 1, 1, 1, 0, '{"legacy":false,"name":"RokAdminAudit","type":"module","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6","description":"MC_RAA_ROKADMINAUDIT_DESC","group":""}', '{"limit":"5","detail_filter":"low","enableGravatar":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 'Unite Nivo Slider', 'module', 'mod_unite_nivoslider', '', 0, 1, 0, 0, '{"legacy":false,"name":"Unite Nivo Slider","type":"module","creationDate":"March 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"2.1.0","description":"\\n\\t\\t\\t<div style=\\"font-weight:normal;text-align: left;\\">\\n\\t\\t\\t<p><strong>Unite Nivo Slider<\\/strong> module. Put nivo slider on any page. This module uses nivo slider component for slides select.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t&nbsp;Need support? Please visit the <a href=\\"http:\\/\\/unitecms.net\\/free-joomla-extensions\\/unite-nivo-slider\\/support\\" target=\\"_blank\\">Nivo Slider Support Page<\\/a>\\n\\t\\t\\t\\t<br>&nbsp;you''ll find there all the information you need.\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tLiked the slider? Check out the <a style=\\"font-weight:bold;font-size:14px;\\" href=\\"http:\\/\\/www.unitecms.net\\/free-joomla-extensions\\/unite-nivo-slider-pro\\/nivo-slider-pro-demo\\" target=\\"_blank\\">Unite Nivo Slider PRO<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<small style=\\"float:right\\">ver. 2.1<\\/small>\\n\\t\\t\\t<\\/div>\\n     \\n\\t ","group":""}', '{"width":"618","height":"246","pauseTime":"3000","animSpeed":"500","effect":"","theme":"default","controlNav":"true","directionNav":"true","prevText":"Prev","nextText":"Next","position":"center","margin_left":"0","margin_right":"0","margin_top":"0","margin_bottom":"0","clear_both":"false","startSlide":"0","randomStart":"false","pauseOnHover":"true","manualAdvance":"false","slices":"15","boxCols":"8","boxRows":"4","beforeChange":"function(){}","afterChange":"function(){}","slideshowEnd":"function(){}","lastSlide":"function(){}","afterLoad":"function(){}","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 'com_nivoslider', 'component', 'com_nivoslider', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_nivoslider","type":"component","creationDate":"March 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UnitCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"2.1.0","description":"\\n\\t\\tCreate slides source for Nivo Slider module \\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10064, 'Content - ARI Sexy Lightbox Lite', 'plugin', 'arisexylightboxlite', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - ARI Sexy Lightbox Lite","type":"plugin","creationDate":"July 2013","author":"ARI Soft","copyright":"ARI Soft","authorEmail":"info@ari-soft.com","authorUrl":"www.ari-soft.com","version":"1.2.3","description":"ARI_SEXY_LIGHTBOX_LITE_PLUGIN","group":""}', '{"includeJQuery":"1","loadJQueryMethod":"google_cdn","noConflict":"1","loadAssets":"auto","opt_find":"sexylightbox","opt_zIndex":"32000","opt_color":"blanco","opt_emergefrom":"top","opt_showDuration":"200","opt_closeDuration":"400","opt_moveDuration":"1000","opt_moveEffect":"easeInOutBack","opt_resizeDuration":"1000","opt_resizeEffect":"easeInOutBack","opt_shake_distance":"10","opt_shake_duration":"100","opt_shake_loops":"2","opt_shake_transition":"easeInOutBack"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10069, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"library","creationDate":"December 5, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.20","description":"Gantry Starting Template for Joomla! v4.1.20","group":""}', '{}', '{"last_update":1397494863}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10071, 'PLG_SYSTEM_NNFRAMEWORK', 'plugin', 'nnframework', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"PLG_SYSTEM_NNFRAMEWORK","type":"plugin","creationDate":"December 2013","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2013 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"13.12.6","description":"PLG_SYSTEM_NNFRAMEWORK_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10072, 'Edocs - Embed Documents', 'plugin', 'me_edocs', 'content', 0, 1, 1, 0, '{"legacy":true,"name":"Edocs - Embed Documents","type":"plugin","creationDate":"March 2012","author":"MediaEventi","copyright":"Copyright (C) 2012 MediaEventi. All rights reserved.","authorEmail":"webmaster@mediaeventi.it","authorUrl":"http:\\/\\/mediaeventi.it\\/en\\/projects\\/joomla\\/edocs","version":"1.2","description":"PLG_CONTENT_EDOCS_DESCRIPTION","group":""}', '{"download_text":"Download","root":"images\\/stories","width":"500","height":"400","debug":"0","ie_compatibility":"0","ie_text":"Click here to view online"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_filters`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `klhu1_finder_taxonomy`
--

INSERT INTO `klhu1_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_terms`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `klhu1_finder_terms_common`
--

INSERT INTO `klhu1_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_finder_types`
--

CREATE TABLE IF NOT EXISTS `klhu1_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_languages`
--

CREATE TABLE IF NOT EXISTS `klhu1_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `klhu1_languages`
--

INSERT INTO `klhu1_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_menu`
--

CREATE TABLE IF NOT EXISTS `klhu1_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=187 ;

--
-- Volcado de datos para la tabla `klhu1_menu`
--

INSERT INTO `klhu1_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 205, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 49, 50, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 41, 42, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 43, 48, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 44, 45, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 46, 47, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 51, 52, 0, '*', 1),
(101, 'mainmenu', 'Inicio', 'inicio', '', 'inicio', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Roman.com.mx","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 29, 30, 1, '*', 0),
(104, 'mainmenu', 'Full width page', 'full-width-page', '', '2012-05-05-09-36-04/full-width-page', 'index.php?option=com_content&view=article&id=3', 'component', -2, 125, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 54, 55, 0, '*', 0),
(105, 'mainmenu', 'Works', '2012-04-18-14-10-17', '', '2012-04-18-14-10-17', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 65, 80, 0, '*', 0),
(106, 'mainmenu', 'Features', '2012-04-18-14-10-28', '', '2012-04-18-14-10-28', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 81, 88, 0, '*', 0),
(107, 'mainmenu', 'Contacto', 'contact', '', 'contact', 'index.php?option=com_content&view=article&id=14', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 163, 168, 0, '*', 0),
(108, 'mainmenu', 'Separator', 'separator', '', 'separator', '', 'separator', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 89, 90, 0, '*', 0),
(109, 'mainmenu', 'Submenu Item #1', '2012-04-18-14-11-48', '', '2012-04-18-14-10-17/2012-04-18-14-11-48', '#', 'url', -2, 105, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 66, 67, 0, '*', 0),
(110, 'mainmenu', 'Submenu Item #2', '2012-04-18-14-12-05', '', '2012-04-18-14-10-17/2012-04-18-14-12-05', '#', 'url', -2, 105, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 68, 73, 0, '*', 0),
(111, 'mainmenu', 'Submenu Item #3', '2012-04-18-14-12-30', '', '2012-04-18-14-10-17/2012-04-18-14-12-05/2012-04-18-14-12-30', '#', 'url', -2, 110, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 69, 70, 0, '*', 0),
(112, 'mainmenu', 'Submenu Item #4', '2012-04-18-14-12-50', '', '2012-04-18-14-10-17/2012-04-18-14-12-05/2012-04-18-14-12-50', '#', 'url', -2, 110, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"91","fusion_module_positions":"","splitmenu_item_subtext":""}', 71, 72, 0, '*', 0),
(163, 'main', 'com_newsletter_menu', 'com-newsletter-menu', '', 'com-newsletter-menu', 'index.php?option=com_newsletter', 'component', 0, 1, 1, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_newsletter/images/migur-newsletter-16x16.png', 0, '', 197, 198, 0, '', 1),
(114, 'footer-menu', 'Curabitur iaculis', '2012-04-21-10-14-17', '', '2012-04-21-10-14-17', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 91, 92, 0, '*', 0),
(115, 'footer-menu', 'Cum sociis natoque', '2012-04-21-10-14-18', '', '2012-04-21-10-14-18', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 93, 94, 0, '*', 0),
(116, 'footer-menu', 'Parturient montes', '2012-04-21-10-14-19', '', '2012-04-21-10-14-19', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 95, 96, 0, '*', 0),
(117, 'footer-menu', 'Nulla varius commodo', '2012-04-21-10-14-20', '', '2012-04-21-10-14-20', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 97, 98, 0, '*', 0),
(118, 'footer-menu', 'Cum sociis natoque', '2012-04-21-10-14-21', '', '2012-04-21-10-14-21', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 99, 100, 0, '*', 0),
(119, 'footer-menu', 'Egestas augue', '2012-04-21-10-14-22', '', '2012-04-21-10-14-22', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 101, 102, 0, '*', 0),
(120, 'footer-menu', 'Vulputate magna', '2012-04-21-10-14-23', '', '2012-04-21-10-14-23', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 103, 104, 0, '*', 0),
(121, 'footer-menu', 'Donec consectetuer', '2012-04-21-10-14-24', '', '2012-04-21-10-14-24', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"96","fusion_module_positions":"","splitmenu_item_subtext":""}', 105, 106, 0, '*', 0),
(122, 'mainmenu', 'Portfolio One Column', 'portfolio-one-column', '', '2012-04-18-14-10-17/portfolio-one-column', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', -2, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"5","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 74, 75, 0, '*', 0),
(123, 'mainmenu', 'Portfolio Two Columns', 'portfolio-two-columns', '', '2012-04-18-14-10-17/portfolio-two-columns', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', -2, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"6","num_columns":"2","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 76, 77, 0, '*', 0),
(124, 'mainmenu', 'Portfolio Three Columns', 'portfolio-three-columns', '', '2012-04-18-14-10-17/portfolio-three-columns', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', -2, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"6","num_columns":"3","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"0","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 78, 79, 0, '*', 0),
(125, 'mainmenu', 'Pages', '2012-05-05-09-36-04', '', '2012-05-05-09-36-04', '#', 'url', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 53, 64, 0, '*', 0),
(126, 'mainmenu', 'Right sidebar', 'right-sidebar', '', '2012-05-05-09-36-04/right-sidebar', 'index.php?option=com_content&view=article&id=3', 'component', -2, 125, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 56, 57, 0, '*', 0),
(127, 'mainmenu', 'Left Sidebar', 'left-sidebar', '', '2012-05-05-09-36-04/left-sidebar', 'index.php?option=com_content&view=article&id=3', 'component', -2, 125, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 58, 59, 0, '*', 0),
(128, 'mainmenu', 'Login page', 'login-page', '', '2012-05-05-09-36-04/login-page', 'index.php?option=com_users&view=login', 'component', -2, 125, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 60, 61, 0, '*', 0),
(129, 'mainmenu', 'Register page', 'register-page', '', '2012-05-05-09-36-04/register-page', 'index.php?option=com_users&view=registration', 'component', -2, 125, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 62, 63, 0, '*', 0),
(130, 'mainmenu', 'Typography', 'typography', '', '2012-04-18-14-10-28/typography', 'index.php?option=com_content&view=article&id=16', 'component', -2, 106, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 82, 83, 0, '*', 0),
(131, 'mainmenu', 'Modules positions', 'modules-positions', '', '2012-04-18-14-10-28/modules-positions', 'index.php?option=com_content&view=article&id=15', 'component', -2, 106, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 84, 85, 0, '*', 0),
(132, 'mainmenu', 'Blog', 'blog', '', '2012-04-18-14-10-28/blog', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', -2, 106, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"10","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 86, 87, 0, '*', 0),
(133, 'sidebar-menu', 'Curabitur iaculis', '2012-05-05-10-56-29', '', '2012-05-05-10-56-29', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 107, 108, 0, '*', 0),
(134, 'sidebar-menu', 'Parturient montes', '2012-05-05-10-56-30', '', '2012-05-05-10-56-30', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 109, 110, 0, '*', 0),
(135, 'sidebar-menu', 'Cum sociis natoque', '2012-05-05-10-56-31', '', '2012-05-05-10-56-31', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 111, 112, 0, '*', 0),
(136, 'sidebar-menu', 'Quisque fermentum', '2012-05-05-10-56-32', '', '2012-05-05-10-56-32', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 113, 118, 0, '*', 0),
(137, 'sidebar-menu', 'Egestas augue', '2012-05-05-10-56-33', '', '2012-05-05-10-56-33', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 121, 122, 0, '*', 0),
(138, 'sidebar-menu', 'Donec consectetuer', '2012-05-05-10-56-34', '', '2012-05-05-10-56-34', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 123, 124, 0, '*', 0),
(139, 'sidebar-menu', 'Fermentum vitae', '2012-05-05-10-56-35', '', '2012-05-05-10-56-35', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 125, 126, 0, '*', 0),
(140, 'sidebar-menu', 'Parturient montes', '2012-05-05-10-56-36', '', '2012-05-05-10-56-32/2012-05-05-10-56-36', '#', 'url', -2, 136, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 116, 117, 0, '*', 0),
(141, 'sidebar-menu', 'Vulputate magna', '2012-05-05-10-56-37', '', '2012-05-05-10-56-32/2012-05-05-10-56-37', '#', 'url', -2, 136, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 114, 115, 0, '*', 0),
(142, 'sidebar-menu', 'Nulla varius commodo', '2012-05-05-10-56-38', '', '2012-05-05-10-56-38', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 119, 120, 0, '*', 0),
(143, 'mainmenu', 'Nosotros', '2013-10-02-14-43-51', '', '2013-10-02-14-43-51', '#', 'url', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 127, 136, 0, '*', 0),
(144, 'mainmenu', 'Áreas de Práctica', '2013-10-02-14-45-01', '', '2013-10-02-14-45-01', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 137, 156, 0, '*', 0),
(145, 'mainmenu', 'Staff', 'staff', '', 'staff', 'index.php?option=com_content&view=article&id=29', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 157, 158, 0, '*', 0),
(146, 'mainmenu', 'Noticias', 'noticias', '', 'noticias', 'index.php?option=com_content&view=article&id=41', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 159, 160, 0, '*', 0),
(147, 'mainmenu', 'Fundación RR', 'fundacion', '', 'fundacion', 'index.php?option=com_content&view=article&id=27', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 161, 162, 0, '*', 0),
(148, 'footer-menu', 'Contacto', 'contacto', '', 'contacto', 'index.php?option=com_content&view=article&id=14', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 169, 170, 0, '*', 0),
(149, 'footer-menu', 'Noticias', '2013-10-02-16-15-16', '', '2013-10-02-16-15-16', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 171, 172, 0, '*', 0),
(150, 'footer-menu', 'Facebook', '2013-10-02-16-16-16', '', '2013-10-02-16-16-16', 'https://www.facebook.com/ernesto.romansalcido', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 173, 174, 0, '*', 0),
(151, 'footer-menu', 'Aviso de Privacidad', '2013-10-02-16-18-46', '', '2013-10-02-16-18-46', 'http://roman.com.mx/es/pdf/Aviso_de_Privacidad_Roman_Salcido.pdf', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 175, 176, 0, '*', 0),
(152, 'footer-menu', 'Términos y Condiciones', '2013-10-02-16-20-18', '', '2013-10-02-16-20-18', 'http://roman.com.mx/es/pdf/Terminos_y_Condiciones_Roman.pdf', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 2, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 177, 178, 0, '*', 0),
(153, 'main', 'COM_B2JCONTACT_MENU', 'com-b2jcontact-menu', '', 'com-b2jcontact-menu', 'index.php?option=com_b2jcontact', 'component', 0, 1, 1, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_b2jcontact/images/b2jcontact-logo-16x16.png', 0, '', 179, 180, 0, '', 1),
(154, 'main', 'COM_AICONTACTSAFE', 'com-aicontactsafe', '', 'com-aicontactsafe', 'index.php?option=com_aicontactsafe', 'component', 0, 1, 1, 10039, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_aicontactsafe/images/aicontactsafe_icon.gif', 0, '', 181, 196, 0, '', 1),
(155, 'main', 'COM_AICONTACTSAFE_MESSAGES', 'com-aicontactsafe-messages', '', 'com-aicontactsafe/com-aicontactsafe-messages', 'index.php?option=com_aicontactsafe&sTask=messages', 'component', 0, 154, 2, 10039, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_aicontactsafe/images/aicontactsafe_icon.gif', 0, '', 182, 183, 0, '', 1),
(156, 'main', 'COM_AICONTACTSAFE_ATTACHMENTS', 'com-aicontactsafe-attachments', '', 'com-aicontactsafe/com-aicontactsafe-attachments', 'index.php?option=com_aicontactsafe&sTask=attachments', 'component', 0, 154, 2, 10039, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_aicontactsafe/images/aicontactsafe_icon.gif', 0, '', 184, 185, 0, '', 1),
(157, 'main', 'COM_AICONTACTSAFE_PROFILES', 'com-aicontactsafe-profiles', '', 'com-aicontactsafe/com-aicontactsafe-profiles', 'index.php?option=com_aicontactsafe&sTask=profiles', 'component', 0, 154, 2, 10039, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_aicontactsafe/images/aicontactsafe_icon.gif', 0, '', 186, 187, 0, '', 1),
(158, 'main', 'COM_AICONTACTSAFE_FIELDS', 'com-aicontactsafe-fields', '', 'com-aicontactsafe/com-aicontactsafe-fields', 'index.php?option=com_aicontactsafe&sTask=fields', 'component', 0, 154, 2, 10039, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_aicontactsafe/images/aicontactsafe_icon.gif', 0, '', 188, 189, 0, '', 1),
(159, 'main', 'COM_AICONTACTSAFE_STATUSES', 'com-aicontactsafe-statuses', '', 'com-aicontactsafe/com-aicontactsafe-statuses', 'index.php?option=com_aicontactsafe&sTask=statuses', 'component', 0, 154, 2, 10039, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_aicontactsafe/images/aicontactsafe_icon.gif', 0, '', 190, 191, 0, '', 1),
(160, 'main', 'COM_AICONTACTSAFE_CONTROL_PANEL', 'com-aicontactsafe-control-panel', '', 'com-aicontactsafe/com-aicontactsafe-control-panel', 'index.php?option=com_aicontactsafe&sTask=control_panel', 'component', 0, 154, 2, 10039, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_aicontactsafe/images/aicontactsafe_icon.gif', 0, '', 192, 193, 0, '', 1),
(161, 'main', 'COM_AICONTACTSAFE_ABOUT', 'com-aicontactsafe-about', '', 'com-aicontactsafe/com-aicontactsafe-about', 'index.php?option=com_aicontactsafe&sTask=about', 'component', 0, 154, 2, 10039, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_aicontactsafe/images/aicontactsafe_icon.gif', 0, '', 194, 195, 0, '', 1),
(164, 'mainmenu', 'ejemplo', 'ejemplo', '', '2013-10-02-14-43-51/ejemplo', 'index.php?option=com_content&view=article&id=18', 'component', 0, 143, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 128, 129, 0, '*', 0);
INSERT INTO `klhu1_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(166, 'mainmenu', 'Visión', 'vision', '', '2013-10-02-14-43-51/vision', 'index.php?option=com_content&view=article&id=19', 'component', 0, 143, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 130, 131, 0, '*', 0),
(167, 'mainmenu', 'Nuestra firma', 'nuestra-firma', '', '2013-10-02-14-43-51/nuestra-firma', 'index.php?option=com_content&view=article&id=20', 'component', 0, 143, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 132, 133, 0, '*', 0),
(168, 'mainmenu', 'Modelo de Servicios', 'modelo-de-servicios', '', '2013-10-02-14-43-51/modelo-de-servicios', 'index.php?option=com_content&view=article&id=21', 'component', 0, 143, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 134, 135, 0, '*', 0),
(169, 'main', 'COM_NIVOSLIDER', 'com-nivoslider', '', 'com-nivoslider', 'index.php?option=com_nivoslider', 'component', 0, 1, 1, 10062, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 199, 200, 0, '', 1),
(170, 'mainmenu', 'Fiscal', 'fiscal', '', '2013-10-02-14-45-01/fiscal', '#', 'url', 1, 144, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 138, 147, 0, '*', 0),
(171, 'mainmenu', 'Defensa Fiscal', 'defensa-fiscal', '', '2013-10-02-14-45-01/defensa-fiscal', 'index.php?option=com_content&view=article&id=23', 'component', 1, 144, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 148, 149, 0, '*', 0),
(172, 'mainmenu', 'Técnica Legislativa', 'tecnica-legislativa', '', '2013-10-02-14-45-01/tecnica-legislativa', 'index.php?option=com_content&view=article&id=24', 'component', 1, 144, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 150, 151, 0, '*', 0),
(173, 'mainmenu', 'Legal', 'legal', '', '2013-10-02-14-45-01/legal', 'index.php?option=com_content&view=article&id=25', 'component', 1, 144, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 152, 153, 0, '*', 0),
(174, 'mainmenu', 'Due Dilligence', 'due-dilligence', '', '2013-10-02-14-45-01/due-dilligence', 'index.php?option=com_content&view=article&id=26', 'component', 1, 144, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 154, 155, 0, '*', 0),
(175, 'mainmenu', 'Mensaje Enviado', 'mensaje-enviado', '', 'contact/mensaje-enviado', 'index.php?option=com_content&view=article&id=28', 'component', -2, 107, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 164, 165, 0, '*', 0),
(176, 'sidebar-menu', 'Mensaje Enviado', 'mensaje-enviado', '', 'mensaje-enviado', 'index.php?option=com_content&view=article&id=28', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 201, 202, 0, '*', 0),
(177, 'mainmenu', 'Staff1', 'staff1', '', 'staff1', 'index.php?option=com_content&view=article&id=30', 'component', 0, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 203, 204, 0, '*', 0),
(178, 'mainmenu', 'La Firma', 'la-firma', '', 'la-firma', '#', 'url', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 31, 38, 0, '*', 0),
(179, 'mainmenu', 'Asesoría y Consultoría Fiscal', 'asesoria-y-consultoria-fiscal', '', '2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'index.php?option=com_content&view=article&id=32', 'component', 1, 170, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 139, 140, 0, '*', 0),
(180, 'mainmenu', 'Diagnósticos Fiscales', 'diagnosticos-fiscales', '', '2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', 'index.php?option=com_content&view=article&id=33', 'component', 1, 170, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 141, 142, 0, '*', 0),
(181, 'mainmenu', 'Consultoría Patrimonial y Sucesoria', 'consultoria-patrimonial', '', '2013-10-02-14-45-01/fiscal/consultoria-patrimonial', 'index.php?option=com_content&view=article&id=34', 'component', 1, 170, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 143, 144, 0, '*', 0),
(182, 'mainmenu', 'Dictamen por enajenación de acciones', 'dictamen-por-enajenacion-de-acciones', '', '2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'index.php?option=com_content&view=article&id=35', 'component', 1, 170, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 145, 146, 0, '*', 0),
(183, 'mainmenu', 'contacto1', 'contacto1', '', 'contact/contacto1', 'index.php?option=com_content&view=article&id=36', 'component', -2, 107, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 166, 167, 0, '*', 0),
(184, 'mainmenu', 'Visión', 'vision', '', 'la-firma/vision', 'index.php?option=com_content&view=article&id=19', 'component', 1, 178, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 32, 33, 0, '*', 0),
(185, 'mainmenu', 'Modelo de Servicios', 'modelo-de-servicios', '', 'la-firma/modelo-de-servicios', 'index.php?option=com_content&view=article&id=40', 'component', 1, 178, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 36, 37, 0, '*', 0),
(186, 'mainmenu', 'Nuestra firma', 'nuestra-firma', '', 'la-firma/nuestra-firma', 'index.php?option=com_content&view=article&id=39', 'component', 1, 178, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"101","fusion_module_positions":"","splitmenu_item_subtext":""}', 34, 35, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_menu_types`
--

CREATE TABLE IF NOT EXISTS `klhu1_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `klhu1_menu_types`
--

INSERT INTO `klhu1_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'footer-menu', 'Footer menu', ''),
(3, 'sidebar-menu', 'Sidebar menu', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_messages`
--

CREATE TABLE IF NOT EXISTS `klhu1_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `klhu1_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_modules`
--

CREATE TABLE IF NOT EXISTS `klhu1_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=142 ;

--
-- Volcado de datos para la tabla `klhu1_modules`
--

INSERT INTO `klhu1_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(17, 'Breadcrumbs', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"Inicio","showLast":"1","separator":"\\/","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(89, 'Phone Number', '', '<p>Teléfono: 333-954-22-14</p>', 3, 'head_helpers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 'Email address', '', '<p>email: <a href="mailto:info@roman.com.mx">info@roman.com.mx</a></p>', 2, 'head_helpers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Search module', '', '', 1, 'head_helpers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"Search..","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"0","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(92, 'Plus slider', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_plusslider', 1, 0, '{"width":"1920","height":"500","sliderType":"fader","sliderEasing":"easeOutQuad","displayTime":"5000","speed":"300","defaultSlide":"0","autoPlay":"true","keyboardNavigation":"true","pauseOnHover":"false","createArrows":"true","createPagination":"true","active1":"1","title1":"Ejemplo de T\\u00edtulo Imagen 1","title_small1":"ejemplo de texto Imagen 1","type1":"image","image1":"images\\/slides\\/slider02.jpg","url1":"#","target1":"0","video1":"","flvfile1":"","flv_image1":"","active2":"1","title2":"Ejemplo de T\\u00edtulo Imagen 2","title_small2":"ejemplo de texto Imagen 2","type2":"image","image2":"images\\/slides\\/slider03.jpg","url2":"#","target2":"0","video2":"","flvfile2":"","flv_image2":"","active3":"1","title3":"Ejemplo de T\\u00edtulo Imagen 3","title_small3":"ejemplo de texto Imagen 3","type3":"image","image3":"images\\/slides\\/slider04.jpg","url3":"#","target3":"0","video3":"","flvfile3":"","flv_image3":"","active4":"0","title4":"","title_small4":"","type4":"image","image4":"","url4":"","target4":"0","video4":"","flvfile4":"","flv_image4":"","active5":"0","title5":"","title_small5":"","type5":"image","image5":"","url5":"","target5":"0","video5":"","flvfile5":"","flv_image5":"","active6":"0","title6":"","title_small6":"","type6":"image","image6":"","url6":"","target6":"0","video6":"","flvfile6":"","flv_image6":"","active7":"0","title7":"","title_small7":"","type7":"image","image7":"","url7":"","target7":"0","video7":"","flvfile7":"","flv_image7":"","active8":"0","title8":"","title_small8":"","type8":"image","image8":"","url8":"","target8":"0","video8":"","flvfile8":"","flv_image8":"","active9":"0","title9":"","title_small9":"","type9":"image","image9":"","url9":"","target9":"0","video9":"","flvfile9":"","flv_image9":"","active10":"0","title10":"","title_small10":"","type10":"image","image10":"","url10":"","target10":"0","video10":"","flvfile10":"","flv_image10":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(93, 'Acerca de Nosotros', '', '<div class="notas">\r\n<p><img src="images/logo-roman-new.png" border="0" width="148" height="148" style="float: left; margin-right: 15px;" /></p>\r\n<p style="text-align: justify;"><span style="font-size: 16px; line-height: 22px;"><em>Dawson Consultores, Román S.C. es una de las firmas de contadores y abogados con un alto grado técnico, es una firma multidisciplinaria, siendo el eje central de especialización la materia fiscal y tributaria</em>.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 16px; line-height: 22px;">  <br /></span></p>\r\n</div>\r\n<div class="espacio"> </div>\r\n<div class="notas">\r\n<div class="tweets"><center>\r\n<div id="fb-root"> </div>\r\n<script type="text/javascript">// <![CDATA[\r\n(function(d, s, id) {\r\n            var js, fjs = d.getElementsByTagName(s)[0];\r\n            if (d.getElementById(id)) return;\r\n            js = d.createElement(s); js.id = id;\r\n            js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.5&appId=1512985975666334";\r\n            fjs.parentNode.insertBefore(js, fjs);\r\n          }(document, ''script'', ''facebook-jssdk''));\r\n// ]]></script>\r\n<div class="fb-page" data-href="https://www.facebook.com/Rom%C3%A1n-Salcido-y-C%C3%ADa-226673184046769/" data-width="500" data-height="450" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false" data-show-posts="true"> </div>\r\n</center></div>\r\n</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, 'Contact form', '', '', 1, 'contact_form', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rapid_contact', 1, 0, '{"department_mail_1":"tino@sigmapcs.com.mx","department_name_1":"roman","department_mail_2":"","department_name_2":"","department_mail_3":"","department_name_3":"","department_mail_4":"","department_name_4":"","department_mail_5":"","department_name_6":"","from_name":"Contacto desde P\\u00e1gina Web","from_email":"admin@roman.com.mx","name_label":"Nombre:","email_label":"Email:","subject_label":"Asunto:","message_label":"Mensaje:","button_text":"Enviar","page_text":"Graciar por su mensaje, en breve nos pondremos en contacto con Usted","error_text":"Su mensaje no se ha enviado correctamenente, por favor vuelva a intentarlo","no_email":"Por favor escriba una direccion electr\\u00f3nica valida","invalid_email":"Por favor escriba una direccion electr\\u00f3nica valida","wrong_antispam":"Wrong Anti-Spam Answer","pre_text":"","exact_url":"1","disable_https":"1","fixed_url":"0","fixed_url_address":"","enable_anti_spam":"0","anti_spam_q":"How many eyes has a typical person?","anti_spam_a":"2","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(95, 'JOIN OUR MAILING LIST', '', '', 1, 'showcase-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_newsletter_subscribe', 1, 1, '{"textprepend":"Subscribe to our monthly newsletter to be updated with our new offers.","textabovename":"","textaboveemail":"","textunderemail":"","showmailtype":"1","defaultmailtype":"1","showtermslink":"0","termslink":"","textappend":"Your email address is safe and we also hate Spam.","fbsecret":"","fbenabled":"0","fbappid":"","layout":"_:default","moduleclass_sfx":"featured_box mail_icon","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(96, 'Our services', '', '<table class="services" style="width: 100%;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td colspan="2">\r\n<h2>OUR SERVICES</h2>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="50%">\r\n<h3><img src="images/icon-webdesign.png" border="0" alt="" style="float: left; margin-right: 15px;" />Web design</h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta.<br /> <a href="#"><strong>Learn more →</strong></a></p>\r\n</td>\r\n<td width="50%">\r\n<h3>Search Engine Optimisation<img src="images/icon-seo.png" border="0" alt="" style="float: left; margin-right: 15px;" /></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta.<br /> <a href="#"><strong>Learn more →</strong></a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Social media<img src="images/icon-social.png" border="0" alt="" style="float: left; margin-right: 15px;" /></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta.<br /> <a href="#"><strong>Learn more →</strong></a></p>\r\n</td>\r\n<td>\r\n<h3>e-Commerce solutions<img src="images/icon-ecommerce.png" border="0" alt="" style="float: left; margin-right: 15px;" /></h3>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta.<br /> <a href="#"><strong>Learn more →</strong></a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 'Google Map', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_hg_googlemap', 1, 0, '{"width":"100%","height":"300","imagepin":"","anchor":"bottom-center","centerMap":"20.630249,-103.425291","zoom":"17","type":"ROADMAP","enable_control":"true","controll":"DROPDOWN_MENU","draging":"true","mousewheel":"false","marker_animation":"1","animation_type":"DROP","markers":"20.630249,-103.425291","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(98, 'Últimas Noticias', '', '', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["9"],"count":"3","show_featured":"","ordering":"p_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"grey_box comments_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 'Recent Projects', '', '', 1, 'utility-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_recent_projects', 1, 0, '{"maintitle":"RECENT PROJECTS","maindescription":"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.","mainlink":"105","btntext":"View all our projects \\u2192","title1":"Pellente tellus nunc","image1":"images\\/img02.jpg","description1":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. ","linktype1":"external","link1":"101","externallink1":"#","articlelink1":"1","title2":"Pellente tellus nunc","image2":"images\\/img03.jpg","description2":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. ","linktype2":"external","link2":"101","externallink2":"#","articlelink2":"1","title3":"Pellente tellus nunc","image3":"images\\/img04.jpg","description3":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. ","linktype3":"external","link3":"101","externallink3":"#","articlelink3":"1","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(100, 'Partners / Technologies used', '', '<p><img src="images/partners/mysql.png" border="0" alt="" /><img src="images/partners/php.png" border="0" alt="" /><img src="images/partners/wordpress.png" border="0" alt="" /><img src="images/partners/html5.png" border="0" alt="" /><img src="images/partners/css3.png" border="0" alt="" /><img src="images/partners/joomla.png" border="0" alt="" /><img src="images/partners/jquery.png" border="0" alt="" /></p>', 1, 'mainbottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"partners","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 'FOOTER NAVIGATION', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"footer-menu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(103, 'LATEST TWEETS', '', '', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_sl_twitter', 1, 1, '{"moduleclass_sfx":"","username":"joomla","count":"1"}', 0, '*'),
(104, 'Nuestras Redes Sociales', '', '<p><a href="https://www.facebook.com/Rom%C3%A1n-Salcido-y-C%C3%ADa-226673184046769/" target="_blank"><img src="images/social_icons/facebook.png" border="0" alt="Follow us on Facebook" /></a><a href="https://plus.google.com/u/0/112607801442764953685/posts" target="_blank"><img src="images/social_icons/gplus.png" border="0" alt="Follow us on Google Plus" /></a><a href="http://www.linkedin.com/company/dawson-consultores-rom-n-solis-garc-a-vel-zquez-s-c-" target="_blank"><img src="images/social_icons/linkedin.png" border="0" alt="Follow us on LinkedIn" /></a><a href="https://twitter.com/Dawson_SC" target="_blank"><img src="images/social_icons/twitter.png" border="0" alt="Follow us on Twitter" /></a></p>', 2, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"social_icons","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(105, 'Contacto', '', '<p>Roman by Dawson</p>\r\n<p>Email: <a href="mailto:info@roman.com.mx">info@roman.com.mx</a></p>\r\n<p>Email: <a href="mailto:info@dawson.com.mx">info@dawson.com.mx</a></p>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(118, 'B2J Contact', '', '', 1, 'NuevaPosicion', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_b2jcontact', 1, 1, '{"bid":"1","module_class_sfx":"b2j_contact"}', 0, '*'),
(106, 'FLICKR STREAM', '', '', 1, 'bottom-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_flickrfeed', 1, 1, '{"limit":"10","flickrid":"52617155@N08","perrow":"4","width":"40","height":"40","follow_link":"","follow_text":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(107, 'Copyright', '', '<p>© Copyright 2013 Roman.com.mx.  |  Desarrollado por <a href="http://www.sigmapcs.com.mx" target="_blank">Sigma PCS</a></p>', 1, 'footer-a', 42, '2014-09-17 19:16:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 'Social Sharing module', '', '', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_hg_share', 1, 0, '{"fblike":"0","tweet":"0","text":"Check out this awesome free  #joomlatemplate","via":"hogash","url":"www.hogash.com","follow":"0","gplus":"1","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(111, 'SIDEBAR MENU', '', '', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"sidebar-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(112, 'SOME ADS', '', '<p><a href="http://www.hogash.com/premium-joomla-templates/" target="_blank" title="Premium Joomla Templates"><img src="images/premium_joomla_templates_188x125.jpg" border="0" alt="Premium Joomla Templates" /></a></p>\r\n<p><a href="#"><img src="http://placehold.it/188x85" border="0" alt="" /></a></p>', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(113, 'SOME ADS', '', '<p><a href="http://www.hogash.com/premium-joomla-templates/" target="_blank" title="Premium Joomla Templates"><img src="images/premium_joomla_templates_188x125.jpg" border="0" alt="Premium Joomla Templates" /></a></p>\r\n<p><a href="#"><img src="http://placehold.it/188x85" border="0" alt="" /></a></p>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(114, 'Mobile Homepage Content', '', '<h3>ERIS Mobile</h3>\r\n<p>Quisque adipiscing convallis cursus. Cras in accumsan nisi. Nulla eu eros a leo gravida mattis. Aliquam mollis feugiat laoreet. Nullam nec eros magna, vel sagittis quam. Sed rhoncus, nunc ut auctor consectetur, orci metus dictum dui, ac sodales dui sem vel libero.</p>\r\n<p>Duis arcu est, commodo sit amet mattis in, iaculis ac ante. Nam dictum, turpis ut placerat aliquet, tortor est mattis diam, non varius lectus arcu sit amet lectus. Aenean non elementum lorem. Nam velit felis, viverra vitae scelerisque eget, bibendum vel dolor. Maecenas auctor ipsum ut nibh sollicitudin varius. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin condimentum metus sit amet purus congue non mollis augue tincidunt.</p>', 0, 'mobile-maintop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(115, 'Idioma', '', '<p><a href="http://www.roman.com.mx/en/">English</a></p>', 1, 'head_helpers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, 'Nuestros Boletínes', '', '', 1, 'showcase-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["11"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"featured_box mail_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(117, 'Tweets', '', '<div class="notas">\r\n<div class="twits"><a class="twitter-timeline" href="https://twitter.com/Dawson_SC" data-widget-id="403935564686041088">Tweets por @Dawson_SC</a>\r\n<script type="text/javascript">// <![CDATA[\r\n!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?''http'':''https'';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");\r\n// ]]></script>\r\n</div>\r\n</div>', 3, 'showcase-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(119, 'twitter (copiar)', '', '<p><a class="twitter-timeline" href="https://twitter.com/alfonsoromans" data-widget-id="385429851890397184">Tweets por @alfonsoromans</a></p>\r\n<script type="text/javascript">// <![CDATA[\r\n!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?''http'':''https'';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");\r\n// ]]></script>', 2, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(120, 'aiContactSafe module', '', '', 1, 'contacto', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_aicontactsafe', 1, 1, '{"moduleclass_sfx":"","pf":"2","use_css":"1","fd_values":""}', 0, '*'),
(122, 'Quick Links', '', '', 1, 'dashboard', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokquicklinks', 1, 1, '{"quickfields":"[{''icon'':''newspaper_add.png'',''link'':''index.php?option=com_content&amp;task=add'',''title'':''Add Article''},{''icon'':''images.png'',''link'':''index.php?option=com_media'',''title'':''Media Manager''},{''icon'':''drawer_open.png'',''link'':''index.php?option=com_categories&amp;section=com_content'',''title'':''Category Manager''},{''icon'':''cog.png'',''link'':''index.php?option=com_config'',''title'':''Configuration''},{''icon'':''brick.png'',''link'':''index.php?option=com_installer'',''title'':''Install New''},{''icon'':''color_management.png'',''link'':''index.php?option=com_templates'',''title'':''Templates''}]"}', 1, 'en-GB'),
(124, 'Statistics Overview', '', '', 1, 'sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokuserstats', 1, 1, '{"purgedays":"30"}', 1, 'en-GB'),
(126, 'Site Statistics', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokstats', 1, 1, '{"sessiontime":"","showcurrentactiveusers":"1","showactiveguests":"1","showactiveregistered":"1","showregisteredusernames":"0","showuniqueviststoday":"1","showuniquevistsyesterday":"1","showvisitsthisweek":"1","showvisitspreviousweek":"1","showtotalarticles":"0","shownewarticlesthisweek":"0"}', 0, 'en-GB'),
(128, 'User Activity Chart', '', '', 2, 'sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokuserchart', 1, 1, '{"extra_class":"","history":"7","width":"285","height":"120"}', 1, 'en-GB'),
(130, 'Admin Audit Trail', '', '', 3, 'sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokadminaudit', 1, 1, '{"userpurgedays":"14","adminpurgedays":"14","trackusers":"1","trackadmins":"1"}', 1, 'en-GB'),
(131, 'contactosss', '', '', 1, 'contacto', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rapid_contact', 1, 0, '{"department_mail_1":"tinos@sigmapcs.com.mx","department_name_1":"","department_mail_2":"","department_name_2":"","department_mail_3":"","department_name_3":"","department_mail_4":"","department_name_4":"","department_mail_5":"","department_name_6":"","from_name":"Rapid Contact","from_email":"rapid_contact@yoursite.com","name_label":"Name:","email_label":"Email:","subject_label":"Subject:","message_label":"Message:","button_text":"Send Message","page_text":"Thank you for your contact.","error_text":"Your message could not be sent. Please try again.","no_email":"Please write your email","invalid_email":"Please write a valid email","wrong_antispam":"Wrong Anti-Spam Answer","pre_text":"","exact_url":"1","disable_https":"1","fixed_url":"0","fixed_url_address":"","enable_anti_spam":"1","anti_spam_q":"How many eyes has a typical person?","anti_spam_a":"2","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(133, 'imagen', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_plusslider', 1, 0, '{"width":"1920","height":"300","sliderType":"fader","sliderEasing":"easeOutQuad","displayTime":"4000","speed":"500","defaultSlide":"0","autoPlay":"false","keyboardNavigation":"false","pauseOnHover":"false","createArrows":"false","createPagination":"false","active1":"1","title1":"","title_small1":"","type1":"image","image1":"images\\/slides\\/slider03.jpg","url1":"","target1":"0","video1":"","flvfile1":"","flv_image1":"","active2":"0","title2":"","title_small2":"","type2":"image","image2":"","url2":"","target2":"0","video2":"","flvfile2":"","flv_image2":"","active3":"0","title3":"","title_small3":"","type3":"image","image3":"","url3":"","target3":"0","video3":"","flvfile3":"","flv_image3":"","active4":"0","title4":"","title_small4":"","type4":"image","image4":"","url4":"","target4":"0","video4":"","flvfile4":"","flv_image4":"","active5":"0","title5":"","title_small5":"","type5":"image","image5":"","url5":"","target5":"0","video5":"","flvfile5":"","flv_image5":"","active6":"0","title6":"","title_small6":"","type6":"image","image6":"","url6":"","target6":"0","video6":"","flvfile6":"","flv_image6":"","active7":"0","title7":"","title_small7":"","type7":"image","image7":"","url7":"","target7":"0","video7":"","flvfile7":"","flv_image7":"","active8":"0","title8":"","title_small8":"","type8":"image","image8":"","url8":"","target8":"0","video8":"","flvfile8":"","flv_image8":"","active9":"0","title9":"","title_small9":"","type9":"image","image9":"","url9":"","target9":"0","video9":"","flvfile9":"","flv_image9":"","active10":"0","title10":"","title_small10":"","type10":"image","image10":"","url10":"","target10":"0","video10":"","flvfile10":"","flv_image10":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(134, 'Slider', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unite_nivoslider', 1, 0, '{"sliderid":"1","width":"940","height":"300","pauseTime":"5000","animSpeed":"500","effect":["sliceDownLeft"],"theme":"default","controlNav":"false","directionNav":"true","prevText":"Ante","nextText":"Sig","position":"center","margin_left":"0","margin_right":"0","margin_top":"0","margin_bottom":"0","clear_both":"false","startSlide":"0","randomStart":"false","pauseOnHover":"true","manualAdvance":"false","slices":"15","boxCols":"8","boxRows":"4","beforeChange":"function(){}","afterChange":"function(){}","slideshowEnd":"function(){}","lastSlide":"function(){}","afterLoad":"function(){}","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(135, 'Nuestros Boletines', '', '<div class="boletin">\r\n<p><a href="pdf/reformafiscal2016.pdf" target="_blank">Ene-27-16 Reforma Fiscal 2016</a></p>\r\n<p><a href="images/boletines/reforma-fiscal-2015.pdf" target="_blank">Feb-18-15 Reformas Fiscales 2015</a></p>\r\n<p><a href="images/boletines/Reforma-Fiscal-y-Hacendaria-2014-Dawson-Exp-Gdl-Def.pdf" target="_blank">Ene-09-14 Reformas Fiscales 2014</a></p>\r\n<p><a href="images/boletines/Comparativo_LISR_13-14.pdf">Ene-09-14 Comparativo LISR 13-14</a></p>\r\n<p><a href="images/boletines/Comparativo-CFF.pdf" target="_blank">Ene-09-14 Comparativo CFF</a></p>\r\n<p><a href="images/boletines/Infodawson_Ago-02_Obligacion_Ley_Federal_de_Proteccion_de_Datos_personales_en_Posesion_de_los_particulares.pdf" target="_blank">Ago-02-13 Obligación Ley Federal de Protección de Datos personales en Posesión de los Partículares</a></p>\r\n<div class="boletin">\r\n<p><a href="images/boletines/Infodawson_Abr-01_Percepciones_y_Deducciones.pdf" target="_blank">Abr-01-13 Percepciones y Deducciones</a></p>\r\n<p><a href="images/boletines/Infodawson_Feb-5_Deducion_de_Creditos_Incobrables.pdf" target="_blank">Feb-5-13 Dedución de Créditos Incobrables</a></p>\r\n</div>\r\n</div>', 3, 'showcase-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"featured_box mail_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(136, 'Noticias', '', '', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(137, 'noticias prueba', '', '', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{"catid":["9"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"5","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"grey_box comments_icon","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(138, 'Últimas Noticias', '', '<div class="noticias"><a href="http://www.sat.gob.mx/sitio_internet/novedades/" target="_blank">NOVEDADES SAT</a></div>', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"grey_box comments_icon","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(139, 'Facebook', '', '<div id="fb-root"> </div>\r\n<script type="text/javascript">// <![CDATA[\r\n(function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.5&appId=1512985975666334";\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n        }(document, ''script'', ''facebook-jssdk''));\r\n// ]]></script>\r\n<div class="fb-page" data-href="https://www.facebook.com/Román-Salcido-y-Cía-226673184046769" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="true">\r\n<div class="fb-xfbml-parse-ignore">\r\n<blockquote cite="https://www.facebook.com/sigmapcs"><a href="https://www.facebook.com/Román-Salcido-y-Cía-226673184046769">Román Salcido y Cía</a></blockquote>\r\n</div>\r\n</div>', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(140, 'Twitter', '', '<div class="notas">\r\n<div class="twits"><a class="twitter-timeline" href="https://twitter.com/Dawson_SC" data-widget-id="403935564686041088">Tweets por @Dawson_SC</a>\r\n<script type="text/javascript">// <![CDATA[\r\n!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?''http'':''https'';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");\r\n// ]]></script>\r\n</div>\r\n</div>', 4, 'showcase-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(141, 'boletines', '', '<div class="boletin">\r\n<p><a href="images/boletines/reforma-fiscal-2015.pdf" target="_blank">Feb-18-15 Reformas Fiscales 2015</a></p>\r\n<p><a href="images/boletines/Reforma-Fiscal-y-Hacendaria-2014-Dawson-Exp-Gdl-Def.pdf" target="_blank">Ene-09-14 Reformas Fiscales 2014</a></p>\r\n<p><a href="images/boletines/Comparativo_LISR_13-14.pdf">Ene-09-14 Comparativo LISR 13-14</a></p>\r\n<p><a href="images/boletines/Comparativo-CFF.pdf" target="_blank">Ene-09-14 Comparativo CFF</a></p>\r\n<p><a href="images/boletines/Infodawson_Ago-02_Obligacion_Ley_Federal_de_Proteccion_de_Datos_personales_en_Posesion_de_los_particulares.pdf" target="_blank">Ago-02-13 Obligación Ley Federal de Protección de Datos personales en Posesión de los Partículares</a></p>\r\n<div class="boletin">\r\n<p><a href="images/boletines/Infodawson_Abr-01_Percepciones_y_Deducciones.pdf" target="_blank">Abr-01-13 Percepciones y Deducciones</a></p>\r\n<p><a href="images/boletines/Infodawson_Feb-5_Deducion_de_Creditos_Incobrables.pdf" target="_blank">Feb-5-13 Dedución de Créditos Incobrables</a></p>\r\n</div>\r\n</div>', 0, 'showcase-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_modules_menu`
--

CREATE TABLE IF NOT EXISTS `klhu1_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `klhu1_modules_menu`
--

INSERT INTO `klhu1_modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, -101),
(79, 0),
(86, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 101),
(93, 101),
(95, 101),
(96, 101),
(98, 101),
(99, 101),
(100, 101),
(101, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 107),
(111, 106),
(111, 126),
(111, 130),
(111, 131),
(111, 132),
(112, 126),
(112, 128),
(112, 129),
(112, 130),
(112, 131),
(112, 132),
(113, 127),
(114, 101),
(115, 0),
(116, 101),
(117, 101),
(119, 101),
(120, 164),
(122, 0),
(124, 0),
(126, 0),
(128, 0),
(130, 0),
(131, 0),
(133, 143),
(133, 144),
(133, 145),
(133, 146),
(133, 166),
(133, 167),
(133, 168),
(133, 170),
(133, 171),
(133, 172),
(133, 173),
(133, 174),
(133, 179),
(133, 180),
(133, 181),
(133, 182),
(134, 101),
(135, 101),
(136, 101),
(137, 101),
(138, 101),
(139, 101),
(140, 0),
(141, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_automailing_items`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_automailing_items` (
  `series_id` int(11) NOT NULL AUTO_INCREMENT,
  `automailing_id` int(11) DEFAULT NULL,
  `newsletter_id` bigint(11) DEFAULT NULL,
  `time_start` timestamp NULL DEFAULT NULL,
  `time_offset` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `sent` int(11) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`series_id`),
  KEY `automailing_ids_idxfk` (`automailing_id`),
  KEY `newsletter_ids_idxfk` (`newsletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_automailing_targets`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_automailing_targets` (
  `am_target_id` int(11) NOT NULL AUTO_INCREMENT,
  `automailing_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`am_target_id`),
  KEY `automailing_ids_idxfk` (`automailing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_automailings`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_automailings` (
  `automailing_id` int(11) NOT NULL AUTO_INCREMENT,
  `automailing_name` varchar(255) DEFAULT NULL,
  `automailing_type` enum('scheduled','eventbased') DEFAULT NULL,
  `automailing_event` enum('date','subscription') DEFAULT NULL,
  `automailing_state` int(11) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`automailing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_downloads`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_downloads` (
  `downloads_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  PRIMARY KEY (`downloads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_extensions`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `klhu1_newsletter_extensions`
--

INSERT INTO `klhu1_newsletter_extensions` (`extension_id`, `title`, `extension`, `params`, `type`) VALUES
(7, 'Article module', 'mod_article', '{"text_mode":"0","text_amount":"200","strip_tags":"0","show_articlelink":"1"}', 1),
(8, 'Image module', 'mod_img', '{"img_title":"","img_width":"auto","img_height":"auto","img_linkable":"0","img_link_url":"","img_link_target":"1"}', 1),
(9, 'RSS module', 'mod_rss', '{"feed_url":"http:\\/\\/"}', 1),
(10, 'Text module', 'mod_text', '[]', 1),
(11, 'WYSIWYG module', 'mod_wysiwyg', '[]', 1),
(12, 'Example of Import plugin', 'importexample', '{}', 2),
(13, 'Google Analytics Plugin', 'ganalytics', '{"goal":""}', 2),
(14, 'Standard doublecolumn template', 'doublecolumn1', '{}', 3),
(15, 'Standard singlecolumn template', 'singlecolumn1', '{}', 3),
(16, 'Standard threecolumn template', 'threecolumn1', '{}', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_lists`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_lists` (
  `list_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `smtp_profile_id` int(11) NOT NULL,
  `ordering` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  `internal` tinyint(3) NOT NULL DEFAULT '0',
  `send_at_reg` int(11) NOT NULL DEFAULT '0',
  `send_at_unsubscribe` int(11) NOT NULL DEFAULT '0',
  `extra` text,
  PRIMARY KEY (`list_id`),
  KEY `smtp_profile_id_idxfk` (`smtp_profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `klhu1_newsletter_lists`
--

INSERT INTO `klhu1_newsletter_lists` (`list_id`, `name`, `state`, `description`, `smtp_profile_id`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `internal`, `send_at_reg`, `send_at_unsubscribe`, `extra`) VALUES
(2, 'Doe Family holiday!', 1, 'The letter for Doe family members about birthday of Baby Doe!', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_logs`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `date` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `category` varchar(255) NOT NULL DEFAULT 'common',
  `params` text,
  PRIMARY KEY (`log_id`),
  KEY `date_idfk` (`date`),
  KEY `category_idfk` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_mailbox_profiles`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_mailbox_profiles` (
  `mailbox_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `mailbox_profile_name` varchar(255) DEFAULT NULL,
  `mailbox_server` varchar(255) DEFAULT NULL,
  `mailbox_server_type` varchar(255) DEFAULT NULL,
  `mailbox_port` int(11) DEFAULT NULL,
  `is_ssl` enum('1','0') DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`mailbox_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_newsletters`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_newsletters` (
  `newsletter_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `smtp_profile_id` int(11) NOT NULL,
  `t_style_id` int(10) DEFAULT NULL,
  `plain` text,
  `params` text,
  `ordering` int(11) NOT NULL,
  `language` char(7) NOT NULL,
  `checked_out` int(10) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created` datetime NOT NULL,
  `sent_started` datetime NOT NULL,
  `type` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`newsletter_id`),
  KEY `smtp_profile_id_idxfk` (`smtp_profile_id`),
  KEY `t_style_id_idxfk` (`t_style_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `klhu1_newsletter_newsletters`
--

INSERT INTO `klhu1_newsletter_newsletters` (`newsletter_id`, `name`, `subject`, `alias`, `smtp_profile_id`, `t_style_id`, `plain`, `params`, `ordering`, `language`, `checked_out`, `checked_out_time`, `created`, `sent_started`, `type`, `category`) VALUES
(1, 'Birthday of Baby Doe!', 'Baby Doe', 'birthdayofbabydoe', 0, 6, 'Meet the Baby Doe!\nCongratulations for [username]! \n\nTo unsubscribe: [unsubscription link]', '{"newsletter_from_name":"John Doe","newsletter_from_email":"johndoe@example.com","newsletter_to_name":"John Doe","newsletter_to_email":"johndoe@example.com"}', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_newsletters_ext`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_newsletters_ext` (
  `newsletters_ext_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_id` bigint(20) NOT NULL,
  `extension_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `params` text,
  `ordering` int(11) DEFAULT NULL,
  `native` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `showtitle` int(11) DEFAULT NULL,
  PRIMARY KEY (`newsletters_ext_id`),
  KEY `newsletter_idxfk` (`newsletter_id`),
  KEY `extension_id_idxfk` (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `klhu1_newsletter_newsletters_ext`
--

INSERT INTO `klhu1_newsletter_newsletters_ext` (`newsletters_ext_id`, `newsletter_id`, `extension_id`, `position`, `params`, `ordering`, `native`, `title`, `showtitle`) VALUES
(1, 1, 4, 'header_module_position', '{"text":"<p>Hi! Wellocme to migur newsletter. You need to complete registration. Please follow this link</p>\n<p>[confirmation link]</p>"}', 1, 0, 'Welcome to Migur Newsletter', 1),
(6, 96, 4, 'header_module_position', '{"text":"<p>Meet the Baby Doe!<\\/p>\\n<p>Congratulations for [username]!<\\/p>"}', 1, 0, 'Text Module', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_queue` (
  `queue_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `newsletter_id` bigint(20) DEFAULT NULL,
  `subscriber_id` bigint(20) DEFAULT NULL,
  `list_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`queue_id`),
  KEY `newsletter_queue_state` (`state`),
  KEY `newsletter_ids_idxfk` (`newsletter_id`),
  KEY `subscriber_ids_idxfk` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_sent`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_sent` (
  `sent_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscriber_id` bigint(20) NOT NULL,
  `list_id` bigint(20) NOT NULL,
  `newsletter_id` bigint(20) NOT NULL,
  `sent_date` datetime NOT NULL,
  `recieved_date` datetime NOT NULL,
  `bounced` enum('NO','HARD','SOFT','TECHNICAL') NOT NULL,
  `html_content` text,
  `plaintext_content` text,
  PRIMARY KEY (`sent_id`),
  KEY `list_id_idxfk` (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_smtp_profiles`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_smtp_profiles` (
  `smtp_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_profile_name` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `reply_to_email` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `smtp_server` varchar(255) DEFAULT NULL,
  `smtp_port` int(2) DEFAULT NULL,
  `is_ssl` int(11) DEFAULT NULL,
  `pop_before_smtp` enum('1','0') DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mailbox_profile_id` int(11) DEFAULT NULL,
  `params` text,
  `is_joomla` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`smtp_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_sub_history`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_sub_history` (
  `history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscriber_id` bigint(20) DEFAULT NULL,
  `list_id` bigint(20) DEFAULT NULL,
  `newsletter_id` bigint(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `action` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`history_id`),
  KEY `list_id_idxfk` (`list_id`),
  KEY `newsletter_id_idxfk` (`newsletter_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_sub_list`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_sub_list` (
  `sublist_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscriber_id` bigint(20) NOT NULL,
  `list_id` bigint(20) NOT NULL,
  `confirmed` varchar(255) NOT NULL,
  `extra` text,
  PRIMARY KEY (`sublist_id`),
  UNIQUE KEY `unique-subscriber` (`subscriber_id`,`list_id`),
  KEY `list_id_idxfk` (`list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `klhu1_newsletter_sub_list`
--

INSERT INTO `klhu1_newsletter_sub_list` (`sublist_id`, `subscriber_id`, `list_id`, `confirmed`, `extra`) VALUES
(1, 2, 2, '', NULL),
(2, 1, 2, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_subscribers`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_subscribers` (
  `subscriber_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `html` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  `confirmed` varchar(255) NOT NULL,
  `subscription_key` varchar(40) NOT NULL,
  `extra` text,
  PRIMARY KEY (`subscriber_id`,`user_id`),
  KEY `email_idx` (`email`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `klhu1_newsletter_subscribers`
--

INSERT INTO `klhu1_newsletter_subscribers` (`subscriber_id`, `name`, `email`, `state`, `html`, `user_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `confirmed`, `subscription_key`, `extra`) VALUES
(1, 'John Doe', 'john-doe123123123@gmail.com', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '1', '1234560000000011234567890', NULL),
(2, 'Jane Doe', 'jane-doe123123123@gmail.com', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '1', '6543210000000021234567895', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_template_styles`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_template_styles` (
  `t_style_id` int(10) NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`t_style_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `klhu1_newsletter_template_styles`
--

INSERT INTO `klhu1_newsletter_template_styles` (`t_style_id`, `template`, `title`, `params`) VALUES
(5, 'doublecolumn1.xml', 'Standard doublecolumn template (custom)', '{"width_column1":"50%","height_column1":"50%","width_column2":"50%","height_column2":"50%","image_top":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/top_image.png","image_top_alt":"The top image","image_top_width":"600px","image_top_height":"100px","image_bottom":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/bottom_image.png","image_bottom_alt":"The bottom image","image_bottom_width":"600px","image_bottom_height":"100px","table_background":"#FFFFFF","text_color":"#888888","t_style_id":"5"}'),
(6, 'singlecolumn1.xml', 'Standard singlecolumn template (custom)', '{"width_column1":"50%","height_column1":"50%","width_column2":"50%","height_column2":"50%","image_top":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/top_image.png","image_top_alt":"The top image","image_top_width":"600px","image_top_height":"100px","image_bottom":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/bottom_image.png","image_bottom_alt":"The bottom image","image_bottom_width":"600px","image_bottom_height":"100px","table_background":"#FFFFFF","text_color":"#888888","t_style_id":"6"}'),
(8, 'threecolumn1.xml', 'Standard threecolumn template (custom)', '{"width_column1":"50%","height_column1":"50%","width_column2":"50%","height_column2":"50%","image_top":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/top_image.png","image_top_alt":"The top image","image_top_width":"600px","image_top_height":"100px","image_bottom":"administrator\\/components\\/com_newsletter\\/extensions\\/img\\/bottom_image.png","image_bottom_alt":"The bottom image","image_bottom_width":"600px","image_bottom_height":"100px","table_background":"#FFFFFF","text_color":"#888888","t_style_id":"8"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_newsletter_threads`
--

CREATE TABLE IF NOT EXISTS `klhu1_newsletter_threads` (
  `thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `type` enum('send','automail','read') NOT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `resource` varchar(255) NOT NULL COMMENT 'The target point of a process. email for ''send'' and ''read''',
  `params` text,
  PRIMARY KEY (`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_nivoslider`
--

CREATE TABLE IF NOT EXISTS `klhu1_nivoslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `klhu1_nivoslider`
--

INSERT INTO `klhu1_nivoslider` (`id`, `catid`, `sliderid`, `title`, `alias`, `image`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 0, 1, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"image":"images\\/slider02a.jpg","description":"","activate_link":"no","link":"","link_open_in":"new"}'),
(2, 0, 1, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 2, '{"image":"images\\/slider03a.jpg","description":"","activate_link":"no","link":"","link_open_in":"new"}'),
(3, 0, 1, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 3, '{"image":"images\\/slider04a.jpg","description":"","activate_link":"no","link":"","link_open_in":"new"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_nivoslider_sliders`
--

CREATE TABLE IF NOT EXISTS `klhu1_nivoslider_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `klhu1_nivoslider_sliders`
--

INSERT INTO `klhu1_nivoslider_sliders` (`id`, `title`, `alias`, `image`, `description`, `published`, `ordering`, `params`) VALUES
(1, 'Home', 'home', '', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_overrider`
--

CREATE TABLE IF NOT EXISTS `klhu1_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_redirect_links`
--

CREATE TABLE IF NOT EXISTS `klhu1_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `klhu1_redirect_links`
--

INSERT INTO `klhu1_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://hogash.com/demo/eris_joomla/index.php/templates/rt_gantry/demo/jscolor/cross.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/contact', '', 0, '2012-05-06 14:44:23', '0000-00-00 00:00:00'),
(2, 'http://hogash.com/demo/eris_joomla/index.php/templates/rt_gantry/demo/jscolor/arrow.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/contact', '', 0, '2012-05-06 14:44:23', '0000-00-00 00:00:00'),
(3, 'http://hogash.com/demo/eris_joomla/index.php/templates/rt_gantry/demo/jscolor/hs.png', '', 'http://hogash.com/demo/eris_joomla/index.php/contact', '', 0, '2012-05-06 14:44:23', '0000-00-00 00:00:00'),
(4, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/templates/rt_gantry/demo/jscolor/cross.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/portfolio-two-columns', '', 0, '2012-05-06 14:48:20', '0000-00-00 00:00:00'),
(5, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/templates/rt_gantry/demo/jscolor/hs.png', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/portfolio-two-columns', '', 0, '2012-05-06 14:48:20', '0000-00-00 00:00:00'),
(6, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/templates/rt_gantry/demo/jscolor/arrow.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-17/portfolio-two-columns', '', 0, '2012-05-06 14:48:20', '0000-00-00 00:00:00'),
(7, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/templates/rt_gantry/demo/jscolor/hs.png', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/blog', '', 0, '2012-05-06 14:48:35', '0000-00-00 00:00:00'),
(8, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/templates/rt_gantry/demo/jscolor/arrow.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/blog', '', 0, '2012-05-06 14:48:35', '0000-00-00 00:00:00'),
(9, 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/templates/rt_gantry/demo/jscolor/cross.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-04-18-14-10-28/blog', '', 0, '2012-05-06 14:48:35', '0000-00-00 00:00:00'),
(10, 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/templates/rt_gantry/demo/jscolor/arrow.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/full-width-page', '', 0, '2012-05-06 16:40:54', '0000-00-00 00:00:00'),
(11, 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/templates/rt_gantry/demo/jscolor/cross.gif', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/full-width-page', '', 0, '2012-05-06 16:40:54', '0000-00-00 00:00:00'),
(12, 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/templates/rt_gantry/demo/jscolor/hs.png', '', 'http://hogash.com/demo/eris_joomla/index.php/2012-05-05-09-36-04/full-width-page', '', 0, '2012-05-06 16:40:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_rokadminaudit`
--

CREATE TABLE IF NOT EXISTS `klhu1_rokadminaudit` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `option` varchar(100) DEFAULT NULL,
  `task` varchar(100) DEFAULT NULL,
  `cid` int(50) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `title` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ip` (`ip`),
  KEY `session_id` (`session_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5065 ;

--
-- Volcado de datos para la tabla `klhu1_rokadminaudit`
--

INSERT INTO `klhu1_rokadminaudit` (`id`, `user_id`, `ip`, `session_id`, `option`, `task`, `cid`, `page`, `referrer`, `title`, `timestamp`) VALUES
(5051, 0, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_cpanel', '', NULL, '/es/administrator/', '', '', '2016-01-28 02:12:03'),
(5052, 0, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_login', 'login', NULL, '/es/administrator/index.php', 'http://roman.com.mx/es/administrator/', '', '2016-01-28 02:12:20'),
(5053, 0, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_cpanel', '', NULL, '/es/administrator/index.php', 'http://roman.com.mx/es/administrator/', '', '2016-01-28 02:12:20'),
(5054, 0, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_login', 'login', NULL, '/es/administrator/index.php', 'http://roman.com.mx/es/administrator/index.php', '', '2016-01-28 02:12:33'),
(5055, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_cpanel', '', NULL, '/es/administrator/index.php', 'http://roman.com.mx/es/administrator/index.php', '', '2016-01-28 02:12:34'),
(5056, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_installer', 'ajax', NULL, '/es/administrator/index.php?option=com_installer&view=update&task=update.ajax', 'http://roman.com.mx/es/administrator/index.php', '', '2016-01-28 02:12:35'),
(5057, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_installer', 'ajax', NULL, '/es/administrator/index.php?option=com_installer&view=update&task=update.ajax', 'http://roman.com.mx/es/administrator/index.php', '', '2016-01-28 02:12:37'),
(5058, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_modules', '', NULL, '/es/administrator/index.php?option=com_modules', 'http://roman.com.mx/es/administrator/index.php', '', '2016-01-28 02:18:39'),
(5059, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_modules', 'edit', 135, '/es/administrator/index.php?option=com_modules&task=module.edit&id=135', 'http://roman.com.mx/es/administrator/index.php?option=com_modules', '', '2016-01-28 02:19:15'),
(5060, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_modules', 'edit', 135, '/es/administrator/index.php?option=com_modules&view=module&layout=edit&id=135', 'http://roman.com.mx/es/administrator/index.php?option=com_modules', '', '2016-01-28 02:19:16'),
(5061, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_modules', 'apply', 135, '/es/administrator/index.php?option=com_modules&layout=edit&id=135', 'http://roman.com.mx/es/administrator/index.php?option=com_modules&view=module&layout=edit&id=135', 'Nuestros Boletines', '2016-01-28 02:21:56'),
(5062, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_modules', 'edit', 135, '/es/administrator/index.php?option=com_modules&view=module&layout=edit&id=135', 'http://roman.com.mx/es/administrator/index.php?option=com_modules&view=module&layout=edit&id=135', '', '2016-01-28 02:21:56'),
(5063, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_modules', 'cancel', 135, '/es/administrator/index.php?option=com_modules&layout=edit&id=135', 'http://roman.com.mx/es/administrator/index.php?option=com_modules&view=module&layout=edit&id=135', 'Nuestros Boletines', '2016-01-28 02:23:52'),
(5064, 42, '201.106.174.159', 'cd09cd0d88a2f7cf75afd51b64b6ee5d', 'com_modules', '', NULL, '/es/administrator/index.php?option=com_modules&view=modules', 'http://roman.com.mx/es/administrator/index.php?option=com_modules&view=module&layout=edit&id=135', '', '2016-01-28 02:23:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_rokuserstats`
--

CREATE TABLE IF NOT EXISTS `klhu1_rokuserstats` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ip` (`ip`),
  KEY `session_id` (`session_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9884 ;

--
-- Volcado de datos para la tabla `klhu1_rokuserstats`
--

INSERT INTO `klhu1_rokuserstats` (`id`, `user_id`, `ip`, `session_id`, `page`, `referrer`, `timestamp`) VALUES
(9883, 0, '66.249.69.45', '6c1fbb2ccbc93b5b0a305080a771d902', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-24 18:03:54'),
(9882, 0, '189.186.6.236', '4c864d7fa34edf1f3bf9e0aa802f58f1', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-03-24 00:45:50'),
(9881, 0, '177.249.222.183', 'e7a86ff3474b90cdb9efdf9d681bcecf', '/es/', '', '2016-03-24 00:07:54'),
(9879, 0, '187.190.160.49', 'caacdb5f0d24c30772831060f80e82fe', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-03-23 21:28:39'),
(9880, 0, '66.249.69.29', '4080b816da09cfde57e4f59ffa8aa4cc', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-23 21:54:53'),
(9878, 0, '187.190.160.49', 'caacdb5f0d24c30772831060f80e82fe', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/index.php/2013-10-02-14-45-01/due-dilligence', '2016-03-23 21:28:08'),
(9876, 0, '187.190.160.49', '22b6e6d341127dd6a6290b2c548d6a25', '/es/', 'http://roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-03-23 19:56:24'),
(9877, 0, '187.190.160.49', 'caacdb5f0d24c30772831060f80e82fe', '/es/index.php/2013-10-02-14-45-01/due-dilligence', 'http://roman.com.mx/es/', '2016-03-23 21:27:48'),
(9875, 0, '187.190.160.49', '22b6e6d341127dd6a6290b2c548d6a25', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/index.php/staff', '2016-03-23 19:55:45'),
(9874, 0, '187.190.160.49', '22b6e6d341127dd6a6290b2c548d6a25', '/es/index.php/staff', 'http://roman.com.mx/es/index.php/contact', '2016-03-23 19:55:13'),
(9872, 0, '187.190.160.49', '22b6e6d341127dd6a6290b2c548d6a25', '/es/', 'http://roman.com.mx/es/index.php/fundacion', '2016-03-23 19:54:13'),
(9873, 0, '187.190.160.49', '22b6e6d341127dd6a6290b2c548d6a25', '/es/index.php/contact', 'http://roman.com.mx/es/', '2016-03-23 19:54:54'),
(9871, 0, '187.190.160.49', '22b6e6d341127dd6a6290b2c548d6a25', '/es/index.php/fundacion', 'http://roman.com.mx/es/', '2016-03-23 19:53:20'),
(9869, 0, '187.190.26.23', '6f3d8ac78ba48a91d4c504ee1ce2d59f', '/es/', '', '2016-03-23 14:50:41'),
(9870, 0, '187.190.160.49', '22b6e6d341127dd6a6290b2c548d6a25', '/es/', 'http://www.roman.com.mx/', '2016-03-23 19:52:19'),
(9866, 0, '187.189.149.226', 'eb45937703ea31207d38f3e0bebcf7d3', '/es/', 'http://roman.com.mx/', '2016-03-22 23:29:10'),
(9867, 0, '66.249.69.45', '980a65fdbbedb8ed81659722516c8802', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-23 07:34:33'),
(9868, 0, '66.249.69.45', '79e67cb3825434a1cd26816bd7dbdde3', '/es/', '', '2016-03-23 12:07:44'),
(9865, 0, '207.46.13.23', 'bbcf2b63109f25574a0442efad6bd60f', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-03-22 21:39:59'),
(9864, 0, '66.249.69.37', '472bb0be238dccc121c060912188f444', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-03-22 20:56:18'),
(9863, 0, '187.190.26.23', 'ec41fb0aafb40d278ef1029756221e48', '/es/', 'https://www.google.com.mx/', '2016-03-22 19:56:05'),
(9861, 0, '177.249.222.183', '91c12a98a1edac1cf9fa50fd3abd7444', '/es/', '', '2016-03-22 15:19:23'),
(9862, 0, '40.77.167.51', 'd30e8f08945693c7f3c46c932c30c96e', '/es/index.php/la-firma/12-areas', '', '2016-03-22 19:55:07'),
(9859, 0, '204.79.180.27', '35b2091b264cf02559bf7d18820dbce2', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-22 11:57:02'),
(9860, 0, '187.190.26.23', '93049cac69348de825dc18321a6f4c19', '/es/', '', '2016-03-22 15:06:18'),
(9856, 0, '157.55.39.110', '87b3ff03017692a0d1c2653d6e63f1e9', '/es/', '', '2016-03-21 16:05:25'),
(9857, 0, '66.249.69.37', '9df534e567ad49f4e060ea3ba8092193', '/es/', '', '2016-03-21 18:50:21'),
(9858, 0, '207.46.13.160', '14c55201459eebe3986ce05d41fd58bc', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-22 00:44:08'),
(9855, 0, '157.55.39.114', 'ffadefbdeb63e49201fbfaf5e563b0c0', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-03-21 08:13:51'),
(9854, 0, '157.55.39.174', 'fa6dbefea4a69f4c7e034c8e3bb22299', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-03-21 01:06:38'),
(9852, 0, '157.55.39.166', '90b7bdc7bd67d608b3e2874405f8fb3b', '/es/index.php/contacto', '', '2016-03-20 10:08:42'),
(9853, 0, '157.55.39.166', '2abb8d75dcabb745405e6e10956a7a27', '/es/', '', '2016-03-20 14:00:32'),
(9851, 0, '157.55.39.166', 'd63482596ea271989d8ad7f1bc0af98d', '/es/', '', '2016-03-20 10:08:41'),
(9849, 0, '157.55.39.166', '04d408fea51d451b5756a91ed4bbae71', '/es/', '', '2016-03-20 02:49:21'),
(9850, 0, '207.46.13.190', '5249eaad3f9099a15ff8e3c406adfcb3', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-20 09:43:47'),
(9844, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://roman.com.mx/', '2016-03-19 18:55:49'),
(9845, 0, '187.189.208.84', '031ce6af8ebf3612a8f9cf605e45fa18', '/es/', '', '2016-03-19 19:17:02'),
(9846, 0, '107.167.105.66', '43a1a31e15df75575cb6ee8ab221a039', '/es/', 'http://roman.com.mx/', '2016-03-19 20:28:12'),
(9847, 0, '107.167.105.66', '43a1a31e15df75575cb6ee8ab221a039', '/es/index.php/contacto', '', '2016-03-19 20:28:59'),
(9848, 0, '207.46.13.190', '2e68e3f197f7c2d7faa72e377e4d4e83', '/es/index.php/la-firma/2-uncategorised/20-nuestra-firma', '', '2016-03-20 01:15:54'),
(9843, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://roman.com.mx/', '2016-03-19 18:55:04'),
(9842, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://roman.com.mx/', '2016-03-19 18:54:27'),
(9841, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://www.roman.com.mx/', '2016-03-19 18:53:35'),
(9840, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://roman.com.mx/', '2016-03-19 18:51:56'),
(9839, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/index.php/contacto', 'http://roman.com.mx/es/', '2016-03-19 18:50:39'),
(9835, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://roman.com.mx/', '2016-03-19 18:33:20'),
(9836, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://roman.com.mx/', '2016-03-19 18:46:53'),
(9838, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://roman.com.mx/', '2016-03-19 18:50:09'),
(9837, 0, '107.167.106.21', '6c56883c9b902a13f31814ea22e08fe6', '/es/index.php?format=feed&type=atom', '', '2016-03-19 18:47:09'),
(9834, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', '', '2016-03-19 18:31:23'),
(9833, 0, '107.167.106.21', 'dca20b93a3af8dfe83312ea19b8f1688', '/es/', 'http://roman.com.mx/', '2016-03-19 18:30:47'),
(9831, 0, '157.55.39.19', 'ea1e91b6594add2057643900266ac353', '/es/index.php/noticias', '', '2016-03-19 02:30:07'),
(9832, 0, '157.55.39.19', '0f054fe67c576c0f26f7c5da3fa1da7b', '/es/index.php/la-firma/vision', '', '2016-03-19 11:24:33'),
(9829, 0, '66.249.69.29', '332e0c7231336d3a2765156773e71ccc', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-03-18 14:12:27'),
(9830, 0, '177.249.222.183', '91c12a98a1edac1cf9fa50fd3abd7444', '/es/', '', '2016-03-18 21:59:15'),
(9827, 0, '207.46.13.127', '1abdf0622fc5fc76a1f3eecff9508a4d', '/es/', '', '2016-03-18 09:58:41'),
(9828, 0, '66.249.69.37', '978fbeb112bc6180529982069507efc3', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-18 11:23:06'),
(9826, 0, '157.55.39.142', '14f6e98b33f6ee8f9eb5645e2467886d', '/es/', '', '2016-03-18 06:26:42'),
(9825, 0, '207.46.13.104', 'd72a14eabcfc6247df47557bd759fd04', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-03-18 05:47:18'),
(9824, 0, '187.189.245.53', 'ca42d448a294ce1e552f10946ee4fe84', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-03-18 03:57:58'),
(9822, 0, '207.46.13.104', '8f8e3e68d755503713301f2fdb7b94de', '/es/index.php/la-firma/vision', '', '2016-03-18 02:14:45'),
(9823, 0, '187.189.245.53', 'ca42d448a294ce1e552f10946ee4fe84', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-03-18 03:45:58'),
(9821, 0, '40.77.167.42', '7587043559a1bc0d109dd181b915e80e', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-18 00:59:07'),
(9820, 0, '207.46.13.130', '069e013d823aa5e7307b35dec9c8b8eb', '/es/index.php/contacto', '', '2016-03-17 23:10:16'),
(9819, 0, '200.68.141.112', 'd787e4cf5ddde735c53e5e8d2b8e6bf5', '/es/', 'http://www.roman.com.mx/', '2016-03-17 19:06:21'),
(9817, 0, '66.249.69.37', 'c57498fb8f672b03fce0befa808da858', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-17 04:53:01'),
(9818, 0, '200.68.141.112', 'd787e4cf5ddde735c53e5e8d2b8e6bf5', '/es/', 'http://www.roman.com.mx/', '2016-03-17 19:06:01'),
(9816, 0, '66.249.69.45', '7e333f6b3277905cd99b99b1feca6092', '/es/', '', '2016-03-17 03:46:05'),
(9815, 0, '200.23.91.218', 'd1e66044ac34a6f59c4b948531ff9f10', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'http://www.google.com.mx/url?sa=t&rct=j&q=&esrc=s&source=web&cd=19&cad=rja&uact=8&ved=0ahUKEwjOmcTErcbLAhVM42MKHb2IDUI4ChAWCEgwCA&url=http%3A%2F%2Fwww.roman.com.mx%2Fes%2Findex.php%2F2013-10-02-14-45-01%2Ffiscal%2Fdictamen-por-enajenacion-de-acciones&usg=', '2016-03-16 23:27:07'),
(9814, 0, '66.249.69.29', '4f47dbba0803d258d2b9bfeac59f5eb3', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-03-16 17:35:22'),
(9812, 0, '66.249.69.29', 'b6ec75650094e0bb0434ae3b636a10e8', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-03-16 10:08:19'),
(9813, 0, '187.190.26.23', 'ce64cbb27155c6cc43fb0c8465efe737', '/es/', '', '2016-03-16 15:43:07'),
(9810, 0, '207.46.13.18', 'fda36f0d6d2d0d519b7c02cd9d51d295', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-15 23:32:52'),
(9811, 0, '66.249.69.37', 'b04a5b41859fb8b4b4222d20b0b84e61', '/es/index.php/noticias', '', '2016-03-16 10:05:53'),
(9808, 0, '187.132.200.106', 'db778b012d01d4ea98d15568203a0dc5', '/es/index.php/staff', 'http://roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-03-15 23:12:11'),
(9809, 0, '187.132.200.106', 'db778b012d01d4ea98d15568203a0dc5', '/es/', 'http://roman.com.mx/es/index.php/staff', '2016-03-15 23:12:54'),
(9807, 0, '187.132.200.106', 'db778b012d01d4ea98d15568203a0dc5', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-03-15 23:11:38'),
(9805, 0, '66.249.69.29', '42f308eccc01a519b094b8f312461741', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-15 21:35:54'),
(9806, 0, '187.132.200.106', 'db778b012d01d4ea98d15568203a0dc5', '/es/', 'http://www.roman.com.mx/', '2016-03-15 23:10:41'),
(9804, 0, '66.249.69.37', 'cf258ac1b25c32d3a3a6a73473167545', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-03-15 15:15:07'),
(9803, 0, '187.190.26.23', '9881ad8e80c623b3b5885b01ddefcaa7', '/es/', '', '2016-03-15 14:54:05'),
(9802, 0, '157.55.39.131', 'd1d8540083bf6208669256acf514e7c1', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-03-15 14:14:56'),
(9801, 0, '207.46.13.18', '7c5bcb42174886c22eff0d8937d92e3e', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-15 08:34:13'),
(9799, 0, '66.249.69.29', '2e594db95f10130faab1b38a0602fba9', '/es/', '', '2016-03-15 01:58:34'),
(9800, 0, '157.55.39.253', 'e5b9540166071ef854fba26441a7ec76', '/es/index.php/la-firma/nuestra-firma', '', '2016-03-15 03:29:28'),
(9798, 0, '66.249.69.37', '3239ad320cb117a116fc3ae068ce2797', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-03-15 01:25:52'),
(9796, 0, '40.77.167.41', 'b078184127089bbfb14d45946557d60f', '/es/index.php/fundacion', '', '2016-03-14 21:37:49'),
(9797, 0, '66.249.69.29', '33827e0b381e174caec0408a90513a0a', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-14 22:30:54'),
(9793, 0, '187.190.26.23', 'b7cb4b64f02dbbd54ecfbe6e922d6aec', '/es/', '', '2016-03-14 15:13:03'),
(9794, 0, '40.77.167.41', '128f1d3be9fb6817b5a85aef1c449c07', '/es/index.php/la-firma', '', '2016-03-14 19:13:49'),
(9795, 0, '189.251.186.85', '576f984278e7614e6a34e6dc94bea6cc', '/es/', 'http://www.roman.com.mx/', '2016-03-14 20:38:08'),
(9792, 0, '157.55.39.253', 'e03d0a200cb00cc8df32df2f0a5c6bf7', '/es/index.php/contact', '', '2016-03-14 11:15:32'),
(9791, 0, '157.55.39.182', 'bc70d91ae4b960eba7edd3d4e8474ae2', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-14 07:33:25'),
(9790, 0, '40.77.167.41', '6c2f5b3fb1251dbb2e5ead82cf01db51', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-14 02:45:32'),
(9789, 0, '66.249.69.29', '4eceedf0785164c002717e7887efe8b1', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-03-14 01:23:15'),
(9788, 0, '66.249.69.29', '9ff8e64ff765d84d324cae2c0c59a493', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-13 22:03:11'),
(9787, 0, '66.249.69.29', 'a005cd06bd352c4cefcc773c4fced0d0', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-03-13 20:27:16'),
(9784, 0, '40.77.167.41', '04702ddad0b1ec6616e4d641764a23c0', '/es/', '', '2016-03-13 15:26:36'),
(9785, 0, '66.249.69.29', '593566af742bc9f2c5a326dd7f28ed34', '/es/', '', '2016-03-13 16:38:38'),
(9786, 0, '66.249.69.37', '16fae1448d78ea873b656ff15e1dd658', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-13 17:27:36'),
(9781, 0, '66.249.69.37', '48ab198d105f02833bf4592f22bc9f58', '/es/index.php/contacto', '', '2016-03-13 10:26:14'),
(9782, 0, '66.249.69.29', 'b9839fb9a954bb97ffb32e418187b685', '/es/index.php/staff', '', '2016-03-13 10:26:20'),
(9783, 0, '66.249.69.29', '76c7d5332ab6ca76f689ec3b2e87b922', '/es/index.php/la-firma/vision', '', '2016-03-13 10:50:22'),
(9780, 0, '66.249.69.29', '131f63b11a44a71a903002dd11408059', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-03-13 10:26:07'),
(9779, 0, '66.249.69.37', '201449e853013b098956650c665b79ae', '/es/index.php/la-firma/nuestra-firma', '', '2016-03-13 10:25:47'),
(9777, 0, '66.249.69.45', '8467ec3eef96d7ab707b89bb651bb13b', '/es/index.php/fundacion', '', '2016-03-13 09:40:46'),
(9778, 0, '66.249.69.29', 'aa43f4b72244e44d6600229dcad7dd56', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-03-13 10:12:10'),
(9775, 0, '207.46.13.155', '04b856b88f8f5859f944c54977ddb246', '/es/index.php/staff', '', '2016-03-13 06:03:59'),
(9776, 0, '157.55.39.131', 'c6525a4affa30c0fb842ecf3d5ba177e', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-03-13 07:51:18'),
(9773, 0, '107.167.109.27', '9e556bb2442956d046f3f4620ed9e789', '/es/', 'http://roman.com.mx/', '2016-03-13 00:42:43'),
(9774, 0, '207.46.13.155', '1aa6b85e3aacea5d8a493fe5adf053c3', '/es/index.php/la-firma/8-content', '', '2016-03-13 04:05:00'),
(9771, 0, '107.167.105.136', '636fac8b3fd831551722dda0a5560f8b', '/es/index.php/contacto', 'http://roman.com.mx/es/', '2016-03-12 23:38:34'),
(9772, 0, '107.167.107.177', '9e556bb2442956d046f3f4620ed9e789', '/es/', 'http://roman.com.mx/', '2016-03-13 00:01:56'),
(9770, 0, '107.167.105.136', '636fac8b3fd831551722dda0a5560f8b', '/es/', 'http://roman.com.mx/', '2016-03-12 23:38:07'),
(9768, 0, '66.249.69.37', 'e610ac6a1b7661698c0bbc5e13b6b951', '/es/index.php/noticias', '', '2016-03-12 23:25:42'),
(9769, 0, '107.167.105.136', '636fac8b3fd831551722dda0a5560f8b', '/es/', 'http://roman.com.mx/', '2016-03-12 23:36:56'),
(9767, 0, '66.249.69.29', '49c7af6f8acabbb7af099ef7b85a5a2f', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-03-12 23:25:10'),
(9766, 0, '66.249.69.37', 'f1da3770967917e5816439cfe54686ca', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-03-12 23:24:39'),
(9763, 0, '107.167.105.136', '38df7453080dd7828c7e72fc3daebaa1', '/es/', 'http://roman.com.mx/', '2016-03-12 23:17:59'),
(9764, 0, '107.167.105.136', '38df7453080dd7828c7e72fc3daebaa1', '/es/', 'http://roman.com.mx/', '2016-03-12 23:18:19'),
(9765, 0, '107.167.105.136', '38df7453080dd7828c7e72fc3daebaa1', '/es/', 'http://roman.com.mx/', '2016-03-12 23:18:33'),
(9762, 0, '107.167.107.227', '38df7453080dd7828c7e72fc3daebaa1', '/es/', 'http://roman.com.mx/', '2016-03-12 23:08:13'),
(9761, 0, '107.167.104.174', 'cda85edbe5853475fd27b0143a0cafd1', '/es/', 'http://roman.com.mx/', '2016-03-12 20:47:05'),
(9758, 0, '40.77.167.75', '24a9761f2643ea652fcb8260735654d3', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-12 04:06:05'),
(9759, 0, '40.77.167.41', '9bce5cc0c01e70bee5d3d178505474fd', '/es/index.php/contacto', '', '2016-03-12 06:53:31'),
(9760, 0, '66.249.69.29', '34b3e57337c54dc3cca5b9b3ffc0839f', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-12 07:14:46'),
(9757, 0, '66.249.69.45', '4244576c9c986e78dff3228fad291281', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-03-12 03:27:01'),
(9756, 0, '66.249.69.37', 'fc7a3af77981c07825e1aeb9a32557af', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-12 02:43:32'),
(9755, 0, '66.249.69.29', 'f99d9436e2195cf08972a5083b004e54', '/es/', '', '2016-03-11 21:53:43'),
(9754, 0, '187.190.26.23', '620f50071927c15547d069c3460f0934', '/es/', '', '2016-03-11 18:09:31'),
(9753, 0, '66.249.69.45', 'f7fa4d287043e0eb40fb6e62e01b40a4', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-03-11 16:22:47'),
(9752, 0, '187.175.26.35', '9c460b1b049b27d7ffa243746eefc179', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-03-11 14:54:33'),
(9750, 0, '157.55.39.131', '72d705570115ca0553b8ced6f3e6abf3', '/es/index.php/la-firma/vision', '', '2016-03-10 18:14:01'),
(9751, 0, '40.77.167.42', '8f6f2afda2f6a4cbc1b1bbde08e0744d', '/es/', '', '2016-03-11 06:48:03'),
(9748, 0, '40.77.167.42', '11283202e22ee718247d864712b9e59c', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-03-10 18:13:54'),
(9749, 0, '157.55.39.131', '0fab87998a7cd8ea4bce64c10b02dcfe', '/es/index.php/la-firma/13-nosotros', '', '2016-03-10 18:14:01'),
(9747, 0, '40.77.167.75', '905bdcd6e90b7b4ea61c6103964ac302', '/es/index.php/la-firma/8-content', '', '2016-03-10 18:13:50'),
(9746, 0, '187.190.26.23', 'e8eb28d56f30c4ebc4779c4f40c42a13', '/es/', '', '2016-03-10 16:44:29'),
(9744, 0, '66.249.69.29', 'a83c64c546e836232841a8735f31128c', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-10 08:27:02'),
(9745, 0, '157.55.39.131', '602cbe80eadc7d3eeee9ce126e05ca4a', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-03-10 11:18:53'),
(9743, 0, '40.77.167.75', '30832cfb76d6e1288acae9a775688355', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-10 05:36:54'),
(9742, 0, '177.249.197.247', '91c12a98a1edac1cf9fa50fd3abd7444', '/es/', '', '2016-03-09 22:05:55'),
(9740, 0, '177.249.197.247', '14740ab422459c6899b244da1a387db3', '/es/', '', '2016-03-09 19:26:44'),
(9741, 0, '157.55.39.131', '16003eaed12ca697a71c7910f5dd1fea', '/es/index.php/la-firma/vision', '', '2016-03-09 21:27:48'),
(9739, 0, '187.190.26.23', 'f71fb7a2d5e032c7bbfb408e9f6a87b9', '/es/', '', '2016-03-09 15:24:06'),
(9737, 0, '66.249.69.45', '6c98b09edc09b72cf07803bc37b31f52', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-09 03:11:06'),
(9738, 0, '66.249.69.37', '74fe4c8e7f4bb753911fcebb48ffa17e', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-09 07:40:03'),
(9736, 0, '187.190.26.23', '6de33e285e90b8cbf78b0f0eb8222019', '/es/', '', '2016-03-08 15:50:41'),
(9735, 0, '177.249.197.247', '2c62ae671a49a1b68f649a54cf72e260', '/es/', '', '2016-03-08 15:48:10'),
(9734, 0, '187.175.81.73', '43c84b84626d035187081368f12be6d2', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx', '2016-03-08 12:53:10'),
(9733, 0, '40.77.167.75', 'e8d87c88cedf6c817c5aefb249ace4b5', '/es/index.php/la-firma/8-content', '', '2016-03-08 01:42:34'),
(9732, 0, '157.55.39.109', '6aa4d88ea3b61528cedd2ef0c8ce82b6', '/es/index.php/la-firma/vision', '', '2016-03-08 01:42:18'),
(9731, 0, '157.55.39.109', '8d0731b6b3320ec51326711b156dbde8', '/es/index.php/la-firma/13-nosotros', '', '2016-03-08 01:42:18'),
(9728, 0, '187.190.26.90', 'a8cdc7f2907e87e4282812a78746288f', '/es/', '', '2016-03-07 18:29:22'),
(9729, 0, '40.77.167.49', 'dada1e66760acc59b470090a06221d6e', '/es/', '', '2016-03-07 19:52:36'),
(9730, 0, '40.77.167.49', '005272ab31ae739289c9595975dcd4f6', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-03-08 01:42:12'),
(9727, 0, '187.234.222.149', '437a5fc7b201ad179beb9079141c84f4', '/es/', 'http://www.roman.com.mx/', '2016-03-07 18:20:33'),
(9726, 0, '189.236.182.85', '8bb35f0c04d7002ef32bf42e16021e99', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'https://www.google.com.mx/', '2016-03-07 16:16:25'),
(9725, 0, '157.55.39.109', '06ba6b76d1518cd870f3e37e818a3045', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-03-07 01:33:51'),
(9724, 0, '40.77.167.49', '6c22dd5eb39c88ecfc8fbc6dac8c10bb', '/es/index.php/la-firma/2-uncategorised', '', '2016-03-06 20:09:12'),
(9723, 0, '157.55.39.109', '00b999c6523569b2f884e47b13715f0d', '/es/index.php/la-firma/13-nosotros', '', '2016-03-06 19:03:13'),
(9722, 0, '157.55.39.178', '240a5492bfb83d8edd814c10dae04b3a', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-06 01:02:31'),
(9721, 0, '40.77.167.39', 'c0f9b6475ad9520dd6feae24ff41155c', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-03-05 22:13:38'),
(9719, 0, '40.77.167.39', '52c4ec0d9c3d972847864649c277d831', '/es/', '', '2016-03-05 14:59:10'),
(9720, 0, '66.249.69.37', 'c39c2c9366d4acd450c4f83213110467', '/es/', '', '2016-03-05 19:43:12'),
(9717, 0, '157.55.39.253', 'e30d1a861753e2369e30b0ea247822d8', '/es/index.php/noticias', '', '2016-03-05 06:30:34'),
(9718, 0, '157.55.39.253', '857cc9eeaf7922588b13bcb37ccabad7', '/es/index.php/la-firma/12-areas', '', '2016-03-05 06:30:34'),
(9716, 0, '157.55.39.140', '60648c2c571ba3e94608ce7a5d8df1ab', '/es/', '', '2016-03-05 06:02:39'),
(9715, 0, '157.55.39.178', 'ecf4e51dbb8570960e870caa81ef4de2', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-05 06:02:19'),
(9714, 0, '157.55.39.140', '2250dedf737fe63ccd24f198a3fa483e', '/es/index.php/la-firma/2-uncategorised/21-modelo-de-servicios', '', '2016-03-04 20:07:58'),
(9711, 0, '177.249.195.55', '2c62ae671a49a1b68f649a54cf72e260', '/es/', '', '2016-03-04 15:20:01'),
(9712, 0, '187.190.26.90', 'c1b9700ec86cc72125014d2c04ff05f1', '/es/', '', '2016-03-04 16:56:16'),
(9713, 0, '157.55.39.178', 'ae6a413b26297972c34c96f796f1b562', '/es/index.php/la-firma/9-blog', '', '2016-03-04 18:54:54'),
(9710, 0, '157.55.39.140', '9ce00b2cf42926115cd442d5232bbb37', '/es/index.php/contacto', '', '2016-03-04 02:20:59'),
(9708, 0, '40.77.167.62', '01306062ddb2348e029afa5c72b80348', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-03-04 00:01:48'),
(9709, 0, '177.249.195.55', '2c62ae671a49a1b68f649a54cf72e260', '/es/', '', '2016-03-04 00:24:08'),
(9705, 0, '187.190.26.90', '957777ce46dc5e1e376556180f102b30', '/es/', '', '2016-03-03 15:50:54'),
(9706, 0, '189.234.131.35', '9c14883d39eec0710495583fc0ea7d6b', '/es/', 'http://www.roman.com.mx/', '2016-03-03 21:19:59'),
(9707, 0, '177.249.195.55', '14f71b210b24b268ff5f7e0d2d10fbec', '/es/', '', '2016-03-03 22:55:52'),
(9704, 0, '177.249.195.55', '14f71b210b24b268ff5f7e0d2d10fbec', '/es/', '', '2016-03-02 22:08:49'),
(9702, 0, '187.189.149.226', 'ba668730dadc0888f4fee7c8ebae08f7', '/es/', 'http://www.roman.com.mx/', '2016-03-02 18:50:09'),
(9703, 0, '187.189.149.226', 'ba668730dadc0888f4fee7c8ebae08f7', '/es/', 'http://roman.com.mx/', '2016-03-02 18:51:00'),
(9699, 0, '177.249.195.55', '191e92c6ecc206345ebe60474b1a157d', '/es/', '', '2016-03-02 15:01:36'),
(9700, 0, '207.46.13.147', 'b407404b5bf6d665b4f47237f6bc30c4', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-03-02 17:32:21'),
(9701, 0, '177.249.195.55', '2b95ea657103b2770ec683455b10b03f', '/es/', '', '2016-03-02 18:47:25'),
(9697, 0, '187.190.26.90', '43ec2ec2494b9a0b449b988a66211988', '/es/', '', '2016-03-02 14:52:25'),
(9698, 0, '177.249.195.55', '191e92c6ecc206345ebe60474b1a157d', '/es/', '', '2016-03-02 14:59:23'),
(9696, 0, '157.55.39.117', 'b9b4e897e263ea8663bed7c1cb64bab9', '/es/index.php/la-firma/12-areas', '', '2016-03-02 11:19:17'),
(9695, 0, '223.140.3.55', '0741f257311e206f02345230d66d09c0', '/es/', 'http://www.roman.com.mx/', '2016-03-02 06:39:29'),
(9692, 0, '207.46.13.147', 'b53322903819436a958e10fd9a4886b6', '/es/index.php/la-firma/nuestra-firma', '', '2016-03-01 22:01:12'),
(9693, 0, '207.46.13.143', '8b26b47806b1ccf53a7a66db4086891b', '/es/index.php/la-firma/8-content', '', '2016-03-01 22:01:19'),
(9694, 0, '187.149.244.93', '3f2bcffc65e4ae85a50748eecb76b487', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-03-01 22:52:12'),
(9690, 0, '157.55.39.117', '793a3114f9d7bbdd7ba2c7b3f5e853e0', '/es/index.php/la-firma/13-nosotros', '', '2016-03-01 22:01:07'),
(9689, 0, '157.55.39.166', '8a969138ecdaa5c4cfd466aca650f2c4', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-03-01 22:01:04'),
(9691, 0, '157.55.39.117', 'b23ea7b6c6cd697ec2ee392551768f75', '/es/index.php/la-firma/vision', '', '2016-03-01 22:01:08'),
(9687, 0, '40.77.167.65', 'f38025d7a9cfbac95dd836172263a1ae', '/es/', '', '2016-03-01 02:20:22'),
(9688, 0, '187.190.26.90', '9c135d843bd832350a1082cb7d7cc5d3', '/es/', '', '2016-03-01 17:11:54'),
(9686, 0, '207.46.13.147', '7407d428b083f0a543e4da45160ca401', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-29 23:10:47'),
(9683, 0, '66.249.69.37', 'b179e64f7c1210adf90cce405c67b0eb', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-28 15:28:25'),
(9684, 0, '187.190.26.90', '8be516c70c096a0d0df10026b55629bf', '/es/', '', '2016-02-29 15:01:11'),
(9685, 0, '189.235.75.26', '8567e94b8ca4b5a354fbce933be71afe', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', 'https://www.google.com.mx/', '2016-02-29 17:57:24'),
(9681, 0, '157.55.39.200', '8aceede1ef7100ef7fcbd6476521663e', '/es/index.php/la-firma/2-uncategorised/20-nuestra-firma', '', '2016-02-28 10:56:40'),
(9682, 0, '157.55.39.210', 'fe1731fde294b9103d6c9d6c94e12490', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-28 12:50:12'),
(9680, 0, '204.79.180.62', '4551e926ef0476fc95b94bc813f034c4', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-28 07:39:43'),
(9679, 0, '157.55.39.37', 'bdfb2c9f1021c36bd5a969e3443de30e', '/es/', '', '2016-02-28 00:42:14'),
(9678, 0, '157.55.39.210', '3aeabeb419c400c47399873892269d4f', '/es/index.php/noticias', '', '2016-02-27 19:35:54'),
(9675, 0, '157.55.39.210', 'c5dc6a02365ae2ddb8e914f546647e8b', '/es/index.php/noticias', '', '2016-02-27 18:19:32'),
(9677, 0, '157.55.39.210', 'f31d3af7d956acfddaba5e0aeabc899e', '/es/index.php/la-firma/12-areas', '', '2016-02-27 19:35:54'),
(9676, 0, '157.55.39.37', 'cee89aa5b1f1ce2dafac3371b7581047', '/es/', '', '2016-02-27 19:35:35'),
(9674, 0, '40.77.167.0', '0e1b65dc18f8423c70cf43fb7432b0a6', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-27 10:14:58'),
(9672, 0, '40.77.167.0', 'b798d710f2e1c8feafd5bc60a9bd6f09', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-27 05:58:32'),
(9673, 0, '66.249.69.37', 'dd10869825c0ac5e507874fb87a3d18c', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-27 10:06:12'),
(9670, 0, '66.249.69.45', '453a6881e906ee7ab5c27c0a4a08f791', '/es/', '', '2016-02-27 02:52:18'),
(9671, 0, '66.249.69.37', 'a0669bc53845cab68137cd10a2ab8f0e', '/es/index.php/component/content/?view=featured&format=feed&type=rss', '', '2016-02-27 05:43:46'),
(9669, 0, '66.249.69.29', '5a726f91508d9c5c4cead4e5a73dd7a3', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-27 02:35:54'),
(9668, 0, '66.249.69.45', '9f0cc15ac93b917dcb6c491db71e4dc7', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-27 02:31:57'),
(9667, 0, '157.55.39.37', '2cc9b7fcf580a181b70198bd47769b12', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-26 23:46:18'),
(9665, 0, '157.55.39.139', '9a870962ea3aa6e2a459af45ed46d60a', '/es/index.php/la-firma/vision', '', '2016-02-26 23:04:18'),
(9666, 0, '66.249.69.29', 'b5b37f327ef5e2c92b16a2fcb5324713', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-26 23:33:52'),
(9664, 0, '66.249.69.45', '8a2d85acb143695ff4b26380ae5d02dd', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-26 22:41:28'),
(9663, 0, '66.249.69.29', 'ccbe17f62ab3b2ceabd377dde1368f33', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-26 22:24:40'),
(9660, 0, '66.249.69.37', '68d1008f60f3cf48043d70785d4167b9', '/es/index.php/contacto', '', '2016-02-26 19:51:09'),
(9661, 0, '66.249.69.45', '702f62ab8e5d40a16d0c26f5d00757c2', '/es/index.php/la-firma/vision', '', '2016-02-26 21:28:43'),
(9662, 0, '66.249.69.37', 'a1f29cf648f3730c18813691c55f7d52', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-26 22:07:52'),
(9659, 0, '66.249.69.37', '71acd730f045b869c7c4b01842ae802c', '/es/index.php/staff', '', '2016-02-26 19:51:06'),
(9658, 0, '66.249.69.45', 'cfb5292beb4cc2ed3f625bfa68089db2', '/es/index.php/fundacion', '', '2016-02-26 19:11:41'),
(9657, 0, '157.55.39.37', '9ddc51d8c485bb404d454dfefac3174f', '/es/', '', '2016-02-26 17:54:08'),
(9656, 0, '187.190.26.90', 'a501188f811e20a641fc3894b2ebfcfa', '/es/', '', '2016-02-26 15:27:39'),
(9654, 0, '66.249.69.29', 'a3eb87a9cd5db8e5003cb20fda7fe375', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-26 15:01:18'),
(9655, 0, '66.249.69.45', '2b05b3be318f55c6a9f0e824d2b5b052', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-26 15:04:29'),
(9653, 0, '66.249.69.45', '50b5c87d1feb61125dd1b5bf03d30325', '/es/index.php/component/content/?view=featured', '', '2016-02-26 14:37:01'),
(9651, 0, '66.249.69.45', '6a0663d3d67de912b756b77897d1ac26', '/es/index.php/noticias', '', '2016-02-26 14:17:04'),
(9652, 0, '66.249.69.37', '9a53a47a71e45552e7694b5147353c05', '/es/index.php/contact', '', '2016-02-26 14:33:47'),
(9649, 0, '66.249.69.37', 'a17803f5bae96b67f0cdc56f91a47e87', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-26 12:24:42'),
(9650, 0, '66.249.69.45', 'e655173cef6ada34c360ac4b33d6d591', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-26 13:32:42'),
(9646, 0, '66.249.69.29', '0ddd770ea2308a64a17b080552791ab3', '/es/index.php/la-firma/vision', '', '2016-02-26 10:33:43'),
(9647, 0, '66.249.69.29', '2bfe0bc92cbb9c306ee35163d9f1eb40', '/es/', '', '2016-02-26 11:27:16'),
(9648, 0, '66.249.69.37', '1b4a7e5205dfede83ef3d3e899603ba3', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-26 11:35:05'),
(9645, 0, '66.249.69.29', 'e7cdf722bc82b72aafe05458ca2b7eb1', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-26 08:44:35'),
(9644, 0, '66.249.69.29', '8bc9047388969f6e925e6658cf5ae9b7', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-26 08:10:01'),
(9643, 0, '187.188.23.15', '805bdd69540d0c13642039ec48e2eb05', '/es/', 'http://www.roman.com.mx/', '2016-02-26 06:49:56'),
(9642, 0, '66.249.69.45', '970c166536df7d854652e5d5b4b246d3', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-26 06:07:00'),
(9641, 0, '66.249.69.29', 'a508a9d957f642bb6176f128ace39df3', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-26 06:02:30'),
(9640, 0, '66.249.69.29', '9c5449d9dfc6492874e8e4b656ff0f9b', '/es/index.php/contacto', '', '2016-02-26 05:39:24'),
(9639, 0, '66.249.69.45', '6548302e803068f0898e79b0c13c456c', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-26 04:23:08'),
(9638, 0, '66.249.69.29', 'ad6f0d3168960be7c43381fa289fd826', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-26 02:36:06'),
(9637, 0, '66.249.69.37', '8816e9551e38f147ab8c0b97879c2d40', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-26 02:36:01'),
(9636, 0, '66.249.69.29', 'dc9a4749c6aa5167ca7c730d85fe1b92', '/es/', '', '2016-02-26 02:35:57'),
(9635, 0, '187.149.241.15', '33bcc1a5d128a9c5877d5406ad18cf60', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-02-25 19:22:10'),
(9633, 0, '207.46.13.29', '434609ac5a091b30ed2b81e61cd46bf5', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-25 16:23:05'),
(9634, 0, '66.249.69.37', 'b6d2631f53280c9771d0c4b8e1114e26', '/es/index.php/component/content/?view=featured&format=feed&type=atom', '', '2016-02-25 17:23:24'),
(9632, 0, '157.55.39.240', '85a698082adbb35552dd54f8d3486348', '/es/index.php/la-firma/13-nosotros', '', '2016-02-25 16:23:05'),
(9631, 0, '157.55.39.240', 'db786d067f2f1f764322f5278c61147a', '/es/index.php/la-firma/vision', '', '2016-02-25 16:23:04'),
(9627, 0, '189.169.7.97', 'e81a50fd1392e79c99900ad1339efc28', '/es/', '', '2016-02-25 14:10:34'),
(9628, 0, '187.190.26.24', '43503126abce0767452489c7d4320113', '/es/', '', '2016-02-25 14:46:20'),
(9629, 0, '207.46.13.48', '68a3d1d96cffd5cff9877af11f9fdf13', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-25 16:22:49'),
(9630, 0, '40.77.167.30', '6e2207ac93178bc470f1b6e2d6c6b42a', '/es/index.php/la-firma/8-content', '', '2016-02-25 16:22:58'),
(9626, 0, '66.249.69.123', '564a12cecdc94cbc47cefeb494f48d68', '/es/index.php/staff', '', '2016-02-25 09:12:53'),
(9625, 0, '66.249.69.4', '0f1653c598f150ce952049cd56446108', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-25 09:12:31'),
(9623, 0, '66.249.69.12', '5f97594736112315afb44912036cdf1d', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-25 09:11:46'),
(9624, 0, '66.249.69.4', '548767fc0b1e8d5651a127c1b9747a2a', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-25 09:12:19'),
(9622, 0, '207.46.13.48', '99a1347944e860f1fc7c0570ac020e0b', '/es/index.php/contacto', '', '2016-02-25 06:38:06'),
(9621, 0, '207.46.13.48', '1018811db4cdc7660079e0ba60d151b3', '/es/', '', '2016-02-25 06:38:05'),
(9620, 0, '157.55.39.240', 'da52c6cc425bd43396ede62dd17a0fd8', '/es/index.php/la-firma/12-areas', '', '2016-02-25 06:38:01'),
(9619, 0, '157.55.39.240', '0a733e91dfb50d12fea857ccb645498c', '/es/index.php/noticias', '', '2016-02-25 06:38:01'),
(9616, 0, '66.249.69.4', '72cd25f2dee79d77be8771b6c872e18c', '/es/index.php/noticias', '', '2016-02-25 03:07:54'),
(9617, 0, '66.249.69.12', '0646122bbcaa68e35da8ecc24e19b576', '/es/index.php/la-firma/vision', '', '2016-02-25 05:09:01'),
(9618, 0, '207.46.13.48', '72c8875d552c39f51e2ec7f8febb030e', '/es/index.php/contacto', '', '2016-02-25 06:05:36'),
(9615, 0, '66.249.69.123', '4553e2104f9a5758f7dcb74954226685', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-25 03:07:43'),
(9614, 0, '66.249.69.37', '55801eabf73c069c2e36b2d5177cb449', '/es/index.php/component/content/?view=featured', '', '2016-02-25 03:00:04'),
(9612, 0, '66.249.69.123', '438b97df9fbf1dbe639d06b844d33318', '/es/index.php/contacto', '', '2016-02-24 23:19:03'),
(9613, 0, '66.249.69.123', '82045a63d6f9197285d8f4476406d16b', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-24 23:26:02'),
(9610, 0, '66.249.69.4', 'db22179f471b38ed75dd59c51b14bfd3', '/es/index.php/fundacion', '', '2016-02-24 19:02:32'),
(9611, 0, '66.249.69.12', 'a915c7d7119844c566b1f54358f679c1', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-24 19:29:57'),
(9608, 0, '66.249.69.123', 'a7f0870785161f0a0146cb9bc75424c5', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-24 16:36:49'),
(9609, 0, '66.249.69.123', '5b176ce802e857b1d14908b91a31bf98', '/es/index.php/contact', '', '2016-02-24 18:40:38'),
(9607, 0, '207.46.13.139', '19136ba840ab86aeb4d07a2f1f9ff6f2', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-24 16:33:05'),
(9606, 0, '187.139.198.73', 'cabf19892d23410911ab441a85452e9f', '/es/', 'http://www.roman.com.mx/', '2016-02-24 16:12:01'),
(9605, 0, '187.190.26.24', '3f115ab7b9d36fba79037579958651c3', '/es/', '', '2016-02-24 15:30:56'),
(9604, 0, '207.46.13.139', '4fb96d5c1037a81ac8770edb6aa2731f', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-24 15:29:01'),
(9603, 0, '207.46.13.48', '66d17565a7e442dcb2d66a6ef9862cef', '/es/index.php/la-firma', '', '2016-02-23 22:03:35'),
(9602, 0, '207.46.13.29', '74576ed3db5ca36f7409dc2055d93b4c', '/es/index.php/contact', '', '2016-02-23 20:35:19'),
(9601, 0, '189.128.124.219', 'd350bdb49953b3cf773438482253976b', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '2016-02-23 18:02:15'),
(9600, 0, '189.128.124.219', 'd350bdb49953b3cf773438482253976b', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '2016-02-23 18:02:06'),
(9599, 0, '189.128.124.219', 'd350bdb49953b3cf773438482253976b', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://www.roman.com.mx/es/', '2016-02-23 18:01:54'),
(9598, 0, '207.46.13.48', '4b0f5dccf17f7f2b6820d4bf4dd67892', '/es/index.php/fundacion', '', '2016-02-23 17:44:44'),
(9597, 0, '187.190.26.24', 'ac92c7dcc250ea1a7cf9b6fcca64371a', '/es/', '', '2016-02-23 16:37:23'),
(9596, 0, '157.55.39.205', 'b9bcadd6657d828c49a3aefc00500cf4', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-23 14:24:40'),
(9595, 0, '157.55.39.64', 'b68e5edae4da4dccd2577f722067c7af', '/es/index.php/la-firma/12-areas', '', '2016-02-23 14:24:36'),
(9593, 0, '157.55.39.6', '8a2f3ca0782ea0119efb1a9692ed43d6', '/es/index.php/contacto', '', '2016-02-23 14:24:33'),
(9594, 0, '157.55.39.64', '385d0e06f845c01027de0d466a66f5ae', '/es/index.php/noticias', '', '2016-02-23 14:24:36'),
(9592, 0, '157.55.39.6', '4d2b9b4d792f8eb01c40eb475ff14a68', '/es/', '', '2016-02-23 14:24:32'),
(9591, 0, '66.249.69.37', 'ae2ffc6b785ed8fb21e408cafc5a34cf', '/es/index.php/component/content/?view=featured', '', '2016-02-23 07:38:42'),
(9589, 0, '187.135.61.208', 'd350bdb49953b3cf773438482253976b', '/es/', 'https://www.google.com.mx/', '2016-02-23 02:31:04'),
(9590, 0, '66.249.69.12', '00ca8494cb67cb1c60ccde53e88d591d', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-23 05:33:06'),
(9588, 0, '66.249.69.37', '7ee84e91c48034b3ba8624222ef4e73e', '/es/index.php/contact', '', '2016-02-22 22:59:54'),
(9587, 0, '187.235.171.179', 'd7ac03a6367e8c1311d3b6d3d1bfbe62', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'https://www.google.com.mx/', '2016-02-22 20:30:23'),
(9584, 0, '157.55.39.77', 'b4ce664dc8c77acbb30c1229e18eb964', '/es/index.php/la-firma/vision', '', '2016-02-22 11:56:16'),
(9585, 0, '177.248.209.186', 'eebba4f191737808bb0ea8f8dee17d9e', '/es/', '', '2016-02-22 18:13:52'),
(9586, 0, '187.235.171.179', 'd7ac03a6367e8c1311d3b6d3d1bfbe62', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'https://www.google.com.mx/', '2016-02-22 20:30:02'),
(9582, 0, '40.77.167.28', '2c1a80ee4820f21b4453044bb65c1b1d', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-22 06:33:02'),
(9583, 0, '40.77.167.28', '551041efaff3dcee0d6e9690ad776203', '/es/index.php/staff', '', '2016-02-22 09:09:55'),
(9581, 0, '157.55.39.77', '298a2532b9bb0a459a5116a098e7f756', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-22 06:20:25'),
(9579, 0, '157.55.39.15', 'e0d83b9dddd5b4f3a5ad745b15a0c6e2', '/es/index.php/noticias', '', '2016-02-22 01:45:32'),
(9580, 0, '157.55.39.15', 'de43020d81577addaf4ea41b30afbe27', '/es/index.php/la-firma/12-areas', '', '2016-02-22 01:45:33'),
(9575, 0, '40.77.167.28', '249938d31c03cf371fa9541cd7baf235', '/es/index.php/la-firma/8-content', '', '2016-02-21 20:13:13'),
(9574, 0, '187.163.205.211', '0aad8772637ede3201531cc80c6c6cdf', '/es/', 'http://www.roman.com.mx/', '2016-02-21 11:51:44'),
(9578, 0, '40.77.167.28', 'c61272446f3651632bd74dd1988bae19', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-22 01:44:46'),
(9576, 0, '157.55.39.6', '75f5961edec89f886e0fbe8ad41abf86', '/es/', '', '2016-02-22 01:44:45'),
(9577, 0, '157.55.39.6', 'f81e872911af06a5f076a96ed285e72f', '/es/index.php/contacto', '', '2016-02-22 01:44:45'),
(9572, 0, '157.55.39.102', '4f2f7179829d29539242b3cd62825cb6', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-21 10:07:08'),
(9573, 0, '157.55.39.102', 'c243fbc59291e552b2c940850331d925', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-21 10:07:18'),
(9571, 0, '157.55.39.102', 'f7602b0e9ab45c7f29687f60b5cae8b0', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-21 10:00:20'),
(9570, 0, '177.240.223.133', '88f019f12b93511c61d78b2da8e6a898', '/es/index.php/contact', 'http://roman.com.mx/es/', '2016-02-21 01:21:57'),
(9568, 0, '207.46.13.90', '35711c5716c58b7158f63291bd708148', '/es/', '', '2016-02-20 15:04:40'),
(9569, 0, '177.240.223.133', '88f019f12b93511c61d78b2da8e6a898', '/es/', 'http://www.roman.com.mx/', '2016-02-21 01:20:06'),
(9566, 0, '187.189.150.84', 'e3045071bc3fb9613253c7ae1a34d67c', '/es/index.php/contact', 'http://www.roman.com.mx/es/index.php/la-firma/vision', '2016-02-19 22:11:11'),
(9567, 0, '207.46.13.90', '9631a3334b10096c2b6d09e4e9fbd0d5', '/es/', '', '2016-02-19 23:45:34'),
(9565, 0, '187.189.150.84', 'e3045071bc3fb9613253c7ae1a34d67c', '/es/index.php/la-firma/vision', 'http://www.roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-02-19 22:10:54'),
(9564, 0, '187.189.150.84', 'e3045071bc3fb9613253c7ae1a34d67c', '/es/index.php/la-firma/modelo-de-servicios', 'http://www.roman.com.mx/es/', '2016-02-19 22:10:48'),
(9563, 0, '187.189.150.84', 'e3045071bc3fb9613253c7ae1a34d67c', '/es/', 'http://www.roman.com.mx/es/index.php/contact', '2016-02-19 22:10:38'),
(9562, 0, '187.189.150.84', 'e3045071bc3fb9613253c7ae1a34d67c', '/es/index.php/contact', 'http://www.roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-02-19 22:08:05'),
(9561, 0, '187.189.150.84', 'e3045071bc3fb9613253c7ae1a34d67c', '/es/index.php/la-firma/nuestra-firma', 'http://www.roman.com.mx/es/', '2016-02-19 22:06:42'),
(9560, 0, '187.189.150.84', 'e3045071bc3fb9613253c7ae1a34d67c', '/es/', 'http://roman.com.mx/en/', '2016-02-19 22:05:16'),
(9558, 0, '207.46.13.90', '0312c61d10f41cb363bc74b45339ffe7', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-19 17:50:44'),
(9559, 0, '207.46.13.90', '62044bb4e373c4f10397dc14fab2a0d0', '/es/index.php/contacto', '', '2016-02-19 21:47:36'),
(9557, 0, '157.55.39.15', 'c2977aa176d2b7fab43f755d9a63223c', '/es/index.php/la-firma/vision', '', '2016-02-19 17:50:38'),
(9556, 0, '157.55.39.15', 'd24d15f1c1cd0a4e8b3e6aa457336af9', '/es/index.php/la-firma/13-nosotros', '', '2016-02-19 17:50:37'),
(9555, 0, '207.46.13.160', '409fe807c11ab9a740389c3e567ef535', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-19 17:50:31'),
(9554, 0, '207.46.13.148', '18cf9738bdc7c4143475f47b53d208b8', '/es/index.php/la-firma/8-content', '', '2016-02-19 17:50:24'),
(9553, 0, '187.190.26.24', '79c6869e543bd093964172122b329af2', '/es/', '', '2016-02-19 16:48:41'),
(9552, 0, '66.249.69.45', '9a6f9324f0eefb64c0e47ab06497f0ad', '/es/index.php/noticias', '', '2016-02-19 09:45:48'),
(9551, 0, '66.249.69.29', '0b443237edd7ef8f25ec55b2d6c4aadd', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-19 09:40:08'),
(9550, 0, '157.55.39.15', '4fb7f63339aa4f21987c6bcaeb1c39c1', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-19 09:32:51'),
(9549, 0, '157.55.39.15', '0ddc2b2cebf54f9f4f94ebf69579eb20', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-19 09:32:50'),
(9548, 0, '157.55.39.15', 'a98d9c93ab996165ddd2b65e4aad3182', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-19 09:32:50'),
(9547, 0, '157.55.39.15', 'f23bb7d63fc6474478b7ab4db65081fa', '/es/index.php/la-firma/12-areas', '', '2016-02-19 09:32:50'),
(9543, 0, '207.46.13.90', '2ba8c4f2fa3d961bdea59eb99a61f3dd', '/es/index.php/la-firma', '', '2016-02-19 09:32:38'),
(9544, 0, '207.46.13.90', '20754463b7796d1cd04fa9e1103ccfae', '/es/index.php/fundacion', '', '2016-02-19 09:32:38'),
(9545, 0, '157.55.39.15', 'a878f936a4342f78ccb83274a31cdeb0', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-19 09:32:49'),
(9546, 0, '157.55.39.15', '46ac35661356a64b0fb8388952e91597', '/es/index.php/noticias', '', '2016-02-19 09:32:49'),
(9540, 0, '207.46.13.90', '5864f9ac73a376e015d065bbec6b6056', '/es/', '', '2016-02-19 09:32:37'),
(9541, 0, '207.46.13.90', 'a68c3d78c60b95d05811744e7cd2be4f', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-19 09:32:37'),
(9542, 0, '207.46.13.90', 'd538a1b4ed445e103845ec7d154f1e1b', '/es/index.php/contacto', '', '2016-02-19 09:32:37'),
(9538, 0, '207.46.13.148', '82569cb0c3c67cf34064816c0e79946c', '/es/index.php/staff', '', '2016-02-19 09:32:35'),
(9539, 0, '207.46.13.148', 'bad010517664797d1a08839dfcc64aa3', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-19 09:32:35'),
(9537, 0, '207.46.13.160', '66e257518169a1763f70ba4e3c7997de', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-19 09:32:30'),
(9531, 0, '177.248.209.186', '191e92c6ecc206345ebe60474b1a157d', '/es/', '', '2016-02-18 23:52:36'),
(9532, 0, '177.248.209.186', '191e92c6ecc206345ebe60474b1a157d', '/es/', '', '2016-02-18 23:55:17'),
(9533, 0, '207.46.13.90', '033c87783c363356d19fa39be228e74e', '/es/', '', '2016-02-19 01:19:31'),
(9534, 0, '66.249.69.45', 'b153ee79c3c5bf24876828c69d2dd89c', '/es/index.php/staff', '', '2016-02-19 04:59:00'),
(9535, 0, '66.249.69.29', '180c9298d27a8a8959a64c8630fd8fd2', '/es/index.php/contacto', '', '2016-02-19 04:59:52'),
(9536, 0, '207.46.13.160', '8a98a52d1ecf1a6d4728098c58435839', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-19 09:32:28'),
(9528, 0, '207.46.13.90', '5750284c014a56fd4588d31c15d8dacb', '/es/', '', '2016-02-18 21:54:56'),
(9529, 0, '157.55.39.15', 'a7578b8811e1ae7c66670a72360bef2b', '/es/index.php/la-firma/13-nosotros', '', '2016-02-18 22:25:36'),
(9530, 0, '66.249.69.29', 'b6746f4939ede4c8a0aba895e5c52fa7', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-18 22:55:11'),
(9527, 0, '66.249.69.37', '8cb3551c971adf7bbc487eef0497354b', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-18 20:47:57'),
(9526, 0, '187.190.26.24', '9be7d22c843b41d8cfc750b3624ac6e4', '/es/', '', '2016-02-18 16:27:30'),
(9525, 0, '207.46.13.90', 'cb61a92fa96be128a6bf5962b00272d4', '/es/index.php/la-firma/2-uncategorised', '', '2016-02-18 15:45:27'),
(9524, 0, '40.77.167.64', '255fa86ca16a400f9d8bdecb0abcb833', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-18 13:40:06'),
(9522, 0, '157.55.39.15', 'e244a362eeba0c56acfe4dbbc141d90c', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-18 09:42:34'),
(9523, 0, '66.249.69.45', '69fceffced90210888c3cee13165c190', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-18 10:00:56'),
(9521, 0, '66.249.69.37', '9beb1cb8636ce7803dd8d6e3262c0b51', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-18 06:06:38'),
(9516, 0, '66.249.69.123', 'b2650c54d0a36e5db015e3853d827af2', '/es/', '', '2016-02-17 14:17:58'),
(9517, 0, '187.190.26.24', '7d900f09045629436ca9e2e4517b8539', '/es/', '', '2016-02-17 15:26:35'),
(9518, 0, '66.249.69.37', '3a7d1ca389e25f164614fb74ba406088', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-18 04:29:43'),
(9519, 0, '66.249.69.29', 'c34903767c57f598842ee4b81ddb2f56', '/es/index.php/la-firma/vision', '', '2016-02-18 04:30:12'),
(9520, 0, '66.249.69.29', '0a0c6602707f05a92eb73d8fda653cd1', '/es/index.php/fundacion', '', '2016-02-18 05:04:06'),
(9514, 0, '66.249.69.37', '1d5e2250159d683cbcf16b1c1d567d43', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-17 09:01:03'),
(9515, 0, '207.46.13.125', '832e7d04f356c0526216f7b36cbec227', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-17 09:55:23'),
(9513, 0, '157.55.39.89', '33a157eb4505bd8a1452a46ec32bde41', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-17 05:29:24'),
(9438, 0, '159.203.75.59', 'e534392feb28a274b383fcc72a471105', '/es/index.php/contact', 'http://roman.com.mx/es/', '2016-02-11 13:28:08'),
(9439, 0, '177.248.38.231', '6c4560660a217ef05d0dc37d07dc200c', '/es/', '', '2016-02-11 16:14:57'),
(9440, 0, '157.55.39.113', '3bc95d05c609ba4c89c9236583b4d40d', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-11 20:38:14'),
(9441, 0, '207.46.13.1', '617d679aab9304fba14afa7dc14a09e2', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-12 10:48:31'),
(9442, 0, '157.55.39.10', '10d941f95352eb06a17d5fd48020402b', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-12 14:44:30'),
(9443, 0, '157.55.39.10', '5b6824c4f9aa924a3383cef0723031da', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-12 14:44:31'),
(9444, 0, '157.55.39.10', 'e95642ef28a6c77d346c41f6997ad9ff', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-12 14:44:32');
INSERT INTO `klhu1_rokuserstats` (`id`, `user_id`, `ip`, `session_id`, `page`, `referrer`, `timestamp`) VALUES
(9445, 0, '207.46.13.1', 'c79e4bf08fd39a91db8cdc2e24e1f80f', '/es/index.php/contacto', '', '2016-02-12 14:44:34'),
(9446, 0, '207.46.13.1', '7ff1bbd7610e78bbb7516106930b3b58', '/es/index.php/fundacion', '', '2016-02-12 14:44:34'),
(9447, 0, '207.46.13.1', 'f86c63e7bcd6bc9eba5ef776f128cbde', '/es/index.php/la-firma', '', '2016-02-12 14:44:34'),
(9448, 0, '207.46.13.1', 'a9f25a6a8b51dbddbf469ec920126744', '/es/index.php/la-firma/2-uncategorised/21-modelo-de-servicios', '', '2016-02-12 14:44:35'),
(9449, 0, '207.46.13.1', '144caab71f28cce868e740576a1d3ecb', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-12 14:44:35'),
(9450, 0, '207.46.13.1', 'c508e87718f96a2d03415f9d786a9d9a', '/es/', '', '2016-02-12 14:44:36'),
(9451, 0, '207.46.13.1', '14113a0cf21e6fcb72fffeb9863200a1', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-12 14:44:36'),
(9452, 0, '157.55.39.118', 'fa08a52a8e0ad0a5b01ade09bc1aa2d9', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-12 14:44:41'),
(9453, 0, '157.55.39.118', '4ccbc9a244da75fdabe20e21a5d88dc9', '/es/index.php/la-firma/8-content', '', '2016-02-12 14:44:42'),
(9454, 0, '157.55.39.118', '4fd694d0dd51f00a93cf1abbaa9440e1', '/es/index.php/staff', '', '2016-02-12 14:44:42'),
(9455, 0, '207.46.13.59', '2eb14d2239f10e497d369ddca6b7fef0', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-12 14:44:46'),
(9456, 0, '207.46.13.59', '7d561e305aed085712454ce3d07f2620', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-12 14:44:46'),
(9457, 0, '207.46.13.59', '172c59be792be00c609743110bf20521', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-12 14:44:46'),
(9458, 0, '207.46.13.59', 'd9bef28209d9ece0c4d153b06174b580', '/es/index.php/la-firma/12-areas', '', '2016-02-12 14:44:47'),
(9459, 0, '207.46.13.59', '46fe885fe366149edf0d7592a332b3dd', '/es/index.php/la-firma/vision', '', '2016-02-12 14:44:47'),
(9460, 0, '207.46.13.59', '298e1d0567671be2a7b2c4408f025a7c', '/es/index.php/noticias', '', '2016-02-12 14:44:48'),
(9461, 0, '207.46.13.59', 'd321e329c0af11a78517449bd513ff4e', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-12 14:44:48'),
(9462, 0, '201.141.239.1', 'bd4997de299f7f30adca2a84fa4df000', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-02-12 16:12:56'),
(9463, 0, '187.188.63.112', '55c4c913867a2dcc2d7d32fd3eef8466', '/es/', 'http://roman.com.mx/', '2016-02-12 16:43:27'),
(9464, 0, '187.188.63.112', '55c4c913867a2dcc2d7d32fd3eef8466', '/es/', 'http://roman.com.mx/', '2016-02-12 16:44:54'),
(9511, 0, '40.77.167.66', 'cbf4d4220a33c5347506df46d3b4569d', '/es/index.php/la-firma/2-uncategorised/21-modelo-de-servicios', '', '2016-02-17 04:51:47'),
(9512, 0, '157.55.39.89', '00969182033a8844b7a4bf7b824ca4fd', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-17 05:29:23'),
(9509, 0, '40.77.167.66', '97993ea15504ab69a2980dc32072f24d', '/es/index.php/la-firma', '', '2016-02-17 03:54:44'),
(9510, 0, '40.77.167.66', '3cf2d186be4ae0e4dc355c5b14504155', '/es/index.php/fundacion', '', '2016-02-17 03:54:44'),
(9508, 0, '40.77.167.66', '1f05c198fd86d852134c89b898094f8a', '/es/index.php/contacto', '', '2016-02-17 03:54:44'),
(9485, 0, '207.46.13.127', '172b40de54185bf22749db751d0bce2e', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-15 15:14:30'),
(9486, 0, '187.190.26.24', 'd49a43172633b17c417d30e690bdace9', '/es/', '', '2016-02-15 15:31:39'),
(9487, 0, '187.133.199.162', '7c2b4ec034ab6d914f986b51e22d9e6c', '/es/', 'http://www.roman.com.mx/', '2016-02-15 22:33:53'),
(9488, 0, '200.66.39.140', '29526165f743e5610501cb572b85d991', '/es/', 'http://www.roman.com.mx/', '2016-02-15 23:28:10'),
(9489, 0, '66.249.69.29', '3fbf1988112af8ab9284c278e139ef05', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-16 00:00:00'),
(9490, 0, '207.46.13.97', '4ac1fe207261a30ba6f716c72beea4c1', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-16 06:07:31'),
(9491, 0, '66.249.69.37', '602042fa0f3aeb18a594f6f72d392334', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-16 09:23:27'),
(9492, 0, '157.55.39.169', '0ea65cdc69fad626cb14784dde549cf8', '/es/index.php/la-firma/9-blog', '', '2016-02-16 13:01:22'),
(9493, 0, '66.249.69.37', '3edbe283ca1381ad961627e2629e2486', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-16 13:10:12'),
(9494, 0, '66.249.69.37', '6275f6b4c50016b3a50a2b74401de814', '/es/', '', '2016-02-16 14:46:37'),
(9495, 0, '187.190.26.24', 'f6f2d03c4177e473ac0fb50c5494fd0f', '/es/', '', '2016-02-16 15:15:40'),
(9496, 0, '40.77.167.66', 'd3ab93c53090d06c472d567603780104', '/es/index.php/la-firma/2-uncategorised/21-modelo-de-servicios', '', '2016-02-16 19:48:29'),
(9497, 0, '207.46.13.125', '4617550b159e28c30d889cc123d9ff49', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-17 03:36:30'),
(9506, 0, '40.77.167.66', 'eb888e2e8aaca5ddc7f2b7af92fc1898', '/es/', '', '2016-02-17 03:54:43'),
(9507, 0, '40.77.167.66', 'c2433d35a88f0121e3b590e8361afbb9', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-17 03:54:43'),
(9504, 0, '207.46.13.125', '0c62970833a1f160bafa3eb3e703cf3a', '/es/index.php/staff', '', '2016-02-17 03:54:34'),
(9505, 0, '207.46.13.125', 'd87ad760dc9d6e729c6f9bad7c3c2cf1', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-17 03:54:34'),
(9502, 0, '157.55.39.44', '33b4a1644a6ce1699e1011237e83c3e5', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-17 03:54:29'),
(9503, 0, '157.55.39.44', '0045501f3c7a63bf3473c09e8455ce5e', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-17 03:54:29'),
(9501, 0, '157.55.39.44', '3e42c263a114d2f72155fa6a929c5fb6', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-17 03:54:29'),
(9500, 0, '157.55.39.44', 'f669bc8ff3759a2accafaefeb0893a84', '/es/index.php/la-firma/12-areas', '', '2016-02-17 03:54:28'),
(9498, 0, '157.55.39.44', '22872cb93671bb042f8316c1c517fef4', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-17 03:54:28'),
(9499, 0, '157.55.39.44', '890f850ccbbb1dd6a31262259e40ba0f', '/es/index.php/noticias', '', '2016-02-17 03:54:28'),
(9484, 0, '157.55.39.44', 'e98251272350bb2a4d146e9bf0e53123', '/es/index.php/la-firma/8-content', '', '2016-02-14 23:05:10'),
(9483, 0, '40.77.167.89', 'cc9360f78b4eb4cc862589468e4f8b28', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-14 22:20:48'),
(9481, 0, '187.188.63.112', '59689080ccf7fc43f3ab32012ec36baf', '/es/', 'http://roman.com.mx/', '2016-02-14 18:40:30'),
(9482, 0, '66.249.69.37', '7b2763c83923e22bc1492d68b9b5bc3b', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-14 19:27:45'),
(9465, 0, '187.188.63.112', '55c4c913867a2dcc2d7d32fd3eef8466', '/es/', 'http://roman.com.mx/', '2016-02-12 16:44:55'),
(9466, 0, '157.55.39.251', 'd7b70fa0bfbf756b1fb2a6864e03614f', '/es/index.php/la-firma/vision', '', '2016-02-12 22:02:26'),
(9467, 0, '187.190.26.24', '1b840f55febe511e3213c6c3e3dcc453', '/es/', '', '2016-02-12 23:40:21'),
(9468, 0, '157.55.39.41', '8278d1592185ba174787d6d740353571', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-13 03:48:04'),
(9469, 0, '157.55.39.41', '2f8c09eb58ed1158b66a3135e079d938', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-13 04:59:30'),
(9470, 0, '157.55.39.190', 'b7bb499ac0a1b4f51b1845f1a7bbde78', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-13 07:53:40'),
(9471, 0, '66.249.69.37', 'b01bd814dd19fc3af8d588c66ae73867', '/es/', '', '2016-02-13 09:33:46'),
(9472, 0, '187.190.154.146', '9846ff48ddcc356c18804ca4bc17ae8d', '/es/', '', '2016-02-13 15:44:57'),
(9473, 0, '187.190.26.24', '202455272d7cc88938411f8ea4a3e685', '/es/', '', '2016-02-13 16:02:30'),
(9474, 0, '157.55.39.220', '276a28e0db8a80c69ff066b97ab012a8', '/es/index.php/la-firma/2-uncategorised', '', '2016-02-13 17:28:18'),
(9475, 0, '157.55.39.220', '0ac1d8a7ab28d9aafb07bd61eb9f210b', '/es/index.php/contacto', '', '2016-02-13 18:39:37'),
(9476, 0, '207.46.13.102', '39e1ac2f9a584e6b51e40a7047fccd40', '/es/index.php/la-firma/12-areas', '', '2016-02-14 09:50:08'),
(9477, 0, '187.252.25.173', '5f5ca5d8f6383868d813e6d14ef0067e', '/es/', 'http://www.roman.com.mx/', '2016-02-14 14:48:42'),
(9478, 0, '187.252.25.173', '5f5ca5d8f6383868d813e6d14ef0067e', '/es/', 'http://www.roman.com.mx/', '2016-02-14 14:49:10'),
(9479, 0, '40.77.167.19', '832e26b0a84916bd8e5b90f9ddd12188', '/es/index.php/contacto', '', '2016-02-14 16:24:54'),
(9480, 0, '40.77.167.12', '6d7d39e9e57076cd8f42411601d6ead9', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-14 16:38:19'),
(9422, 0, '207.46.13.152', '89577e5f194eb4c820e71fc22c50bcf3', '/es/index.php/noticias', '', '2016-02-09 22:57:35'),
(9423, 0, '40.77.167.41', '799e7b856f5e965750b9eddd9cffef5b', '/es/index.php/la-firma/vision', '', '2016-02-10 03:24:45'),
(9424, 0, '157.55.39.250', '766ae283566d0be7be008f03215ada1f', '/es/', '', '2016-02-10 04:36:45'),
(9425, 0, '207.46.13.116', 'ca2cd96e1c7e097a325d16e97433e80b', '/es/index.php/la-firma/13-nosotros', '', '2016-02-10 13:42:07'),
(9426, 0, '157.55.39.250', '5aafc304a8927469516f5e6bee5d5833', '/es/index.php/la-firma/12-areas/22-fiscal', '', '2016-02-10 13:42:12'),
(9427, 0, '157.55.39.218', 'b0bf82062e66e382c2cc3b414208c445', '/es/index.php/contact', '', '2016-02-10 14:28:54'),
(9428, 0, '177.248.38.231', 'ba416e901796fec2170e5536365dd8c6', '/es/', '', '2016-02-10 15:03:15'),
(9429, 0, '177.249.212.186', '191e92c6ecc206345ebe60474b1a157d', '/es/', '', '2016-02-10 17:07:43'),
(9430, 0, '177.248.38.231', 'ba416e901796fec2170e5536365dd8c6', '/es/', '', '2016-02-10 18:34:00'),
(9431, 0, '207.46.13.49', 'a55857841ac964ab5558d4ee16b6f57b', '/es/index.php/noticias', '', '2016-02-10 19:35:43'),
(9432, 0, '66.249.69.12', 'd3fa7c31495a2d2c834b9dff7cdcaaf2', '/es/', '', '2016-02-10 21:01:48'),
(9370, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/fundacion', 'http://www.roman.com.mx/es/index.php/contact', '2016-02-08 21:34:48'),
(9369, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/contact', 'http://www.roman.com.mx/es/', '2016-02-08 21:34:39'),
(9368, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/', 'http://www.roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-02-08 21:32:16'),
(9018, 0, '62.210.78.180', 'e2ca44d14169e211fdeadd3d8ebb1b36', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-25 04:01:28'),
(9019, 0, '62.210.78.180', 'e2ca44d14169e211fdeadd3d8ebb1b36', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-25 04:01:29'),
(9437, 0, '159.203.75.59', '9e4fd6c52c57c041c936632d0ce5e48f', '/es/', 'http://roman.com.mx/', '2016-02-11 13:28:07'),
(9436, 0, '157.55.39.113', '00d9618756e156a4e204b690f1d91e0b', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-11 12:32:03'),
(9433, 0, '207.46.13.1', 'bdbfef493645b1b7ddc5aa8d44b2eb38', '/es/', '', '2016-02-11 01:50:19'),
(9434, 0, '201.141.60.76', '44adacb1fba20475aadeb88ba992fdad', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', 'https://www.google.com.mx/', '2016-02-11 05:48:30'),
(9435, 0, '207.46.13.138', '871a0372d62f828b94fc456b2f612b5a', '/es/index.php/la-firma/2-uncategorised/20-nuestra-firma', '', '2016-02-11 08:16:00'),
(9421, 0, '207.46.13.152', '23707f49b10ad708bb63aba398cba188', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-09 22:57:34'),
(9404, 0, '207.46.13.133', '5e7e1ebbd4dc5e2bb6afd8cf80c1c977', '/es/index.php/staff', '', '2016-02-09 13:24:31'),
(9419, 0, '207.46.13.152', '46b6b0b52b1f722d1a251ffde6d24f63', '/es/index.php/la-firma/vision', '', '2016-02-09 22:57:32'),
(9420, 0, '207.46.13.152', '9b394cfc793243c958ccc2b92a6c103f', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-09 22:57:34'),
(9418, 0, '207.46.13.152', 'a419fb41b1c429d3db090d41ad743824', '/es/index.php/la-firma/12-areas', '', '2016-02-09 22:57:31'),
(9417, 0, '207.46.13.133', 'c09a3c129a323ba608eae917899d8d48', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-09 22:51:46'),
(9416, 0, '157.55.39.250', '2cf4cb9de9d60b8d91180533ea5fff8d', '/es/index.php/contacto', '', '2016-02-09 22:51:31'),
(9415, 0, '157.55.39.250', '1aed980863dc2281de20c1d3324ea534', '/es/', '', '2016-02-09 22:51:31'),
(9413, 0, '157.55.39.49', 'ebc5d5ae015b796f7bff748f78d54d2a', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-09 22:51:25'),
(9414, 0, '157.55.39.250', '9f873e95ee39ddca3152dcad9d28dc1d', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-09 22:51:30'),
(9412, 0, '157.55.39.49', 'fc1e84a8c90ac4929834209e1e8e7f48', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-09 22:51:25'),
(9411, 0, '201.116.102.210', 'dda0a1dd0c4738af32c0442c2ae6db37', '/es/index.php/contact', 'http://www.roman.com.mx/es/index.php/component/content/?view=featured', '2016-02-09 22:33:55'),
(9410, 0, '201.116.102.210', 'dda0a1dd0c4738af32c0442c2ae6db37', '/es/index.php/component/content/?view=featured', 'https://www.google.com.mx/', '2016-02-09 22:32:45'),
(9408, 0, '157.55.39.250', '3c20053099b8f10595e642a261f44e3b', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-09 20:51:05'),
(9409, 0, '201.116.102.210', '8c530618378bee7758cf3516741e6fde', '/es/', 'http://www.roman.com.mx/', '2016-02-09 22:23:37'),
(9407, 0, '187.189.169.161', 'e3ff8f4205fa3e7492f27b14fc88ef82', '/es/', 'http://roman.com.mx/', '2016-02-09 17:49:43'),
(9406, 0, '66.249.69.4', 'beb04ca9c81c7e544da49b8ddab5f9a5', '/es/index.php/noticias', '', '2016-02-09 17:07:37'),
(9405, 0, '177.248.38.231', '2236544f911066bb17950f58df9a2036', '/es/', '', '2016-02-09 16:02:50'),
(9403, 0, '157.55.39.44', 'a7f86858fe690c883c3a657174b0e53d', '/es/index.php/la-firma', '', '2016-02-09 13:24:30'),
(9402, 0, '157.55.39.44', 'd8a82a2a04e8f65da7904aac2e116eaf', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-09 13:24:29'),
(9401, 0, '157.55.39.44', '8c3d7859e54d6c33db0501a447a7a1f4', '/es/index.php/fundacion', '', '2016-02-09 13:24:29'),
(9400, 0, '157.55.39.49', '6cef949830a51173b4b5c3364cdc5c77', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-09 13:24:13'),
(9399, 0, '157.55.39.202', '5b241613353efcc55dde760a98da6fa7', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-09 13:24:12'),
(9398, 0, '157.55.39.202', '8b62aa14133b35e76d7a5706665f7e92', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-09 13:24:11'),
(8969, 0, '62.210.146.91', '6ab25ef1387bc2d7677484fdb06907a6', '/es/', 'http://roman.com.mx/en/', '2016-01-24 20:28:41'),
(8970, 0, '62.210.146.91', '49d7aaacb4b89fa690fe701cec3c2171', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-24 20:28:53'),
(8971, 0, '62.210.146.91', '49d7aaacb4b89fa690fe701cec3c2171', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-24 20:28:54'),
(8972, 0, '62.210.146.91', '49d7aaacb4b89fa690fe701cec3c2171', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-24 20:28:54'),
(8973, 0, '62.210.78.178', '2728f53ddca72690c14e48d695aa8bc5', '/es/', 'http://www.roman.com.mx/', '2016-01-24 21:24:15'),
(8974, 0, '62.210.78.178', 'd04abc9b1a81450a903d62a43d725f88', '/es/', 'http://roman.com.mx/', '2016-01-24 21:24:15'),
(8975, 0, '62.210.78.178', 'cdbe16957c62832a839e96b5c509d9ca', '/es/', 'http://roman.com.mx/en/', '2016-01-24 21:24:15'),
(8976, 0, '62.210.78.178', 'a2daa8323dd2a4c3e1b3c662e8c36f81', '/es/', 'http://roman.com.mx/en/', '2016-01-24 21:24:16'),
(8977, 0, '62.210.78.178', '2728f53ddca72690c14e48d695aa8bc5', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-24 21:24:28'),
(8978, 0, '62.210.78.178', 'd04abc9b1a81450a903d62a43d725f88', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-24 21:24:28'),
(8979, 0, '62.210.78.178', '2728f53ddca72690c14e48d695aa8bc5', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-24 21:24:28'),
(8980, 0, '62.210.78.178', 'd04abc9b1a81450a903d62a43d725f88', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-24 21:24:29'),
(8981, 0, '62.210.78.178', '2728f53ddca72690c14e48d695aa8bc5', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-24 21:24:29'),
(8982, 0, '62.210.78.178', 'd04abc9b1a81450a903d62a43d725f88', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-24 21:24:29'),
(8983, 0, '62.210.78.178', 'd04abc9b1a81450a903d62a43d725f88', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-24 21:24:30'),
(8984, 0, '62.210.78.180', 'b29da875038f4997aaa8cec1a25d7de2', '/es/', 'http://www.roman.com.mx/', '2016-01-24 21:32:00'),
(8985, 0, '62.210.78.180', 'd617a0f359e8e0b7b66907fd2d04c337', '/es/', 'http://roman.com.mx/en/', '2016-01-24 21:32:01'),
(8986, 0, '62.210.78.180', 'b29da875038f4997aaa8cec1a25d7de2', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-24 21:32:14'),
(8987, 0, '62.210.78.180', 'b29da875038f4997aaa8cec1a25d7de2', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-24 21:32:15'),
(8988, 0, '62.210.78.180', 'b29da875038f4997aaa8cec1a25d7de2', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-24 21:32:15'),
(8989, 0, '207.46.13.180', '1fec68ead69287f2ae4357d5df6baf38', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-01-24 21:41:05'),
(8990, 0, '66.249.69.45', '16e795a36788c9e7d79121b25f128ea5', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-25 01:38:38'),
(8991, 0, '207.46.13.155', 'd257a4fadd96faeef11414e33ebeb53e', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-25 02:29:32'),
(9397, 0, '207.46.13.133', '0f6e214c90a1b6d9ec16c6c047a57e45', '/es/index.php/staff', '', '2016-02-09 10:12:40'),
(9396, 0, '157.55.39.49', '92686c0fc4a9a2fd23e8fdf9768f21bb', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-09 10:03:22'),
(9395, 0, '157.55.39.44', 'a14400e6fedb085c487be37b3cd18ab6', '/es/index.php/la-firma', '', '2016-02-09 10:03:17'),
(9394, 0, '157.55.39.44', '1c489bcb9a2d3a5fad8bb4802d8ce5c4', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-09 10:03:16'),
(9393, 0, '157.55.39.44', 'fbbbc9f9661cd698ba78c65026b0bc26', '/es/index.php/fundacion', '', '2016-02-09 10:03:16'),
(9392, 0, '157.55.39.202', '5263b2ead1495ca9e7986ac0dd00bb0a', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-09 10:03:09'),
(9391, 0, '157.55.39.202', '762c5fef47ff86453c60bcfd0886ec86', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-09 10:03:08'),
(9390, 0, '207.46.13.133', '63cc3a623b453799502c8e24a15d15bb', '/es/index.php/staff', '', '2016-02-09 02:00:25'),
(9389, 0, '157.55.39.44', 'ac36d5d2dfd5a28ef3f447f3e3d29dc5', '/es/index.php/la-firma', '', '2016-02-09 01:59:48'),
(9388, 0, '157.55.39.44', '17d638d5343cb747b8ed62424de0c1fe', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-09 01:59:47'),
(9387, 0, '157.55.39.44', 'ca4d5dfc15267e555c10941334fc0ca2', '/es/index.php/fundacion', '', '2016-02-09 01:59:47'),
(9386, 0, '157.55.39.202', '700c40ef6432f71bb786110fce7eb807', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-09 01:59:36'),
(9385, 0, '157.55.39.202', '027593fe7206f84a3e6f7c79dad2c721', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-09 01:59:36'),
(9384, 0, '157.55.39.49', 'fa4a9da7e7f19df7320e232f0fcd80eb', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-09 01:59:34'),
(9383, 0, '66.249.69.123', '17af53fcccf22a4f36e785daa9d2ee31', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-09 01:35:53'),
(9382, 0, '201.157.70.141', 'eb30c804f94715418ccd90a43656949f', '/es/', 'http://www.roman.com.mx/es/index.php/la-firma/vision', '2016-02-09 00:30:03'),
(9381, 0, '201.157.70.141', 'eb30c804f94715418ccd90a43656949f', '/es/index.php/la-firma/vision', 'http://www.roman.com.mx/es/index.php/contacto', '2016-02-09 00:15:25'),
(9380, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/contacto', 'http://www.roman.com.mx/es/', '2016-02-08 23:41:18'),
(9379, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/', 'https://www.google.com.mx/', '2016-02-08 23:36:54'),
(9378, 0, '189.206.162.5', '979b9d7002e3dfc3b9673f4716100099', '/es/index.php/fundacion', 'http://roman.com.mx/es/index.php/contact', '2016-02-08 22:24:52'),
(9377, 0, '189.206.162.5', '979b9d7002e3dfc3b9673f4716100099', '/es/index.php/contact', 'http://roman.com.mx/es/index.php/staff', '2016-02-08 22:23:15'),
(9376, 0, '189.206.162.5', '979b9d7002e3dfc3b9673f4716100099', '/es/index.php/staff', 'http://roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-02-08 22:23:00'),
(9375, 0, '189.206.162.5', '979b9d7002e3dfc3b9673f4716100099', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-02-08 22:22:53'),
(9374, 0, '189.206.162.5', '979b9d7002e3dfc3b9673f4716100099', '/es/', 'http://roman.com.mx/es/index.php/contact', '2016-02-08 22:22:43'),
(9373, 0, '189.206.162.5', '979b9d7002e3dfc3b9673f4716100099', '/es/index.php/contact', 'http://roman.com.mx/es/', '2016-02-08 22:20:31'),
(9372, 0, '189.206.162.5', '979b9d7002e3dfc3b9673f4716100099', '/es/', 'http://www.roman.com.mx/', '2016-02-08 22:20:16'),
(9371, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/staff', 'http://www.roman.com.mx/es/index.php/fundacion', '2016-02-08 21:35:36'),
(9147, 0, '40.77.167.17', '7e131994b0a1786394317bd59d89e7aa', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-28 01:56:53'),
(9146, 0, '66.249.69.4', '25b39e717b753e78e236fbf6258b33f5', '/es/index.php/staff', '', '2016-01-28 01:37:19'),
(9144, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-28 00:50:15'),
(9145, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-28 00:56:12'),
(9143, 0, '40.77.167.66', 'df95d30a0d6e5a58cf41f01458a1d3a2', '/es/index.php/contacto', '', '2016-01-27 19:05:33'),
(9142, 0, '40.77.167.66', '100a50c4c9d0d4c81493422f3c5db580', '/es/', '', '2016-01-27 19:05:32'),
(9141, 0, '40.77.167.39', '8f0bd3ca273f835407501850467c3323', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-01-27 19:00:34'),
(9140, 0, '40.77.167.17', '3755d2bdb54916083a7230b675bb2729', '/es/index.php/la-firma/12-areas', '', '2016-01-27 19:00:23'),
(9139, 0, '40.77.167.17', '3b327d0d5bc16dec7279c41556ce4665', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-27 19:00:22'),
(9138, 0, '40.77.167.17', '99f10a9f0fe80cdf8e1aa69767d132d1', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-27 19:00:22'),
(9137, 0, '40.77.167.17', 'e160296536210d605e4fd9ad3f1b934e', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-27 19:00:22'),
(9136, 0, '40.77.167.0', '56cfd5e65983360061dfee5dadbad643', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-01-27 18:57:19'),
(9135, 0, '201.163.238.244', '854bc1e7ae4596a22391c20358989b33', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-01-27 15:32:55'),
(9134, 0, '40.77.167.17', '81bcf52d01c5850ab88bc35385a672bf', '/es/index.php/staff', '', '2016-01-27 15:15:12'),
(9133, 0, '40.77.167.17', 'f390e3cd9e05dc8e269222e02102ef01', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-27 15:15:10'),
(9132, 0, '40.77.167.17', 'f5d98c1fe13f73e51ab2747533efc3a7', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-27 15:15:10'),
(9130, 0, '157.55.39.179', '6a9eef82cd89335bbae99efb7ebd0395', '/es/index.php/fundacion', '', '2016-01-27 15:15:06'),
(9131, 0, '157.55.39.179', '10a71799a9311b86ffdfcde0fb12feff', '/es/index.php/la-firma', '', '2016-01-27 15:15:07'),
(9129, 0, '157.55.39.179', 'fb912a37bc880513be69ea40f04f64b0', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-27 15:15:06'),
(9128, 0, '177.248.38.231', 'acf22f10a9c3576eefc94f1d91a22a21', '/es/', '', '2016-01-27 15:05:58'),
(9126, 0, '40.77.167.85', '962cf57b5fd1d392e94a57ed3dbabeab', '/es/index.php/la-firma/9-blog', '', '2016-01-27 10:21:53'),
(9127, 0, '66.249.69.29', '0516ece766d85ba987e19c5bab0f129f', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-27 13:15:10'),
(9125, 0, '62.210.83.58', '3f480bc9fa11e3c17ce349a32545bd00', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-27 06:01:37'),
(9124, 0, '62.210.83.58', '3f480bc9fa11e3c17ce349a32545bd00', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-27 06:01:36'),
(9123, 0, '62.210.83.58', '3f480bc9fa11e3c17ce349a32545bd00', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-27 06:01:36'),
(9122, 0, '62.210.83.58', '3f480bc9fa11e3c17ce349a32545bd00', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-27 06:01:35'),
(9121, 0, '62.210.83.58', '217a4b2747775f3653b20db14b4da789', '/es/', 'http://roman.com.mx/en/', '2016-01-27 06:01:22'),
(9120, 0, '62.210.83.58', '3f480bc9fa11e3c17ce349a32545bd00', '/es/', 'http://roman.com.mx/', '2016-01-27 06:01:21'),
(9119, 0, '207.46.13.126', 'f97b76d41b7ac4bb21669b30134ebcd3', '/es/index.php/la-firma/9-blog', '', '2016-01-27 03:50:33'),
(9118, 0, '201.132.57.16', 'b0cd746037e11feec7beb47f149d0749', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-01-27 02:47:58'),
(9117, 0, '62.210.78.178', '3393c5748641d451988ca9de3e6eddfb', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-27 02:05:45'),
(9116, 0, '62.210.78.178', '3393c5748641d451988ca9de3e6eddfb', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-27 02:05:44'),
(9115, 0, '62.210.78.178', '3393c5748641d451988ca9de3e6eddfb', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-27 02:05:44'),
(9114, 0, '62.210.78.178', '3393c5748641d451988ca9de3e6eddfb', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-27 02:05:43'),
(9113, 0, '62.210.78.178', 'f8924ee854935692574d0c872cddcba6', '/es/', 'http://roman.com.mx/en/', '2016-01-27 02:05:30'),
(9112, 0, '62.210.78.178', '3393c5748641d451988ca9de3e6eddfb', '/es/', 'http://roman.com.mx/', '2016-01-27 02:05:29'),
(9111, 0, '66.249.69.4', 'b048c5500505a90e960698c6a2ff397d', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-27 00:30:10'),
(9110, 0, '66.249.69.29', '66d8a02e768bd65b1e7b8f6aedbacc41', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-01-26 23:44:08'),
(9109, 0, '66.249.69.29', 'c394a6154c78b8dd9a0ca89a9adc652a', '/es/index.php/staff', '', '2016-01-26 23:43:50'),
(9108, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-26 22:29:11'),
(9107, 0, '66.249.69.123', 'cc95be8f588ad8c7689a8a4db2196670', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-01-26 20:58:05'),
(9106, 0, '66.249.69.37', '7fcfc583c68d0d7ee3ec2750ee5476f5', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-26 19:34:58'),
(9105, 0, '62.210.78.180', '50351e41ffe6aa2141b746cf9fbefcd6', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-26 18:53:40'),
(9104, 0, '62.210.78.180', '50351e41ffe6aa2141b746cf9fbefcd6', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-26 18:53:39'),
(9103, 0, '62.210.78.180', '50351e41ffe6aa2141b746cf9fbefcd6', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-26 18:53:39'),
(9102, 0, '62.210.78.180', '50351e41ffe6aa2141b746cf9fbefcd6', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-26 18:53:38'),
(9100, 0, '62.210.78.180', '50351e41ffe6aa2141b746cf9fbefcd6', '/es/', 'http://roman.com.mx/', '2016-01-26 18:53:24'),
(9101, 0, '62.210.78.180', '64c047537018831e0231dc32482937b5', '/es/', 'http://roman.com.mx/en/', '2016-01-26 18:53:25'),
(9099, 0, '157.55.39.178', '2985936b7f2708f09d22991b3ca08a1e', '/es/index.php/la-firma/2-uncategorised/21-modelo-de-servicios', '', '2016-01-26 18:15:46'),
(9098, 0, '207.46.13.126', '504d416a09ff41da0e96b4915c01c614', '/es/index.php/la-firma/9-blog', '', '2016-01-26 17:31:28'),
(9097, 0, '66.249.69.37', 'd3290727807af40b2fe0ac41992f934a', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-01-26 17:06:30'),
(9096, 0, '62.210.78.170', 'f625569d3c5df93a27a20d2a2fcbc10a', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-26 16:38:53'),
(9095, 0, '62.210.78.170', 'f625569d3c5df93a27a20d2a2fcbc10a', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-26 16:38:52'),
(9094, 0, '62.210.78.170', 'b6fe3c183900be2558608f273085890e', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-26 16:38:52'),
(9093, 0, '62.210.78.170', 'f625569d3c5df93a27a20d2a2fcbc10a', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-26 16:38:52'),
(9092, 0, '62.210.78.170', 'b6fe3c183900be2558608f273085890e', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-26 16:38:52'),
(9091, 0, '62.210.78.170', 'b6fe3c183900be2558608f273085890e', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-26 16:38:51'),
(9090, 0, '62.210.78.170', 'f625569d3c5df93a27a20d2a2fcbc10a', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-26 16:38:51'),
(9089, 0, '62.210.78.170', '4473dca0f7e195e42c77207326f93348', '/es/', 'http://roman.com.mx/en/', '2016-01-26 16:38:38'),
(9088, 0, '62.210.78.170', 'e8c4b9a23efc14a614b3cf184d2f30f5', '/es/', 'http://roman.com.mx/en/', '2016-01-26 16:38:38'),
(9087, 0, '62.210.78.170', 'b6fe3c183900be2558608f273085890e', '/es/', 'http://www.roman.com.mx/', '2016-01-26 16:38:37'),
(9086, 0, '62.210.78.170', 'f625569d3c5df93a27a20d2a2fcbc10a', '/es/', 'http://roman.com.mx/', '2016-01-26 16:38:37'),
(9085, 0, '177.248.38.231', '8d2bbc8a2819061849b4aad3abb41b16', '/es/', '', '2016-01-26 16:09:35'),
(9084, 0, '189.249.158.63', '016bd04f20670cb5e638b631498dc619', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://es.search.yahoo.com/', '2016-01-26 14:33:28'),
(9083, 0, '66.249.69.29', 'c27456c3ecaa0e9c6c036787fa21853e', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-26 13:14:52'),
(9082, 0, '66.249.69.45', 'ca03cd3a269782af0ae80d3c6b298a96', '/es/index.php/la-firma/nuestra-firma', '', '2016-01-26 12:06:01'),
(9081, 0, '62.210.78.180', '4defe2e4e490d79280a04f3a824d55be', '/es/', 'http://www.roman.com.mx/', '2016-01-26 11:57:57'),
(9080, 0, '66.249.69.37', '576e5b9b8e07f034c7c4fabd2d57cbbb', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-26 11:31:38'),
(9079, 0, '66.249.69.45', 'e9df19721a7162754dfa5ff879031536', '/es/index.php/contacto', '', '2016-01-26 11:09:27'),
(9077, 0, '66.249.69.45', 'e456a5a8fb27b59545d2a85950a71e97', '/es/index.php/staff', '', '2016-01-26 10:36:22'),
(9078, 0, '66.249.69.123', '72eb56c963aee67bc4962254ab80e836', '/es/index.php/la-firma/nuestra-firma', '', '2016-01-26 10:56:33'),
(9076, 0, '62.210.83.58', 'f3bca0469ab90540e61455a7d1176517', '/es/', 'http://www.roman.com.mx/', '2016-01-26 08:24:18'),
(9075, 0, '62.210.146.91', '8ee75edd61fdf881e7873d574c9fc4b5', '/es/', 'http://www.roman.com.mx/', '2016-01-26 06:56:18'),
(9074, 0, '62.210.146.91', '3ce35e91da13ce7b6193953b05a3c9c0', '/es/', 'http://roman.com.mx/', '2016-01-26 06:56:18'),
(9073, 0, '62.210.78.178', 'f9100f7304b74f2fd8c81f0355a06e75', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-26 02:39:04'),
(9072, 0, '62.210.78.178', 'f9100f7304b74f2fd8c81f0355a06e75', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-26 02:39:04'),
(9071, 0, '62.210.78.178', 'f9100f7304b74f2fd8c81f0355a06e75', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-26 02:39:03'),
(9070, 0, '62.210.78.178', 'a81dceb4c6bf5e3d8e2d15296dc02249', '/es/', 'http://roman.com.mx/en/', '2016-01-26 02:38:50'),
(9069, 0, '62.210.78.178', 'f9100f7304b74f2fd8c81f0355a06e75', '/es/', 'http://www.roman.com.mx/', '2016-01-26 02:38:50'),
(9068, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-25 22:19:19'),
(9067, 0, '62.210.83.58', 'eb01ae80460c73f3fc88796902e3c88c', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-25 22:02:58'),
(9066, 0, '62.210.83.58', 'eb01ae80460c73f3fc88796902e3c88c', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-25 22:02:58'),
(9065, 0, '62.210.83.58', 'eb01ae80460c73f3fc88796902e3c88c', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-25 22:02:57'),
(9064, 0, '62.210.83.58', 'eb01ae80460c73f3fc88796902e3c88c', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-25 22:02:56'),
(9063, 0, '62.210.83.58', '11e11cf69e0c9c9a5fee7873349f5052', '/es/', 'http://roman.com.mx/en/', '2016-01-25 22:02:44'),
(9062, 0, '62.210.83.58', 'eb01ae80460c73f3fc88796902e3c88c', '/es/', 'http://roman.com.mx/', '2016-01-25 22:02:42'),
(9060, 0, '187.189.248.76', '6d7d55857f64e6eeed7947e63a72cebb', '/es/', '', '2016-01-25 18:19:34'),
(9061, 0, '66.249.69.123', '33a7e01948c7b33a946b92f482108d27', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-25 20:13:13'),
(9059, 0, '62.210.78.178', 'bfb96b9840b941c444e647cb9a95c3fd', '/es/', 'http://www.roman.com.mx/en/', '2016-01-25 18:08:01'),
(9058, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php', 'http://roman.com.mx/es/', '2016-01-25 18:07:59'),
(9057, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php?format=feed&type=atom', 'http://roman.com.mx/es/', '2016-01-25 18:07:59'),
(9056, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php?format=feed&type=rss', 'http://roman.com.mx/es/', '2016-01-25 18:07:58'),
(9055, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/contacto', 'http://roman.com.mx/es/', '2016-01-25 18:07:57'),
(9054, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/contact', 'http://roman.com.mx/es/', '2016-01-25 18:07:56'),
(9053, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/fundacion', 'http://roman.com.mx/es/', '2016-01-25 18:07:56'),
(9052, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/noticias', 'http://roman.com.mx/es/', '2016-01-25 18:07:55'),
(9051, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/staff', 'http://roman.com.mx/es/', '2016-01-25 18:07:55'),
(9050, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/2013-10-02-14-45-01/due-dilligence', 'http://roman.com.mx/es/', '2016-01-25 18:07:54'),
(9049, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/2013-10-02-14-45-01/legal', 'http://roman.com.mx/es/', '2016-01-25 18:07:53'),
(9048, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', 'http://roman.com.mx/es/', '2016-01-25 18:07:53'),
(9047, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', 'http://roman.com.mx/es/', '2016-01-25 18:07:52'),
(9046, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'http://roman.com.mx/es/', '2016-01-25 18:07:52'),
(9045, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', 'http://roman.com.mx/es/', '2016-01-25 18:07:51'),
(9044, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', 'http://roman.com.mx/es/', '2016-01-25 18:07:50'),
(9043, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-25 18:07:50'),
(9042, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-25 18:07:49'),
(9041, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-25 18:07:49'),
(9040, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-25 18:07:48'),
(9039, 0, '62.210.78.178', '020b285f1374e86bfa43964be7a9d2e2', '/es/', 'http://roman.com.mx/', '2016-01-25 18:07:46'),
(9038, 0, '187.189.248.76', '7bc8128a3086bef9ca547b68fc0ec370', '/es/', 'http://roman.com.mx/', '2016-01-25 17:25:27'),
(9037, 0, '65.55.218.170', '59f6ff1f58ea98224a3e24da6453abad', '/es/', '', '2016-01-25 17:01:04'),
(9036, 0, '177.248.38.231', '86d72311edabcb9446912dcbd5bf1ee3', '/es/', '', '2016-01-25 16:07:08'),
(9034, 0, '207.46.13.180', 'c6e76188b2cebb9578844c06c809ff58', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-01-25 13:17:18'),
(9035, 0, '65.55.217.53', '81cd10a005e983de10653280037ea000', '/es/', '', '2016-01-25 14:04:45'),
(9033, 0, '66.249.69.45', '44cb64778ec757043be531fffe01876d', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-25 06:54:43'),
(9032, 0, '40.77.167.4', '242e6c1b93012b0cd5a1e2bb6f945a79', '/es/index.php/staff', '', '2016-01-25 06:22:54'),
(9031, 0, '157.55.39.142', '0602868ca966702d7a3a82b5d26ffb22', '/es/index.php/la-firma', '', '2016-01-25 06:22:46'),
(9030, 0, '157.55.39.142', '10ac12a179d067355e7d6f6811752ff9', '/es/index.php/fundacion', '', '2016-01-25 06:22:46'),
(9027, 0, '207.46.13.53', 'ef8760b14d29d1d64747c07726e159de', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-25 06:22:42'),
(9028, 0, '207.46.13.53', 'bc00a8b726a7f0ca8441c8a4e7ea881f', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-25 06:22:44'),
(9029, 0, '157.55.39.142', 'aca64b4c98a97ca5e2238507cd88a773', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-25 06:22:45'),
(9026, 0, '201.165.131.55', '7e91b631dacddfec658031cd0e95c457', '/es/index.php/noticias', 'http://www.roman.com.mx/es/index.php/staff', '2016-01-25 05:12:00'),
(9025, 0, '201.165.131.55', '7e91b631dacddfec658031cd0e95c457', '/es/index.php/staff', 'http://www.roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-01-25 05:11:47'),
(9024, 0, '201.165.131.55', '7e91b631dacddfec658031cd0e95c457', '/es/index.php/la-firma/modelo-de-servicios', 'http://www.roman.com.mx/es/index.php/la-firma/vision', '2016-01-25 05:11:38'),
(9023, 0, '201.165.131.55', '7e91b631dacddfec658031cd0e95c457', '/es/index.php/la-firma/vision', 'http://www.roman.com.mx/es/', '2016-01-25 05:11:33'),
(9022, 0, '201.165.131.55', '7e91b631dacddfec658031cd0e95c457', '/es/', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '2016-01-25 05:11:14'),
(9020, 0, '207.46.13.155', 'b81288e9664f668f8e5cb9fd56abeae5', '/es/index.php/la-firma/12-areas', '', '2016-01-25 04:19:57'),
(9021, 0, '201.165.131.55', '7e91b631dacddfec658031cd0e95c457', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', 'https://www.google.com.mx/', '2016-01-25 05:11:00'),
(9367, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/la-firma/modelo-de-servicios', 'http://www.roman.com.mx/es/index.php/la-firma/vision', '2016-02-08 21:32:03'),
(9366, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/la-firma/vision', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '2016-02-08 21:31:49'),
(9015, 0, '62.210.78.180', '45a9ddf06235a997eeb0c7824213ca65', '/es/', 'http://roman.com.mx/en/', '2016-01-25 04:01:14'),
(9017, 0, '62.210.78.180', 'e2ca44d14169e211fdeadd3d8ebb1b36', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-25 04:01:27'),
(9016, 0, '62.210.78.180', 'e2ca44d14169e211fdeadd3d8ebb1b36', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-25 04:01:27'),
(9014, 0, '62.210.78.180', 'e2ca44d14169e211fdeadd3d8ebb1b36', '/es/', 'http://roman.com.mx/', '2016-01-25 04:01:13'),
(9012, 0, '62.210.78.170', '8cf2395db5c5aa7721933e9ae6e52b8f', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-25 03:51:27'),
(9013, 0, '62.210.78.170', '8cf2395db5c5aa7721933e9ae6e52b8f', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-25 03:51:27'),
(9011, 0, '62.210.78.170', '8cf2395db5c5aa7721933e9ae6e52b8f', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-25 03:51:26'),
(9010, 0, '62.210.78.170', '8cf2395db5c5aa7721933e9ae6e52b8f', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-25 03:51:25'),
(9008, 0, '62.210.78.170', '18ac179a27a858345350cce5e1d6d918', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-25 03:51:25'),
(9009, 0, '62.210.78.170', '18ac179a27a858345350cce5e1d6d918', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-25 03:51:25'),
(9006, 0, '62.210.78.170', 'b3f72409c4f817cafef8aa7e5c69a6ce', '/es/', 'http://roman.com.mx/en/', '2016-01-25 03:51:13'),
(9007, 0, '62.210.78.170', '18ac179a27a858345350cce5e1d6d918', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-25 03:51:24'),
(9005, 0, '62.210.78.170', '8cf2395db5c5aa7721933e9ae6e52b8f', '/es/', 'http://roman.com.mx/', '2016-01-25 03:51:12'),
(9004, 0, '62.210.78.170', 'b969b1b1247bae702391230e487796a7', '/es/', 'http://roman.com.mx/en/', '2016-01-25 03:51:12'),
(9003, 0, '62.210.78.170', '18ac179a27a858345350cce5e1d6d918', '/es/', 'http://www.roman.com.mx/', '2016-01-25 03:51:11'),
(9002, 0, '62.210.83.58', '6d03c2779e69026763b634f5ea7e37ae', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-25 03:01:18'),
(8998, 0, '62.210.83.58', '6d03c2779e69026763b634f5ea7e37ae', '/es/', 'http://www.roman.com.mx/', '2016-01-25 03:01:04'),
(9001, 0, '62.210.83.58', '6d03c2779e69026763b634f5ea7e37ae', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-25 03:01:18'),
(9000, 0, '62.210.83.58', '6d03c2779e69026763b634f5ea7e37ae', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-25 03:01:17'),
(8999, 0, '62.210.83.58', '9e08eab3a23c6d77511de9aff970bfc6', '/es/', 'http://roman.com.mx/en/', '2016-01-25 03:01:04'),
(8997, 0, '62.210.146.91', '4b69fa4f34341c394f38fa134a4f6a26', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-25 02:46:10'),
(8996, 0, '62.210.146.91', '4b69fa4f34341c394f38fa134a4f6a26', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-25 02:46:10'),
(8992, 0, '62.210.146.91', '4b69fa4f34341c394f38fa134a4f6a26', '/es/', 'http://roman.com.mx/', '2016-01-25 02:45:55'),
(8994, 0, '62.210.146.91', '4b69fa4f34341c394f38fa134a4f6a26', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-25 02:46:08'),
(8995, 0, '62.210.146.91', '4b69fa4f34341c394f38fa134a4f6a26', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-25 02:46:09'),
(8993, 0, '62.210.146.91', 'c387cec41903245fa2d2483182af0a13', '/es/', 'http://roman.com.mx/en/', '2016-01-25 02:45:56'),
(8967, 0, '62.210.83.58', 'bf9d29563dc0bd99907266ed85970b44', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-24 20:06:20'),
(8968, 0, '62.210.146.91', '49d7aaacb4b89fa690fe701cec3c2171', '/es/', 'http://www.roman.com.mx/', '2016-01-24 20:28:40'),
(8964, 0, '62.210.83.58', 'bf9d29563dc0bd99907266ed85970b44', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-24 20:06:18'),
(8965, 0, '62.210.83.58', 'bf9d29563dc0bd99907266ed85970b44', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-24 20:06:19'),
(8966, 0, '62.210.83.58', 'bf9d29563dc0bd99907266ed85970b44', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-24 20:06:19'),
(8962, 0, '62.210.83.58', 'bf9d29563dc0bd99907266ed85970b44', '/es/', 'http://www.roman.com.mx/', '2016-01-24 20:06:05'),
(8963, 0, '62.210.83.58', '595f27689711b40bd21b0d350ac6ac92', '/es/', 'http://roman.com.mx/en/', '2016-01-24 20:06:06'),
(8960, 0, '62.210.83.58', '6c05aa0b5fa2d63eb50106d628b57ed8', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/', '2016-01-24 15:32:38'),
(8959, 0, '62.210.83.58', '6c05aa0b5fa2d63eb50106d628b57ed8', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-24 15:32:37'),
(8961, 0, '62.210.83.58', '6c05aa0b5fa2d63eb50106d628b57ed8', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-24 15:32:38'),
(8953, 0, '187.161.160.4', '1e5566c75f21e0c0c9289934439d9e9b', '/es/', 'http://www.roman.com.mx/', '2016-01-23 04:45:19'),
(8954, 0, '187.189.247.159', 'b71cce79d2157042ceabc9d2d91c28f4', '/es/', 'http://roman.com.mx/', '2016-01-23 16:30:08'),
(8958, 0, '62.210.83.58', '6c05aa0b5fa2d63eb50106d628b57ed8', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-24 15:32:36'),
(8957, 0, '62.210.83.58', 'f8b167abeb5877c08aab02917bf359f1', '/es/', 'http://roman.com.mx/en/', '2016-01-24 15:32:24'),
(8956, 0, '62.210.83.58', '6c05aa0b5fa2d63eb50106d628b57ed8', '/es/', 'http://roman.com.mx/', '2016-01-24 15:32:22'),
(8955, 0, '187.210.150.157', '6cb830efad61f677607cca15e70ddc8a', '/es/', 'http://roman.com.mx/', '2016-01-23 17:46:46'),
(8883, 0, '189.162.198.163', 'f70b42d1a285e548f54a957811f00625', '/es/', 'http://www.roman.com.mx/', '2016-01-19 07:54:29'),
(8952, 0, '207.46.13.120', 'b0edb5b3ee9048b8677d3aa7e7909416', '/es/index.php/la-firma/vision', '', '2016-01-23 04:30:37'),
(8951, 0, '157.55.39.153', 'ac41cccf2c747216d16d989293826602', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-23 03:24:33'),
(8950, 0, '157.55.39.153', '40f863581632dc973567c4c04e4cf7bd', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-22 23:38:11'),
(8949, 0, '157.55.39.153', 'e7fc74535ad178089a715ff314c75f45', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-22 23:38:11'),
(8948, 0, '157.55.39.153', '24bcfa321e999081150fb8f2413e399f', '/es/index.php/la-firma/12-areas', '', '2016-01-22 23:38:11'),
(8947, 0, '40.77.167.64', 'ab89ef97d7b1f46db29bce3f1addb76f', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-01-22 23:38:06'),
(8945, 0, '157.55.39.11', '454a054eccec6e7ef25f46d492953131', '/es/', '', '2016-01-22 23:37:59'),
(8946, 0, '157.55.39.11', '2966abab160ebc8984614eebd2a8b794', '/es/index.php/contacto', '', '2016-01-22 23:38:00'),
(8944, 0, '157.55.39.189', 'fa770b95c03dd23dbc77a349d642f61f', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-22 23:37:55'),
(8943, 0, '157.55.39.189', '3da3e70d4a68430d4224500c1b90178b', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-22 22:41:36'),
(8942, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/noticias', 'http://roman.com.mx/es/index.php/fundacion', '2016-01-22 17:54:33'),
(8941, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/fundacion', 'http://roman.com.mx/es/index.php/staff', '2016-01-22 17:53:45'),
(8940, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/staff', 'http://roman.com.mx/es/index.php/2013-10-02-14-45-01/legal', '2016-01-22 17:53:14'),
(8939, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/2013-10-02-14-45-01/legal', 'http://roman.com.mx/es/index.php/2013-10-02-14-45-01/due-dilligence', '2016-01-22 17:53:06'),
(8938, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/2013-10-02-14-45-01/due-dilligence', 'http://roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-01-22 17:52:54'),
(8937, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-01-22 17:51:38'),
(8936, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/index.php/la-firma/vision', '2016-01-22 17:51:35'),
(8935, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/index.php/noticias', '2016-01-22 17:51:31'),
(8934, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/index.php/noticias', 'http://roman.com.mx/es/', '2016-01-22 17:51:26'),
(8933, 0, '187.192.217.243', 'df997f07e549b38b14a2d03e435983b1', '/es/', 'http://www.roman.com.mx/', '2016-01-22 17:50:29'),
(8932, 0, '177.248.38.231', '4b39b810851234258705fb780eb6f6c4', '/es/', '', '2016-01-22 15:31:54'),
(8931, 0, '187.254.7.65', '7383b6263e36e72968a3f448ed860eb3', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/index.php/la-firma/vision', '2016-01-21 19:15:36'),
(8930, 0, '187.254.7.65', '7383b6263e36e72968a3f448ed860eb3', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/', '2016-01-21 19:15:31');
INSERT INTO `klhu1_rokuserstats` (`id`, `user_id`, `ip`, `session_id`, `page`, `referrer`, `timestamp`) VALUES
(8929, 0, '187.254.7.65', '7383b6263e36e72968a3f448ed860eb3', '/es/', 'http://roman.com.mx/es/', '2016-01-21 19:11:51'),
(8928, 0, '187.254.7.65', '7383b6263e36e72968a3f448ed860eb3', '/es/', 'http://roman.com.mx/es/', '2016-01-21 19:11:45'),
(8926, 0, '187.254.7.65', '7383b6263e36e72968a3f448ed860eb3', '/es/', 'http://roman.com.mx/es/', '2016-01-21 19:11:40'),
(8927, 0, '187.254.7.65', '7383b6263e36e72968a3f448ed860eb3', '/es/', 'http://roman.com.mx/es/', '2016-01-21 19:11:40'),
(8925, 0, '187.254.7.65', '7383b6263e36e72968a3f448ed860eb3', '/es/', '', '2016-01-21 19:11:16'),
(8924, 0, '148.239.221.10', 'ec60c99d6910f3767aa34e8e5f118a14', '/es/', 'http://www.roman.com.mx/', '2016-01-21 16:51:59'),
(8923, 0, '177.248.38.231', 'e6f9b7dc917f51f07c31a81f774190ff', '/es/', '', '2016-01-21 15:07:13'),
(8922, 0, '207.46.13.117', 'a139a62c133eb93934491cc28b748b00', '/es/index.php/noticias', '', '2016-01-21 14:46:54'),
(8921, 0, '207.46.13.117', '4eb8aa4328c8b35b3f8ae3aed8071d5c', '/es/index.php/la-firma/vision', '', '2016-01-21 11:05:35'),
(8920, 0, '207.46.13.101', '36fce4dc40fc9330199f94811a826fb1', '/es/index.php/la-firma/2-uncategorised/20-nuestra-firma', '', '2016-01-21 07:15:41'),
(8918, 0, '207.46.13.19', 'f5fa4ae9a0fe2125bba9efca454fa83b', '/es/', '', '2016-01-20 21:39:31'),
(8919, 0, '207.46.13.101', '58d08ba0d7a2f7805121f83aeb46d928', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-21 00:53:50'),
(8917, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-20 19:35:59'),
(8916, 0, '207.46.13.117', '582aa43d43584c69c3378f2244d0252d', '/es/index.php/la-firma/vision', '', '2016-01-20 19:29:47'),
(8915, 0, '66.249.69.37', '0c8009cf5dfc8472471c8fda9748024c', '/es/index.php/component/content/?view=featured', '', '2016-01-20 17:31:35'),
(8914, 0, '40.77.167.14', '9960d71ccd641ea3be89b4f2d9965f42', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-01-20 15:53:31'),
(8913, 0, '177.248.38.231', 'c70e176d9cd32d1e5310f2b8543bee5c', '/es/', '', '2016-01-20 15:28:19'),
(8912, 0, '207.46.13.101', '2bc689803001c9a1dbf4b679aa2bd8f3', '/es/index.php/staff', '', '2016-01-20 15:02:20'),
(8911, 0, '207.46.13.117', 'c947d32ade0df6ea3c026a160785b1ae', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-20 15:01:08'),
(8910, 0, '207.46.13.117', 'e1c0eeb67f5390e3296dbe149eba42e2', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-20 15:01:06'),
(8909, 0, '207.46.13.19', 'a19d0ef8e892bd1506f9fe65ebe12868', '/es/index.php/fundacion', '', '2016-01-20 14:59:42'),
(8908, 0, '207.46.13.19', '5ae9b00092f959d67b88d1c0843471e7', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-20 14:59:41'),
(8907, 0, '207.46.13.19', 'dd0dc41f39f3330cba13e89639480080', '/es/index.php/la-firma', '', '2016-01-20 14:59:40'),
(8906, 0, '207.46.13.19', '6687e1acc6b256019358fa5252623397', '/es/', '', '2016-01-20 10:36:33'),
(8905, 0, '66.249.69.29', 'a0df65bdb56b4751908e0054082756f0', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-20 02:44:20'),
(8904, 0, '207.46.13.101', '416faa3e097f87efd40275b737b19ad3', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-20 02:22:10'),
(8903, 0, '207.46.13.117', '48c12704bf62b39077e203e4bd932eca', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-20 02:20:15'),
(8902, 0, '207.46.13.117', '3276d4cd73493c55042fe20aab038027', '/es/index.php/la-firma/12-areas', '', '2016-01-20 02:20:14'),
(8901, 0, '207.46.13.19', '46781e00ea4500dd5fb2bad97d4374b5', '/es/index.php/contacto', '', '2016-01-20 02:19:37'),
(8899, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-20 00:25:32'),
(8900, 0, '207.46.13.19', 'bd521f4b88055dcf34723f9a27c7a533', '/es/', '', '2016-01-20 02:19:36'),
(8898, 0, '207.46.13.19', '6c71c04f92307764f74cc81667a4fd17', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-19 23:06:59'),
(8897, 0, '66.249.69.29', 'b5062056bc9d5cd49d52739c564044ce', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-19 22:12:40'),
(8896, 0, '200.53.123.93', '7415e044dae6cedf2956d32acfc73d89', '/es/', 'http://roman.com.mx/es/index.php/fundacion', '2016-01-19 16:05:15'),
(8895, 0, '200.53.123.93', '7415e044dae6cedf2956d32acfc73d89', '/es/index.php/fundacion', 'http://roman.com.mx/es/index.php/staff', '2016-01-19 16:04:52'),
(8894, 0, '200.53.123.93', '7415e044dae6cedf2956d32acfc73d89', '/es/index.php/staff', 'http://roman.com.mx/es/', '2016-01-19 16:04:36'),
(8893, 0, '200.53.123.93', '7415e044dae6cedf2956d32acfc73d89', '/es/index.php?format=feed&amp;type=atom', 'http://roman.com.mx/es/', '2016-01-19 16:04:04'),
(8892, 0, '200.53.123.93', '7415e044dae6cedf2956d32acfc73d89', '/es/index.php?format=feed&amp;type=rss', 'http://roman.com.mx/es/', '2016-01-19 16:04:04'),
(8891, 0, '200.53.123.93', '7415e044dae6cedf2956d32acfc73d89', '/es/', 'http://www.roman.com.mx/', '2016-01-19 16:04:04'),
(8890, 0, '177.248.38.231', '7d3d33f95a41e99ed3548bea5d78f5ad', '/es/', '', '2016-01-19 15:18:46'),
(8889, 0, '157.55.39.135', 'f8a3200c1ea31f8597c3190d57f357f9', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-19 11:37:08'),
(8888, 0, '189.162.198.163', 'f70b42d1a285e548f54a957811f00625', '/es/index.php/la-firma/vision', 'http://roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-01-19 07:56:54'),
(8887, 0, '189.162.198.163', 'f70b42d1a285e548f54a957811f00625', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-01-19 07:56:28'),
(8886, 0, '189.162.198.163', 'f70b42d1a285e548f54a957811f00625', '/es/index.php/la-firma/modelo-de-servicios', 'http://roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '2016-01-19 07:56:02'),
(8885, 0, '189.162.198.163', 'f70b42d1a285e548f54a957811f00625', '/es/index.php/noticias', 'http://roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '2016-01-19 07:55:41'),
(8884, 0, '189.162.198.163', 'f70b42d1a285e548f54a957811f00625', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://roman.com.mx/es/', '2016-01-19 07:55:19'),
(9365, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '2016-02-08 21:30:27'),
(9364, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', 'http://www.roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-02-08 21:30:13'),
(9363, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', 'http://www.roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-02-08 21:30:13'),
(9362, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/la-firma/modelo-de-servicios', 'http://www.roman.com.mx/es/index.php/la-firma/vision', '2016-02-08 21:28:30'),
(9361, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/la-firma/vision', 'http://www.roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-02-08 21:27:09'),
(9360, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/la-firma/nuestra-firma', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '2016-02-08 21:20:20'),
(9359, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', 'http://www.roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-02-08 21:20:09'),
(9358, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/la-firma/modelo-de-servicios', 'http://www.roman.com.mx/es/index.php/staff', '2016-02-08 21:19:03'),
(9357, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/staff', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '2016-02-08 21:18:41'),
(9356, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'http://www.roman.com.mx/es/index.php/fundacion', '2016-02-08 21:17:18'),
(9355, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/fundacion', 'http://www.roman.com.mx/es/', '2016-02-08 21:17:02'),
(9354, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '2016-02-08 21:15:54'),
(8832, 0, '66.249.69.29', '6ac6837771432c168ac29bd5904cc986', '/es/', '', '2016-01-14 13:14:54'),
(8833, 0, '157.55.39.44', 'e40c54e4e61e7f035517109796976b5c', '/es/index.php/la-firma/vision', '', '2016-01-14 13:37:38'),
(9353, 0, '201.157.70.141', '29dbe03e3bd9b480aef2fd481c5d73ba', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-02-08 21:14:29'),
(9352, 0, '207.46.13.161', 'f47e7bab1b04212e6bbdb8e5232501f8', '/es/index.php/staff', '', '2016-02-08 19:41:07'),
(9348, 0, '157.55.39.202', 'a49231c85de7b955d25336ba658a5817', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-08 19:40:56'),
(9349, 0, '157.55.39.202', '9f873ddd16c5d7dfa7cee5aacff0d540', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-08 19:41:00'),
(9350, 0, '157.55.39.44', 'f1f727f0608259d1a465c6301dd6c46d', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-08 19:41:00'),
(9351, 0, '157.55.39.44', '115553a28dcd7605210a0aa2f739e752', '/es/index.php/la-firma', '', '2016-02-08 19:41:00'),
(9345, 0, '66.249.69.37', 'b5b235f97d682063493b0ce21eaa3b09', '/es/index.php/noticias', '', '2016-02-08 18:12:28'),
(9346, 0, '157.55.39.201', 'f33e13a8a2e3c995903a325a0a33215d', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-08 19:40:56'),
(9347, 0, '157.55.39.44', '99b0174457d4414863acf0d3067dabf0', '/es/index.php/fundacion', '', '2016-02-08 19:40:56'),
(9344, 0, '189.167.169.242', '8827002d57d889bf81a1bfe864db270e', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'http://www.bing.com/search?q=dictamen+enajenaci%C3%B3n+de+acciones+2016&qs=n&form=QBRE&pq=dictamen+enajenaci%C3%B3n+de+acciones+2016&sc=2-37&sp=-1&sk=&cvid=97AED2DCABEE48F48B398B39D53C43B4', '2016-02-08 17:38:22'),
(9343, 0, '177.248.38.231', '4d92658bd642386bc73b4feaa8ac634f', '/es/', '', '2016-02-08 16:00:40'),
(9342, 0, '157.55.39.202', '7dca75621988b0734d2a7243543f3aa4', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-08 15:35:36'),
(9341, 0, '157.55.39.202', 'fac9a14b5ce95cec98c814cbe597d44c', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-08 15:35:36'),
(9340, 0, '157.55.39.201', '9a11cdb1723fd880d71ad6c1674f3a16', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-08 15:35:24'),
(9339, 0, '157.55.39.44', '3fa13544650f3d79e6fe893dac8f45f0', '/es/index.php/la-firma', '', '2016-02-08 15:35:22'),
(9338, 0, '157.55.39.44', 'ced5e9ae17dd27ae6738d4710ba6493a', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-08 15:35:21'),
(9337, 0, '207.46.13.161', '4641fec8b04bf8ba057ade04a69c6106', '/es/index.php/staff', '', '2016-02-08 15:35:19'),
(9336, 0, '157.55.39.44', '5ef097f3ffd902f3b3c731dbfa2e4512', '/es/index.php/fundacion', '', '2016-02-08 15:35:17'),
(9333, 0, '157.55.39.202', 'b9033859a39b78ecf201b823aa566301', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-08 10:10:56'),
(9334, 0, '66.249.69.37', 'ac52033aa9a6e1d33dcb56374663716b', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-08 10:12:35'),
(9335, 0, '207.46.13.125', '6ef6f116678d263551d715db3bfcd41b', '/es/index.php/staff', '', '2016-02-08 10:23:06'),
(9330, 0, '157.55.39.44', '5cc2356ed76e90a3272a118b964ffc47', '/es/index.php/la-firma', '', '2016-02-08 10:10:45'),
(9331, 0, '157.55.39.201', '379271cbc9f3b0cd98d4033bfe3ab96d', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-08 10:10:51'),
(9332, 0, '157.55.39.202', '542b662798ffd7897ef8ac41e57a32b0', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-08 10:10:55'),
(9329, 0, '157.55.39.44', 'b09bbd104f235d3e2396c32ad96a09c5', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-08 10:10:45'),
(9327, 0, '207.46.13.125', 'efdc1225939b841fed26ac8d67d86a1a', '/es/index.php/staff', '', '2016-02-08 07:45:45'),
(9328, 0, '157.55.39.44', '6b7569288a80b7ead0b83a35e379abbd', '/es/index.php/fundacion', '', '2016-02-08 10:10:44'),
(9326, 0, '157.55.39.44', 'ad21c1fb6256a8613d7884b38aedb100', '/es/index.php/la-firma', '', '2016-02-08 07:45:34'),
(9325, 0, '157.55.39.44', '510bdb9dd5eb0c33764816262e1f97b3', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-08 07:45:34'),
(9324, 0, '157.55.39.44', 'd67faae4b618ec35e886f3af0af6404f', '/es/index.php/fundacion', '', '2016-02-08 07:45:33'),
(9323, 0, '157.55.39.201', '395eb181307c838a4407dcfc5a92d32a', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-08 07:45:19'),
(9322, 0, '157.55.39.202', '3307380136208c14d566b45e202d7b05', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-08 07:45:14'),
(9321, 0, '157.55.39.202', 'de00ed894156f908ee6ad79d5ff0a4d5', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-08 07:45:12'),
(9320, 0, '66.249.69.45', '95d9514bb79931d11e3e9a2f5a6a73a5', '/es/', '', '2016-02-08 04:57:21'),
(9319, 0, '66.249.69.45', '3060180fe89f35f6cfc0184423ba4d2e', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-08 04:14:54'),
(9318, 0, '66.249.69.29', 'e591e8c48da834ec8ea125e1f5e020a0', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-08 04:03:33'),
(9317, 0, '66.249.69.29', '12ef5438081c2127617d0f2b9e815d47', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-08 03:05:22'),
(9316, 0, '207.46.13.125', 'ece9f5a411d2411f0230985577fb7f02', '/es/index.php/staff', '', '2016-02-08 01:45:48'),
(9315, 0, '157.55.39.44', '7c15f946aec14ce941364846a09548c3', '/es/index.php/la-firma', '', '2016-02-08 01:40:51'),
(9314, 0, '157.55.39.44', '1afd39b114be7f16dc639491ca6daf33', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-08 01:40:51'),
(9311, 0, '157.55.39.202', '602073bb3b05c6d373920a825e7d5df0', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-08 01:40:48'),
(9313, 0, '157.55.39.44', '4102d90d3239c516a3794446655e05c8', '/es/index.php/fundacion', '', '2016-02-08 01:40:50'),
(9312, 0, '157.55.39.202', '20baf72c5eff0714c6fc6e19823305df', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-08 01:40:49'),
(9310, 0, '157.55.39.201', '94cc3676645cf41cd616da8ffd784542', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-08 01:40:32'),
(9309, 0, '157.55.39.202', 'cd7ebab7968311f2006ad3f8e12e6091', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-07 08:52:51'),
(9308, 0, '157.55.39.202', '9bcd97709e656a2bda790be1813960e0', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-07 08:52:51'),
(9307, 0, '157.55.39.200', '5352d5f1000eac62484d421108db1ae7', '/es/index.php/staff', '', '2016-02-07 08:52:43'),
(9304, 0, '157.55.39.44', '7fea6d3a5f90911805e932653283618b', '/es/index.php/fundacion', '', '2016-02-07 08:52:40'),
(9305, 0, '157.55.39.44', '15ba0066cd12b53f395d9e7c1524b704', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-07 08:52:40'),
(9306, 0, '157.55.39.44', '12f3eb701b8a5ced1d38af2568d0827c', '/es/index.php/la-firma', '', '2016-02-07 08:52:40'),
(9302, 0, '157.55.39.44', 'e5b1a4f72af012917b43e6db03c67985', '/es/index.php/la-firma', '', '2016-02-07 04:46:04'),
(9303, 0, '157.55.39.201', 'c7aea8c06a484f7ff23bb56068581f25', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-07 08:52:33'),
(9301, 0, '157.55.39.44', '3747809d3b42d0c0c03f647ee28f214f', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-07 04:46:03'),
(9300, 0, '157.55.39.44', '1c28fc7585e36b6fc36c43a8645785b4', '/es/index.php/fundacion', '', '2016-02-07 04:46:03'),
(9299, 0, '157.55.39.202', '2e503ea0afc5b01593e6c9bd9b5b7fed', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-07 04:45:53'),
(9296, 0, '157.55.39.200', '26ebb9dbda5adbe2c0dc9ef0062176f5', '/es/index.php/staff', '', '2016-02-07 04:45:43'),
(9297, 0, '157.55.39.201', 'c32c62eaa54d5e7854571237c433225c', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-07 04:45:52'),
(9298, 0, '157.55.39.202', '3a46558fdd1b1c7c675805dea65868b5', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-07 04:45:52'),
(9295, 0, '189.208.190.37', 'bd53117f5007cfbfb3c96bbdd8ee3cd9', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'https://www.google.com.mx/', '2016-02-06 16:32:51'),
(9294, 0, '157.55.39.44', '99a14d44807ab532760070b12eba5fd6', '/es/index.php/la-firma', '', '2016-02-06 13:29:24'),
(9293, 0, '157.55.39.44', '71d2d46fb36a3949e3f762f242f0737f', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-06 13:29:24'),
(9292, 0, '157.55.39.44', 'a7c9379f04a49f2347fa63cb64ce608d', '/es/index.php/fundacion', '', '2016-02-06 13:29:24'),
(9291, 0, '157.55.39.201', '446337c5ca4be1331ea0247d03b58980', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-06 13:29:14'),
(9290, 0, '157.55.39.202', 'd5f956141239d0ace392ae5f38491f0f', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-06 13:29:10'),
(9289, 0, '157.55.39.202', '6181ef65ed7e241cb2098f6d84f3d9d5', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-06 13:29:10'),
(9288, 0, '157.55.39.44', '8d492a2fbfce9206699ffaa7fd5a3c93', '/es/index.php/la-firma', '', '2016-02-06 10:25:19'),
(9287, 0, '157.55.39.44', '571598d1a655dc76303e239891c06608', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-06 10:25:18'),
(9286, 0, '157.55.39.44', '45177f7dc38849c77f26d89659cb6d95', '/es/index.php/fundacion', '', '2016-02-06 10:25:18'),
(9285, 0, '157.55.39.201', 'a0c9b33f5e8f5f05882868ef7583dc97', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-06 10:24:24'),
(9284, 0, '157.55.39.200', 'd976e725d0b523582de872b5415d64ca', '/es/index.php/staff', '', '2016-02-06 10:24:19'),
(9283, 0, '157.55.39.202', 'e367b5dad6cf3c97ab5f21566eb59720', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-02-06 10:24:18'),
(9279, 0, '187.177.147.224', 'e7d2649090ac46f89c8905ff117a5261', '/es/index.php/staff', 'http://roman.com.mx/es/', '2016-02-05 18:02:41'),
(9282, 0, '157.55.39.202', '4929f1c545ad05878a0d8fb090f089a1', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-06 10:24:17'),
(9281, 0, '40.77.167.90', '0ce2c89338283b522d0c93b67a81835b', '/es/index.php/contacto', '', '2016-02-06 05:34:38'),
(8882, 0, '187.254.7.65', '3c166e246d56b1f65f69840179db1a33', '/es/', '', '2016-01-18 22:31:05'),
(8881, 0, '148.239.221.14', 'f8adf6bdeb27b86c8bbf23cb4784d756', '/es/', 'http://www.roman.com.mx/', '2016-01-18 22:29:27'),
(8880, 0, '148.239.221.14', '20081b8c94ad85cbc110a9b0787c7090', '/es/index.php/fundacion', 'http://roman.com.mx/es/', '2016-01-18 20:36:30'),
(8879, 0, '148.239.221.11', '20081b8c94ad85cbc110a9b0787c7090', '/es/index.php/contact', 'http://roman.com.mx/es/', '2016-01-18 20:33:47'),
(8878, 0, '148.239.221.14', '20081b8c94ad85cbc110a9b0787c7090', '/es/', 'http://www.roman.com.mx/', '2016-01-18 20:33:20'),
(8877, 0, '157.55.39.135', 'cf3581ad8f1ac68040b9211bc3d1c9e8', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-18 18:38:35'),
(8875, 0, '177.240.120.194', 'ace78a6cc3e7402a8607e8e2b499a472', '/es/', 'http://www.roman.com.mx/', '2016-01-18 15:07:40'),
(8876, 0, '177.248.38.231', '9d83f4abc958e4c003c683e7a51edffe', '/es/', '', '2016-01-18 15:14:53'),
(8873, 0, '177.240.120.194', 'e348f75be7765c42654c905a4c47a8c7', '/es/', 'https://www.google.com.mx/', '2016-01-18 15:05:53'),
(8874, 0, '177.240.120.194', 'e348f75be7765c42654c905a4c47a8c7', '/es/index.php/contact', 'http://www.roman.com.mx/es/', '2016-01-18 15:06:02'),
(8872, 0, '157.55.39.135', '00f40d6d22a8c533aefc09e9b8925e4a', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-18 11:02:02'),
(8871, 0, '157.55.39.15', '10528cff7d8d93132e9c9c8d2b59991d', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-01-17 20:46:14'),
(8870, 0, '157.55.39.50', '719ac150463303e59ade74a65894c1e5', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-17 20:32:50'),
(8869, 0, '157.55.39.50', 'df04af63e1422cc0483d7acabe3677dc', '/es/index.php/la-firma/12-areas', '', '2016-01-17 20:32:50'),
(8868, 0, '40.77.167.76', '668fc0ec84e403e9489f7b722199872a', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-17 18:09:23'),
(8867, 0, '40.77.167.76', '081fbe07f9eaef39a8e20fe5b2532818', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-17 09:48:22'),
(8865, 0, '157.55.39.45', '4547f5c08daa5d51d388fb56801d0c80', '/es/index.php/la-firma/vision', '', '2016-01-17 03:01:56'),
(8866, 0, '40.77.167.5', 'fe948ea3e3f1d26b3378d412497403ba', '/es/index.php/la-firma', '', '2016-01-17 08:27:40'),
(8864, 0, '157.55.39.126', '6e56f6caa45ac848106eb4c21676635e', '/es/index.php/contact', '', '2016-01-17 02:48:51'),
(8863, 0, '66.249.69.29', 'ba22475b1e20329be59764f8c5983cfc', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-01-16 19:34:50'),
(8862, 0, '40.77.167.5', '5f40871f86448fd554804015de47116b', '/es/index.php/fundacion', '', '2016-01-16 15:45:37'),
(9280, 0, '40.77.167.64', 'dcc51d80f12dc30545ebebf26ece0fb1', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-05 23:21:58'),
(9278, 0, '187.177.147.224', 'e7d2649090ac46f89c8905ff117a5261', '/es/', 'http://www.roman.com.mx/', '2016-02-05 17:56:28'),
(9277, 0, '177.248.38.231', 'd1b54bc15c6712e7424dc7a816569846', '/es/', '', '2016-02-05 15:37:46'),
(9276, 0, '187.189.155.47', '92e2c50c50ddb36183d1193026e38bf1', '/es/', 'http://roman.com.mx/', '2016-02-05 00:18:05'),
(9275, 0, '157.55.39.122', 'f6e42b10c36f7fd0a23044d174f6c1c2', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-04 22:40:21'),
(9274, 0, '157.55.39.147', 'd3806754613cfc17ef484cb4eb6f4909', '/es/index.php/la-firma', '', '2016-02-04 22:40:17'),
(9273, 0, '157.55.39.147', '7026f23b12a6e32750fc99c1344f0009', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-04 22:40:16'),
(9272, 0, '157.55.39.147', 'af10c874fab46d1829bcd3190a4f72d1', '/es/index.php/fundacion', '', '2016-02-04 22:40:16'),
(9271, 0, '177.241.147.203', '5c25193f3e48b52e863f41932c262dbe', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'http://r.search.yahoo.com/_ylt=AwrBTvn2xLNWdq8ApTqT.Qt.;_ylu=X3oDMTByOHZyb21tBGNvbG8DYmYxBHBvcwMxBHZ0aWQDBHNlYwNzcg--/RV=2/RE=1454650743/RO=10/RU=http%3a%2f%2froman.com.mx%2fes%2findex.php%2f2013-10-02-14-45-01%2ffiscal%2fdictamen-por-enajenacion-de-accio', '2016-02-04 21:39:13'),
(9270, 0, '66.249.69.37', '1a297098cdfc0ebcc7fb1d81893440f0', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-04 21:03:10'),
(9269, 0, '189.217.5.191', 'a30389c079d78a732d23d5b7a8da2c96', '/es/', 'http://www.roman.com.mx/', '2016-02-04 20:58:39'),
(9268, 0, '177.248.38.231', '42db05a228d5bb851b4a5670cd467c69', '/es/', '', '2016-02-04 15:41:26'),
(9267, 0, '157.55.39.209', '81d9428fe33d869264cc19566aeadd60', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-02-04 12:47:08'),
(9265, 0, '187.189.155.47', '9b966ae7cfc83f1ed9edf89370fca6b1', '/es/', 'http://www.roman.com.mx/', '2016-02-04 02:47:51'),
(9266, 0, '157.55.39.146', '783ff5fd0a8c429f96891b3005ad8829', '/es/index.php/la-firma/vision', '', '2016-02-04 02:48:45'),
(9263, 0, '177.249.90.199', 'f6da4db1233fa008addbb3678af00458', '/es/', 'http://www.roman.com.mx/', '2016-02-04 00:32:26'),
(9264, 0, '177.249.90.199', 'f6da4db1233fa008addbb3678af00458', '/es/', 'http://www.roman.com.mx/', '2016-02-04 00:33:08'),
(9262, 0, '157.55.39.243', '828e84fc03dba92f3148c1f1874d0bd1', '/es/index.php/la-firma', '', '2016-02-03 19:16:49'),
(8861, 0, '66.249.69.37', 'b30bb5f1c21346e70400412ad4d71110', '/es/', '', '2016-01-16 15:27:37'),
(9261, 0, '177.248.38.231', 'b41b880624f939939e76cce572626925', '/es/', '', '2016-02-03 18:53:40'),
(8860, 0, '40.77.167.5', '941f2508c3e27531cdcd0d4d9a923866', '/es/', '', '2016-01-16 13:15:43'),
(8859, 0, '157.55.39.126', '31c5d51d5e80b93b18afe0be1cdad4b7', '/es/index.php/la-firma/nuestra-firma', '', '2016-01-16 11:19:52'),
(8858, 0, '40.77.167.5', '0321eaf309e5b0427b21c13eb70e050b', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-01-16 07:13:30'),
(8857, 0, '157.55.39.45', '73a06b9a18a9655c82ca41dd097096e4', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-15 22:06:34'),
(8856, 0, '187.188.145.178', '05ab9e88d57befde3111219f130d6935', '/es/', 'http://roman.com.mx/es/index.php/noticias', '2016-01-15 20:32:57'),
(8855, 0, '187.188.145.178', '05ab9e88d57befde3111219f130d6935', '/es/index.php/noticias', 'http://roman.com.mx/es/', '2016-01-15 20:31:31'),
(8854, 0, '187.188.145.178', '05ab9e88d57befde3111219f130d6935', '/es/', 'http://www.roman.com.mx/', '2016-01-15 20:30:41'),
(8853, 0, '207.46.13.91', 'ef2511f082145bf1cec2544f7d53b598', '/es/', '', '2016-01-15 19:30:53'),
(8852, 0, '207.46.13.91', '009c68488408f27e2be163765bd36112', '/es/', '', '2016-01-15 19:09:20'),
(8850, 0, '187.254.7.65', '3c166e246d56b1f65f69840179db1a33', '/es/', '', '2016-01-15 18:44:05'),
(8851, 0, '66.249.69.45', '55091c4c4fbc459191c5152f7f8b2695', '/es/index.php/fundacion', '', '2016-01-15 19:03:12'),
(8849, 0, '177.248.38.231', '0fb7941e98521192919bc9667063581e', '/es/', '', '2016-01-15 16:27:36'),
(8848, 0, '40.77.167.69', 'e61963f8b0fef568e4d81084284c7824', '/es/index.php/staff', '', '2016-01-15 15:33:36'),
(8847, 0, '157.55.39.45', 'e09ef2b994397af90e6ebae971533117', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-15 13:44:28'),
(8846, 0, '157.55.39.45', '07785c122c28f959f92384f618c1c382', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-15 13:44:28'),
(8845, 0, '40.77.167.69', 'ff731940299af1f94d19cad15e702dd4', '/es/index.php/staff', '', '2016-01-15 13:43:01'),
(8844, 0, '207.46.13.91', '9f18f59bb64fb8f29c6fb87baad61ad6', '/es/index.php/la-firma', '', '2016-01-15 13:42:47'),
(8843, 0, '207.46.13.91', '6adb7251bccfd9a5bcf126fbba0b89a6', '/es/index.php/fundacion', '', '2016-01-15 13:42:46'),
(8842, 0, '157.55.39.101', 'bf8ea79b1f82ac0ec6eecf1bfb4f3800', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-01-15 13:42:44'),
(8841, 0, '207.46.13.91', '1c11eaaa8ac38df6ec945f23e4fc1086', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-15 13:42:42'),
(8840, 0, '207.46.13.91', 'ea2e6911e1e3dd98153f16f48343d508', '/es/', '', '2016-01-15 11:02:57'),
(8839, 0, '66.249.69.45', '5c4825a4f0976977f1a8edde0c993ba8', '/es/index.php/la-firma/vision', '', '2016-01-15 09:58:17'),
(8837, 0, '157.55.39.137', '9a823a4f109267ebeb9885460d204c4f', '/es/index.php/la-firma/8-content', '', '2016-01-15 00:33:09'),
(8838, 0, '66.249.69.123', 'b33ce87526a8264acf88616d51f28d72', '/es/', '', '2016-01-15 03:45:46'),
(8836, 0, '66.249.69.45', '6fca59dd84d3dbc766c56056bf423341', '/es/index.php/noticias', '', '2016-01-14 22:29:48'),
(9260, 0, '157.55.39.228', 'f2c803f9020ad966bdc99e777827a693', '/es/index.php/contact', '', '2016-02-03 09:19:50'),
(9259, 0, '157.55.39.103', 'f711d7d33e19bc1df26b11625d49997b', '/es/index.php/fundacion', '', '2016-02-03 08:08:49'),
(9258, 0, '187.189.155.47', '5777064fade87e1187d026e6baa31d8b', '/es/', 'http://roman.com.mx/', '2016-02-03 02:26:24'),
(9257, 0, '40.77.167.34', '2310f5652650dc39e5dbc4add0b33241', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-02 22:54:19'),
(9255, 0, '177.249.212.186', '191e92c6ecc206345ebe60474b1a157d', '/es/', '', '2016-02-02 22:49:02'),
(9256, 0, '177.249.212.186', '191e92c6ecc206345ebe60474b1a157d', '/es/index.php/staff', 'http://roman.com.mx/es/', '2016-02-02 22:52:48'),
(9254, 0, '187.133.199.162', '9106e4e151812101d2311d30b659c268', '/es/', 'http://www.roman.com.mx/', '2016-02-02 21:02:29'),
(8835, 0, '201.149.23.41', 'fedb733cf8b53feaa59cfa816756b6fe', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', 'http://www.bing.com/search?q=Dictamen+Enajenaci%c3%b3n+de+Acciones+2015&FORM=QSRE4', '2016-01-14 19:41:53'),
(8834, 0, '177.248.38.231', 'baed964fd86b3cc7c4a15302a76fe2ed', '/es/', '', '2016-01-14 15:41:38'),
(9251, 0, '177.248.38.231', '612b74d42294a4026f9bb55dadfd9bab', '/es/', '', '2016-02-02 19:45:42'),
(9252, 0, '187.133.199.162', '485314226f86a32e14bec736de5de49d', '/es/', 'http://www.roman.com.mx/', '2016-02-02 20:43:11'),
(9253, 0, '187.133.199.162', '7d2dd891a3636377f2c975b39952d63d', '/es/', 'http://www.roman.com.mx/', '2016-02-02 20:43:12'),
(9246, 0, '66.249.69.29', 'a087be87ba878b7f525200cefc41165c', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-02 01:57:42'),
(9247, 0, '157.55.39.89', '850201df42b06cfa4a12b35434ce5c9f', '/es/index.php/staff', '', '2016-02-02 02:59:13'),
(9248, 0, '157.55.39.89', '290d2a8ccbaf417508ae0324c2c54d43', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-02 06:36:12'),
(9249, 0, '157.55.39.92', 'a64d2a8992e93a85458c34aa6059067e', '/es/', '', '2016-02-02 17:48:31'),
(9250, 0, '157.55.39.90', 'cbce403192c420f534f58dceccc37bed', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-02 18:14:10'),
(9245, 0, '66.249.69.123', 'c5422bba977407775778785ce8b50598', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '', '2016-02-01 19:48:08'),
(9243, 0, '157.55.39.204', '47c8ef7753790902e94fb6d319ce813b', '/es/index.php/la-firma/12-areas', '', '2016-02-01 17:07:10'),
(9244, 0, '66.249.69.29', 'c0e1d6a85708180ecf47aa182b7f2ba6', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-02-01 19:11:57'),
(9240, 0, '157.55.39.204', '433bab133d330047d3a099cecfd66a50', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-01 17:07:07'),
(9242, 0, '157.55.39.204', '24e1a211254ecc31e790bcd24ad369d8', '/es/index.php/la-firma/vision', '', '2016-02-01 17:07:10'),
(9241, 0, '157.55.39.204', 'bd0c0f0688da8f9b6bc990f0a82e486a', '/es/index.php/noticias', '', '2016-02-01 17:07:09'),
(9239, 0, '157.55.39.204', '6e4b3ab527e2f9eb26ee4f2f5f7b7701', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-02-01 17:07:07'),
(9237, 0, '157.55.39.250', '6cb8f578f25bdb4e438102295eed7654', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-02-01 16:32:51'),
(9238, 0, '40.77.167.87', 'a67e9bc5198b10d425a93b2d8b28e731', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-02-01 17:00:49'),
(9236, 0, '157.55.39.250', '094bfc6ac7380478465fb8c31e7d07c1', '/es/index.php/la-firma/nuestra-firma', '', '2016-02-01 16:32:51'),
(9235, 0, '157.55.39.169', 'fb2cf5f288a2f61d94a3ef951bb7ca03', '/es/index.php/la-firma/modelo-de-servicios', '', '2016-02-01 16:27:54'),
(9234, 0, '157.55.39.169', '9a67f8866e0cd675e3ab3fe3cc9eac27', '/es/index.php/contacto', '', '2016-02-01 16:27:54'),
(9232, 0, '157.55.39.84', '2e5b681ebb9ee47851ce49497013b65a', '/es/index.php/la-firma/8-content', '', '2016-02-01 12:14:13'),
(9229, 0, '66.249.69.45', 'd61f7d01986f6bbbe9a908f7667ab010', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-31 11:28:41'),
(9233, 0, '157.55.39.169', '8a82de3ee662e282ed141e66fa1d0163', '/es/', '', '2016-02-01 16:27:53'),
(9230, 0, '66.249.69.29', '54110f4b4a5a97d4acdefd212ea7f627', '/es/', '', '2016-02-01 08:05:04'),
(9231, 0, '157.55.39.204', 'b63be7da79ce55adf3ccf8fb274c0f62', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-02-01 10:51:57'),
(9228, 0, '66.249.69.29', '99de504059caec89c6cb2faea1eb98aa', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-31 08:41:44'),
(9227, 0, '40.77.167.90', '0b7dcc7a1c0dcf94340a530b2fc414bf', '/es/index.php/contacto', '', '2016-01-31 01:44:22'),
(9225, 0, '66.249.69.45', '9dd175bc20da412865a525f498e6457e', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-30 18:13:33'),
(9226, 0, '40.77.167.0', '0ee561f1f143153aa10d28e02ae5ff2c', '/es/index.php/la-firma/12-areas/22-fiscal', '', '2016-01-30 21:33:13'),
(9179, 0, '66.249.69.37', '48e063a78e8eb69be44618af3819a30c', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-28 18:01:44'),
(9180, 0, '187.254.7.65', '191e92c6ecc206345ebe60474b1a157d', '/es/', 'http://roman.com.mx/es/index.php/staff', '2016-01-28 18:16:24'),
(9181, 0, '187.254.7.65', '191e92c6ecc206345ebe60474b1a157d', '/es/index.php/staff', 'http://roman.com.mx/es/', '2016-01-28 18:16:39'),
(9182, 0, '187.189.149.65', '7577ee476c2966116baaab36841653a9', '/es/', 'http://roman.com.mx/', '2016-01-28 18:38:38'),
(9183, 0, '66.249.69.29', '435346f653139a23f7ea56378c0ca03f', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-28 19:10:28'),
(9224, 0, '187.190.154.146', '73b1b17b48265d2ba888ebe17771b965', '/es/', 'http://www.google.com.mx/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwjFlYW6-9HKAhUFND4KHTiyBUoQFggaMAA&url=http%3A%2F%2Fwww.roman.com.mx%2Fes%2F&usg=AFQjCNGqy8g2Zo_2xRhHVocSMZrrbUo2Dg&bvm=bv.113034660,d.cWw', '2016-01-30 16:33:55'),
(9223, 0, '40.77.167.15', '696f76d023a3bbb361b90e1d145df169', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-30 15:25:28'),
(9222, 0, '66.249.69.45', 'f1f6c69f474505adb3e4abd1ba891fb0', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-30 15:19:21'),
(9220, 0, '66.249.69.45', 'a607125ad0d8bb895207528992676dcb', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-30 10:00:45'),
(9221, 0, '157.55.39.59', 'ff64a254d950355cd6600ca19e24b57d', '/es/', '', '2016-01-30 12:04:06'),
(9219, 0, '66.249.69.29', '5d3f016d3df3e0bd1d906bef7e166570', '/es/index.php/2013-10-02-14-45-01/legal', '', '2016-01-30 07:46:10'),
(9217, 0, '157.55.39.149', 'abb0db21f572cfe1ac8e17810b3ffc7d', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-30 06:24:10'),
(9218, 0, '157.55.39.149', 'e42c10ce955b9ca343f670ab5e2b726b', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-30 06:24:11'),
(9216, 0, '40.77.167.49', '92dc0b4580f719580617754a4ff0d391', '/es/index.php/staff', '', '2016-01-30 06:24:02'),
(9215, 0, '157.55.39.59', 'a282c4ed89e2064785bbd568baa1b537', '/es/index.php/fundacion', '', '2016-01-30 06:23:58'),
(9214, 0, '157.55.39.59', '7e3a1aeb096d34b0d09875894c954999', '/es/index.php/la-firma', '', '2016-01-30 06:23:57'),
(9211, 0, '157.55.39.149', '8b26da01e079b25779ef8c185dc51cb8', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '', '2016-01-30 02:40:09'),
(9212, 0, '157.55.39.149', '2a1e5a6d69ddb905dfb7d20a4760b653', '/es/index.php/la-firma/12-areas', '', '2016-01-30 02:40:09'),
(9213, 0, '157.55.39.59', 'bd88a22245d9ddc48e4daf7c410cfebc', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-30 06:23:56'),
(9209, 0, '157.55.39.59', '23ff84c981d0d2c8b12bf6132bd90543', '/es/index.php/contacto', '', '2016-01-30 02:39:57'),
(9210, 0, '157.55.39.149', 'b7f928d06518ecb97abea12ddb21f047', '/es/index.php/2013-10-02-14-45-01/defensa-fiscal', '', '2016-01-30 02:40:09'),
(9208, 0, '157.55.39.59', '8f3f1e3f35a909d2f2512dc6b6ddca10', '/es/', '', '2016-01-30 02:39:57'),
(9204, 0, '200.36.125.21', 'b47fab20be45d93c41419f99b2614900', '/es/', 'http://www.roman.com.mx/', '2016-01-29 19:24:30'),
(9205, 0, '66.249.69.123', '612583d8e6dc39ef3f0b28d7657e72cc', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-29 22:06:21'),
(9206, 0, '66.249.69.45', '00670e8a893891e009e5bf4b3e67e7b0', '/es/index.php/2013-10-02-14-45-01/fiscal/diagnosticos-fiscales', '', '2016-01-29 23:28:30'),
(9207, 0, '157.55.39.59', '9ded2341599b5e4d792eb178658750f5', '/es/index.php/la-firma/2-uncategorised', '', '2016-01-30 00:41:48'),
(9150, 0, '201.106.174.159', '1dbfdb49c419625df38d19655a09c29a', '/es/', 'http://roman.com.mx/es/administrator/index.php?option=com_modules', '2016-01-28 02:22:01'),
(9149, 0, '201.106.174.159', '1dbfdb49c419625df38d19655a09c29a', '/es/', 'http://roman.com.mx/es/administrator/index.php?option=com_modules', '2016-01-28 02:21:44'),
(9203, 0, '187.254.3.194', '191e92c6ecc206345ebe60474b1a157d', '/es/', 'http://roman.com.mx/es/index.php/staff', '2016-01-29 18:07:29'),
(9202, 0, '104.129.198.66', 'e053b746a927f2341f8cb13ae5cc85ad', '/es/index.php/staff', 'http://roman.com.mx/es/index.php/fundacion', '2016-01-29 16:45:18'),
(9201, 0, '104.129.198.66', 'e053b746a927f2341f8cb13ae5cc85ad', '/es/index.php/fundacion', 'http://roman.com.mx/es/index.php/staff', '2016-01-29 16:44:57'),
(9196, 0, '187.133.207.128', 'ff48d04dc42cbec018f82139409fdf22', '/es/index.php/fundacion', 'http://roman.com.mx/es/index.php/noticias', '2016-01-29 15:44:33'),
(9197, 0, '187.133.207.128', 'ff48d04dc42cbec018f82139409fdf22', '/es/index.php/contact', 'http://roman.com.mx/es/index.php/fundacion', '2016-01-29 15:45:17'),
(9198, 0, '104.129.198.66', 'e053b746a927f2341f8cb13ae5cc85ad', '/es/', '', '2016-01-29 16:39:52'),
(9199, 0, '104.129.198.66', 'e053b746a927f2341f8cb13ae5cc85ad', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-29 16:42:11'),
(9200, 0, '104.129.198.66', 'e053b746a927f2341f8cb13ae5cc85ad', '/es/index.php/staff', 'http://roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-01-29 16:42:28'),
(9195, 0, '187.133.207.128', 'ff48d04dc42cbec018f82139409fdf22', '/es/index.php/noticias', 'http://roman.com.mx/es/index.php/staff', '2016-01-29 15:44:19'),
(9191, 0, '200.36.125.20', 'c16ba0de6251edc6e45f386cefba678b', '/es/', 'http://www.roman.com.mx/', '2016-01-29 15:39:48'),
(9192, 0, '177.248.38.231', '09b3b3387226e3e279f3121fbbe8d278', '/es/', '', '2016-01-29 15:42:24'),
(9193, 0, '187.133.207.128', 'ff48d04dc42cbec018f82139409fdf22', '/es/index.php/la-firma/nuestra-firma', 'http://roman.com.mx/es/', '2016-01-29 15:43:34'),
(9194, 0, '187.133.207.128', 'ff48d04dc42cbec018f82139409fdf22', '/es/index.php/staff', 'http://roman.com.mx/es/index.php/la-firma/nuestra-firma', '2016-01-29 15:43:54'),
(9184, 0, '157.55.39.155', 'a41fdea87311fd003d9e03942155f22c', '/es/', '', '2016-01-28 19:15:06'),
(9185, 0, '207.46.13.55', 'c7e8637b84afafaa859eb52ad2a24d6d', '/es/index.php/2013-10-02-14-45-01/tecnica-legislativa', '', '2016-01-28 21:03:22'),
(9186, 0, '66.249.69.45', '572b659473cb80c6c1acf258738b4f0e', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-29 01:23:15'),
(9187, 0, '66.249.69.29', 'c805cdcb6f21420e765190deaf3547aa', '/es/', '', '2016-01-29 10:14:29'),
(9188, 0, '66.249.69.29', 'b94e647ef883fca655cf0574f7ecf62d', '/es/index.php/2013-10-02-14-45-01/due-dilligence', '', '2016-01-29 12:23:47'),
(9189, 0, '200.36.125.20', '9b0e739634e73b80602fa83d05c8a6b0', '/es/', 'http://www.roman.com.mx/', '2016-01-29 15:13:00'),
(9190, 0, '187.133.207.128', 'ff48d04dc42cbec018f82139409fdf22', '/es/', 'http://www.roman.com.mx/', '2016-01-29 15:30:14'),
(9175, 0, '187.210.116.62', '651aa09af19cffd6c2303c5228e5dcc0', '/es/', 'http://www.roman.com.mx/es/index.php/contact', '2016-01-28 16:35:28'),
(9176, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-28 17:00:00'),
(9177, 0, '187.254.7.65', '191e92c6ecc206345ebe60474b1a157d', '/es/', '', '2016-01-28 17:21:47'),
(9178, 0, '187.254.7.65', '191e92c6ecc206345ebe60474b1a157d', '/es/index.php/staff', 'http://roman.com.mx/es/', '2016-01-28 17:22:39'),
(9174, 0, '187.210.116.62', '651aa09af19cffd6c2303c5228e5dcc0', '/es/index.php/contact', 'http://www.roman.com.mx/es/index.php/fundacion', '2016-01-28 16:34:51'),
(9173, 0, '187.210.116.62', '651aa09af19cffd6c2303c5228e5dcc0', '/es/index.php/fundacion', 'http://www.roman.com.mx/es/index.php/noticias', '2016-01-28 16:34:28'),
(9172, 0, '187.210.116.62', '651aa09af19cffd6c2303c5228e5dcc0', '/es/index.php/noticias', 'http://www.roman.com.mx/es/index.php/staff', '2016-01-28 16:34:11'),
(9171, 0, '187.210.116.62', '651aa09af19cffd6c2303c5228e5dcc0', '/es/index.php/staff', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', '2016-01-28 16:33:46'),
(9170, 0, '187.210.116.62', '651aa09af19cffd6c2303c5228e5dcc0', '/es/index.php/2013-10-02-14-45-01/fiscal/asesoria-y-consultoria-fiscal', 'http://www.roman.com.mx/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', '2016-01-28 16:33:28'),
(9169, 0, '187.210.116.62', '651aa09af19cffd6c2303c5228e5dcc0', '/es/index.php/2013-10-02-14-45-01/fiscal/consultoria-patrimonial', 'http://www.roman.com.mx/es/index.php/la-firma/modelo-de-servicios', '2016-01-28 16:33:09'),
(9168, 0, '187.210.116.62', '651aa09af19cffd6c2303c5228e5dcc0', '/es/index.php/la-firma/modelo-de-servicios', 'http://www.roman.com.mx/es/', '2016-01-28 16:31:56'),
(9167, 0, '207.46.13.168', '4e5540b4b277143ff53f7d628a9b742b', '/es/index.php/la-firma/13-nosotros', '', '2016-01-28 16:13:38'),
(9166, 0, '187.210.116.62', 'f1c322d51a009e119393b4aa968fa314', '/es/', 'http://www.roman.com.mx/es/', '2016-01-28 16:01:05'),
(9165, 0, '187.210.116.62', 'f1c322d51a009e119393b4aa968fa314', '/es/', 'http://www.roman.com.mx/es/index.php/fundacion', '2016-01-28 16:00:52'),
(9164, 0, '187.210.116.62', 'f1c322d51a009e119393b4aa968fa314', '/es/index.php/fundacion', 'http://www.roman.com.mx/es/', '2016-01-28 16:00:39'),
(9163, 0, '187.210.116.62', 'f1c322d51a009e119393b4aa968fa314', '/es/', 'https://www.google.com.mx', '2016-01-28 15:55:10'),
(9162, 0, '187.210.116.62', 'cf39e6fe5a03652b576adfd93c85b1c8', '/es/', 'https://www.google.com.mx', '2016-01-28 15:51:45'),
(9161, 0, '40.77.167.37', 'e371d71f750b21266a312dc06de26a0e', '/es/index.php/2013-10-02-14-45-01/fiscal/dictamen-por-enajenacion-de-acciones', '', '2016-01-28 15:48:11'),
(9160, 0, '177.248.38.231', '7cacc4bd831868b597e016d298dd88c6', '/es/', '', '2016-01-28 15:11:58'),
(9158, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-28 14:52:37'),
(9159, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-28 14:54:38'),
(9156, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-28 14:49:13'),
(9157, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-28 14:51:13'),
(9155, 0, '107.167.104.119', '82e38f9c159ff2e5461bdbb10afbf665', '/es/', '', '2016-01-28 14:31:20'),
(9154, 0, '107.167.104.119', '82e38f9c159ff2e5461bdbb10afbf665', '/es/index.php/contacto', 'http://roman.com.mx/es/', '2016-01-28 14:22:27'),
(9152, 0, '187.254.7.65', 'e9aef115f086f4b32d0c6014b976f6f2', '/es/', '', '2016-01-28 14:06:17'),
(9153, 0, '107.167.104.119', '82e38f9c159ff2e5461bdbb10afbf665', '/es/', 'http://roman.com.mx/', '2016-01-28 14:19:26'),
(9151, 0, '201.106.174.159', '1dbfdb49c419625df38d19655a09c29a', '/es/', 'http://roman.com.mx/es/administrator/index.php?option=com_modules&view=modules', '2016-01-28 02:25:17'),
(9148, 0, '201.106.174.159', '1dbfdb49c419625df38d19655a09c29a', '/es/', 'http://roman.com.mx/es/administrator/index.php?option=com_modules', '2016-01-28 02:18:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_schemas`
--

CREATE TABLE IF NOT EXISTS `klhu1_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `klhu1_schemas`
--

INSERT INTO `klhu1_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.18'),
(10021, '13.08a1'),
(10038, '1.9.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_session`
--

CREATE TABLE IF NOT EXISTS `klhu1_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `klhu1_session`
--

INSERT INTO `klhu1_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('6c1fbb2ccbc93b5b0a305080a771d902', 0, 1, '1458842635', 'FuiEI6vhMQBVE2ABC5LrfsWvpmG2xyxKYxoe3DPAvrU9jb2gDsNoZRbyNL3_x9tIfKDo_4mzuNUm5d-4xRk_SzuUc1MWPiAHU1kevdBSK7G9GQzmdEOtLTftGC0W3gBaWQTltCnYPrNC-0k_FfsnmKjaKMQMH1mx9QsFv9oZX8Zw1lFnbv4AsT8ZBYtZEA-l50hOncyzJHtkbH4aZ7SsOfCx-Om60M2QVF_CNLZ8JnQQPWrcaHO37M3g6IMvKjOaRmKRA20SJ9jY1cczDh-mbxf4woMDyF_6D1a0wfzIGRxHxRnbT97CtGw_KA2vNP2K_mBUMqZNQ5t8mCjpqLAEYALrYuAqVgPuS6jqm9E83gbWYz-aLZnW0zKuhZ_n20CUkE3W7PN0IZR30xozHtr05bKs9MZodyiDS6oYfS44oKgAriKlGeWd7bYiUftKxOgR9daA3JXmbNtSy19wCcIJ_o--4Az2Bd4W4jL124yNoE46nwT0j_BYQskE8kBuOMcR6uUz-3hRKY6dQ4AYS5uihe14EXQ-JuIXFQtp2nk9ovP24fm4TFBZcJ529kA7fPLKXwF4yJSNajK7SSbwRmhqNk2suzxZlu-rpnm3S6GH1ULQ_EGdyPhMrkwjCOgmZzzj8nFggba3QZ88sDkJgiBHZr7iaGXZMDIpwF6adT3F4nKAHqDxQxM1LEmOIMfJJrdSSIj2zJWiPWWTGFXGP3yudWh0gdhHSOJIez3aBfk8sTUhws3e8tQ77srMo-oZSnvBTrDMHxBe6gscXQtWVcrMzWmjfftHkGypGo7x4r-i5Obcxgpt52sBrYwWgYJJ59iNiI3Qxw2uDJxmXbEUk6RuGCGjxtWCXRO22qroHaJZ9J6J_K7C6NGdPoFO2cvu71lcvDSLlMINRfDxrYa1uxmwokPbV7SVLI8FGRknzkZwlUagq4OAKYZb0eCImt_-a5ZCqyTTpPo2FHbQxAnDlZzcGMSDibQKOa9E0sHoqwhdInPEKzmBlLkXmHaGpsy1I_CFZg2LIBYB3EMzBIY8sRpfafa6uRmpKCMfBFlR_yQKXnTBDrl5xFu3rdOkBb7RsB_NaiqpfIwIVqPE83zfrcN7uLrhzD0s2thfltvhc5Ff2sq7ToUgvdJ-WR8cBnYEsRKdRpNXqfJERzOXm5dqWMvmtDwLxFmQ0pZtOPmGJFJu3oo5nNqv7lr0GYjIgmK_3OPvZ6GH-Brz1QBUOC0LBT_CxpVy9u53hjYasDgXjhjgtr6yaZR79XobKgnWVUyNkBxIXT7T-f23gqkzC5_qeRuECoe9dRjBFWho5wHHrEQ83C-pptnyFubxqLkf0rPOe8kS3cIKGmf8osQdKyiPUykSQA3fvEJB-1msInZJiYLf2dQPezF-DWB-ZUmAhOkVoJ5o', 0, '', ''),
('4c864d7fa34edf1f3bf9e0aa802f58f1', 0, 1, '1458780350', 'XF-AIr2PoDToG4C26MWMYKQEZdCAy7yKQYS_5UJDtFmVzhHKnmfgfUb-LzHPzqMCij5F3k9CWwfcJKauzLBjQmKJ8HsF2MqwBb3YLiHl7eIy0UP3wCkRyOI7CZfjFt2qkiMvAkI6pQW22q2WAFDKYMptbMj_tcd7AH8kdsQL4jbMh9DE0X3Jl8Sm5RYxZftd0hhOqu2GPGxLgOBp44XCqfNcBO33sawuQ1oqjVYpVRUmlOZcv3WVUTAm49SOsPl0Igbcj-OR4k3X5aWhhJKC1a9PLjMgrjbt1LdS2OcIhKVF-CC3-Jd98i3IO0NF4ryHGj5z0ElzU39w_SSzBwbe4jBr2ljc2-5k194JP_G0PEwdWZLdHWUNhPTqUADohGe9IsgO_tSyHjswhzQx17wItlvHhz0MsTzjGLsusgj8sSXfSy-OvDv78uzo3zfB9HWxIvM7fKFyk5tk2gvpWZ_EuJYjSw4_v_-ab1WlaEzHdl-rfWcJ6GNA9LOmr-uHinQlTeqNAO3NNhTApY1FF8f0eONKIswCgiSkul2XlEuWpdGLnePSW7st0Gh086T2R0IFgpLhNqxMesur5NsTZUPLpjWSSVXWH0dizVKQitAkRpOXz2hFx1vjJGYZl01edvKUVPMDzL2kTB4DGN2ZywubxsHRhvhS4-tCO8qfWkypfeO7g3VnFa50Qr7Z5lA5qYpytyoOBMYWUBznRqXZlIZCNoH8JL6HT5k8fKF39vnql5Cy7ATetaHygZwpSJdO2zvDvijvOcEnPGvu1B2CvZwoLY2QhOL4YDSF6KmC3aGBVlGMDuhuB9DZ0bhhjpuGupfBM4VRqvmcR8-_ebMDD29leHow1EwD1HN20aq51P9KDjJUtPoQKODDArRXOOmOhYgVrSEIBBjrzxL67WQESzNrRgeLKFbwdeDL8_Y5KdaqHMKfs0Zy83TaXseB6ck5v_f0q4RJ9Clp9FiPFhGFSk-zG6OTC2-aPlsul4cqg_oEMX43JN5Le5JvBrIiHARoiG42LhtsSU7-gksSoGBWU83ADMC8wJKUPyqLggPRsWmJtPYVqp-vdifeYo3GmMhF3XX500UJkvSXecFJ_uQ43-h9vQZGiJvk-OGIeFkzpXWKtTaa9ot9tPQy5KGr6yh9c1bKgt33GJH9nJK7NYyDS9lwlwVfDWVHitJ6ZHovwHhnHYV5dJOn3nVhQ2otFXhBcpCoLU_QzqvYJQNFAPtnTuiKbLNQRgRrdx72FxsMVNmjhwnV4BxmbW8kFbVpRIFuQGf0USjNU53EasRW8z_-QMlG0ZcdaCnOSR0rDRyCr5Wetxw.', 0, '', ''),
('4080b816da09cfde57e4f59ffa8aa4cc', 0, 1, '1458770093', 'LZNXWOpVBsFpAn49a5FeAfDolbSgqP_xlWN620cSeZtBwB1TXBhGuxNxpxSyYb1LjkXBF-asf_UeanIkHr2_4rueRBB9udMoEqz--CzxkE4d3Zs4__wRwjHwDVUy83AigdlVsfbiCSKLaZr03ucUm4_EIzij4MNS3ggMtkfcvN-KVdxL5kmBKkuSZaReVZys6fW_B3uQMocomEvJg25oMjK1ovQ49jslS1QW7q5OQiG4JVvFYX0_OvATP6uh4PgNGwnWKJeYG3XMSiX7GBHZ5hrb6v9HHtQFJS15pKrGI0sdsUT0hWC8oIIbduDq4P0rZ6mVR_cJDsZngNsjfjfZt3zej3bpJ2yviR2XlvI5IASvG8B8UM8kJPoZYFzwYLkwEc6DsrurbSobMJBEK2SfzKx6mfXzBD9I_CVCSQhq9cjCp3JyRWUZ3TwFafSRAPWyLEgHXLXkRu0NXE1O3gHcL4Kn8rXzch1ZuQqeBWKTBc-9__OT-3h6XI1LT-543kMYDb0PRSEPOqXTvReb5v5BEwUzhK8NyNNQRpoXqKfBpgNdbtZS4_mj01xxOaytmHKN0iH0IjrcXb-PMDVJuqCFLk2zDuEqkvHOKy_fU1LapCdI2KTw1PlX8iZy-F_zY9KP6nLu7jZjeHut8izxnNifHv3h-4YV-Jotgg_X49aBj-3nAda_e_wlbfs-u8pL3iRRv8iKBXWHhTabLLU-SOoNDg85GrMoeV6Q0gJ_vNVxLnGDpwgq8PdW8yj7rcmTq3o1bXFEaFXMMjiID8_A9PXhejHSgLY_xY0hq-iYXm0vfeM7TR3JsQbp0eTnOweFtDQbrn11FIhB2Mjx-Rb3nsQkU0Jq7h-DGVRGSlsCr8foahhgIpN1ZjUFxpY4AnaUYs5QqtD69idDWoYdLct-kKaFsQHjhoKZxRksrbUE8ohCr1VXbdY-pGgu8ctO1ZqW-qeD7ahf9SOmdq1Gt3InvxBBBDRWOxsrXyFs1GTBNJjjGQvpm0nOvl4dcvPZ8cYbboaoAHozt3Crwl9Yr2AmiyKHkJ4L0D1JX6HtgZ0Sqc985NIF-uAGFOe6lC299cbkAvg5-3hZht7kA8SZe7N6eQKQjrzbjK6hf1mtaUTHdgZ1VDhKWOxDTO4HNxFknGJV9t6heTbgVs65jDBhGA80zDLzmgmQuXpjNNCEpQKlTqXmJpwabcTlUSkLurAe2gxaAN7_xglK-Bt6gkyVOlQIxOt5UdN-8sf1V6WFEFcZQSAtx4tod6SWTd8R_5f1wXRB8u3R', 0, '', ''),
('e7a86ff3474b90cdb9efdf9d681bcecf', 0, 1, '1458778074', '-v7DqNoi77Zs3FxIUuFW_NLNuWzVy4huKC-HyV9rKOUp5iKc45TkMKik6SrzOwBlW2g4S-VZontKwA7PGAgMQVm_0C4MIzZUhwR-duFJVWqKlqW8oQfaywZxh7rUneAd5N14769YoD0Dl7-DXt3eu71bpzRI0vxwM0SCdNSYjhw8EGXYMLDpJuO0l8VROP8dr6WkJg0FlFckjMA0oml1NLMPP8RTTMia0dd2IqV13mdd2YdQPrazVloxbCmzkLcsnx8oDlURQoE16654dqYXPwbpVv_CFEzHTqBVU1yt8ABATjtpPGk7b_3SYq8Ctue7zYaxBoIzk2sp_7aGTZfEA5Pv8AiOGCppN2olwjkA7hOVFUeHqNcvQHsRIAyrz5J782-30pqmO1ZUL878hbDc6EpeY-tesn2PsFHTL4uKhYztyatMTahOebD6myngo-NEiRVDfYRWlQF3sKtS0glY9zV023dq82oj70GgENWuW3Xa-o4SSHpqYMSJ8R_TPiJtlctyM-LcFDQ_E5Vve9MmCB5Oi9ZGnNhD4j2QlcepGfvo4_eXmKImazvKKJWAtOdicHp42gE6y5BnovlWTCohAAibVbbCpgQn9LqbvBmDiegCQgixYswxNUUXLLesNFvFQXM3B6BNzcnWWx8NW40FdTVXUhIORlCsnYPGWFOMA5i7_OR8rdWQkQfBbFIS9WU6tBZhmzyQFyqlM0mHDDsAaRFQ_djm253t4ib8WulTL7PZ69RuXuMNfRw8-_sYMC1y1KxE1ikTVbYQh7xg2F5Z9MTU3ySFl-0zMPbSRbfOtqXuhsmG8MxwQDsk4a6OFTuUZk0NAPxpkbx-S1_PYj3GTHaYvBKnclMxoVIOKaND51OcaCmkSQN6MAec9ejqAYW72qH6Qe9ZCMwRzMcNDItBy3x1Up2VRgHxkNxh9q2IpVZ6W0O4JYhmSV0Ed3_FzaqnIDxN_PqJ2XjD64OmK_9tB-9jnHFM4h2wtwW2grmNryjmzLTrAntp9pVXlnxy7ej-xd3UsTqUmBSgccH_DwqMyVmyxh0pbtncS4VtaPPFlWtY32MaINrEp8UHJ6cmZREuLW7lkM2vJQK0coZLVp1mS5VXfPphr-yW6HHLcY6dHz1Z1UehrvBpMKhOEj218PBXdHutyCvQW2Bj3b7WP04IyMYkKnWBaUrTiwOVeP9pasgjOBZIuIFh_dVcNR5-riZmF7kA3qtgMnTbKMpFYoIVrP1m8Vpdr9S_z4PLEry7MYfAWSL07p-jKUWsxA1Kv8u7HMqy8pR5wGkYI2sr6Y07VF8s1PPJqwKlSNTdb_4_Bks.', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_template_styles`
--

CREATE TABLE IF NOT EXISTS `klhu1_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `klhu1_template_styles`
--

INSERT INTO `klhu1_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(11, 'eris', 0, '0', 'Eris Template - Left Sidebar', '{"master":"10","current_id":"11","mainbodyPosition":"a:1:{i:12;a:3:{i:1;a:1:{s:2:\\"mb\\";i:12;}i:2;a:2:{s:2:\\"sa\\";i:3;s:2:\\"mb\\";i:9;}i:3;a:3:{s:2:\\"sa\\";i:3;s:2:\\"mb\\";i:6;s:2:\\"sb\\";i:3;}}}"}'),
(10, 'eris', 0, '1', 'Eris Template', '{"master":"true","current_id":"10","template_full_name":"Gantry Template","grid_system":"12","template_prefix":"gantry-","cookie_time":"31536000","copy_lang_files_if_diff":"1","bgcolor":"#d7d7d7","body_color":"#02867f","header-gradient":{"from":"#d7d7d7","to":"#d7d7d7"},"elementscolor":"#02867f","bottomcolor":"#2b2b2b","footercolor":"#2b2b2b","linkcolor":"#02867f","webfonts":{"enabled":"1","source":"google"},"font":{"family":"g:Cuprum","size":"default","size-is":"default"},"demo_panel":"0","viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","iphonegradients-priority":"6","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","inactive-priority":"10","iphoneimages-priority":"11","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","belatedpng-priority":"17","fusionmenu-priority":"18","ie6menu-priority":"19","ie6warn-priority":"20","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","suckerfishmenu-priority":"25","touchmenu-priority":"26","webfonts-priority":"27","styledeclaration-enabled":"1","logo":{"enabled":"1","znlogo":"images\\/logo-roman-new2.png","autosize":"1","logowidth":"","logoheight":"","logopadding":"20px 0 20px 0","position":"logo"},"favicon":{"fav":"images\\/favicon32x32.png","favapple":"images\\/favicon72x72.png"},"prettyphoto":{"enabled":"1","theme":"light_rounded"},"date":{"enabled":"1","position":"date","clientside":"0","formats":"%A, %B %d, %Y"},"smartload":{"enabled":"0","text":"50","ignores":"com_contact","exclusion":""},"totop":{"enabled":"1","position":"totop","text":"Scroll to Top"},"systemmessages":{"enabled":"1","position":"syserrors"},"ie6warn":{"enabled":"1","delay":"2000"},"analytics":{"enabled":"1","code":"UA-4777573-25"},"menu":{"enabled":"1","type":"fusionmenu","fusionmenu":{"position":"header-a","enable_js":"1","opacity":"1","effect":"slidefade","hidedelay":"500","menu-animation":"Circ.easeOut","menu-duration":"300","centered-offset":"0","tweak-initial-x":"-10","tweak-initial-y":"-13","tweak-subsequent-x":"0","tweak-subsequent-y":"0","tweak-width":"20","tweak-height":"20","enable-current-id":"0","theme":"gantry-fusion","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","module_cache":"1"},"splitmenu":{"theme":"gantry-splitmenu","cache":"0","module_cache":"1","mainmenu-position":"header-b","mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-position":"sidebar-a","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"9","submenu-class_sfx":""}},"top":{"layout":"5,7","showall":"0","showmax":"6"},"header":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"showcase":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:8;i:1;i:4;}}}","showall":"0","showmax":"6"},"feature":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:8;i:1;i:4;}}}","showall":"0","showmax":"6"},"utility":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"6,3,3","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"iphone-enabled":"0","android-enabled":"0","iphone-scalable":"1","iphone-switcher":{"enabled":"0","position":"mobile-header"},"touchmenu":{"enabled":"1","position":"mobile-navigation","theme":"touch","animation":"cube","cache":"0","module_cache":"1","startLevel":"0","endLevel":"20","showAllChildren":"1"},"iphoneimages":{"enabled":"1","minWidth":"80","percentage":"33"},"iphone-header-gradient":{"from":"#ffffff","to":"#f5f5f5","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"iphone-showcase-gradient":{"from":"#ededed","to":"#fff","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"iphone-footer-gradient":{"from":"#545353","to":"#262626","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"mobile":{"drawer":"drawer","top":"top-a","header":"logo","navigation":"mobile-navigation","maintop":"mobile-maintop","showcase":"mobile-showcase","footer":"footer-a","copyright":"copyright"},"cache":{"enabled":"0","time":"900"},"gzipper":{"enabled":"0","time":"600","expirestime":"1440","stripwhitespace":"1"},"inputstyling":{"enabled":"0","exclusions":"''.content_vote''"},"component-enabled":"0","rtl-enabled":"1","buildspans-enabled":"0","pagesuffix-enabled":"1","inactive":{"enabled":"1"}}'),
(12, 'rt_missioncontrol', 1, '0', 'rt_missioncontrol - Defecto', '{"adminTitle":"Joomla Administrator","templateWidth":"variable","dashboard":"MissionControl is a brand-new take on the Joomla Administrator template.  Primary objectives during development were clean modern design, optimal usability, configurable colors and logo, and enhanced functionality via optimizations and new extensions.","menuwidth":"small","extendmenu":"off","enableGravatar":"1","enableSessionBar":"1","enableTransitions":"enabled","enableQuickEditor":"1","enableViewSite":"1","enableQuickCheckin":"0","enableQuickCacheClean":"1","enableFancyHeaders":"fancy","showhelp":"1","showhelpbutton":"1","showlangmenu":"1","body_text_color":"#333333","body_link_color":"#4486BA","header_bg_color":"#333333","header_text_color":"#CCCCCC","header_link_color":"#FFFFFF","header_shadow_color":"#000000","tab_bg_color":"#4D4D4D","tab_text_color":"#FFFFFF","special_bg_color":"#C62D2D","special_text_color":"#FFFFFF","active_bg_color":"#4F9BD8","active_text_color":"#FFFFFF","hover_bg_color":"#88B719","hover_text_color":"#FFFFFF"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_update_categories`
--

CREATE TABLE IF NOT EXISTS `klhu1_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_update_sites`
--

CREATE TABLE IF NOT EXISTS `klhu1_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `klhu1_update_sites`
--

INSERT INTO `klhu1_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1453947155),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1453947155),
(14, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1453947155),
(6, 'Migur', 'extension', 'http://update.migur.com/newsletter.xml', 1, 1403113901),
(7, 'Simple Image Gallery (by JoomlaWorks)', 'extension', 'http://www.joomlaworks.gr/extensions/updates/sig.xml', 0, 1389283560),
(8, 'B2Jcontact update site', 'extension', 'http://repos.bang2joom.com/components/com_b2jcontact_j2.5.xml', 1, 1403113901),
(10, 'Simple Image Gallery', 'extension', 'http://www.joomlaworks.net/updates/jw_sig.xml', 1, 1403113903),
(11, 'Extension Update Site', 'collection', 'http://updates.rockettheme.com/joomla16/updates.xml', 0, 1389283560),
(12, 'NoNumber Modules Anywhere', 'extension', 'http://download.nonumber.nl/updates.php?e=modulesanywhere&type=.zip', 1, 1403113903);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `klhu1_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `klhu1_update_sites_extensions`
--

INSERT INTO `klhu1_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(6, 10021),
(7, 10028),
(8, 10038),
(10, 10046),
(11, 10048),
(12, 10056),
(12, 10057),
(14, 10069);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_updates`
--

CREATE TABLE IF NOT EXISTS `klhu1_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=62 ;

--
-- Volcado de datos para la tabla `klhu1_updates`
--

INSERT INTO `klhu1_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 8, 10038, 0, 'B2J Contact (must be updated manually)', '', 'com_b2jcontact', 'component', '', 1, '1.7', '', 'http://repos.bang2joom.com/components/com_b2jcontact_j2.5.xml', 'http://www.bang2joom.com/dashboard'),
(5, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(6, 14, 10069, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.24', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(7, 8, 0, 0, 'B2J Contact (must be updated manually)', '', 'com_b2jcontact', 'component', '', 1, '2.0', '', 'http://repos.bang2joom.com/components/com_b2jcontact_j2.5.xml', 'http://www.bang2joom.com/dashboard/frontview'),
(8, 10, 10028, 0, 'Simple Image Gallery', 'The best free image gallery for Joomla!', 'jw_simpleimagegallery', 'plugin', 'content', 0, '3.0.0', '', 'http://www.joomlaworks.net/updates/jw_sig.xml', 'http://forum.joomlaworks.net/extension-updates/may-27th-2013-simple-image-gallery-v3-0-0/'),
(9, 12, 10056, 0, 'Modules Anywhere', '', 'modulesanywhere', 'plugin', 'system', 0, '3.4.2FREE', '', 'http://download.nonumber.nl/updates.php?e=modulesanywhere&type=.zip/extension.xml', 'http://www.nonumber.nl/extensions/modulesanywhere#download'),
(10, 8, 0, 0, 'B2J Contact (must be updated manually)', '', 'com_b2jcontact', 'component', '', 1, '2.0', '', 'http://repos.bang2joom.com/components/com_b2jcontact_j2.5.xml', 'http://www.bang2joom.com/dashboard/frontview'),
(11, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.22', '', 'http://update.joomla.org/core/extension.xml', ''),
(12, 8, 0, 0, 'B2J Contact (must be updated manually)', '', 'com_b2jcontact', 'component', '', 1, '2.0', '', 'http://repos.bang2joom.com/components/com_b2jcontact_j2.5.xml', 'http://www.bang2joom.com/dashboard/frontview'),
(13, 10, 10046, 0, 'Simple Image Gallery', 'The most popular image gallery extension for Joomla!', 'jw_sig', 'plugin', 'content', 0, '3.0.1', '', 'http://www.joomlaworks.net/updates/jw_sig.xml', '#'),
(14, 12, 0, 0, 'Modules Anywhere', '', 'modulesanywhere', 'plugin', 'system', 0, '3.4.3FREE', '', 'http://download.nonumber.nl/updates.php?e=modulesanywhere&type=.zip/extension.xml', 'http://www.nonumber.nl/extensions/modulesanywhere#download'),
(15, 12, 0, 0, 'Modules Anywhere', '', 'modulesanywhere', 'plugin', 'system', 0, '3.4.3FREE', '', 'http://download.nonumber.nl/updates.php?e=modulesanywhere&type=.zip/extension.xml', 'http://www.nonumber.nl/extensions/modulesanywhere#download'),
(16, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.24', '', 'http://update.joomla.org/core/extension.xml', ''),
(17, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.25', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(18, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.24', '', 'http://update.joomla.org/core/extension.xml', ''),
(19, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.25', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(20, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.24', '', 'http://update.joomla.org/core/extension.xml', ''),
(21, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.25', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(22, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.24', '', 'http://update.joomla.org/core/extension.xml', ''),
(23, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.25', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(24, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.24', '', 'http://update.joomla.org/core/extension.xml', ''),
(25, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.25', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(26, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.24', '', 'http://update.joomla.org/core/extension.xml', ''),
(27, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.25', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(28, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.27', '', 'http://update.joomla.org/core/extension.xml', ''),
(29, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.26', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(30, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(31, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.27', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(32, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(33, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(34, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(35, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(36, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(37, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(38, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(39, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(40, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(41, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(42, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(43, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(44, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(45, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(46, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(47, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(48, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(49, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(50, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(51, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(52, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(53, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(54, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(55, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(56, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(57, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(58, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(59, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org'),
(60, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(61, 14, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.29', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_user_notes`
--

CREATE TABLE IF NOT EXISTS `klhu1_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_user_profiles`
--

CREATE TABLE IF NOT EXISTS `klhu1_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `klhu1_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `klhu1_user_usergroup_map`
--

INSERT INTO `klhu1_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8),
(43, 3),
(43, 4),
(43, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_usergroups`
--

CREATE TABLE IF NOT EXISTS `klhu1_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `klhu1_usergroups`
--

INSERT INTO `klhu1_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_users`
--

CREATE TABLE IF NOT EXISTS `klhu1_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `klhu1_users`
--

INSERT INTO `klhu1_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(42, 'Super User', 'tinonav', 'tino@sigmapcs.com.mx', '$P$DBcPz6yo0S2v.bVqZwJB5aRhF717OR/', 'deprecated', 0, 1, '2013-10-02 13:56:59', '2016-01-28 02:12:33', '0', '{}'),
(43, 'Alfonso Roman', 'roman', 'andmin@admin.com', '$P$DPOcZl.Hv3kcb9AVWKvt0uvZ5mqlGb.', '', 0, 0, '2014-02-20 17:26:06', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_viewlevels`
--

CREATE TABLE IF NOT EXISTS `klhu1_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `klhu1_viewlevels`
--

INSERT INTO `klhu1_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `klhu1_weblinks`
--

CREATE TABLE IF NOT EXISTS `klhu1_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

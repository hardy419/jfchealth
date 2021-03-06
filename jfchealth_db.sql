-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 05 月 22 日 03:52
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `jfchealth_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- 表的结构 `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(1, 3, 'Description'),
(2, 3, 'No. of Cores'),
(4, 3, 'test 1'),
(5, 3, 'test 2'),
(6, 3, 'test 3'),
(7, 3, 'test 4'),
(8, 3, 'test 5'),
(9, 3, 'test 6'),
(10, 3, 'test 7'),
(11, 3, 'test 8'),
(3, 3, 'Clockspeed'),
(1, 4, 'Description'),
(2, 4, 'No. of Cores'),
(4, 4, 'test 1'),
(5, 4, 'test 2'),
(6, 4, 'test 3'),
(7, 4, 'test 4'),
(8, 4, 'test 5'),
(9, 4, 'test 6'),
(10, 4, 'test 7'),
(11, 4, 'test 8'),
(3, 4, 'Clockspeed');

-- --------------------------------------------------------

--
-- 表的结构 `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- 表的结构 `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(3, 3, 'Memory'),
(4, 3, 'Technical'),
(5, 3, 'Motherboard'),
(6, 3, 'Processor'),
(3, 4, 'Memory'),
(4, 4, 'Technical'),
(5, 4, 'Motherboard'),
(6, 4, 'Processor');

-- --------------------------------------------------------

--
-- 表的结构 `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(9, 'banner', 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- 转存表中的数据 `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(100, 9, '', 'data/img_banner_photo01.png');

-- --------------------------------------------------------

--
-- 表的结构 `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(100, 1, 9, 'banner2'),
(100, 3, 9, 'banner2'),
(100, 4, 9, 'banner2');

-- --------------------------------------------------------

--
-- 表的结构 `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- 转存表中的数据 `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(99, 'data/img_product01_title.png', 0, 0, 1, 4, 1, '2015-04-23 13:53:02', '2015-04-23 13:53:02'),
(100, 'data/img_product02_title.png', 0, 0, 0, 3, 1, '2015-04-23 13:53:30', '2015-05-22 14:44:48'),
(101, 'data/img_product03_title.png', 0, 0, 0, 2, 1, '2015-04-23 13:54:43', '2015-06-10 10:55:32'),
(102, 'data/img_product04_title.png', 0, 0, 0, 1, 1, '2015-04-23 13:55:01', '2015-05-22 14:42:40');

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(99, 1, '內喝系列', '', '', ''),
(100, 3, '外照系列', '', '', ''),
(101, 1, '套裝系列', '', '', ''),
(101, 4, '套装系列', '', '', ''),
(99, 3, '內喝系列', '', '', ''),
(100, 4, '外照系列', '', '', ''),
(99, 4, '內喝系列', '', '', ''),
(100, 1, '外照系列', '', '', ''),
(101, 3, '套裝系列', '', '', ''),
(102, 1, '健康系列', '', '', ''),
(102, 4, '健康系列', '', '', ''),
(102, 3, '健康系列', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(99, 99, 0),
(101, 101, 0),
(102, 102, 0),
(100, 100, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(99, 0),
(100, 0),
(101, 0),
(102, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=252 ;

--
-- 转存表中的数据 `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(240, 'Jersey', 'JE', 'JEY', '', 1, 1),
(241, 'Guernsey', 'GG', 'GGY', '', 1, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- 表的结构 `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_course`
--

CREATE TABLE IF NOT EXISTS `oc_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_period` varchar(32) NOT NULL,
  `seats` int(11) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `oc_course`
--

INSERT INTO `oc_course` (`course_id`, `image`, `date`, `time_period`, `seats`, `phone`, `sort_order`, `status`, `time`) VALUES
(1, 'data/course/course01/img_course_photo01.png', '0000-00-00', '14:00 - 15:30', 40, '(852) 2735 2888', 1, 1, '2015-04-29 10:34:39'),
(2, 'data/course/course02/img_course_photo01.png', '0000-00-00', '14:30 - 17:30', 40, '(852) 2735 2888', 2, 1, '2015-04-29 10:37:11'),
(5, 'data/course/img_course_02.png', '0000-00-00', '14:00 – 16:00', 40, '(852) 2735 2888', 4, 1, '2015-05-22 18:25:34'),
(4, 'data/course/img_course_03.png', '0000-00-00', '14:00 – 16:00', 40, '(852) 2735 2888', 3, 1, '2015-05-22 18:04:39'),
(6, 'data/course/img_course_01.png', '0000-00-00', '14:00 – 16:00', 40, '(852) 2735 2888', 5, 1, '2015-05-22 18:27:04');

-- --------------------------------------------------------

--
-- 表的结构 `oc_course_customer`
--

CREATE TABLE IF NOT EXISTS `oc_course_customer` (
  `course_customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `addtime` datetime NOT NULL,
  PRIMARY KEY (`course_customer_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_course_customer`
--

INSERT INTO `oc_course_customer` (`course_customer_id`, `course_id`, `name`, `phone`, `email`, `member_name`, `addtime`) VALUES
(1, 2, 'test1', '123456789', '', '', '2015-05-22 18:11:25'),
(2, 7, 'test', 'test', '', '', '2015-09-30 17:10:26'),
(3, 2, 'thomas', '98765432', 'thomaslaw@mrnewbie.com', '123456', '2015-10-13 11:28:14');

-- --------------------------------------------------------

--
-- 表的结构 `oc_course_description`
--

CREATE TABLE IF NOT EXISTS `oc_course_description` (
  `course_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_date` varchar(32) NOT NULL,
  `location` varchar(64) NOT NULL,
  `speaker` varchar(16) NOT NULL,
  PRIMARY KEY (`course_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_course_description`
--

INSERT INTO `oc_course_description` (`course_id`, `language_id`, `name`, `course_date`, `location`, `speaker`) VALUES
(1, 3, '頻譜與您', '逢星期六', '駿豐頻譜(香港)有限公司(香港九龍咀梳士巴利道3號星光行7樓760室)', '團隊領袖'),
(1, 1, '頻譜與您', '逢星期六', '駿豐頻譜(香港)有限公司(香港九龍咀梳士巴利道3號星光行7樓760室)', '團隊領袖'),
(2, 1, '春季養生', '2015年3月11日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '團隊專家'),
(2, 4, '春季養生', '2015年3月11日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '團隊專家'),
(2, 3, '春季養生', '2015年3月11日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '團隊專家'),
(4, 3, '腹寶產品講解與頻譜原理', '2015年5月5日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '楊光專家(駿豐頻譜總公司專家組)'),
(4, 1, '腹寶產品講解與頻譜原理', '2015年5月5日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '楊光專家(駿豐頻譜總公司專家組)'),
(4, 4, '腹宝产品讲解与频谱原理', '2015年5月5日', '骏丰频谱(香港)有限公司（香港九龙尖沙咀梳士巴利道3号星光行7楼760室）', '杨光专家(骏丰频谱总公司专家组)'),
(1, 4, '頻譜與您', '逢星期六', '駿豐頻譜(香港)有限公司(香港九龍咀梳士巴利道3號星光行7樓760室)', '團隊領袖'),
(5, 3, 'JF-139B頻譜保健水儀802保健儀原理講解', '2015年5月19日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '楊光專家(駿豐頻譜總公司專家組組'),
(5, 1, 'JF-139B頻譜保健水儀802保健儀原理講解', '2015年5月19日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '楊光專家(駿豐頻譜總公司專家組)'),
(5, 4, 'JF-139B频谱保健水仪802保健仪原理讲解', '2015年5月19日', '骏丰频谱(香港)有限公司（香港九龙尖沙咀梳士巴利道3号星光行7楼760室）', '杨光专家(骏丰频谱总公司专家组)'),
(6, 3, '團隊建設(管理)課程 — 團隊領導應具備的管理技能', '2015年5月26日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '楊光專家(駿豐頻譜總公司專家組)'),
(6, 1, '團隊建設(管理)課程 — 團隊領導應具備的管理技能', '2015年5月26日', '駿豐頻譜(香港)有限公司（香港九龍尖沙咀梳士巴利道3號星光行7樓760室）', '楊光專家(駿豐頻譜總公司專家組組'),
(6, 4, '团队建设(管理)课程— 团队领导应具备的管理技能', '2015年5月26日', '骏丰频谱(香港)有限公司（香港九龙尖沙咀梳士巴利道3号星光行7楼760室）', '杨光专家(骏丰频谱总公司专家组)');

-- --------------------------------------------------------

--
-- 表的结构 `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, '人民币', 'CNY', '¥', '', '2', 0.81750000, 1, '2015-10-13 08:06:52'),
(2, '香港幣', 'HKD', 'HKD$', '', '2', 1.00000000, 1, '2015-10-13 08:07:35');

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_field`
--

CREATE TABLE IF NOT EXISTS `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test'),
(1, 4, 'Default', 'test');

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=439 ;

--
-- 转存表中的数据 `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(433, 'payment', 'pp_standard'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(429, 'module', 'banner'),
(430, 'module', 'latest'),
(387, 'shipping', 'flat'),
(413, 'module', 'category'),
(407, 'payment', 'free_checkout'),
(435, 'module', 'pp_layout'),
(436, 'payment', 'pp_express'),
(438, 'payment', 'bank_transfer');

-- --------------------------------------------------------

--
-- 表的结构 `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- 表的结构 `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(4, 1, 1, 1),
(7, 0, 0, 1),
(10, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(4, 3, 'About Us', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;850&quot;&gt;&lt;img height=&quot;200&quot; src=&quot;catalog/view/theme/jfchealth/images/img_aboutus_banner.png&quot; style=&quot;opacity: 0.9;&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;ul style=&quot;list-style:inside disc none&quot;&gt;\r\n							&lt;li&gt;創立于1989年&lt;/li&gt;\r\n							&lt;li&gt;集科研，生產，銷售為一體&lt;/li&gt;\r\n							&lt;li&gt;500家專賣店&lt;/li&gt;\r\n							&lt;li&gt;2,000個服務網店&lt;/li&gt;\r\n							&lt;li&gt;員工人數近6,000人&lt;/li&gt;\r\n						&lt;/ul&gt;\r\n						&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; valign=&quot;middle&quot; width=&quot;312&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/zh-HK/word_aboutus.png&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;駿豐頻譜公司創業於1989年，是一家專門致力於家庭保健事業的高新技術企業。公司以高科技為先導，以雄厚的科研力量為基礎，以國內資深科學家、醫學專家、國家權威研究及檢測機構為依託，以擁有自主知識產權的發明專利和非藥物健康產品為核心，以嚴實的經營作風與科學規範的管理而不斷發展壯大。&lt;/p&gt;\r\n\r\n			&lt;p&gt;目前公司生產和經營的系列駿豐頻譜水保健儀高科技系列產品已通過科技成果鑒定，獲得中、美、德、英、日、澳和新加坡等多國發明專利，在國內榮獲“科技進步獎”，榮獲五項國際發明大獎。&lt;/p&gt;\r\n\r\n			&lt;p&gt;駿豐頻譜公司在長期實踐生物頻譜技術的研究，經不斷探索與創新，科學總結出“內喝外照”（即內喝頻譜水，外照頻譜儀/屋）的生物頻譜保健法，進一步滿足了人們對健康的需求，是實現人們夢寐以求的非藥物自然保健的又一重大貢獻，為人們在日常生活中進行保健和輔助治療提供了更加方便和有效的新途徑。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n'),
(7, 3, 'Certificates', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;margin:auto&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/tw/img_title_Patent.png&quot; style=&quot;width: 198px; height: 48px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert01.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert02.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert03.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;中國發明專利&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;美國發明專利&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;新加坡發明專利&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert04.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert05.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert06.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;英國發明專利&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;澳大利亞發明專利&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;德國發明專利&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/tw/img_title_Certification.png&quot; style=&quot;width: 198px; height: 48px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert07.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert08.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert09.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;70&quot; valign=&quot;middle&quot;&gt;醫療器械質量管理體系&lt;br /&gt;\r\n						認証証書&lt;br /&gt;\r\n						(編號：04712Q10000090)&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;質量體系認証証書&lt;br /&gt;\r\n						(編號：04712Q10097R4M)&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;高新企業証書&lt;br /&gt;\r\n						(編號：GF201144000801)&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; height=&quot;589&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/tw/img_title_Awards.png&quot; style=&quot;width: 198px; height: 48px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert10.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert11.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert12.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;2006年6月在美國第22屆匹茲堡國際新發明新產品博覽會(INPEX)上，&lt;br /&gt;\r\n						榮獲電器/電子科技類金獎(左)，醫學科技類銀獎(中)，生物科技類銀獎(右)。&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert13.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert14.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;3&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;2006年11月在比利時布魯塞爾第55屆尤裹卡國際新發明新技術 博覽會上，榮獲醫學科技類金獎(左)和比利時佛萊芒政府特別獎(右)。&lt;br /&gt;\r\n						&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/cert15.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/cert16.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/cert17.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;2015年第43屆日內瓦參展獲獎證書&lt;br /&gt;\r\n						JF-139獲獎證書(左)，JF-802獲獎證書(中)，JF-902獲獎證書(右)。&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n'),
(4, 1, 'About Us', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;850&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/img_aboutus_banner.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;ul style=&quot;list-style:inside disc none&quot;&gt;\r\n							&lt;li&gt;Founded in 1989&lt;/li&gt;\r\n							&lt;li&gt;A combination of research, manufacturing and sales&lt;/li&gt;\r\n							&lt;li&gt;500 franchise stores&lt;/li&gt;\r\n							&lt;li&gt;2,000 community service centers&lt;/li&gt;\r\n							&lt;li&gt;Approximately 6,000 employees&lt;/li&gt;\r\n						&lt;/ul&gt;\r\n						&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; valign=&quot;middle&quot; width=&quot;312&quot;&gt;&lt;img height=&quot;46&quot; src=&quot;catalog/view/theme/jfchealth/images/en/word_aboutus.png&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;The JUNFENG Spectrum, founded in 1989, is an enterprise group dedicated to home health care equipment. Our company’s foundation is based on our research strength and is led by high technology. We rely on senior scientists and medical specialists as well as authoritative national research and testing institutions throughout China and, with our core of patented inventions and a series of non-medical health care products, our substantial growth and development are derived from our stringent and practical business style and scientific management.&amp;nbsp;&lt;br /&gt;\r\n			&amp;nbsp;&lt;br /&gt;\r\n			The “JUNFENG BFS Water Modulator” series hi-tech products, which we manufactur and sell, have been recognized as scientific and technological achievements in the United States, Germany, Britain, Australia and Singapore. We hold multi-national invention patents and have won the “Science and Technology Progress Award” and five other international invention awards for the series.&amp;nbsp;&lt;br /&gt;\r\n			&amp;nbsp;&lt;br /&gt;\r\n			JUNFENG BFS has been engaged in “Bio-Spectrum” technology for a long period of time, and continues to explore and createnew innovations in order to further satisfy the aspiration of those in pursuit of good health. We have come up with a scientific bio-therapy “drink inside/exposure outside” (i.e., drink in bio-spectrum water, expose yourself to bio-spectrum apparatus/kiosk outside) which is a huge contribution towards the “non-medicine natural therapy” dream. We provide a more convenient and effective measure for health care treatment in people’s everyday life.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n'),
(4, 4, 'About Us', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;850&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/img_aboutus_banner.png&quot; style=&quot;opacity: 0.9;&quot; width=&quot;850&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;ul style=&quot;list-style:inside disc none&quot;&gt;\r\n							&lt;li&gt;&lt;span&gt;创立于1989年&lt;/span&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;span&gt;集科研，生产，销售为一体&lt;/span&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;span&gt;500家专卖店&lt;/span&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;span&gt;2,000个服务网店&lt;/span&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;span&gt;员工人数近6,000人&lt;/span&gt;&lt;/li&gt;\r\n						&lt;/ul&gt;\r\n						&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; valign=&quot;middle&quot; width=&quot;312&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/zh/word_aboutus.png&quot; /&gt;&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&lt;span&gt;骏丰频谱公司创业于1989年，是一家专门致力于家庭保健事业的高新技术企业。公司以高科技为先导，以雄厚的科研力量为基础，以国内资深科学家、医学专家、 国家权威​​研究及检测机构为依托，以拥有自主知识产权的发明专利和非药物健康产品为核心，以严实的经营作风与科学规范的管理而不断发展壮大&lt;/span&gt;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&lt;span&gt;目前公司生产和经营的系列骏丰频谱水保健仪高科技系列产品已通过科技成果鉴定，获得中、美、德、英、日、澳和新加坡等多国发明专利，在国内荣获“科技进步奖”，荣获五项国际发明大奖。&lt;/span&gt;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;骏丰频谱公司在长期实践生物频谱技术的研究，经不断探索与创新，科学总结出“内喝外照”（即内喝频谱水，外照频谱仪/屋）的生物频谱疗法，进一步满足了人们对健康的需求，是实现人们梦寐以求的非药物自然疗法的又一重大贡献，为人们在日常生活中进行保健和辅助治疗提供了更加方便和有效的新途径。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n'),
(7, 1, 'Certificates', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;margin:auto&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/img_title_Patent.png&quot; style=&quot;width: 157px; height: 37px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert01.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;50&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert02.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;50&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert03.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;Granted Invention Patent of China, Dec, 2001 Certificate of Invention Patent of China&lt;/p&gt;\r\n						&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;Granted Invention Patent of U.S.A, May,2001 Certificate of Invention Patent of U.S.A&lt;/p&gt;\r\n						&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;Granted Invention Patent of Singapore, Apr, 2001 Certificate of Invention Patent of Singapore&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert04.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert05.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert06.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;Granted Invention Patent of Britain, Jan, 2003 Certificate of Invention Patent of Britain&lt;/p&gt;\r\n						&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;Granted Invention Patent of Australia, March, 2002 Certificate of Invention Patent of Australia&lt;/p&gt;\r\n						&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;Granted Invention Patent of Germany, Jan, 2008 Certificate of Invention Patent of Germany&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/img_title_Certification.png&quot; style=&quot;width: 288px; height: 38px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert07.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;50&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert08.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;50&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert09.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;70&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;ISO 13485:2003&lt;/p&gt;\r\n						&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;ISO 9001:2000&lt;/p&gt;\r\n						&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;High Technology Enterprise Certificate, Guangdong Province, 2003&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/img_title_Awards.png&quot; style=&quot;width: 179px; height: 37px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert10.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;50&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert11.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;50&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;190&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert12.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;Medical technology class gold medal and the Belgian Flemisn Government Special Award. (Eureka World Exhibition of Innovation)&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert13.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert14.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;3&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;p&gt;Gold Medal in Electronics, Silver Medal in Biology Related Products, and Silver Medal in Medical INPEX (Invention &amp;amp; New Product Exposition)&lt;/p&gt;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n'),
(7, 4, 'Certificates', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;margin:auto&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/zh/img_title_Patent.png&quot; style=&quot;width: 197px; height: 48px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert01.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert02.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert03.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;中国发明专利&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;美国发明专利&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;新加坡发明专利&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert04.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert05.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert06.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;英国发明专利&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;澳大利亚发明专利&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;德国发明专利&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/zh/img_title_Certification.png&quot; style=&quot;width: 200px; height: 47px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert07.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert08.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert09.png&quot; style=&quot;width: 270px; height: 392px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;70&quot; valign=&quot;middle&quot;&gt;医疗器械质量管理体系&lt;br /&gt;\r\n						认证证书&lt;br /&gt;\r\n						(编号：04712Q10000090)&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;质量体系认证证书&lt;br /&gt;\r\n						(编号：04712Q10097R4M)&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; valign=&quot;middle&quot;&gt;高新企业证书&lt;br /&gt;\r\n						(编号：GF201144000801)&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;5&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/jfchealth/image/data/zh/img_title_Awards.png&quot; style=&quot;width: 200px; height: 47px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert10.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert11.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert12.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;2006年6月在美国第22届匹兹堡国际新发明新产品博览会(INPEX)上，&lt;br /&gt;\r\n						荣获电器/电子科技类金奖(左)，医学科技类银奖(中)，生物科技类银奖(右)。&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert13.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&lt;img src=&quot;catalog/view/theme/jfchealth/images/cert14.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;3&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;2006年11月在比利时布鲁塞尔第55届尤裹卡国际新发明新技术博览会上，荣获医学科技类金奖(左)和比利时佛莱芒政府特别奖(右)。&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/cert15.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/cert16.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n						&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n						&lt;td width=&quot;270&quot;&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/cert17.png&quot; style=&quot;width: 270px; height: 284px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;2015年第43届日内瓦参展获奖证书&lt;br /&gt;\r\n						JF-139获奖证书(左)，JF-802获奖证书(中)，JF-902获奖证书(右)。&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;index_content_txt&quot; colspan=&quot;5&quot; height=&quot;20&quot; valign=&quot;middle&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n'),
(10, 1, 'Contact Us', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; height=&quot;300&quot; valign=&quot;middle&quot;&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;290&quot; src=&quot;https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3691.559532843163!2d114.168794!3d22.294668999999995!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x340400f32252543f%3A0xdc4e501f5cca3f47!2z5pif5YWJ6KGM!5e0!3m2!1szh-TW!2shk!4v1422948326575&quot; style=&quot;border:5px solid #ffffff&quot; width=&quot;840&quot;&gt;&lt;/iframe&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;10&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;如對我們的產品、公司資訊或銷售詳情有任何疑問，歡迎以下列方式與我們聯絡：&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&lt;span class=&quot;index_news_title&quot;&gt;香港：&lt;/span&gt;&lt;br /&gt;\r\n			駿豐頻譜(香港)有限公司&lt;br /&gt;\r\n			香港九龍尖沙咀梳士巴利道3號星光行7樓758－765室&lt;br /&gt;\r\n			電話： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2735 2888&lt;/span&gt;&lt;br /&gt;\r\n			傳真： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2350 9633&lt;/span&gt;&lt;br /&gt;\r\n			公司電郵： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;junfenghk@jfcgroup.com.cn&lt;/span&gt;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&lt;span class=&quot;index_news_title&quot;&gt;售後服務：&lt;/span&gt;&lt;br /&gt;\r\n			駿豐頻譜水保健儀：自購買之日起，整機保修一年，核心部件(頻譜發生裝置)保修八年&lt;br /&gt;\r\n			香港諮詢熱線:&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2735 2888&lt;/span&gt;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n'),
(10, 4, 'Contact Us', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; height=&quot;300&quot; valign=&quot;middle&quot;&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;290&quot; src=&quot;https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3691.559532843163!2d114.168794!3d22.294668999999995!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x340400f32252543f%3A0xdc4e501f5cca3f47!2z5pif5YWJ6KGM!5e0!3m2!1szh-TW!2shk!4v1422948326575&quot; style=&quot;border:5px solid #ffffff&quot; width=&quot;840&quot;&gt;&lt;/iframe&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;10&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;如對我們的產品、公司資訊或銷售詳情有任何疑問，歡迎以下列方式與我們聯絡：&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&lt;span class=&quot;index_news_title&quot;&gt;香港：&lt;/span&gt;&lt;br /&gt;\r\n			駿豐頻譜(香港)有限公司&lt;br /&gt;\r\n			香港九龍尖沙咀梳士巴利道3號星光行7樓758－765室&lt;br /&gt;\r\n			電話： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2735 2888&lt;/span&gt;&lt;br /&gt;\r\n			傳真： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2350 9633&lt;/span&gt;&lt;br /&gt;\r\n			公司電郵： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;junfenghk@jfcgroup.com.cn&lt;/span&gt;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&lt;span class=&quot;index_news_title&quot;&gt;售後服務：&lt;/span&gt;&lt;br /&gt;\r\n			駿豐頻譜水保健儀：自購買之日起，整機保修一年，核心部件(頻譜發生裝置)保修八年&lt;br /&gt;\r\n			香港諮詢熱線:&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2735 2888&lt;/span&gt;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(10, 3, 'Contact Us', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; height=&quot;300&quot; valign=&quot;middle&quot;&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;290&quot; src=&quot;https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3691.559532843163!2d114.168794!3d22.294668999999995!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x340400f32252543f%3A0xdc4e501f5cca3f47!2z5pif5YWJ6KGM!5e0!3m2!1szh-TW!2shk!4v1422948326575&quot; style=&quot;border:5px solid #ffffff&quot; width=&quot;840&quot;&gt;&lt;/iframe&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td height=&quot;10&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;如對我們的產品、公司資訊或銷售詳情有任何疑問，歡迎以下列方式與我們聯絡：&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&lt;span class=&quot;index_news_title&quot;&gt;香港：&lt;/span&gt;&lt;br /&gt;\r\n			駿豐頻譜(香港)有限公司&lt;br /&gt;\r\n			香港九龍尖沙咀梳士巴利道3號星光行7樓758－765室&lt;br /&gt;\r\n			電話： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2735 2888&lt;/span&gt;&lt;br /&gt;\r\n			傳真： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2350 9633&lt;/span&gt;&lt;br /&gt;\r\n			公司電郵： &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-weight:bold&quot;&gt;junfenghk@jfcgroup.com.cn&lt;/span&gt;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&lt;span class=&quot;index_news_title&quot;&gt;售後服務：&lt;/span&gt;&lt;br /&gt;\r\n			駿豐頻譜水保健儀：自購買之日起，整機保修一年，核心部件(頻譜發生裝置)保修八年&lt;br /&gt;\r\n			香港諮詢熱線:&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-weight:bold&quot;&gt;(852) 2735 2888&lt;/span&gt;&lt;/p&gt;\r\n\r\n			&lt;p class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(4, 0),
(7, 0),
(10, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 1, 1),
(3, 'Traditional Chinese', 'zh-HK', 'zh-HK', 'cn.png', 'zh-HK', 'zh-HK', 3, 1),
(4, 'Simplified Chinese', 'zh', 'zh', 'cn.png', 'zh', 'zh', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Support');

-- --------------------------------------------------------

--
-- 表的结构 `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account'),
(17, 10, 0, 'affiliate/'),
(29, 3, 0, 'product/category'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap');

-- --------------------------------------------------------

--
-- 表的结构 `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- 表的结构 `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in'),
(1, 3, 'Centimeter', 'cm'),
(2, 3, 'Millimeter', 'mm'),
(3, 3, 'Inch', 'in'),
(1, 4, 'Centimeter', 'cm'),
(2, 4, 'Millimeter', 'mm'),
(3, 4, 'Inch', 'in');

-- --------------------------------------------------------

--
-- 表的结构 `oc_main_setting`
--

CREATE TABLE IF NOT EXISTS `oc_main_setting` (
  `main_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`main_setting_id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `oc_main_setting`
--

INSERT INTO `oc_main_setting` (`main_setting_id`, `key`, `value`) VALUES
(1, 'Home Page Banners', 'data/banner_test.png,data/banner_test.png;http://202.74.0.45/temp/jfchealth/index.php?route=product/product&amp;path=100&amp;product_id=189,http://'),
(2, 'Series Banners 1', 'data/1neihe.png,data/1neihe.png,data/1neihe.png;http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=99,http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=99,http://202.74.0.45/temp/jfchealth/index.php?route'),
(3, 'Series Banners 2', 'data/1waizhao.png,data/1waizhao.png;http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=100,http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=100'),
(4, 'Series Banners 3', 'data/1jiankang.png,data/1jiankang.png;http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=101,http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=101'),
(5, 'Series Banners 4', 'data/1taozhuang.png,data/1taozhuang.png;http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=102,http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=102');

-- --------------------------------------------------------

--
-- 表的结构 `oc_main_setting_description`
--

CREATE TABLE IF NOT EXISTS `oc_main_setting_description` (
  `main_setting_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`main_setting_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_main_setting_description`
--

INSERT INTO `oc_main_setting_description` (`main_setting_id`, `language_id`, `description`) VALUES
(1, 1, 'data/banner_test.png,data/index/banner/index_banner.jpg;http://202.74.0.45/temp/jfchealth/index.php?route=product/product&amp;path=100&amp;product_id=189,http://202.74.0.45/temp/jfchealth/?route=product/news/detail&amp;nid=28'),
(1, 3, 'data/banner_test.png,data/index/banner/index_banner.jpg;http://202.74.0.45/temp/jfchealth/index.php?route=product/product&amp;path=100&amp;product_id=189,http://202.74.0.45/temp/jfchealth/?route=product/news/detail&amp;nid=28'),
(1, 4, 'data/banner_test.png,data/index/banner/index_banner.jpg;http://202.74.0.45/temp/jfchealth/index.php?route=product/product&amp;path=100&amp;product_id=189,http://202.74.0.45/temp/jfchealth/?route=product/news/detail&amp;nid=28'),
(2, 1, 'data/1neihe.png,data/index/products/img_index_product01_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=99,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=99'),
(2, 3, 'data/1neihe.png,data/index/products/img_index_product01_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=99,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=99'),
(2, 4, 'data/1neihe.png,data/index/products/img_index_product01_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=99,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=99'),
(3, 1, 'data/1waizhao.png,data/index/products/img_index_product02_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=100,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=100'),
(3, 3, 'data/1waizhao.png,data/index/products/img_index_product02_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=100,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=100'),
(3, 4, 'data/1waizhao.png,data/index/products/img_index_product02_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=100,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=100'),
(4, 1, 'data/1jiankang.png,data/index/products/img_index_product03_1.png;http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=102,http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=102'),
(4, 3, 'data/1jiankang.png,data/index/products/img_index_product03_1.png;http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=102,http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=102'),
(4, 4, 'data/1jiankang.png,data/index/products/img_index_product03_1.png;http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=102,http://202.74.0.45/temp/jfchealth/index.php?route=product/category&amp;path=102'),
(5, 1, 'data/1taozhuang.png,data/index/products/img_index_product04_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=101,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=101'),
(5, 3, 'data/1taozhuang.png,data/index/products/img_index_product04_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=101,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=101'),
(5, 4, 'data/1taozhuang.png,data/index/products/img_index_product04_1.png;http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=101,http://202.74.0.45/temp/jfchealth/?route=product/category&amp;path=101');

-- --------------------------------------------------------

--
-- 表的结构 `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'data/demo/htc_logo.jpg', 0),
(6, 'Palm', 'data/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'data/demo/hp_logo.jpg', 0),
(8, 'Apple', 'data/demo/apple_logo.jpg', 0),
(9, 'Canon', 'data/demo/canon_logo.jpg', 0),
(10, 'Sony', 'data/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_news`
--

CREATE TABLE IF NOT EXISTS `oc_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `info` varchar(1024) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `oc_news`
--

INSERT INTO `oc_news` (`news_id`, `date_added`, `image`, `type`, `info`, `filename`, `sort_order`, `status`, `time`) VALUES
(18, '2015-04-19', 'data/news/news4/img_photo_cover.png', 1, '0', '', 1, 1, '2015-05-22 14:23:59'),
(28, '2015-10-13', 'data/news/news03/cover.png', 1, '0', '', 3, 1, '2015-10-13 11:52:27'),
(27, '2015-10-13', 'data/news/news02/cover.png', 1, '0', '', 2, 1, '2015-10-13 11:44:50'),
(4, '2015-04-30', 'data/article/user/img_article01_photo01.png', 2, '', '', 2, 1, '2015-04-30 17:06:09'),
(5, '2015-04-30', 'data/article/user/img_article02_photo01.png', 2, '', '', 3, 1, '2015-04-30 17:08:10'),
(6, '2015-04-30', 'data/article/user/img_article03_photo01.png', 2, '', '', 1, 1, '2015-04-30 17:10:18'),
(7, '2015-04-30', '', 3, '', '', 4, 1, '2015-04-30 17:11:40'),
(8, '2015-04-30', '', 3, '', '', 3, 1, '2015-04-30 17:12:11'),
(9, '2015-04-30', '', 3, '', '', 2, 1, '2015-04-30 17:12:44'),
(10, '2015-04-30', '', 3, '', '', 1, 1, '2015-04-30 17:13:13'),
(11, '2015-04-30', 'data/magazine/img_magazine_03.png', 5, '', 'pdf/book2.pdf', 3, 1, '2015-04-30 17:42:15'),
(12, '2015-04-30', 'data/magazine/img_magazine_02.png', 5, '', 'pdf/book1.pdf', 2, 1, '2015-04-30 17:42:46'),
(13, '2015-05-04', '', 4, 'https://www.youtube.com/embed/__P9vnW-DPs', '', 3, 1, '2015-05-04 09:39:47'),
(14, '2015-05-04', '', 4, 'https://www.youtube.com/embed/9uNwbkKALPI', '', 1, 1, '2015-05-04 09:40:09'),
(15, '2015-05-04', '', 4, 'https://www.youtube.com/embed/Ii2FgEAUjVA', '', 2, 1, '2015-05-04 09:40:32'),
(26, '2015-10-13', 'data/news/news01/cover.png', 1, '0', '', 1, 1, '2015-10-13 10:53:56'),
(19, '2015-05-26', 'data/img_magazine_01.png', 5, '', 'pdf/book1_1.pdf', 1, 1, '2015-05-26 10:11:58'),
(20, '2015-10-12', '', 6, '', '', 4, 1, '2015-10-12 16:17:16'),
(21, '2015-10-12', '', 6, '', '', 3, 1, '2015-10-12 16:19:50'),
(22, '2015-10-12', '', 6, '', '', 2, 1, '2015-10-12 16:20:41'),
(23, '2015-10-13', '', 6, '', '', 4, 1, '2015-10-13 10:20:19'),
(24, '2015-10-13', '', 6, '', '', 5, 1, '2015-10-13 10:21:02'),
(25, '2015-10-13', '', 6, '', '', 6, 1, '2015-10-13 10:21:34'),
(29, '2015-10-13', 'data/news/news04/cover.png', 1, '0', '', 4, 1, '2015-10-13 12:00:03'),
(30, '2015-10-13', 'data/news/news05/cover.png', 1, '0', '', 5, 1, '2015-10-13 12:06:50'),
(31, '2015-10-13', 'data/news/news06/cover.png', 1, '0', '', 6, 1, '2015-10-13 12:20:29'),
(32, '2015-10-13', 'data/news/news07/cover.png', 1, '1', '', 7, 1, '2015-10-13 12:25:52'),
(33, '2015-10-13', 'data/news/news08/cover.png', 1, '1', '', 8, 1, '2015-10-13 12:42:43'),
(34, '2015-10-13', 'data/news/news09/cover.png', 1, '1', '', 9, 1, '2015-10-13 12:50:39'),
(35, '2015-10-13', 'data/article/user/1-140I111135W45.jpg', 2, '', '', 4, 1, '2015-10-13 15:17:18');

-- --------------------------------------------------------

--
-- 表的结构 `oc_news_description`
--

CREATE TABLE IF NOT EXISTS `oc_news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `infod` varchar(1024) NOT NULL,
  PRIMARY KEY (`news_id`,`language_id`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_news_description`
--

INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(4, 3, '改善不完美的生命殘缺', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article01_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;楊載華, 駿豐頻譜南京會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;八年前的我是一個大胖墩，體重高達160 多斤。我是一個典型的“三高”症患者，腰間盤突出讓我坐立難安，加上膝關節疼痛，我只得手扶拐杖，彎腰行走。爬樓梯、蹬臺階更是寸步難行，氣喘吁吁。於我而言，我的生命是殘缺不全的。為了移走我身上的疾病重擔，我曾效仿“愚公移山”的精神，吃了很多藥物，也打了很多針，甚至還進行了整形手術。取出椎間盤之後，醫生給我裝上了四根鋼釘。在老伴的精心護理下，加上一年多來堅持鍛煉，我終於能夠再次挺直腰杆出門行走了。但是，由於疾病沒有徹底根除，健康也如曇花一現，病情不斷反復，最終不僅自己痛苦，家人也很受罪。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			幸運的是，在尋求健康的道路上我遇到了駿豐頻譜公司。我首先購買了駿豐頻譜水保健儀，喝頻譜水對我們老兩口的腸胃病進行調理，困擾我多年的拉瀉止住了，老伴的便秘也減輕了很多。在2007 年的體檢中，我又查出了胃癌，這簡直就是當頭一棒！在死亡的邊緣，我想起一句話，“只有活著才有希望，只有健康才能幸福”。之後，我進行了胃癌的切除手術，進行化療控制。住院期間，老伴把頻譜水帶到醫院，我每天堅持喝頻譜水，效果明顯，沒過多久時間我就出院了。今年我已經75 歲了，經過幾年“內喝外照”，我真的受益匪淺。原來的“三高症”也得到了很好控制，不用吃藥各項指標也都處於正常範圍，睡眠品質明顯提升，每天都可以睡6-7 個小時，整個人都感覺特別輕鬆。最值得高興的是，我丟掉了多年不離手的拐杖，能蹬臺階能爬山，還每天陪著老伴出去遛彎，參加養生活動，鄰居們都對我們的生活羡慕不已。人的一生到底需要什麼？時至今日，我終於深切地感受到了，健康才是我們終極的追求。生命本就是不完美的，但我們終要去尋求並作出一些，看似不可能的改善，為生活添姿添彩！&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '八年前的我是一個大胖墩，體重高達160 多斤。我是一個典型的“三高”症患者，腰間盤突出讓我坐立難安，加上膝關節疼痛，我只得手扶拐杖，彎腰行走'),
(4, 1, '改善不完美的生命殘缺', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article01_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;楊載華, 駿豐頻譜南京會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;八年前的我是一個大胖墩，體重高達160 多斤。我是一個典型的“三高”症患者，腰間盤突出讓我坐立難安，加上膝關節疼痛，我只得手扶拐杖，彎腰行走。爬樓梯、蹬臺階更是寸步難行，氣喘吁吁。於我而言，我的生命是殘缺不全的。為了移走我身上的疾病重擔，我曾效仿“愚公移山”的精神，吃了很多藥物，也打了很多針，甚至還進行了整形手術。取出椎間盤之後，醫生給我裝上了四根鋼釘。在老伴的精心護理下，加上一年多來堅持鍛煉，我終於能夠再次挺直腰杆出門行走了。但是，由於疾病沒有徹底根除，健康也如曇花一現，病情不斷反復，最終不僅自己痛苦，家人也很受罪。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			幸運的是，在尋求健康的道路上我遇到了駿豐頻譜公司。我首先購買了駿豐頻譜水保健儀，喝頻譜水對我們老兩口的腸胃病進行調理，困擾我多年的拉瀉止住了，老伴的便秘也減輕了很多。在2007 年的體檢中，我又查出了胃癌，這簡直就是當頭一棒！在死亡的邊緣，我想起一句話，“只有活著才有希望，只有健康才能幸福”。之後，我進行了胃癌的切除手術，進行化療控制。住院期間，老伴把頻譜水帶到醫院，我每天堅持喝頻譜水，效果明顯，沒過多久時間我就出院了。今年我已經75 歲了，經過幾年“內喝外照”，我真的受益匪淺。原來的“三高症”也得到了很好控制，不用吃藥各項指標也都處於正常範圍，睡眠品質明顯提升，每天都可以睡6-7 個小時，整個人都感覺特別輕鬆。最值得高興的是，我丟掉了多年不離手的拐杖，能蹬臺階能爬山，還每天陪著老伴出去遛彎，參加養生活動，鄰居們都對我們的生活羡慕不已。人的一生到底需要什麼？時至今日，我終於深切地感受到了，健康才是我們終極的追求。生命本就是不完美的，但我們終要去尋求並作出一些，看似不可能的改善，為生活添姿添彩！&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '八年前的我是一個大胖墩，體重高達160 多斤。我是一個典型的“三高”症患者，腰間盤突出讓我坐立難安，加上膝關節疼痛，我只得手扶拐杖，彎腰行走'),
(4, 4, '改善不完美的生命殘缺', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article01_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;楊載華, 駿豐頻譜南京會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;八年前的我是一個大胖墩，體重高達160 多斤。我是一個典型的“三高”症患者，腰間盤突出讓我坐立難安，加上膝關節疼痛，我只得手扶拐杖，彎腰行走。爬樓梯、蹬臺階更是寸步難行，氣喘吁吁。於我而言，我的生命是殘缺不全的。為了移走我身上的疾病重擔，我曾效仿“愚公移山”的精神，吃了很多藥物，也打了很多針，甚至還進行了整形手術。取出椎間盤之後，醫生給我裝上了四根鋼釘。在老伴的精心護理下，加上一年多來堅持鍛煉，我終於能夠再次挺直腰杆出門行走了。但是，由於疾病沒有徹底根除，健康也如曇花一現，病情不斷反復，最終不僅自己痛苦，家人也很受罪。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			幸運的是，在尋求健康的道路上我遇到了駿豐頻譜公司。我首先購買了駿豐頻譜水保健儀，喝頻譜水對我們老兩口的腸胃病進行調理，困擾我多年的拉瀉止住了，老伴的便秘也減輕了很多。在2007 年的體檢中，我又查出了胃癌，這簡直就是當頭一棒！在死亡的邊緣，我想起一句話，“只有活著才有希望，只有健康才能幸福”。之後，我進行了胃癌的切除手術，進行化療控制。住院期間，老伴把頻譜水帶到醫院，我每天堅持喝頻譜水，效果明顯，沒過多久時間我就出院了。今年我已經75 歲了，經過幾年“內喝外照”，我真的受益匪淺。原來的“三高症”也得到了很好控制，不用吃藥各項指標也都處於正常範圍，睡眠品質明顯提升，每天都可以睡6-7 個小時，整個人都感覺特別輕鬆。最值得高興的是，我丟掉了多年不離手的拐杖，能蹬臺階能爬山，還每天陪著老伴出去遛彎，參加養生活動，鄰居們都對我們的生活羡慕不已。人的一生到底需要什麼？時至今日，我終於深切地感受到了，健康才是我們終極的追求。生命本就是不完美的，但我們終要去尋求並作出一些，看似不可能的改善，為生活添姿添彩！&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '八年前的我是一個大胖墩，體重高達160 多斤。我是一個典型的“三高”症患者，腰間盤突出讓我坐立難安，加上膝關節疼痛，我只得手扶拐杖，彎腰行走'),
(5, 1, '極致之愛感觸溫暖', '&lt;style type=&quot;text/css&quot;&gt;h3 {\r\n  color: rgb(97,137,172);\r\n  font-size: 22px;\r\n  margin-top: 10px;\r\n  margin-bottom: 5px;\r\n}\r\n  .index_discription_title {\r\n	font-size: 24px;\r\n	font-weight: bold;\r\n  margin-top: 0;\r\n  margin-bottom: 15px;\r\n  color: rgb(97,137,172);\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article02_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;高書榮，駿豐頻譜上海會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;\r\n			&lt;h3 class=&quot;index_discription_title&quot;&gt;極致之愛感觸溫暖&lt;/h3&gt;\r\n			25年風雨路，駿豐經過磨練拼搏并成功發展至今，記得到國際和用戶的支持與認可，成為中國家庭保健行業的龍頭企業，這與駿豐獨特的企業文化與產品是密不可分的，這其中我深有感觸。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			經過不斷地了解認識，接觸和使用駿豐產品，參加交流會和專家使用指導，聆聽駿豐產品老顧客的分享后，我更是信心倍增。現在，我認為“我相信-我使用-我健康，我參與-我奉獻-我快樂”，這句話絕不是一句簡單的口號，而是我們數千萬頻譜老顧客的心聲。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			回憶我壯年時，一心只想著打拼，打拼，再打拼，希望能夠拼出一條輝煌的人生路，而忽略了對身體健康的重視。隨著年齡增長，接近中老年，逐步感覺精神疲憊，體質也逐漸下降，身上也有各種病痛。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			就在我人生失意的關頭結識了駿豐，駿豐的員工們熱情地接待我們，把我當作親人一樣去照顧和關心，多次陪同我去公司參加健康講座和專家面對面交流，是我懂得了不少保健知識，樹立了“內喝外照”保健的信心和決心。在公司員工愛意暖暖的服務下，我的身體逐漸好轉起來。難以忘懷駿豐人的無私關懷和真誠服務，難以忘懷他們親人般的無微不至，難以忘懷他們給予精神上的慰藉和鼓勵，這些都成了我恢復健康，重塑陽光自我的關鍵所在。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			感恩“內喝外照”的駿豐頻譜產品，更感恩風雨同舟的駿豐人。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '25年風雨路，駿豐經過磨練拼搏并成功發展至今，記得到國際和用戶的支持與認可，成為中國家庭保健行業的龍頭企業，這與駿豐獨特的企業文化與產品是密不可分的，這其中我深有感觸'),
(5, 4, '極致之愛感觸溫暖', '&lt;style type=&quot;text/css&quot;&gt;h3 {\r\n  color: rgb(97,137,172);\r\n  font-size: 22px;\r\n  margin-top: 10px;\r\n  margin-bottom: 5px;\r\n}\r\n  .index_discription_title {\r\n	font-size: 24px;\r\n	font-weight: bold;\r\n  margin-top: 0;\r\n  margin-bottom: 15px;\r\n  color: rgb(97,137,172);\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article02_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;高書榮，駿豐頻譜上海會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;\r\n			&lt;h3 class=&quot;index_discription_title&quot;&gt;極致之愛感觸溫暖&lt;/h3&gt;\r\n			25年風雨路，駿豐經過磨練拼搏并成功發展至今，記得到國際和用戶的支持與認可，成為中國家庭保健行業的龍頭企業，這與駿豐獨特的企業文化與產品是密不可分的，這其中我深有感觸。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			經過不斷地了解認識，接觸和使用駿豐產品，參加交流會和專家使用指導，聆聽駿豐產品老顧客的分享后，我更是信心倍增。現在，我認為“我相信-我使用-我健康，我參與-我奉獻-我快樂”，這句話絕不是一句簡單的口號，而是我們數千萬頻譜老顧客的心聲。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			回憶我壯年時，一心只想著打拼，打拼，再打拼，希望能夠拼出一條輝煌的人生路，而忽略了對身體健康的重視。隨著年齡增長，接近中老年，逐步感覺精神疲憊，體質也逐漸下降，身上也有各種病痛。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			就在我人生失意的關頭結識了駿豐，駿豐的員工們熱情地接待我們，把我當作親人一樣去照顧和關心，多次陪同我去公司參加健康講座和專家面對面交流，是我懂得了不少保健知識，樹立了“內喝外照”保健的信心和決心。在公司員工愛意暖暖的服務下，我的身體逐漸好轉起來。難以忘懷駿豐人的無私關懷和真誠服務，難以忘懷他們親人般的無微不至，難以忘懷他們給予精神上的慰藉和鼓勵，這些都成了我恢復健康，重塑陽光自我的關鍵所在。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			感恩“內喝外照”的駿豐頻譜產品，更感恩風雨同舟的駿豐人。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '25年風雨路，駿豐經過磨練拼搏并成功發展至今，記得到國際和用戶的支持與認可，成為中國家庭保健行業的龍頭企業，這與駿豐獨特的企業文化與產品是密不可分的，這其中我深有感觸'),
(5, 3, '極致之愛感觸溫暖', '&lt;style type=&quot;text/css&quot;&gt;h3 {\r\n  color: rgb(97,137,172);\r\n  font-size: 22px;\r\n  margin-top: 10px;\r\n  margin-bottom: 5px;\r\n}\r\n  .index_discription_title {\r\n	font-size: 24px;\r\n	font-weight: bold;\r\n  margin-top: 0;\r\n  margin-bottom: 15px;\r\n  color: rgb(97,137,172);\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article02_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;高書榮，駿豐頻譜上海會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;\r\n			&lt;h3 class=&quot;index_discription_title&quot;&gt;極致之愛感觸溫暖&lt;/h3&gt;\r\n			25年風雨路，駿豐經過磨練拼搏并成功發展至今，記得到國際和用戶的支持與認可，成為中國家庭保健行業的龍頭企業，這與駿豐獨特的企業文化與產品是密不可分的，這其中我深有感觸。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			經過不斷地了解認識，接觸和使用駿豐產品，參加交流會和專家使用指導，聆聽駿豐產品老顧客的分享后，我更是信心倍增。現在，我認為“我相信-我使用-我健康，我參與-我奉獻-我快樂”，這句話絕不是一句簡單的口號，而是我們數千萬頻譜老顧客的心聲。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			回憶我壯年時，一心只想著打拼，打拼，再打拼，希望能夠拼出一條輝煌的人生路，而忽略了對身體健康的重視。隨著年齡增長，接近中老年，逐步感覺精神疲憊，體質也逐漸下降，身上也有各種病痛。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			就在我人生失意的關頭結識了駿豐，駿豐的員工們熱情地接待我們，把我當作親人一樣去照顧和關心，多次陪同我去公司參加健康講座和專家面對面交流，是我懂得了不少保健知識，樹立了“內喝外照”保健的信心和決心。在公司員工愛意暖暖的服務下，我的身體逐漸好轉起來。難以忘懷駿豐人的無私關懷和真誠服務，難以忘懷他們親人般的無微不至，難以忘懷他們給予精神上的慰藉和鼓勵，這些都成了我恢復健康，重塑陽光自我的關鍵所在。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			感恩“內喝外照”的駿豐頻譜產品，更感恩風雨同舟的駿豐人。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '25年風雨路，駿豐經過磨練拼搏并成功發展至今，記得到國際和用戶的支持與認可，成為中國家庭保健行業的龍頭企業，這與駿豐獨特的企業文化與產品是密不可分的，這其中我深有感觸'),
(6, 3, '攝影夢就在前方', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article03_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;周惠英, 駿豐頻譜蘇州會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;2004 年12 月，我加入了駿豐這個大家庭。作為一名已經和駿豐頻譜公司相伴十周年的老顧客，我真的很感謝頻譜產品給我們全家人帶來的健康。69 歲那年，我突發胃潰瘍，情況非常嚴重，手術之後我的整個胃部切除了五分之四，身體也十分虛弱。除了吃些保健、養胃的藥之外，其他刺激性的東西完全不能沾。當時家裡已經購買了駿豐頻譜水保健儀，所以不管是做飯還是日常喝水我都用頻譜水。頻譜水不僅口感好，還有消炎的作用，經過兩年的堅持使用，我的胃恢復得很好，基本上沒再出現疼痛的情況。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			我是一名攝影愛好者，之前因為胃痛的毛病，總是藥不離身，也不敢出遠門。在頻譜水的滋養下，現在胃好了，我又重拾自己年輕時的攝影夢，背上心愛的單反，到九寨溝、廈門、雲南、三峽等地領略大好河山，不但晚年生活多姿多彩，心境也開闊了不少。今年的夏天很熱，為了在荷塘邊拍一張蜻蜓立在花骨朵上的照片，我在烈日下足足等了半個小時。因為隨身攜帶著頻譜水，所以我的身體絲毫沒有感覺到不舒服。現在，我基本每年都堅持出去旅遊一次，在旅途上我也總會隨身攜帶幾瓶頻譜水，還隨時向結識的驢友推薦一番頻譜產品。在頻譜水的滋養下，我家人的身體也得到了很好的呵護。我老伴今年已經83 歲高齡依然精神矍鑠，一年四季無論是大人還是小孩基本沒人發燒感冒。每當親朋好友詢問我們全家保健秘訣的時候，我們都會異口同聲地說：“是頻譜水滋養的功效！”。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '2004 年12 月，我加入了駿豐這個大家庭。作為一名已經和駿豐頻譜公司相伴十周年的老顧客，我真的很感謝頻譜產品給我們全家人帶來的健康。69 歲那年，我突發胃潰瘍，情況非常嚴重，手術之後我的整個胃部切除了五分之四，身體也十分虛弱'),
(6, 1, '攝影夢就在前方', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article03_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;周惠英, 駿豐頻譜蘇州會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;2004 年12 月，我加入了駿豐這個大家庭。作為一名已經和駿豐頻譜公司相伴十周年的老顧客，我真的很感謝頻譜產品給我們全家人帶來的健康。69 歲那年，我突發胃潰瘍，情況非常嚴重，手術之後我的整個胃部切除了五分之四，身體也十分虛弱。除了吃些保健、養胃的藥之外，其他刺激性的東西完全不能沾。當時家裡已經購買了駿豐頻譜水保健儀，所以不管是做飯還是日常喝水我都用頻譜水。頻譜水不僅口感好，還有消炎的作用，經過兩年的堅持使用，我的胃恢復得很好，基本上沒再出現疼痛的情況。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			我是一名攝影愛好者，之前因為胃痛的毛病，總是藥不離身，也不敢出遠門。在頻譜水的滋養下，現在胃好了，我又重拾自己年輕時的攝影夢，背上心愛的單反，到九寨溝、廈門、雲南、三峽等地領略大好河山，不但晚年生活多姿多彩，心境也開闊了不少。今年的夏天很熱，為了在荷塘邊拍一張蜻蜓立在花骨朵上的照片，我在烈日下足足等了半個小時。因為隨身攜帶著頻譜水，所以我的身體絲毫沒有感覺到不舒服。現在，我基本每年都堅持出去旅遊一次，在旅途上我也總會隨身攜帶幾瓶頻譜水，還隨時向結識的驢友推薦一番頻譜產品。在頻譜水的滋養下，我家人的身體也得到了很好的呵護。我老伴今年已經83 歲高齡依然精神矍鑠，一年四季無論是大人還是小孩基本沒人發燒感冒。每當親朋好友詢問我們全家保健秘訣的時候，我們都會異口同聲地說：“是頻譜水滋養的功效！”。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '2004 年12 月，我加入了駿豐這個大家庭。作為一名已經和駿豐頻譜公司相伴十周年的老顧客，我真的很感謝頻譜產品給我們全家人帶來的健康。69 歲那年，我突發胃潰瘍，情況非常嚴重，手術之後我的整個胃部切除了五分之四，身體也十分虛弱'),
(6, 4, '攝影夢就在前方', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;left&quot; valign=&quot;top&quot; width=&quot;430&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;430&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img src=&quot;http://202.74.0.45/temp/JFC/image/data/article/user/img_article03_photo01.png&quot; style=&quot;width: 430px; height: 270px;&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;50&quot; valign=&quot;middle&quot;&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;周惠英, 駿豐頻譜蘇州會員&lt;/span&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td width=&quot;20&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td align=&quot;left&quot; class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; valign=&quot;top&quot; width=&quot;400&quot;&gt;2004 年12 月，我加入了駿豐這個大家庭。作為一名已經和駿豐頻譜公司相伴十周年的老顧客，我真的很感謝頻譜產品給我們全家人帶來的健康。69 歲那年，我突發胃潰瘍，情況非常嚴重，手術之後我的整個胃部切除了五分之四，身體也十分虛弱。除了吃些保健、養胃的藥之外，其他刺激性的東西完全不能沾。當時家裡已經購買了駿豐頻譜水保健儀，所以不管是做飯還是日常喝水我都用頻譜水。頻譜水不僅口感好，還有消炎的作用，經過兩年的堅持使用，我的胃恢復得很好，基本上沒再出現疼痛的情況。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			我是一名攝影愛好者，之前因為胃痛的毛病，總是藥不離身，也不敢出遠門。在頻譜水的滋養下，現在胃好了，我又重拾自己年輕時的攝影夢，背上心愛的單反，到九寨溝、廈門、雲南、三峽等地領略大好河山，不但晚年生活多姿多彩，心境也開闊了不少。今年的夏天很熱，為了在荷塘邊拍一張蜻蜓立在花骨朵上的照片，我在烈日下足足等了半個小時。因為隨身攜帶著頻譜水，所以我的身體絲毫沒有感覺到不舒服。現在，我基本每年都堅持出去旅遊一次，在旅途上我也總會隨身攜帶幾瓶頻譜水，還隨時向結識的驢友推薦一番頻譜產品。在頻譜水的滋養下，我家人的身體也得到了很好的呵護。我老伴今年已經83 歲高齡依然精神矍鑠，一年四季無論是大人還是小孩基本沒人發燒感冒。每當親朋好友詢問我們全家保健秘訣的時候，我們都會異口同聲地說：“是頻譜水滋養的功效！”。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '2004 年12 月，我加入了駿豐這個大家庭。作為一名已經和駿豐頻譜公司相伴十周年的老顧客，我真的很感謝頻譜產品給我們全家人帶來的健康。69 歲那年，我突發胃潰瘍，情況非常嚴重，手術之後我的整個胃部切除了五分之四，身體也十分虛弱');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(7, 3, '科學實際地認識駿豐頻譜水', '&lt;p&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;【作者簡介】 吳元德中國醫學科學院基礎醫學研究所研究員，北京協和醫學院基礎學院教授、博士生導師;原為其生物物理與結構生物學系主任，所學術委員會、學位委員會委員;曾任中國生物物理學會常務理事，自由基生物學、醫學專業委員會委員、副主任;國家自然科學基金委員會生物物理與生物醫學工程學科專家評審組成員，副組長、組長。吳教授主要從事自由基生物學、醫學，化學致癌作用及機理，腫瘤細胞生物膜特性研究等。曾獲得醫學科學院科技進步二等獎，國家教育委員會(現教育部)科技進步三等獎。此外，教授協和醫學大學八年本科生分子生物物理課程，對其中重要內容之一：水的微觀結構和生物學功能的科學含義及研究進展比較熟悉和瞭解。 劉亞寧中國人民解放軍空軍總醫院中心實驗室主任、主任醫師，北京郵電大學生物醫學工程中心教授。曾任中國生物物理學會常務理事，光生物學專業委員會主任;中國電子學會電磁相容分會生物電磁學專業委員會副主任。劉教授在研究生期間，師從中國老一輩著名生物物理科學家林克椿教授，進行水的微觀結構與生物功能方面的研究。工作後主要進行電磁輻射生物學效應技術及學科基礎方面的研究。研製的超微弱發光測定技術及儀器曾獲得國家科技發明三等獎，中國人民解放軍內科技進步二等獎。曾主編電磁輻射生物學專著。“駿豐頻譜水是普通水經過駿豐頻譜公司研製生產的高科技產品——駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜處理後，改變了水的物理化學特性，被調製成更適合人體吸收、利用，有利於治療疾病，促進人體健康的優化水。”要科學地分析、認識駿豐頻譜水，首先必須對水有一個科學的認識。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: normal;&quot;&gt;一、水的科學認知&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;水是一種無色、無味、無定形流動的液體，盡人皆知。但要科學地深化對水的認知就不那麼簡單及廣為人知了。水是地球上存在最普遍的物質，但它是生命系統中必須的物質，沒有水就沒有生命。水有許多獨特的宏觀化學及物理性質。例如：與同是元素週期表第六族的氫化物比較，隨著分子量的減小，碲化氫(H 2Te)、硒化氫(H 2Se)和硫化氫(H 2S)的沸點和熔點順序降低，在常溫下它們都是氣體。但分子量更小的水(H2O)的沸點、熔點卻明顯增高;而與氧的其它化合物(如CO2、SO 2等)相比較，水是偶極子(O-H鍵之間夾角105°，偶極矩 1.84德拜)，這是水分子之間相互作用力(引力)的來源，即：偶極-偶極相互作用。這也是水的比熱值最大，對於生命體系溫度穩定的貢獻最大的原因。水有較大的表面張力和有一定的粘度、密度;水可以溶解許多化合物;不溶于水的一些化合物(疏水物質)也可以在水中存在等等。這些都表明水分子間有很強的相互作用力，目前已經知道這種作用力的基礎是水。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;有豐富的“氫鍵”存在。已知水(H 2O)中氧原子形成水分子時採取 SP 3的雜化軌道，其中兩個 SP 3軌道與H的1S組成σ鍵，另外兩個 SP 3軌道為兩對孤對電子佔據(圖 1)。整個分子的電子雲分佈呈一四面體，所以一個水分子可以形成四個氫鍵，可以分別與另外四個水分子結合。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n溫度在0℃時，液態水凝結成固態的冰，冰是一種具有四面體的晶體，相鄰水分子間均以氫鍵形成空間結構關係。隨著溫度升高，氫鍵開始斷裂，水由冰變成流動的液體。近代水分子的四面體結構圖示水微晶中的中心水分子與每一個 SP 3軌道形成一個氫鍵盤最近的四個水分子的空間關係冰或結晶水中分子的空間結構模式圖 3冰或結晶水中分子的空間結構模式物理技術 X射線衍射分析發現，水結構在 15℃時存在 0.27和 0.45納米的衍射峰，計算出僅有 15%的氫鍵斷裂，說明流動的液態 。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n水中乃廣泛存在著由氫鍵組成的四面體結構，學術上稱之謂“微晶”。而水中這種四面體排列範圍沒有冰中的廣泛、均勻和規則，並且氫鍵的結合和斷裂比冰迅速(壽命為 11 -11秒)。這種整體結構的靈活、可變使水有相對較低的粘度和容易流動。另外，水的高介電係數也能說明水是由氫鍵結合的多聚分子(分子團)組成的。許多因素可以影響水的氫鍵、結合和斷裂，改變水的微觀結構。首先是熱，溫度升高，水分子無規則熱運動增加，遠端氫鍵斷裂，在 83℃時 X射線衍射水結構，其 0.45納米的衍射峰消失，水分子團變小。水分子游離的正、負電荷極性區增加，增加了水對某些化合物的溶解度。其他許多因素如特定的電磁振盪、超聲等物理因素以及化學因素如鹽的正、負離子，非極性的疏水物質，均可對水的氫鍵有不同的影響而改變水分子團，形成不同的結構模式。如鹽溶于水中，提出的結構模式是水分子分成三層，分別稱為：初級水區、無結構水區和體積水區，每一區微觀水結構是不同的。又如：非極性疏水物質存在水中所致水的結構模式如表示。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n水分子以氫健作用形成一個五角形十二面體的籠形結構，而籠形結構的水分子團又可聚集成為大分子團，如表示。在體內存在的各種小分子及與生命活動相關的大分子周圍的水分子也都有特定的結構模式。並且與生物學功能緊密相關。早在三十年前，通過核磁共振波譜技術研究發現腫瘤組織中水的弛豫時間明顯超過正常組織，並且隨著腫瘤的發展過程。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n惡性程度的增高而增加，被認為是細胞內蛋白質分子的極性區陽離子水化作用模型圖 5 水分子形成五角形十二面體，成籠狀結構包圍著一直徑為 0.5nm的空腔，內含疏水分子許多籠狀結構的水分子團聚集成大分子團周圍被吸附的水分子微觀結構模式的有序性減小。但由於科學。&lt;/span&gt;&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;技術發展的限制，有關生物組織中微觀結構水的變化與生物學功能的關係，以及水或內含物所引起的水的微觀結構變化與生物學功能的關係還未獲得驚人的進展。這正是現代科學發展所迫切需要注意及研究的問題，駿豐頻譜水的出現，可能為此作出新的貢獻。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;二、駿豐頻譜水的物理化學特性變化&lt;/span&gt;&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜，其能量主要是影響普通水的氫鍵，改變水或內含物周圍水的微觀結構。其中微觀結構分子團變小這一點，北京大學分析測試中心對比測定了普通水和頻譜水的核磁共振譜線，證實前者的半峰寬為113赫茲(HZ)，後者變為 63赫茲(HZ)。核磁共振譜線線寬變窄，說明分子的有序度降低，有規則的分子團變小。可能是基於這種改變，頻譜水改變了普通水的許多物理化學性質。具體實驗測定的結果表現為：&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n1、根據中國計量科學研究院測定的“駿豐頻譜水與自來水、血漿電導率頻譜測定報告”，結果表明: a、駿豐頻譜水的電導率隨頻率的升高而增大，在 200-300HZ範圍內變化明顯，在 300-1000HZ範圍內變化緩慢。b、駿豐頻譜水與自來水的電導率頻譜明顯差異，駿豐頻譜水的電導率明顯高於處理前的自來水。c、與自來水比較，駿豐頻譜水的電導率頻譜曲線更接近血漿的電導率頻譜曲線。&amp;nbsp;&lt;br /&gt;\r\n2、中國廣州分析測試中心測試報告，駿豐頻譜水與對照自來水的紅外吸收光譜，紅外透射光譜，紫外吸收光譜均有差異;北京大學化學與分子工程學院測定這兩種水的拉曼光譜峰值和強度亦均有差別，說明水分子的結構和分子鍵運動發生了改變。&amp;nbsp;&lt;br /&gt;\r\n3、廣州暨南大學化學系測定駿豐頻譜水的酸鹼度發現，由對照未處理的自來水的 pH6.387改變為 pH7.288，說明發生了堿移。&amp;nbsp;&lt;br /&gt;\r\n4、暨南大學化學系進行駿豐頻譜水與對照未處理自來水溶解碳酸鈣(CaCO 3,大理石)溶解量比較實驗表明，由對照水的每百克CaCO 3溶解量 0.0702克增高至 0.0938克，提高率為40.8%。&amp;nbsp;&lt;br /&gt;\r\n5、根據國家城市供水水質監測網北京監測站的實驗報告，駿豐頻譜水的溶解氧含量為 8.35mg/L，而對照水溶解氧含量為7.93 mg/L，前者增高含氧量5%。&amp;nbsp;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;6、國家城市供水水質監測網北京監測站檢測報告，在水中人為加入氯仿，頻譜水由未處理前的 109μg/L下降至74μg/L，清除率為 32%。另外實驗測定表明駿豐頻譜水治療保健儀對必需用氯氣進行自來水消毒殺菌但產生遺留的有害物質氯仿有一定的清除效果，處理後的自來水氯仿含量降至 1.7μg/L以下，遠低於國家規定的不超過 60μg/L的要求。正是由於以上種種駿豐頻譜水的物理化學性質改變，水由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;三、駿豐頻譜水有益健康，輔助防治疾病的原理分析及相關生物學實驗&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n人體是由大約 100億個各類細胞組成的整體，各類細胞分別行使各種生理功能，最後協調統一，維持人體健康的生命活動。保證細胞的正常新陳代謝非常重要，它既要保證細胞從外界環境中攝取氧分子和各種營養物質，經過改造轉化，提供維持細胞在生長中建造自身結構所需要的原料和能量;又要保證細胞內的分解產物(廢物)能及時排出胞外。細胞內、外環境發生任何變化影響了細胞正常生長，引發的功能改變就會導致疾病發生。人體細胞絕大部分不直接與大氣環境(外環境)接觸，僅與大氣環境接觸的皮膚細胞表面還存在一層角化層，少量沒有皮膚覆蓋的部分，如肺泡、粘膜等也都有一薄層液體覆蓋在細胞表面。生命最初出現在海洋中，在進化過程中出現了複雜的多細胞組合的生物體，直至最後人類的誕生。在此過程中大部分細胞已不可能直接與海水接觸，因此就出現了細胞外液，形成了血液、組織液以及相關的循環系統。這些細胞外液的基本成分是與遠古的海水相似的鹽溶液。它一方面作為細胞直接。&lt;br /&gt;\r\n&lt;br /&gt;\r\n生活的外環境，同時又是人體與外環境進行物質交換的媒介。人體除細胞外液體，還有更多的液體(約為細胞外液的兩倍)存在於細胞內部為細胞內液，此乃是細胞維持生存，進行各種生化反應的基本條件。另外，為保證細胞中許多生命大分子如蛋白質等最大效率地發揮生物學功能，細胞必須處於相對穩定的環境中，如體溫 37℃，溫度升高，蛋白質變性，細胞死亡。細胞內、外液合稱體液，約占人體總重量的 60%以上。體液中最重要的成分還是水，由此可見，水是維持細胞生存，發揮功能最關鍵的因素。細胞要成為一個實體，週邊有一層細胞膜。水迅速通過細胞膜出入細胞是保證細胞正常新陳代謝的關鍵，但細胞膜的結構不利於水的自由出入。早期生理學家已知膜上存在一些孔道便於水的出入，但直到 1992年才發現膜上存在由蛋白質組成的運輸水的“水通道”。到目前為止，水通道的許多問題及與疾病發生的關係仍然是科學研究的前沿。有些對通道研究的結果已獲得諾貝爾科學獎。除通道的改變能影響細胞內外水的交換外，水分子團的結構、形態也可能極大地影響 。&lt;br /&gt;\r\n&lt;br /&gt;\r\n水分子出入細胞的速率，分子團越小，水分子進出細胞的速度可能就越快。駿豐頻譜水在常溫下測定表現出的分子團變小表明，其在生理條件下適於機體利用;理化特性改變表現出的化合物的溶解度增加表明，細胞營養物質及代謝廢物的運輸量和速度加快，有利於促進細胞的新陳代謝;理化特性改變表現出的含氧量增加，在保證機體正常生命活動及動物、人類運動中具有重要意義。已知生命機體最基本的特性之一是對能量的需要，要有能量才能維持生命活動，才能生存。一類機體(主要是植物)可以靠吸收太陽能直接獲得能量(稱光養生物)，另一類機體(主要是動物)是通過氧化預先已合成的有機分子來獲取能量(稱化養生物)。所以，氧的存在是後一類機體獲得能量的基本要素。駿豐頻譜水含氧量增加，飲用後，水中的高氧可能通過腸道吸收，使血液中也富氧，輸送到各器官、細胞，可更好地滿足細胞生物氧化途徑對氧的需求，產生更多的能量。人體運動時，肌肉細胞如果得到豐富的氧供給，將產生更多的能量以保證肌肉處於更佳的運動狀態。當劇烈運動時，氧的供應不足，肌細胞進行缺氧糖酵解獲取能量，最終造成乳酸堆積。運動後如能有富氧的血液供應，將能使積累在肌細胞、擴散到血液和進入肝臟的乳酸再氧化成為丙酮酸，最後通過肝臟中的葡萄糖生成途徑重新形成可利用的葡萄糖，迅速解除疲勞。駿豐頻譜水錶現出的對氯仿的清除效果表明，經駿豐頻譜儀處理後，水中的一些有害的非極性(疏水性)化合物溶解量極大下降，有利於環境保護，提高飲水品質。其機理可能是電磁振盪能量使這些化合物的化學鍵發生斷裂，分子成為氣體逸出 ;也可能是能量使包繞在這些合化物分子週邊由水中氫鍵組成的籠形結構破裂，而使其析出。以上種種頻譜水改善的優化條件，均可保證並促進細胞健康的生存、生長，發揮正常的生理功能。這可能就是駿豐頻譜水促進人體健康、防治疾病發生的基本原理。應用頻譜水開展了一系列生物學實驗，結果也充分證明了駿豐頻譜水具有促進細胞正常新陳代謝表現出來各種優越的生理功能：&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n1、頻譜水對大鼠的細胞粘附和微循環的影響(劉育英等，中華實用醫藥雜誌，2002，2(6)：16-18，中國人民解放軍總醫院病理生理研究室，廣東駿豐頻譜實業有限公司)。大鼠靜脈內注入內毒素造成白細胞粘附和微循環障礙模型。通過腸系膜微循環觀察，計數細靜脈相同面積內白細胞粘附數量和微循環變化結果發現，飲用自來水的對照大鼠 60天后，細靜脈血管內的白細胞粘附增多，貼壁滾動的白細胞變形性下降，白細胞流出血管外，血流減慢，內皮細胞明顯水腫，間隙增大，有內皮細胞損傷出血。飲用頻譜水的實驗組大鼠 60天后，細靜脈內有少數白細胞貼壁滾動，比對照組明顯減少(P&amp;lt;0.01)。紅細胞在毛細血管內快速通過，有輕度紅細胞聚集和血小板聚集，未見血栓形成，靜脈管壁內皮細胞間連接緊密，管腔內表面平滑。結論為：頻譜水能夠減輕及改善內毒素引起的迴圈障礙，能顯著降低白細胞粘附。&amp;nbsp;&lt;br /&gt;\r\n2、頻譜水對正常大鼠微循環和血液流變學的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。結果發現：實驗組飲用頻譜水與對照組比較：a：微血管血流速度增快6.86%;b：微血管白細胞粘附減少 60.4%;c：全血粘度減少7.49%，血漿粘度減少16.98%;d：紅細胞變形指數增加2.67%;e：紅細胞電泳速度增加 17.11%;f：腸系膜微循環觀察發現實驗組與對照組相比較，紅細胞粘附減少 20%，紅細胞聚集減少10%，內皮細胞間隙增大降低 30%，血小板粘附降低 10%，血管出血下降 20%;結果顯示：飲用駿豐頻譜水有改善血液流變學、血液迴圈的作用，有促進機體新陳代謝的潛在效果。&lt;br /&gt;\r\n3、頻譜水對疲勞耐受力的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。SD大鼠和 NIH小鼠隨機分為實驗組(飲用頻譜水 30天)和對照組(飲用自來水 30天)，觀察記錄小鼠游泳疲勞時間;SD大鼠 30分鐘以後以MFLLab 200心功能軟體記錄左心室內壓力變化最大速率(±dp/dtmax);以 PIM11鐳射多普勒血流量儀測定骨骼肌血流量的變化，並測定乳酸，脫氫酶(LDH)，肌酸激酶(CK)活性和乳酸含量的變化。結果顯示：實驗組小鼠游泳時間延長。實驗組大鼠 游泳後心肌收縮與舒張功能改善。骨骼肌血流量增加。實驗組和對照組血漿 LDH和 CK活性差異無顯著性;大鼠游泳 30分鐘後骨骼肌細胞膜 ATP酶活性低於對照組，實驗說明頻譜水可以增強動物游泳疲勞耐力。其機制可能與心功能和骨骼肌血液供應改善和細胞內 ATP消耗減少有關。&amp;nbsp;&lt;br /&gt;\r\n4、頻譜水對大鼠胃腸電位及蠕動功能的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。實驗對飲用頻譜水的大鼠胃、空腸、結腸電位快、慢波的波幅、頻率，胃腸運動張力，胃排空，小腸及對標記物(碳黑)推進速度，胃腸血流量進行了測定。結果顯示：頻譜水對胃腸收縮有雙重調節功能。空腹狀態下，減少胃腸的基本節律電位，使胃腸運動減少，減少胃粘膜相互摩擦，從而起到保護胃粘膜的作用。胃內有實物刺激胃粘膜時，胃腸電位增強，胃腸平滑肌蠕動頻率波幅增加。促進胃內食物排出，加強小腸內食物移動有利於胃腸對食物的消化、吸收和排出。&amp;nbsp;&lt;br /&gt;\r\n5、頻譜水提高小鼠抗氧化功能的實驗(南方醫科大學實驗動物中心)，以頻譜水飼養小鼠並每天泡浴頻譜水(37℃)40分鐘，40天后測定小鼠血中脂質過氧化產物丙二醛(MDA)和抗氧化酶、超氧化物歧化酶(SOD)和谷胱甘肽過氧化物酶(GSH-PX)的活性。結果發現，MDA含量在實驗組為 5.41±2.41nmol/ml,顯著低於對照組的 8.87.±2.26nmol/ML(p&amp;lt;0.01);SOD酶活性在實驗組為 136.21±21.70 U/ML，顯著高於對照組的 105.23±11.04 U/ML(p&amp;lt;0.05);GSH-PX酶活性在實驗組為 283.18±19.62活力單位，顯著高於對照組217.97±14.66活力單位(p&amp;lt;0.05)。據中華人民共和國衛生部“保健品食品檢驗與評價技術規範”中抗氧化功能檢驗方法判定該受試樣品抗氧化功能動物實驗結果陽性。說明飲、泡頻譜水有提高機體抗氧化的功能。&amp;nbsp;&lt;br /&gt;\r\n6、頻譜水對腹腔巨噬細胞吞噬功能和血清溶菌酶的影響(中山醫科大學公共衛生學院)。以頻譜水及自來水飼養 SD大鼠，90天后測定腹腔巨噬細胞吞噬率。結果顯示：實驗組為37.35±12.81，對照組為22.88±5.84，提高64.99%。(p ≤0.01)。血清溶菌酶含量分別為93.00±20.00mg/L，69.00±6.68，提高了 34.78%(p ≤ 0.01)，說明頻譜水對餵養 90天大鼠有提高免疫功能的作用。&amp;nbsp;&lt;br /&gt;\r\n7、頻譜水對肺癌細胞株 HePG2細胞、大腸癌細胞株LOVO細胞殺傷實驗(中國人民解放軍第一軍醫大學)。結果顯示，以頻譜水配置的 RPMI-1640培養液進行 HePG2T和LOVO體外培養，頻譜水對癌細胞有殺滅作用，LOVO細胞 72小時後出現死亡，92-120小時後全部死亡。預示頻譜水可能有抑制癌腫生長的效果。&amp;nbsp;&lt;br /&gt;\r\n8、頻譜水對淋巴細胞增殖和細胞因數分泌的影響(中國太空人科研訓練中心，航太細胞分子生物學實驗室)，實驗結果表明頻譜水配製的培養基處理的小鼠脾淋巴細胞與正常對照水配製的培養基培養的細胞相比，增殖能力提高了 27%(p&amp;lt;0.01，n=3);淋巴細胞分泌因數，IFN-γ比對照組升高58%(p&amp;lt;0.01，n=3);IL-2分泌有升高趨勢。&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;9、頻譜水的安全性毒理評價(廣州市衛生防疫站)。結果表明 :a、鼠傷寒沙門氏菌回變實驗(Ames實驗)，未發現有直接和間接的致突變作用;b、骨髓微核實驗：對骨骼嗜多染紅細胞微核實驗為陰性;c、精子畸形試驗：對小鼠精子畸形試驗為陰性;d、急性經口毒性實驗：LD50&amp;gt;15000mg/kg，屬無毒級;e、90天餵養存活試驗：對實驗大鼠生長發育、血液系統、肝、腎組織及生化指標未觀察到損傷作用，指標包括體重，GPT，BUN，HB，WBC，肝，腎、睾丸的大體形態及組織切片鏡檢。應用細胞或動物進行相關的生物實驗，對評價頻譜水的臨床應用意義非常重要，它可以為開發臨床應用範圍提供線索和科學依據。駿豐頻譜水在臨床試用方面也做了大量的調查研究及總結工作。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;四、駿豐頻譜水臨床應用觀察&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n　　&amp;nbsp;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;1、中山醫科大學附屬第一醫院對頻譜水臨床應用觀察報告。&amp;nbsp;&lt;br /&gt;\r\n該院在口腔科、中醫科、外科等科室進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、便秘、口腔潰瘍、泌尿結石等疾病。治療期間停止藥物及其它局部治療，每名患者每天飲用頻譜水1000-3000ML，連續飲用 1-2個療程，並進行複查記錄。結果表明：a、慢性咽炎及扁桃體炎痊癒率達 42%，顯效率為 100%。b、1998年 7月至 10月第一次臨床觀察泌尿結石排出痊癒率達 25%，總有效率為 90%，1998年 12月至 1999年 5月第二次臨床觀察，泌尿結石痊癒率 28.60%，總有效率90.50%;c、便秘痊癒率達 60%，總有效率 95%;d、口腔潰瘍痊癒率達80.95%，總有效率95.23%。&amp;nbsp;&lt;br /&gt;\r\n2、廣州紅十字會醫院應用的觀察報告。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;結果顯示：a、對泌尿結石總有效率達 94.70%;b、慢性咽炎和扁桃體炎痊癒率為 73.30%，總有效率達 96.70%;c、口腔潰瘍和慢性便秘總有效率達100%。駿豐頻譜水治療保健儀調製生成的頻譜水具有良好的生物學及醫學效應，其作用及原理研究涉及到多種學科：包括物理學、電子學、化學、生物物理學、生物化學及分子生物學、醫學等諸多方面，許多還是一些學科研究的前沿問題。因此，要深入瞭解它對生物體(包括人體)的廣泛作用產生的良好效應和科學效應原理，還必須做更多的研究和開發工作，讓我們不斷地努力實踐探索，使頻譜技術、頻譜水為保證人類健康及防治疾病做出更大的新貢獻。&lt;/span&gt;&lt;/p&gt;\r\n', '水是一種無色、無味、無定形流動的液體，盡人皆知。但要科學地深化對水的認知就不那麼簡單及廣為人知了。水是地球上存在最普遍的物質，但它是生命系統中必須的物質，沒有水就沒有生命');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(7, 1, '科學實際地認識駿豐頻譜水', '&lt;p&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;【作者簡介】 吳元德中國醫學科學院基礎醫學研究所研究員，北京協和醫學院基礎學院教授、博士生導師;原為其生物物理與結構生物學系主任，所學術委員會、學位委員會委員;曾任中國生物物理學會常務理事，自由基生物學、醫學專業委員會委員、副主任;國家自然科學基金委員會生物物理與生物醫學工程學科專家評審組成員，副組長、組長。吳教授主要從事自由基生物學、醫學，化學致癌作用及機理，腫瘤細胞生物膜特性研究等。曾獲得醫學科學院科技進步二等獎，國家教育委員會(現教育部)科技進步三等獎。此外，教授協和醫學大學八年本科生分子生物物理課程，對其中重要內容之一：水的微觀結構和生物學功能的科學含義及研究進展比較熟悉和瞭解。 劉亞寧中國人民解放軍空軍總醫院中心實驗室主任、主任醫師，北京郵電大學生物醫學工程中心教授。曾任中國生物物理學會常務理事，光生物學專業委員會主任;中國電子學會電磁相容分會生物電磁學專業委員會副主任。劉教授在研究生期間，師從中國老一輩著名生物物理科學家林克椿教授，進行水的微觀結構與生物功能方面的研究。工作後主要進行電磁輻射生物學效應技術及學科基礎方面的研究。研製的超微弱發光測定技術及儀器曾獲得國家科技發明三等獎，中國人民解放軍內科技進步二等獎。曾主編電磁輻射生物學專著。“駿豐頻譜水是普通水經過駿豐頻譜公司研製生產的高科技產品——駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜處理後，改變了水的物理化學特性，被調製成更適合人體吸收、利用，有利於治療疾病，促進人體健康的優化水。”要科學地分析、認識駿豐頻譜水，首先必須對水有一個科學的認識。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: normal;&quot;&gt;一、水的科學認知&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;水是一種無色、無味、無定形流動的液體，盡人皆知。但要科學地深化對水的認知就不那麼簡單及廣為人知了。水是地球上存在最普遍的物質，但它是生命系統中必須的物質，沒有水就沒有生命。水有許多獨特的宏觀化學及物理性質。例如：與同是元素週期表第六族的氫化物比較，隨著分子量的減小，碲化氫(H 2Te)、硒化氫(H 2Se)和硫化氫(H 2S)的沸點和熔點順序降低，在常溫下它們都是氣體。但分子量更小的水(H2O)的沸點、熔點卻明顯增高;而與氧的其它化合物(如CO2、SO 2等)相比較，水是偶極子(O-H鍵之間夾角105°，偶極矩 1.84德拜)，這是水分子之間相互作用力(引力)的來源，即：偶極-偶極相互作用。這也是水的比熱值最大，對於生命體系溫度穩定的貢獻最大的原因。水有較大的表面張力和有一定的粘度、密度;水可以溶解許多化合物;不溶于水的一些化合物(疏水物質)也可以在水中存在等等。這些都表明水分子間有很強的相互作用力，目前已經知道這種作用力的基礎是水。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;有豐富的“氫鍵”存在。已知水(H 2O)中氧原子形成水分子時採取 SP 3的雜化軌道，其中兩個 SP 3軌道與H的1S組成σ鍵，另外兩個 SP 3軌道為兩對孤對電子佔據(圖 1)。整個分子的電子雲分佈呈一四面體，所以一個水分子可以形成四個氫鍵，可以分別與另外四個水分子結合。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n溫度在0℃時，液態水凝結成固態的冰，冰是一種具有四面體的晶體，相鄰水分子間均以氫鍵形成空間結構關係。隨著溫度升高，氫鍵開始斷裂，水由冰變成流動的液體。近代水分子的四面體結構圖示水微晶中的中心水分子與每一個 SP 3軌道形成一個氫鍵盤最近的四個水分子的空間關係冰或結晶水中分子的空間結構模式圖 3冰或結晶水中分子的空間結構模式物理技術 X射線衍射分析發現，水結構在 15℃時存在 0.27和 0.45納米的衍射峰，計算出僅有 15%的氫鍵斷裂，說明流動的液態 。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n水中乃廣泛存在著由氫鍵組成的四面體結構，學術上稱之謂“微晶”。而水中這種四面體排列範圍沒有冰中的廣泛、均勻和規則，並且氫鍵的結合和斷裂比冰迅速(壽命為 11 -11秒)。這種整體結構的靈活、可變使水有相對較低的粘度和容易流動。另外，水的高介電係數也能說明水是由氫鍵結合的多聚分子(分子團)組成的。許多因素可以影響水的氫鍵、結合和斷裂，改變水的微觀結構。首先是熱，溫度升高，水分子無規則熱運動增加，遠端氫鍵斷裂，在 83℃時 X射線衍射水結構，其 0.45納米的衍射峰消失，水分子團變小。水分子游離的正、負電荷極性區增加，增加了水對某些化合物的溶解度。其他許多因素如特定的電磁振盪、超聲等物理因素以及化學因素如鹽的正、負離子，非極性的疏水物質，均可對水的氫鍵有不同的影響而改變水分子團，形成不同的結構模式。如鹽溶于水中，提出的結構模式是水分子分成三層，分別稱為：初級水區、無結構水區和體積水區，每一區微觀水結構是不同的。又如：非極性疏水物質存在水中所致水的結構模式如表示。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n水分子以氫健作用形成一個五角形十二面體的籠形結構，而籠形結構的水分子團又可聚集成為大分子團，如表示。在體內存在的各種小分子及與生命活動相關的大分子周圍的水分子也都有特定的結構模式。並且與生物學功能緊密相關。早在三十年前，通過核磁共振波譜技術研究發現腫瘤組織中水的弛豫時間明顯超過正常組織，並且隨著腫瘤的發展過程。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n惡性程度的增高而增加，被認為是細胞內蛋白質分子的極性區陽離子水化作用模型圖 5 水分子形成五角形十二面體，成籠狀結構包圍著一直徑為 0.5nm的空腔，內含疏水分子許多籠狀結構的水分子團聚集成大分子團周圍被吸附的水分子微觀結構模式的有序性減小。但由於科學。&lt;/span&gt;&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;技術發展的限制，有關生物組織中微觀結構水的變化與生物學功能的關係，以及水或內含物所引起的水的微觀結構變化與生物學功能的關係還未獲得驚人的進展。這正是現代科學發展所迫切需要注意及研究的問題，駿豐頻譜水的出現，可能為此作出新的貢獻。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;二、駿豐頻譜水的物理化學特性變化&lt;/span&gt;&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜，其能量主要是影響普通水的氫鍵，改變水或內含物周圍水的微觀結構。其中微觀結構分子團變小這一點，北京大學分析測試中心對比測定了普通水和頻譜水的核磁共振譜線，證實前者的半峰寬為113赫茲(HZ)，後者變為 63赫茲(HZ)。核磁共振譜線線寬變窄，說明分子的有序度降低，有規則的分子團變小。可能是基於這種改變，頻譜水改變了普通水的許多物理化學性質。具體實驗測定的結果表現為：&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n1、根據中國計量科學研究院測定的“駿豐頻譜水與自來水、血漿電導率頻譜測定報告”，結果表明: a、駿豐頻譜水的電導率隨頻率的升高而增大，在 200-300HZ範圍內變化明顯，在 300-1000HZ範圍內變化緩慢。b、駿豐頻譜水與自來水的電導率頻譜明顯差異，駿豐頻譜水的電導率明顯高於處理前的自來水。c、與自來水比較，駿豐頻譜水的電導率頻譜曲線更接近血漿的電導率頻譜曲線。&amp;nbsp;&lt;br /&gt;\r\n2、中國廣州分析測試中心測試報告，駿豐頻譜水與對照自來水的紅外吸收光譜，紅外透射光譜，紫外吸收光譜均有差異;北京大學化學與分子工程學院測定這兩種水的拉曼光譜峰值和強度亦均有差別，說明水分子的結構和分子鍵運動發生了改變。&amp;nbsp;&lt;br /&gt;\r\n3、廣州暨南大學化學系測定駿豐頻譜水的酸鹼度發現，由對照未處理的自來水的 pH6.387改變為 pH7.288，說明發生了堿移。&amp;nbsp;&lt;br /&gt;\r\n4、暨南大學化學系進行駿豐頻譜水與對照未處理自來水溶解碳酸鈣(CaCO 3,大理石)溶解量比較實驗表明，由對照水的每百克CaCO 3溶解量 0.0702克增高至 0.0938克，提高率為40.8%。&amp;nbsp;&lt;br /&gt;\r\n5、根據國家城市供水水質監測網北京監測站的實驗報告，駿豐頻譜水的溶解氧含量為 8.35mg/L，而對照水溶解氧含量為7.93 mg/L，前者增高含氧量5%。&amp;nbsp;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;6、國家城市供水水質監測網北京監測站檢測報告，在水中人為加入氯仿，頻譜水由未處理前的 109μg/L下降至74μg/L，清除率為 32%。另外實驗測定表明駿豐頻譜水治療保健儀對必需用氯氣進行自來水消毒殺菌但產生遺留的有害物質氯仿有一定的清除效果，處理後的自來水氯仿含量降至 1.7μg/L以下，遠低於國家規定的不超過 60μg/L的要求。正是由於以上種種駿豐頻譜水的物理化學性質改變，水由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;三、駿豐頻譜水有益健康，輔助防治疾病的原理分析及相關生物學實驗&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n人體是由大約 100億個各類細胞組成的整體，各類細胞分別行使各種生理功能，最後協調統一，維持人體健康的生命活動。保證細胞的正常新陳代謝非常重要，它既要保證細胞從外界環境中攝取氧分子和各種營養物質，經過改造轉化，提供維持細胞在生長中建造自身結構所需要的原料和能量;又要保證細胞內的分解產物(廢物)能及時排出胞外。細胞內、外環境發生任何變化影響了細胞正常生長，引發的功能改變就會導致疾病發生。人體細胞絕大部分不直接與大氣環境(外環境)接觸，僅與大氣環境接觸的皮膚細胞表面還存在一層角化層，少量沒有皮膚覆蓋的部分，如肺泡、粘膜等也都有一薄層液體覆蓋在細胞表面。生命最初出現在海洋中，在進化過程中出現了複雜的多細胞組合的生物體，直至最後人類的誕生。在此過程中大部分細胞已不可能直接與海水接觸，因此就出現了細胞外液，形成了血液、組織液以及相關的循環系統。這些細胞外液的基本成分是與遠古的海水相似的鹽溶液。它一方面作為細胞直接。&lt;br /&gt;\r\n&lt;br /&gt;\r\n生活的外環境，同時又是人體與外環境進行物質交換的媒介。人體除細胞外液體，還有更多的液體(約為細胞外液的兩倍)存在於細胞內部為細胞內液，此乃是細胞維持生存，進行各種生化反應的基本條件。另外，為保證細胞中許多生命大分子如蛋白質等最大效率地發揮生物學功能，細胞必須處於相對穩定的環境中，如體溫 37℃，溫度升高，蛋白質變性，細胞死亡。細胞內、外液合稱體液，約占人體總重量的 60%以上。體液中最重要的成分還是水，由此可見，水是維持細胞生存，發揮功能最關鍵的因素。細胞要成為一個實體，週邊有一層細胞膜。水迅速通過細胞膜出入細胞是保證細胞正常新陳代謝的關鍵，但細胞膜的結構不利於水的自由出入。早期生理學家已知膜上存在一些孔道便於水的出入，但直到 1992年才發現膜上存在由蛋白質組成的運輸水的“水通道”。到目前為止，水通道的許多問題及與疾病發生的關係仍然是科學研究的前沿。有些對通道研究的結果已獲得諾貝爾科學獎。除通道的改變能影響細胞內外水的交換外，水分子團的結構、形態也可能極大地影響 。&lt;br /&gt;\r\n&lt;br /&gt;\r\n水分子出入細胞的速率，分子團越小，水分子進出細胞的速度可能就越快。駿豐頻譜水在常溫下測定表現出的分子團變小表明，其在生理條件下適於機體利用;理化特性改變表現出的化合物的溶解度增加表明，細胞營養物質及代謝廢物的運輸量和速度加快，有利於促進細胞的新陳代謝;理化特性改變表現出的含氧量增加，在保證機體正常生命活動及動物、人類運動中具有重要意義。已知生命機體最基本的特性之一是對能量的需要，要有能量才能維持生命活動，才能生存。一類機體(主要是植物)可以靠吸收太陽能直接獲得能量(稱光養生物)，另一類機體(主要是動物)是通過氧化預先已合成的有機分子來獲取能量(稱化養生物)。所以，氧的存在是後一類機體獲得能量的基本要素。駿豐頻譜水含氧量增加，飲用後，水中的高氧可能通過腸道吸收，使血液中也富氧，輸送到各器官、細胞，可更好地滿足細胞生物氧化途徑對氧的需求，產生更多的能量。人體運動時，肌肉細胞如果得到豐富的氧供給，將產生更多的能量以保證肌肉處於更佳的運動狀態。當劇烈運動時，氧的供應不足，肌細胞進行缺氧糖酵解獲取能量，最終造成乳酸堆積。運動後如能有富氧的血液供應，將能使積累在肌細胞、擴散到血液和進入肝臟的乳酸再氧化成為丙酮酸，最後通過肝臟中的葡萄糖生成途徑重新形成可利用的葡萄糖，迅速解除疲勞。駿豐頻譜水錶現出的對氯仿的清除效果表明，經駿豐頻譜儀處理後，水中的一些有害的非極性(疏水性)化合物溶解量極大下降，有利於環境保護，提高飲水品質。其機理可能是電磁振盪能量使這些化合物的化學鍵發生斷裂，分子成為氣體逸出 ;也可能是能量使包繞在這些合化物分子週邊由水中氫鍵組成的籠形結構破裂，而使其析出。以上種種頻譜水改善的優化條件，均可保證並促進細胞健康的生存、生長，發揮正常的生理功能。這可能就是駿豐頻譜水促進人體健康、防治疾病發生的基本原理。應用頻譜水開展了一系列生物學實驗，結果也充分證明了駿豐頻譜水具有促進細胞正常新陳代謝表現出來各種優越的生理功能：&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n1、頻譜水對大鼠的細胞粘附和微循環的影響(劉育英等，中華實用醫藥雜誌，2002，2(6)：16-18，中國人民解放軍總醫院病理生理研究室，廣東駿豐頻譜實業有限公司)。大鼠靜脈內注入內毒素造成白細胞粘附和微循環障礙模型。通過腸系膜微循環觀察，計數細靜脈相同面積內白細胞粘附數量和微循環變化結果發現，飲用自來水的對照大鼠 60天后，細靜脈血管內的白細胞粘附增多，貼壁滾動的白細胞變形性下降，白細胞流出血管外，血流減慢，內皮細胞明顯水腫，間隙增大，有內皮細胞損傷出血。飲用頻譜水的實驗組大鼠 60天后，細靜脈內有少數白細胞貼壁滾動，比對照組明顯減少(P&amp;lt;0.01)。紅細胞在毛細血管內快速通過，有輕度紅細胞聚集和血小板聚集，未見血栓形成，靜脈管壁內皮細胞間連接緊密，管腔內表面平滑。結論為：頻譜水能夠減輕及改善內毒素引起的迴圈障礙，能顯著降低白細胞粘附。&amp;nbsp;&lt;br /&gt;\r\n2、頻譜水對正常大鼠微循環和血液流變學的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。結果發現：實驗組飲用頻譜水與對照組比較：a：微血管血流速度增快6.86%;b：微血管白細胞粘附減少 60.4%;c：全血粘度減少7.49%，血漿粘度減少16.98%;d：紅細胞變形指數增加2.67%;e：紅細胞電泳速度增加 17.11%;f：腸系膜微循環觀察發現實驗組與對照組相比較，紅細胞粘附減少 20%，紅細胞聚集減少10%，內皮細胞間隙增大降低 30%，血小板粘附降低 10%，血管出血下降 20%;結果顯示：飲用駿豐頻譜水有改善血液流變學、血液迴圈的作用，有促進機體新陳代謝的潛在效果。&lt;br /&gt;\r\n3、頻譜水對疲勞耐受力的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。SD大鼠和 NIH小鼠隨機分為實驗組(飲用頻譜水 30天)和對照組(飲用自來水 30天)，觀察記錄小鼠游泳疲勞時間;SD大鼠 30分鐘以後以MFLLab 200心功能軟體記錄左心室內壓力變化最大速率(±dp/dtmax);以 PIM11鐳射多普勒血流量儀測定骨骼肌血流量的變化，並測定乳酸，脫氫酶(LDH)，肌酸激酶(CK)活性和乳酸含量的變化。結果顯示：實驗組小鼠游泳時間延長。實驗組大鼠 游泳後心肌收縮與舒張功能改善。骨骼肌血流量增加。實驗組和對照組血漿 LDH和 CK活性差異無顯著性;大鼠游泳 30分鐘後骨骼肌細胞膜 ATP酶活性低於對照組，實驗說明頻譜水可以增強動物游泳疲勞耐力。其機制可能與心功能和骨骼肌血液供應改善和細胞內 ATP消耗減少有關。&amp;nbsp;&lt;br /&gt;\r\n4、頻譜水對大鼠胃腸電位及蠕動功能的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。實驗對飲用頻譜水的大鼠胃、空腸、結腸電位快、慢波的波幅、頻率，胃腸運動張力，胃排空，小腸及對標記物(碳黑)推進速度，胃腸血流量進行了測定。結果顯示：頻譜水對胃腸收縮有雙重調節功能。空腹狀態下，減少胃腸的基本節律電位，使胃腸運動減少，減少胃粘膜相互摩擦，從而起到保護胃粘膜的作用。胃內有實物刺激胃粘膜時，胃腸電位增強，胃腸平滑肌蠕動頻率波幅增加。促進胃內食物排出，加強小腸內食物移動有利於胃腸對食物的消化、吸收和排出。&amp;nbsp;&lt;br /&gt;\r\n5、頻譜水提高小鼠抗氧化功能的實驗(南方醫科大學實驗動物中心)，以頻譜水飼養小鼠並每天泡浴頻譜水(37℃)40分鐘，40天后測定小鼠血中脂質過氧化產物丙二醛(MDA)和抗氧化酶、超氧化物歧化酶(SOD)和谷胱甘肽過氧化物酶(GSH-PX)的活性。結果發現，MDA含量在實驗組為 5.41±2.41nmol/ml,顯著低於對照組的 8.87.±2.26nmol/ML(p&amp;lt;0.01);SOD酶活性在實驗組為 136.21±21.70 U/ML，顯著高於對照組的 105.23±11.04 U/ML(p&amp;lt;0.05);GSH-PX酶活性在實驗組為 283.18±19.62活力單位，顯著高於對照組217.97±14.66活力單位(p&amp;lt;0.05)。據中華人民共和國衛生部“保健品食品檢驗與評價技術規範”中抗氧化功能檢驗方法判定該受試樣品抗氧化功能動物實驗結果陽性。說明飲、泡頻譜水有提高機體抗氧化的功能。&amp;nbsp;&lt;br /&gt;\r\n6、頻譜水對腹腔巨噬細胞吞噬功能和血清溶菌酶的影響(中山醫科大學公共衛生學院)。以頻譜水及自來水飼養 SD大鼠，90天后測定腹腔巨噬細胞吞噬率。結果顯示：實驗組為37.35±12.81，對照組為22.88±5.84，提高64.99%。(p ≤0.01)。血清溶菌酶含量分別為93.00±20.00mg/L，69.00±6.68，提高了 34.78%(p ≤ 0.01)，說明頻譜水對餵養 90天大鼠有提高免疫功能的作用。&amp;nbsp;&lt;br /&gt;\r\n7、頻譜水對肺癌細胞株 HePG2細胞、大腸癌細胞株LOVO細胞殺傷實驗(中國人民解放軍第一軍醫大學)。結果顯示，以頻譜水配置的 RPMI-1640培養液進行 HePG2T和LOVO體外培養，頻譜水對癌細胞有殺滅作用，LOVO細胞 72小時後出現死亡，92-120小時後全部死亡。預示頻譜水可能有抑制癌腫生長的效果。&amp;nbsp;&lt;br /&gt;\r\n8、頻譜水對淋巴細胞增殖和細胞因數分泌的影響(中國太空人科研訓練中心，航太細胞分子生物學實驗室)，實驗結果表明頻譜水配製的培養基處理的小鼠脾淋巴細胞與正常對照水配製的培養基培養的細胞相比，增殖能力提高了 27%(p&amp;lt;0.01，n=3);淋巴細胞分泌因數，IFN-γ比對照組升高58%(p&amp;lt;0.01，n=3);IL-2分泌有升高趨勢。&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;9、頻譜水的安全性毒理評價(廣州市衛生防疫站)。結果表明 :a、鼠傷寒沙門氏菌回變實驗(Ames實驗)，未發現有直接和間接的致突變作用;b、骨髓微核實驗：對骨骼嗜多染紅細胞微核實驗為陰性;c、精子畸形試驗：對小鼠精子畸形試驗為陰性;d、急性經口毒性實驗：LD50&amp;gt;15000mg/kg，屬無毒級;e、90天餵養存活試驗：對實驗大鼠生長發育、血液系統、肝、腎組織及生化指標未觀察到損傷作用，指標包括體重，GPT，BUN，HB，WBC，肝，腎、睾丸的大體形態及組織切片鏡檢。應用細胞或動物進行相關的生物實驗，對評價頻譜水的臨床應用意義非常重要，它可以為開發臨床應用範圍提供線索和科學依據。駿豐頻譜水在臨床試用方面也做了大量的調查研究及總結工作。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;四、駿豐頻譜水臨床應用觀察&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n　　&amp;nbsp;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;1、中山醫科大學附屬第一醫院對頻譜水臨床應用觀察報告。&amp;nbsp;&lt;br /&gt;\r\n該院在口腔科、中醫科、外科等科室進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、便秘、口腔潰瘍、泌尿結石等疾病。治療期間停止藥物及其它局部治療，每名患者每天飲用頻譜水1000-3000ML，連續飲用 1-2個療程，並進行複查記錄。結果表明：a、慢性咽炎及扁桃體炎痊癒率達 42%，顯效率為 100%。b、1998年 7月至 10月第一次臨床觀察泌尿結石排出痊癒率達 25%，總有效率為 90%，1998年 12月至 1999年 5月第二次臨床觀察，泌尿結石痊癒率 28.60%，總有效率90.50%;c、便秘痊癒率達 60%，總有效率 95%;d、口腔潰瘍痊癒率達80.95%，總有效率95.23%。&amp;nbsp;&lt;br /&gt;\r\n2、廣州紅十字會醫院應用的觀察報告。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;結果顯示：a、對泌尿結石總有效率達 94.70%;b、慢性咽炎和扁桃體炎痊癒率為 73.30%，總有效率達 96.70%;c、口腔潰瘍和慢性便秘總有效率達100%。駿豐頻譜水治療保健儀調製生成的頻譜水具有良好的生物學及醫學效應，其作用及原理研究涉及到多種學科：包括物理學、電子學、化學、生物物理學、生物化學及分子生物學、醫學等諸多方面，許多還是一些學科研究的前沿問題。因此，要深入瞭解它對生物體(包括人體)的廣泛作用產生的良好效應和科學效應原理，還必須做更多的研究和開發工作，讓我們不斷地努力實踐探索，使頻譜技術、頻譜水為保證人類健康及防治疾病做出更大的新貢獻。&lt;/span&gt;&lt;/p&gt;\r\n', '水是一種無色、無味、無定形流動的液體，盡人皆知。但要科學地深化對水的認知就不那麼簡單及廣為人知了。水是地球上存在最普遍的物質，但它是生命系統中必須的物質，沒有水就沒有生命');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(7, 4, '科學實際地認識駿豐頻譜水', '&lt;p&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;【作者簡介】 吳元德中國醫學科學院基礎醫學研究所研究員，北京協和醫學院基礎學院教授、博士生導師;原為其生物物理與結構生物學系主任，所學術委員會、學位委員會委員;曾任中國生物物理學會常務理事，自由基生物學、醫學專業委員會委員、副主任;國家自然科學基金委員會生物物理與生物醫學工程學科專家評審組成員，副組長、組長。吳教授主要從事自由基生物學、醫學，化學致癌作用及機理，腫瘤細胞生物膜特性研究等。曾獲得醫學科學院科技進步二等獎，國家教育委員會(現教育部)科技進步三等獎。此外，教授協和醫學大學八年本科生分子生物物理課程，對其中重要內容之一：水的微觀結構和生物學功能的科學含義及研究進展比較熟悉和瞭解。 劉亞寧中國人民解放軍空軍總醫院中心實驗室主任、主任醫師，北京郵電大學生物醫學工程中心教授。曾任中國生物物理學會常務理事，光生物學專業委員會主任;中國電子學會電磁相容分會生物電磁學專業委員會副主任。劉教授在研究生期間，師從中國老一輩著名生物物理科學家林克椿教授，進行水的微觀結構與生物功能方面的研究。工作後主要進行電磁輻射生物學效應技術及學科基礎方面的研究。研製的超微弱發光測定技術及儀器曾獲得國家科技發明三等獎，中國人民解放軍內科技進步二等獎。曾主編電磁輻射生物學專著。“駿豐頻譜水是普通水經過駿豐頻譜公司研製生產的高科技產品——駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜處理後，改變了水的物理化學特性，被調製成更適合人體吸收、利用，有利於治療疾病，促進人體健康的優化水。”要科學地分析、認識駿豐頻譜水，首先必須對水有一個科學的認識。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: normal;&quot;&gt;一、水的科學認知&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;水是一種無色、無味、無定形流動的液體，盡人皆知。但要科學地深化對水的認知就不那麼簡單及廣為人知了。水是地球上存在最普遍的物質，但它是生命系統中必須的物質，沒有水就沒有生命。水有許多獨特的宏觀化學及物理性質。例如：與同是元素週期表第六族的氫化物比較，隨著分子量的減小，碲化氫(H 2Te)、硒化氫(H 2Se)和硫化氫(H 2S)的沸點和熔點順序降低，在常溫下它們都是氣體。但分子量更小的水(H2O)的沸點、熔點卻明顯增高;而與氧的其它化合物(如CO2、SO 2等)相比較，水是偶極子(O-H鍵之間夾角105°，偶極矩 1.84德拜)，這是水分子之間相互作用力(引力)的來源，即：偶極-偶極相互作用。這也是水的比熱值最大，對於生命體系溫度穩定的貢獻最大的原因。水有較大的表面張力和有一定的粘度、密度;水可以溶解許多化合物;不溶于水的一些化合物(疏水物質)也可以在水中存在等等。這些都表明水分子間有很強的相互作用力，目前已經知道這種作用力的基礎是水。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;有豐富的“氫鍵”存在。已知水(H 2O)中氧原子形成水分子時採取 SP 3的雜化軌道，其中兩個 SP 3軌道與H的1S組成σ鍵，另外兩個 SP 3軌道為兩對孤對電子佔據(圖 1)。整個分子的電子雲分佈呈一四面體，所以一個水分子可以形成四個氫鍵，可以分別與另外四個水分子結合。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n溫度在0℃時，液態水凝結成固態的冰，冰是一種具有四面體的晶體，相鄰水分子間均以氫鍵形成空間結構關係。隨著溫度升高，氫鍵開始斷裂，水由冰變成流動的液體。近代水分子的四面體結構圖示水微晶中的中心水分子與每一個 SP 3軌道形成一個氫鍵盤最近的四個水分子的空間關係冰或結晶水中分子的空間結構模式圖 3冰或結晶水中分子的空間結構模式物理技術 X射線衍射分析發現，水結構在 15℃時存在 0.27和 0.45納米的衍射峰，計算出僅有 15%的氫鍵斷裂，說明流動的液態 。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n水中乃廣泛存在著由氫鍵組成的四面體結構，學術上稱之謂“微晶”。而水中這種四面體排列範圍沒有冰中的廣泛、均勻和規則，並且氫鍵的結合和斷裂比冰迅速(壽命為 11 -11秒)。這種整體結構的靈活、可變使水有相對較低的粘度和容易流動。另外，水的高介電係數也能說明水是由氫鍵結合的多聚分子(分子團)組成的。許多因素可以影響水的氫鍵、結合和斷裂，改變水的微觀結構。首先是熱，溫度升高，水分子無規則熱運動增加，遠端氫鍵斷裂，在 83℃時 X射線衍射水結構，其 0.45納米的衍射峰消失，水分子團變小。水分子游離的正、負電荷極性區增加，增加了水對某些化合物的溶解度。其他許多因素如特定的電磁振盪、超聲等物理因素以及化學因素如鹽的正、負離子，非極性的疏水物質，均可對水的氫鍵有不同的影響而改變水分子團，形成不同的結構模式。如鹽溶于水中，提出的結構模式是水分子分成三層，分別稱為：初級水區、無結構水區和體積水區，每一區微觀水結構是不同的。又如：非極性疏水物質存在水中所致水的結構模式如表示。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n水分子以氫健作用形成一個五角形十二面體的籠形結構，而籠形結構的水分子團又可聚集成為大分子團，如表示。在體內存在的各種小分子及與生命活動相關的大分子周圍的水分子也都有特定的結構模式。並且與生物學功能緊密相關。早在三十年前，通過核磁共振波譜技術研究發現腫瘤組織中水的弛豫時間明顯超過正常組織，並且隨著腫瘤的發展過程。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n惡性程度的增高而增加，被認為是細胞內蛋白質分子的極性區陽離子水化作用模型圖 5 水分子形成五角形十二面體，成籠狀結構包圍著一直徑為 0.5nm的空腔，內含疏水分子許多籠狀結構的水分子團聚集成大分子團周圍被吸附的水分子微觀結構模式的有序性減小。但由於科學。&lt;/span&gt;&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-weight: normal; line-height: 18px;&quot;&gt;技術發展的限制，有關生物組織中微觀結構水的變化與生物學功能的關係，以及水或內含物所引起的水的微觀結構變化與生物學功能的關係還未獲得驚人的進展。這正是現代科學發展所迫切需要注意及研究的問題，駿豐頻譜水的出現，可能為此作出新的貢獻。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;二、駿豐頻譜水的物理化學特性變化&lt;/span&gt;&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜，其能量主要是影響普通水的氫鍵，改變水或內含物周圍水的微觀結構。其中微觀結構分子團變小這一點，北京大學分析測試中心對比測定了普通水和頻譜水的核磁共振譜線，證實前者的半峰寬為113赫茲(HZ)，後者變為 63赫茲(HZ)。核磁共振譜線線寬變窄，說明分子的有序度降低，有規則的分子團變小。可能是基於這種改變，頻譜水改變了普通水的許多物理化學性質。具體實驗測定的結果表現為：&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n1、根據中國計量科學研究院測定的“駿豐頻譜水與自來水、血漿電導率頻譜測定報告”，結果表明: a、駿豐頻譜水的電導率隨頻率的升高而增大，在 200-300HZ範圍內變化明顯，在 300-1000HZ範圍內變化緩慢。b、駿豐頻譜水與自來水的電導率頻譜明顯差異，駿豐頻譜水的電導率明顯高於處理前的自來水。c、與自來水比較，駿豐頻譜水的電導率頻譜曲線更接近血漿的電導率頻譜曲線。&amp;nbsp;&lt;br /&gt;\r\n2、中國廣州分析測試中心測試報告，駿豐頻譜水與對照自來水的紅外吸收光譜，紅外透射光譜，紫外吸收光譜均有差異;北京大學化學與分子工程學院測定這兩種水的拉曼光譜峰值和強度亦均有差別，說明水分子的結構和分子鍵運動發生了改變。&amp;nbsp;&lt;br /&gt;\r\n3、廣州暨南大學化學系測定駿豐頻譜水的酸鹼度發現，由對照未處理的自來水的 pH6.387改變為 pH7.288，說明發生了堿移。&amp;nbsp;&lt;br /&gt;\r\n4、暨南大學化學系進行駿豐頻譜水與對照未處理自來水溶解碳酸鈣(CaCO 3,大理石)溶解量比較實驗表明，由對照水的每百克CaCO 3溶解量 0.0702克增高至 0.0938克，提高率為40.8%。&amp;nbsp;&lt;br /&gt;\r\n5、根據國家城市供水水質監測網北京監測站的實驗報告，駿豐頻譜水的溶解氧含量為 8.35mg/L，而對照水溶解氧含量為7.93 mg/L，前者增高含氧量5%。&amp;nbsp;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;6、國家城市供水水質監測網北京監測站檢測報告，在水中人為加入氯仿，頻譜水由未處理前的 109μg/L下降至74μg/L，清除率為 32%。另外實驗測定表明駿豐頻譜水治療保健儀對必需用氯氣進行自來水消毒殺菌但產生遺留的有害物質氯仿有一定的清除效果，處理後的自來水氯仿含量降至 1.7μg/L以下，遠低於國家規定的不超過 60μg/L的要求。正是由於以上種種駿豐頻譜水的物理化學性質改變，水由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;三、駿豐頻譜水有益健康，輔助防治疾病的原理分析及相關生物學實驗&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n人體是由大約 100億個各類細胞組成的整體，各類細胞分別行使各種生理功能，最後協調統一，維持人體健康的生命活動。保證細胞的正常新陳代謝非常重要，它既要保證細胞從外界環境中攝取氧分子和各種營養物質，經過改造轉化，提供維持細胞在生長中建造自身結構所需要的原料和能量;又要保證細胞內的分解產物(廢物)能及時排出胞外。細胞內、外環境發生任何變化影響了細胞正常生長，引發的功能改變就會導致疾病發生。人體細胞絕大部分不直接與大氣環境(外環境)接觸，僅與大氣環境接觸的皮膚細胞表面還存在一層角化層，少量沒有皮膚覆蓋的部分，如肺泡、粘膜等也都有一薄層液體覆蓋在細胞表面。生命最初出現在海洋中，在進化過程中出現了複雜的多細胞組合的生物體，直至最後人類的誕生。在此過程中大部分細胞已不可能直接與海水接觸，因此就出現了細胞外液，形成了血液、組織液以及相關的循環系統。這些細胞外液的基本成分是與遠古的海水相似的鹽溶液。它一方面作為細胞直接。&lt;br /&gt;\r\n&lt;br /&gt;\r\n生活的外環境，同時又是人體與外環境進行物質交換的媒介。人體除細胞外液體，還有更多的液體(約為細胞外液的兩倍)存在於細胞內部為細胞內液，此乃是細胞維持生存，進行各種生化反應的基本條件。另外，為保證細胞中許多生命大分子如蛋白質等最大效率地發揮生物學功能，細胞必須處於相對穩定的環境中，如體溫 37℃，溫度升高，蛋白質變性，細胞死亡。細胞內、外液合稱體液，約占人體總重量的 60%以上。體液中最重要的成分還是水，由此可見，水是維持細胞生存，發揮功能最關鍵的因素。細胞要成為一個實體，週邊有一層細胞膜。水迅速通過細胞膜出入細胞是保證細胞正常新陳代謝的關鍵，但細胞膜的結構不利於水的自由出入。早期生理學家已知膜上存在一些孔道便於水的出入，但直到 1992年才發現膜上存在由蛋白質組成的運輸水的“水通道”。到目前為止，水通道的許多問題及與疾病發生的關係仍然是科學研究的前沿。有些對通道研究的結果已獲得諾貝爾科學獎。除通道的改變能影響細胞內外水的交換外，水分子團的結構、形態也可能極大地影響 。&lt;br /&gt;\r\n&lt;br /&gt;\r\n水分子出入細胞的速率，分子團越小，水分子進出細胞的速度可能就越快。駿豐頻譜水在常溫下測定表現出的分子團變小表明，其在生理條件下適於機體利用;理化特性改變表現出的化合物的溶解度增加表明，細胞營養物質及代謝廢物的運輸量和速度加快，有利於促進細胞的新陳代謝;理化特性改變表現出的含氧量增加，在保證機體正常生命活動及動物、人類運動中具有重要意義。已知生命機體最基本的特性之一是對能量的需要，要有能量才能維持生命活動，才能生存。一類機體(主要是植物)可以靠吸收太陽能直接獲得能量(稱光養生物)，另一類機體(主要是動物)是通過氧化預先已合成的有機分子來獲取能量(稱化養生物)。所以，氧的存在是後一類機體獲得能量的基本要素。駿豐頻譜水含氧量增加，飲用後，水中的高氧可能通過腸道吸收，使血液中也富氧，輸送到各器官、細胞，可更好地滿足細胞生物氧化途徑對氧的需求，產生更多的能量。人體運動時，肌肉細胞如果得到豐富的氧供給，將產生更多的能量以保證肌肉處於更佳的運動狀態。當劇烈運動時，氧的供應不足，肌細胞進行缺氧糖酵解獲取能量，最終造成乳酸堆積。運動後如能有富氧的血液供應，將能使積累在肌細胞、擴散到血液和進入肝臟的乳酸再氧化成為丙酮酸，最後通過肝臟中的葡萄糖生成途徑重新形成可利用的葡萄糖，迅速解除疲勞。駿豐頻譜水錶現出的對氯仿的清除效果表明，經駿豐頻譜儀處理後，水中的一些有害的非極性(疏水性)化合物溶解量極大下降，有利於環境保護，提高飲水品質。其機理可能是電磁振盪能量使這些化合物的化學鍵發生斷裂，分子成為氣體逸出 ;也可能是能量使包繞在這些合化物分子週邊由水中氫鍵組成的籠形結構破裂，而使其析出。以上種種頻譜水改善的優化條件，均可保證並促進細胞健康的生存、生長，發揮正常的生理功能。這可能就是駿豐頻譜水促進人體健康、防治疾病發生的基本原理。應用頻譜水開展了一系列生物學實驗，結果也充分證明了駿豐頻譜水具有促進細胞正常新陳代謝表現出來各種優越的生理功能：&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n1、頻譜水對大鼠的細胞粘附和微循環的影響(劉育英等，中華實用醫藥雜誌，2002，2(6)：16-18，中國人民解放軍總醫院病理生理研究室，廣東駿豐頻譜實業有限公司)。大鼠靜脈內注入內毒素造成白細胞粘附和微循環障礙模型。通過腸系膜微循環觀察，計數細靜脈相同面積內白細胞粘附數量和微循環變化結果發現，飲用自來水的對照大鼠 60天后，細靜脈血管內的白細胞粘附增多，貼壁滾動的白細胞變形性下降，白細胞流出血管外，血流減慢，內皮細胞明顯水腫，間隙增大，有內皮細胞損傷出血。飲用頻譜水的實驗組大鼠 60天后，細靜脈內有少數白細胞貼壁滾動，比對照組明顯減少(P&amp;lt;0.01)。紅細胞在毛細血管內快速通過，有輕度紅細胞聚集和血小板聚集，未見血栓形成，靜脈管壁內皮細胞間連接緊密，管腔內表面平滑。結論為：頻譜水能夠減輕及改善內毒素引起的迴圈障礙，能顯著降低白細胞粘附。&amp;nbsp;&lt;br /&gt;\r\n2、頻譜水對正常大鼠微循環和血液流變學的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。結果發現：實驗組飲用頻譜水與對照組比較：a：微血管血流速度增快6.86%;b：微血管白細胞粘附減少 60.4%;c：全血粘度減少7.49%，血漿粘度減少16.98%;d：紅細胞變形指數增加2.67%;e：紅細胞電泳速度增加 17.11%;f：腸系膜微循環觀察發現實驗組與對照組相比較，紅細胞粘附減少 20%，紅細胞聚集減少10%，內皮細胞間隙增大降低 30%，血小板粘附降低 10%，血管出血下降 20%;結果顯示：飲用駿豐頻譜水有改善血液流變學、血液迴圈的作用，有促進機體新陳代謝的潛在效果。&lt;br /&gt;\r\n3、頻譜水對疲勞耐受力的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。SD大鼠和 NIH小鼠隨機分為實驗組(飲用頻譜水 30天)和對照組(飲用自來水 30天)，觀察記錄小鼠游泳疲勞時間;SD大鼠 30分鐘以後以MFLLab 200心功能軟體記錄左心室內壓力變化最大速率(±dp/dtmax);以 PIM11鐳射多普勒血流量儀測定骨骼肌血流量的變化，並測定乳酸，脫氫酶(LDH)，肌酸激酶(CK)活性和乳酸含量的變化。結果顯示：實驗組小鼠游泳時間延長。實驗組大鼠 游泳後心肌收縮與舒張功能改善。骨骼肌血流量增加。實驗組和對照組血漿 LDH和 CK活性差異無顯著性;大鼠游泳 30分鐘後骨骼肌細胞膜 ATP酶活性低於對照組，實驗說明頻譜水可以增強動物游泳疲勞耐力。其機制可能與心功能和骨骼肌血液供應改善和細胞內 ATP消耗減少有關。&amp;nbsp;&lt;br /&gt;\r\n4、頻譜水對大鼠胃腸電位及蠕動功能的影響(劉育英等，中國人民解放軍總醫院病理生理研究室)。實驗對飲用頻譜水的大鼠胃、空腸、結腸電位快、慢波的波幅、頻率，胃腸運動張力，胃排空，小腸及對標記物(碳黑)推進速度，胃腸血流量進行了測定。結果顯示：頻譜水對胃腸收縮有雙重調節功能。空腹狀態下，減少胃腸的基本節律電位，使胃腸運動減少，減少胃粘膜相互摩擦，從而起到保護胃粘膜的作用。胃內有實物刺激胃粘膜時，胃腸電位增強，胃腸平滑肌蠕動頻率波幅增加。促進胃內食物排出，加強小腸內食物移動有利於胃腸對食物的消化、吸收和排出。&amp;nbsp;&lt;br /&gt;\r\n5、頻譜水提高小鼠抗氧化功能的實驗(南方醫科大學實驗動物中心)，以頻譜水飼養小鼠並每天泡浴頻譜水(37℃)40分鐘，40天后測定小鼠血中脂質過氧化產物丙二醛(MDA)和抗氧化酶、超氧化物歧化酶(SOD)和谷胱甘肽過氧化物酶(GSH-PX)的活性。結果發現，MDA含量在實驗組為 5.41±2.41nmol/ml,顯著低於對照組的 8.87.±2.26nmol/ML(p&amp;lt;0.01);SOD酶活性在實驗組為 136.21±21.70 U/ML，顯著高於對照組的 105.23±11.04 U/ML(p&amp;lt;0.05);GSH-PX酶活性在實驗組為 283.18±19.62活力單位，顯著高於對照組217.97±14.66活力單位(p&amp;lt;0.05)。據中華人民共和國衛生部“保健品食品檢驗與評價技術規範”中抗氧化功能檢驗方法判定該受試樣品抗氧化功能動物實驗結果陽性。說明飲、泡頻譜水有提高機體抗氧化的功能。&amp;nbsp;&lt;br /&gt;\r\n6、頻譜水對腹腔巨噬細胞吞噬功能和血清溶菌酶的影響(中山醫科大學公共衛生學院)。以頻譜水及自來水飼養 SD大鼠，90天后測定腹腔巨噬細胞吞噬率。結果顯示：實驗組為37.35±12.81，對照組為22.88±5.84，提高64.99%。(p ≤0.01)。血清溶菌酶含量分別為93.00±20.00mg/L，69.00±6.68，提高了 34.78%(p ≤ 0.01)，說明頻譜水對餵養 90天大鼠有提高免疫功能的作用。&amp;nbsp;&lt;br /&gt;\r\n7、頻譜水對肺癌細胞株 HePG2細胞、大腸癌細胞株LOVO細胞殺傷實驗(中國人民解放軍第一軍醫大學)。結果顯示，以頻譜水配置的 RPMI-1640培養液進行 HePG2T和LOVO體外培養，頻譜水對癌細胞有殺滅作用，LOVO細胞 72小時後出現死亡，92-120小時後全部死亡。預示頻譜水可能有抑制癌腫生長的效果。&amp;nbsp;&lt;br /&gt;\r\n8、頻譜水對淋巴細胞增殖和細胞因數分泌的影響(中國太空人科研訓練中心，航太細胞分子生物學實驗室)，實驗結果表明頻譜水配製的培養基處理的小鼠脾淋巴細胞與正常對照水配製的培養基培養的細胞相比，增殖能力提高了 27%(p&amp;lt;0.01，n=3);淋巴細胞分泌因數，IFN-γ比對照組升高58%(p&amp;lt;0.01，n=3);IL-2分泌有升高趨勢。&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;9、頻譜水的安全性毒理評價(廣州市衛生防疫站)。結果表明 :a、鼠傷寒沙門氏菌回變實驗(Ames實驗)，未發現有直接和間接的致突變作用;b、骨髓微核實驗：對骨骼嗜多染紅細胞微核實驗為陰性;c、精子畸形試驗：對小鼠精子畸形試驗為陰性;d、急性經口毒性實驗：LD50&amp;gt;15000mg/kg，屬無毒級;e、90天餵養存活試驗：對實驗大鼠生長發育、血液系統、肝、腎組織及生化指標未觀察到損傷作用，指標包括體重，GPT，BUN，HB，WBC，肝，腎、睾丸的大體形態及組織切片鏡檢。應用細胞或動物進行相關的生物實驗，對評價頻譜水的臨床應用意義非常重要，它可以為開發臨床應用範圍提供線索和科學依據。駿豐頻譜水在臨床試用方面也做了大量的調查研究及總結工作。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;四、駿豐頻譜水臨床應用觀察&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n　　&amp;nbsp;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;1、中山醫科大學附屬第一醫院對頻譜水臨床應用觀察報告。&amp;nbsp;&lt;br /&gt;\r\n該院在口腔科、中醫科、外科等科室進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、便秘、口腔潰瘍、泌尿結石等疾病。治療期間停止藥物及其它局部治療，每名患者每天飲用頻譜水1000-3000ML，連續飲用 1-2個療程，並進行複查記錄。結果表明：a、慢性咽炎及扁桃體炎痊癒率達 42%，顯效率為 100%。b、1998年 7月至 10月第一次臨床觀察泌尿結石排出痊癒率達 25%，總有效率為 90%，1998年 12月至 1999年 5月第二次臨床觀察，泌尿結石痊癒率 28.60%，總有效率90.50%;c、便秘痊癒率達 60%，總有效率 95%;d、口腔潰瘍痊癒率達80.95%，總有效率95.23%。&amp;nbsp;&lt;br /&gt;\r\n2、廣州紅十字會醫院應用的觀察報告。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;結果顯示：a、對泌尿結石總有效率達 94.70%;b、慢性咽炎和扁桃體炎痊癒率為 73.30%，總有效率達 96.70%;c、口腔潰瘍和慢性便秘總有效率達100%。駿豐頻譜水治療保健儀調製生成的頻譜水具有良好的生物學及醫學效應，其作用及原理研究涉及到多種學科：包括物理學、電子學、化學、生物物理學、生物化學及分子生物學、醫學等諸多方面，許多還是一些學科研究的前沿問題。因此，要深入瞭解它對生物體(包括人體)的廣泛作用產生的良好效應和科學效應原理，還必須做更多的研究和開發工作，讓我們不斷地努力實踐探索，使頻譜技術、頻譜水為保證人類健康及防治疾病做出更大的新貢獻。&lt;/span&gt;&lt;/p&gt;\r\n', '水是一種無色、無味、無定形流動的液體，盡人皆知。但要科學地深化對水的認知就不那麼簡單及廣為人知了。水是地球上存在最普遍的物質，但它是生命系統中必須的物質，沒有水就沒有生命'),
(8, 3, '頻譜水性質的“六大優化”', '&lt;p&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;【作者簡介】 蔡繼業暨南大學生命科學技術學院原副院長，教授，博士生導師。畢業于北京大學物理系，曾在美國哥倫比亞大學進修，在斯坦福大學做高級訪問學者。他與同事已在國際、國內的刊物上發表了200 多篇論文，其中100 多篇論文被SCI 收錄，並被美國哥倫比亞大學、西北大學、康乃爾大學、阿崗國家實驗室等國內外科研單位在Science，J. Phys. Chem等國際高水準刊物上引用了600 多次;還有五項發明專利，一本專著和兩本教材;並應邀先後在斯坦福大學、哥倫比亞大學、紐約大學、加拿大西安大略大學、香港大學、北京大學、復旦大學、中國科技大學等10多所國內外大學作學術報告。他已負責培養了60 多名博士、碩士生，有多名學生已成為教授、博導，還有些學生活躍在美國、歐盟、日本等國的科研領域。蔡教授和他同事的部分工作已獲得廣東省自然科學一等獎、廣州市科技進步一等獎、廣東省高教廳科技進步一等獎等。蔡教授致力於細胞超微結構和細胞上單個分子探測的研究，首次實現了用量子點標記的胞表面特異性分子的原位單分子探測。目前正負責國家973 重大專案的課題——抗體抗原複合物的分子分佈特徵及功能識別基礎(2010CB833603)，並承擔了國家自然科學基金等多個項目。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;頻譜水是由普通飲用水經過駿豐頻譜水治療保健儀製作形成的，製作後的頻譜水的物理、化學、生物學性質相較于普通飲用水發生了“六大優化”。經中國計量科學研究院、北京大學化學與分子工程學院、國家城市供水水質監測網北京監測站和廣州分析測試中心等有關單位檢測，與原自來水相比，頻譜水發生了以下“六大優化”：&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;頻譜水的電導率頻譜曲線更接近人體血漿的電導率頻譜曲線。從測試圖上可見，頻譜水的電導率增大，與人體血漿更接近。頻譜水的17O 核磁共振譜變窄。表明水的分子團變小，滲透力、溶解力增強，水的口感更好。頻譜水中氯仿含量大大降低。測試結果僅為≤ 1.7 微克/ 升，大大低於原水的國家標準≤ 60 微克/ 升。頻譜水中溶解氧含量提高5%。頻譜水的頻譜場更接近人體的頻譜場。飲用後能使體內巨噬細胞(吞噬病菌的細胞)的吞噬率提高64.99%，血清溶菌酶(溶解病菌的酶類)的濃度提高34.78%。&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(一)為什麼頻譜水電導率會接近人體血漿?&lt;/span&gt;&lt;br /&gt;\r\n人體血漿電導率比水高，是由於血漿中含有各種離子，如Na+，H+，OH-，CI- 等，在人體的頻譜場內，這些離子作有規律的運動，頻譜水在發生器處理後，在頻譜場的作用下，也會生成一些離子，包括H+、OH-。還有，如水中雜質氯仿分解為Cl 離子等，這些離子增加了水的電導率。相近電導率的液體更容易混和，因為頻譜水的電導率接近人體血漿，所以頻譜水更容易與血漿混和，從而更容易使人體細胞、組織和體液吸收水分，有利於各種生命活動的進行。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(二)為什麼頻譜水17O 核磁共振譜變窄，水分子團會變小?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n頻譜水的滲透力和溶解力會增強?水中的分子以水分子團的形式存在，按照日本北海道一位教授的觀點，純水在25℃以下是以一定數量的分子團的聚合體組成的，17O 核磁共振譜的資料表明，變得好喝的水是水分子團平均變小的結果。頻譜水發生器的頻譜場將大的水分子團打碎，成為較小的水分子團，因而17O-NMK 譜從處理前的120赫茲變為處理後的65 赫茲。17O 核磁共振譜越窄，水分子團越小。正因為頻譜水的分子團變小了，更容易進入結石內(結石上有小孔)，能將膽結石、泌尿結石溶解排出體外;也更容易進入細胞，更易為人體吸收(因細胞膜上也有小孔，水分子團越小越易進入細胞，這也是頻譜水滲透力增強的原因)。另外水分子團越小，越容易進入人的味蕾，使人感覺味道好。日本專家發現昭島市的水比京都的水分子團小，所以喝起來味道更好，頻譜水好喝的原因也正在于水分子團變小。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(三)為什麼頻譜水中氯仿含量會大大降低?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n氯仿，也稱三氯甲烷，分子為CHCl3。這是由於日常飲用的自來水是用氯氣(Cl2)消毒，來殺死水中的病菌和微生物，但是也產生了一種遺留的有害物質——氯仿，這是一種致癌物質，需用活性炭來吸附。一些西方發達國家，如美國就常用活性炭來過濾自來水，但代價頗高，我國的自來水廠難以承擔。經頻譜水發生器處理後，氯仿含量可降至1.7 微克/ 升以下，相當於國家標準(≤ 60 微克/ 升)的三十五分之一。頻譜水發生器的頻譜場能將C-Cl 鍵打斷，生成游離的CI- 離子或Cl2，Cl2 會揮發到空氣中去，從而清除了水中的氯仿。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(四)為什麼頻譜水會增加含氧量?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n經國家城市供水水質監測網北京監測站檢測，頻譜水的溶解氧比處理前的自來水提高5% 以上，水中的溶解氧提高了，可增強人體新陳代謝，補償人體排除毒素和廢物的功能。那麼頻譜水中含氧量是如何增加的呢?水分子在水中的能量是服從玻爾茲曼規則分佈的，按照玻爾茲曼公式，有一小部分水分子處於高能級，這部分處於高能級的水分子在頻譜水發生器的處理下，會發生分解。&amp;nbsp;&lt;br /&gt;\r\n即：H2O(高能分子)+ 頻譜場→ H2+O2。因此，產生了氧氣和氫氣，其中一部分氧氣保留在水中，增加了含氧量，另一部分氧氣和氫氣會揮發到空氣中去。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(五)為什麼頻譜水可以消除人體器官頻譜場的故障&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n以防病治病?人體是細胞的集合體，體內鈣、鈉、鉀等多種離子通過細胞新陳代謝與體液迴圈進行正常有規律的運動，形成人體的生物頻譜場，經科學研究證實，人體具有生物電磁頻譜場，該種頻譜場的範圍在0.2~100 赫茲範圍。當人生病時，頻譜場發生變化。把不同振動頻率的電磁波的振幅按頻率排列稱為頻譜。人體的電磁波也有特定的頻譜，人體各個器官都有各自的頻譜場，如腦頻譜場、心臟頻譜場等等。現在已有儀器測試腦電圖、心電圖、胃電圖等，這只是一部分的檢測手段，隨著科學儀器的發展，將有更多的檢測手段問世。對人體頻譜場的研究將有利於揭示生命的奧秘，有利於疾病的診斷、預防和治療。頻譜水使水的頻譜場比普通飲用水更加接近人體的生物頻譜，更容易為人體吸收。人體各器官特定的頻譜場在生病時會發生變化，頻譜水進入人體後，易於消除器官頻譜場的故障，使人體器官恢復正常、有序、協調的工作。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(六)為什麼頻譜水可以提高人體內巨噬細胞的吞噬&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;率和血清溶菌酶的濃度?正如前面第(二)點所論述的，頻譜水水分子團更小，因此它能更好地進入人體巨噬細胞內和與血清溶菌酶混和，從而增強其活性。另外，吞噬病菌和溶解病菌的活動，均必須在水環境中進行，因為頻譜水更易滲透和進入細胞組織與體液中，使巨噬細胞和血清溶菌酶的活動有了更好的水環境。&lt;/span&gt;&lt;/p&gt;\r\n', '頻譜水是由普通飲用水經過駿豐頻譜水治療保健儀製作形成的，製作後的頻譜水的物理、化學、生物學性質相較于普通飲用水發生了“六大優化”'),
(8, 1, '頻譜水性質的“六大優化”', '&lt;p&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;【作者簡介】 蔡繼業暨南大學生命科學技術學院原副院長，教授，博士生導師。畢業于北京大學物理系，曾在美國哥倫比亞大學進修，在斯坦福大學做高級訪問學者。他與同事已在國際、國內的刊物上發表了200 多篇論文，其中100 多篇論文被SCI 收錄，並被美國哥倫比亞大學、西北大學、康乃爾大學、阿崗國家實驗室等國內外科研單位在Science，J. Phys. Chem等國際高水準刊物上引用了600 多次;還有五項發明專利，一本專著和兩本教材;並應邀先後在斯坦福大學、哥倫比亞大學、紐約大學、加拿大西安大略大學、香港大學、北京大學、復旦大學、中國科技大學等10多所國內外大學作學術報告。他已負責培養了60 多名博士、碩士生，有多名學生已成為教授、博導，還有些學生活躍在美國、歐盟、日本等國的科研領域。蔡教授和他同事的部分工作已獲得廣東省自然科學一等獎、廣州市科技進步一等獎、廣東省高教廳科技進步一等獎等。蔡教授致力於細胞超微結構和細胞上單個分子探測的研究，首次實現了用量子點標記的胞表面特異性分子的原位單分子探測。目前正負責國家973 重大專案的課題——抗體抗原複合物的分子分佈特徵及功能識別基礎(2010CB833603)，並承擔了國家自然科學基金等多個項目。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;頻譜水是由普通飲用水經過駿豐頻譜水治療保健儀製作形成的，製作後的頻譜水的物理、化學、生物學性質相較于普通飲用水發生了“六大優化”。經中國計量科學研究院、北京大學化學與分子工程學院、國家城市供水水質監測網北京監測站和廣州分析測試中心等有關單位檢測，與原自來水相比，頻譜水發生了以下“六大優化”：&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;頻譜水的電導率頻譜曲線更接近人體血漿的電導率頻譜曲線。從測試圖上可見，頻譜水的電導率增大，與人體血漿更接近。頻譜水的17O 核磁共振譜變窄。表明水的分子團變小，滲透力、溶解力增強，水的口感更好。頻譜水中氯仿含量大大降低。測試結果僅為≤ 1.7 微克/ 升，大大低於原水的國家標準≤ 60 微克/ 升。頻譜水中溶解氧含量提高5%。頻譜水的頻譜場更接近人體的頻譜場。飲用後能使體內巨噬細胞(吞噬病菌的細胞)的吞噬率提高64.99%，血清溶菌酶(溶解病菌的酶類)的濃度提高34.78%。&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(一)為什麼頻譜水電導率會接近人體血漿?&lt;/span&gt;&lt;br /&gt;\r\n人體血漿電導率比水高，是由於血漿中含有各種離子，如Na+，H+，OH-，CI- 等，在人體的頻譜場內，這些離子作有規律的運動，頻譜水在發生器處理後，在頻譜場的作用下，也會生成一些離子，包括H+、OH-。還有，如水中雜質氯仿分解為Cl 離子等，這些離子增加了水的電導率。相近電導率的液體更容易混和，因為頻譜水的電導率接近人體血漿，所以頻譜水更容易與血漿混和，從而更容易使人體細胞、組織和體液吸收水分，有利於各種生命活動的進行。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(二)為什麼頻譜水17O 核磁共振譜變窄，水分子團會變小?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n頻譜水的滲透力和溶解力會增強?水中的分子以水分子團的形式存在，按照日本北海道一位教授的觀點，純水在25℃以下是以一定數量的分子團的聚合體組成的，17O 核磁共振譜的資料表明，變得好喝的水是水分子團平均變小的結果。頻譜水發生器的頻譜場將大的水分子團打碎，成為較小的水分子團，因而17O-NMK 譜從處理前的120赫茲變為處理後的65 赫茲。17O 核磁共振譜越窄，水分子團越小。正因為頻譜水的分子團變小了，更容易進入結石內(結石上有小孔)，能將膽結石、泌尿結石溶解排出體外;也更容易進入細胞，更易為人體吸收(因細胞膜上也有小孔，水分子團越小越易進入細胞，這也是頻譜水滲透力增強的原因)。另外水分子團越小，越容易進入人的味蕾，使人感覺味道好。日本專家發現昭島市的水比京都的水分子團小，所以喝起來味道更好，頻譜水好喝的原因也正在于水分子團變小。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(三)為什麼頻譜水中氯仿含量會大大降低?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n氯仿，也稱三氯甲烷，分子為CHCl3。這是由於日常飲用的自來水是用氯氣(Cl2)消毒，來殺死水中的病菌和微生物，但是也產生了一種遺留的有害物質——氯仿，這是一種致癌物質，需用活性炭來吸附。一些西方發達國家，如美國就常用活性炭來過濾自來水，但代價頗高，我國的自來水廠難以承擔。經頻譜水發生器處理後，氯仿含量可降至1.7 微克/ 升以下，相當於國家標準(≤ 60 微克/ 升)的三十五分之一。頻譜水發生器的頻譜場能將C-Cl 鍵打斷，生成游離的CI- 離子或Cl2，Cl2 會揮發到空氣中去，從而清除了水中的氯仿。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(四)為什麼頻譜水會增加含氧量?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n經國家城市供水水質監測網北京監測站檢測，頻譜水的溶解氧比處理前的自來水提高5% 以上，水中的溶解氧提高了，可增強人體新陳代謝，補償人體排除毒素和廢物的功能。那麼頻譜水中含氧量是如何增加的呢?水分子在水中的能量是服從玻爾茲曼規則分佈的，按照玻爾茲曼公式，有一小部分水分子處於高能級，這部分處於高能級的水分子在頻譜水發生器的處理下，會發生分解。&amp;nbsp;&lt;br /&gt;\r\n即：H2O(高能分子)+ 頻譜場→ H2+O2。因此，產生了氧氣和氫氣，其中一部分氧氣保留在水中，增加了含氧量，另一部分氧氣和氫氣會揮發到空氣中去。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(五)為什麼頻譜水可以消除人體器官頻譜場的故障&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n以防病治病?人體是細胞的集合體，體內鈣、鈉、鉀等多種離子通過細胞新陳代謝與體液迴圈進行正常有規律的運動，形成人體的生物頻譜場，經科學研究證實，人體具有生物電磁頻譜場，該種頻譜場的範圍在0.2~100 赫茲範圍。當人生病時，頻譜場發生變化。把不同振動頻率的電磁波的振幅按頻率排列稱為頻譜。人體的電磁波也有特定的頻譜，人體各個器官都有各自的頻譜場，如腦頻譜場、心臟頻譜場等等。現在已有儀器測試腦電圖、心電圖、胃電圖等，這只是一部分的檢測手段，隨著科學儀器的發展，將有更多的檢測手段問世。對人體頻譜場的研究將有利於揭示生命的奧秘，有利於疾病的診斷、預防和治療。頻譜水使水的頻譜場比普通飲用水更加接近人體的生物頻譜，更容易為人體吸收。人體各器官特定的頻譜場在生病時會發生變化，頻譜水進入人體後，易於消除器官頻譜場的故障，使人體器官恢復正常、有序、協調的工作。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(六)為什麼頻譜水可以提高人體內巨噬細胞的吞噬&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;率和血清溶菌酶的濃度?正如前面第(二)點所論述的，頻譜水水分子團更小，因此它能更好地進入人體巨噬細胞內和與血清溶菌酶混和，從而增強其活性。另外，吞噬病菌和溶解病菌的活動，均必須在水環境中進行，因為頻譜水更易滲透和進入細胞組織與體液中，使巨噬細胞和血清溶菌酶的活動有了更好的水環境。&lt;/span&gt;&lt;/p&gt;\r\n', '頻譜水是由普通飲用水經過駿豐頻譜水治療保健儀製作形成的，製作後的頻譜水的物理、化學、生物學性質相較于普通飲用水發生了“六大優化”');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(8, 4, '頻譜水性質的“六大優化”', '&lt;p&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;【作者簡介】 蔡繼業暨南大學生命科學技術學院原副院長，教授，博士生導師。畢業于北京大學物理系，曾在美國哥倫比亞大學進修，在斯坦福大學做高級訪問學者。他與同事已在國際、國內的刊物上發表了200 多篇論文，其中100 多篇論文被SCI 收錄，並被美國哥倫比亞大學、西北大學、康乃爾大學、阿崗國家實驗室等國內外科研單位在Science，J. Phys. Chem等國際高水準刊物上引用了600 多次;還有五項發明專利，一本專著和兩本教材;並應邀先後在斯坦福大學、哥倫比亞大學、紐約大學、加拿大西安大略大學、香港大學、北京大學、復旦大學、中國科技大學等10多所國內外大學作學術報告。他已負責培養了60 多名博士、碩士生，有多名學生已成為教授、博導，還有些學生活躍在美國、歐盟、日本等國的科研領域。蔡教授和他同事的部分工作已獲得廣東省自然科學一等獎、廣州市科技進步一等獎、廣東省高教廳科技進步一等獎等。蔡教授致力於細胞超微結構和細胞上單個分子探測的研究，首次實現了用量子點標記的胞表面特異性分子的原位單分子探測。目前正負責國家973 重大專案的課題——抗體抗原複合物的分子分佈特徵及功能識別基礎(2010CB833603)，並承擔了國家自然科學基金等多個項目。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;頻譜水是由普通飲用水經過駿豐頻譜水治療保健儀製作形成的，製作後的頻譜水的物理、化學、生物學性質相較于普通飲用水發生了“六大優化”。經中國計量科學研究院、北京大學化學與分子工程學院、國家城市供水水質監測網北京監測站和廣州分析測試中心等有關單位檢測，與原自來水相比，頻譜水發生了以下“六大優化”：&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;頻譜水的電導率頻譜曲線更接近人體血漿的電導率頻譜曲線。從測試圖上可見，頻譜水的電導率增大，與人體血漿更接近。頻譜水的17O 核磁共振譜變窄。表明水的分子團變小，滲透力、溶解力增強，水的口感更好。頻譜水中氯仿含量大大降低。測試結果僅為≤ 1.7 微克/ 升，大大低於原水的國家標準≤ 60 微克/ 升。頻譜水中溶解氧含量提高5%。頻譜水的頻譜場更接近人體的頻譜場。飲用後能使體內巨噬細胞(吞噬病菌的細胞)的吞噬率提高64.99%，血清溶菌酶(溶解病菌的酶類)的濃度提高34.78%。&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(一)為什麼頻譜水電導率會接近人體血漿?&lt;/span&gt;&lt;br /&gt;\r\n人體血漿電導率比水高，是由於血漿中含有各種離子，如Na+，H+，OH-，CI- 等，在人體的頻譜場內，這些離子作有規律的運動，頻譜水在發生器處理後，在頻譜場的作用下，也會生成一些離子，包括H+、OH-。還有，如水中雜質氯仿分解為Cl 離子等，這些離子增加了水的電導率。相近電導率的液體更容易混和，因為頻譜水的電導率接近人體血漿，所以頻譜水更容易與血漿混和，從而更容易使人體細胞、組織和體液吸收水分，有利於各種生命活動的進行。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(二)為什麼頻譜水17O 核磁共振譜變窄，水分子團會變小?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n頻譜水的滲透力和溶解力會增強?水中的分子以水分子團的形式存在，按照日本北海道一位教授的觀點，純水在25℃以下是以一定數量的分子團的聚合體組成的，17O 核磁共振譜的資料表明，變得好喝的水是水分子團平均變小的結果。頻譜水發生器的頻譜場將大的水分子團打碎，成為較小的水分子團，因而17O-NMK 譜從處理前的120赫茲變為處理後的65 赫茲。17O 核磁共振譜越窄，水分子團越小。正因為頻譜水的分子團變小了，更容易進入結石內(結石上有小孔)，能將膽結石、泌尿結石溶解排出體外;也更容易進入細胞，更易為人體吸收(因細胞膜上也有小孔，水分子團越小越易進入細胞，這也是頻譜水滲透力增強的原因)。另外水分子團越小，越容易進入人的味蕾，使人感覺味道好。日本專家發現昭島市的水比京都的水分子團小，所以喝起來味道更好，頻譜水好喝的原因也正在于水分子團變小。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(三)為什麼頻譜水中氯仿含量會大大降低?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n氯仿，也稱三氯甲烷，分子為CHCl3。這是由於日常飲用的自來水是用氯氣(Cl2)消毒，來殺死水中的病菌和微生物，但是也產生了一種遺留的有害物質——氯仿，這是一種致癌物質，需用活性炭來吸附。一些西方發達國家，如美國就常用活性炭來過濾自來水，但代價頗高，我國的自來水廠難以承擔。經頻譜水發生器處理後，氯仿含量可降至1.7 微克/ 升以下，相當於國家標準(≤ 60 微克/ 升)的三十五分之一。頻譜水發生器的頻譜場能將C-Cl 鍵打斷，生成游離的CI- 離子或Cl2，Cl2 會揮發到空氣中去，從而清除了水中的氯仿。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(四)為什麼頻譜水會增加含氧量?&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n經國家城市供水水質監測網北京監測站檢測，頻譜水的溶解氧比處理前的自來水提高5% 以上，水中的溶解氧提高了，可增強人體新陳代謝，補償人體排除毒素和廢物的功能。那麼頻譜水中含氧量是如何增加的呢?水分子在水中的能量是服從玻爾茲曼規則分佈的，按照玻爾茲曼公式，有一小部分水分子處於高能級，這部分處於高能級的水分子在頻譜水發生器的處理下，會發生分解。&amp;nbsp;&lt;br /&gt;\r\n即：H2O(高能分子)+ 頻譜場→ H2+O2。因此，產生了氧氣和氫氣，其中一部分氧氣保留在水中，增加了含氧量，另一部分氧氣和氫氣會揮發到空氣中去。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(五)為什麼頻譜水可以消除人體器官頻譜場的故障&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n以防病治病?人體是細胞的集合體，體內鈣、鈉、鉀等多種離子通過細胞新陳代謝與體液迴圈進行正常有規律的運動，形成人體的生物頻譜場，經科學研究證實，人體具有生物電磁頻譜場，該種頻譜場的範圍在0.2~100 赫茲範圍。當人生病時，頻譜場發生變化。把不同振動頻率的電磁波的振幅按頻率排列稱為頻譜。人體的電磁波也有特定的頻譜，人體各個器官都有各自的頻譜場，如腦頻譜場、心臟頻譜場等等。現在已有儀器測試腦電圖、心電圖、胃電圖等，這只是一部分的檢測手段，隨著科學儀器的發展，將有更多的檢測手段問世。對人體頻譜場的研究將有利於揭示生命的奧秘，有利於疾病的診斷、預防和治療。頻譜水使水的頻譜場比普通飲用水更加接近人體的生物頻譜，更容易為人體吸收。人體各器官特定的頻譜場在生病時會發生變化，頻譜水進入人體後，易於消除器官頻譜場的故障，使人體器官恢復正常、有序、協調的工作。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-weight: bold;&quot;&gt;(六)為什麼頻譜水可以提高人體內巨噬細胞的吞噬&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;index_content_txt&quot;&gt;率和血清溶菌酶的濃度?正如前面第(二)點所論述的，頻譜水水分子團更小，因此它能更好地進入人體巨噬細胞內和與血清溶菌酶混和，從而增強其活性。另外，吞噬病菌和溶解病菌的活動，均必須在水環境中進行，因為頻譜水更易滲透和進入細胞組織與體液中，使巨噬細胞和血清溶菌酶的活動有了更好的水環境。&lt;/span&gt;&lt;/p&gt;\r\n', '頻譜水是由普通飲用水經過駿豐頻譜水治療保健儀製作形成的，製作後的頻譜水的物理、化學、生物學性質相較于普通飲用水發生了“六大優化”'),
(9, 3, '健康的飲水及駿豐頻譜水的臨床保健作用 南方網報導', '&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;人們每天飲用大量的水，水是人類不可缺少的東西，它是構成人體的重要成分，又是人體每天必須攝入的物質。人類最開始把水作為一種飲用的、維持生命基本代謝需要的物質。唐代著名的茶文化家和鑒賞家陸羽的《茶經》中，把水分為三種，“山水上，江水中，井水下”，同樣的茶，不同的水泡出來有不同的味道，古人已經認識到，水也有優劣之分，上品和下品之別。這樣就不能叫飲水了，而應該是品水。明朝著名的醫藥學家李時珍所著的《本草綱目》中有“水部”，介紹了許多不同的水，這些不同的水可以用來治不同的疾病。其中記載有一種水叫“明水”，亦稱方諸水，方諸是一種大蚌的名字。“月明之夜，捕得方諸，取其殼中貯水，清明純潔。可以用來洗眼，可以去霧明目，飲此水，還有安神的作用，亦去小兒煩熱”。還有一種水叫“冬霜”，是“用雞毛掃取秋冬的霜，裝入瓶中，密封保存於陰涼處，雖成水液，歷久不壞。可解酒熱，凡酒後面熱耳赤者，飲之立消。傷寒鼻塞，飲冬霜亦可通鼻”。此外，還記載了“井泉水”、“溫湯”、“露水”等等，皆可用來治病,可見在當時，水已經上升到治病的層面上來了。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;由此可見，人類對水的認識是一步一步加深的，從最初的飲，繼而是品，然後是治，這符合人類對事物發展的客觀認識過程。到了現代，人們對水有了更進一步的認識，包括水的微觀結構、宏觀理化性質及生物學效應等等，特別是水進入人體後的作用機制，正是目前研究的熱點。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水分子是由氫原子和氧原子組成，水分子之間再形成團簇結構，室溫下是無色無味的透明液體。人體2/3是由水組成，水在人體內一部分以自由水的形式存在，參與人體代謝，可把營養物質輸送到各個細胞，又把細胞產生的代謝廢物運到排泄器官。另一部分的水則以結合水的形式存在，通過與蛋白質、黏多糖和磷脂等生物大分子結合發揮其複雜的生理功能。水是生命之源，沒有水就沒有生命。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水對人體如此的重要，其能治病不僅在中醫學上有闡述，國外也有人開始研究水與疾病的關係。美國的醫學博士F.巴特曼用水治好了3000多個消化不良疼痛症患者，他把治療報告發表在了《臨床腸胃病學報》上。他認為過度和不適當的服用抗酸劑只會加重消化不良疼痛症患者的疼痛，疼痛是由於飲水量不足導致。胃的內層表面粘膜腺體上有一層粘液，98%是水，另有2%的固體是吸附水分的架構，這個粘液層吸收下面細胞分泌的碳酸氫鈉，當胃酸通過這個保護層時，就會被中和。這一反應過程會產生鹽，過多的中和反應會導致鹽沉積，這些沉積物會導致粘液層物質顆粒不均、粘性降低，破壞粘液層的穩定性，於是胃酸就會滲透到粘膜層，引起疼痛。而飲用足量的水可以阻止這種沉積，水對粘液層反向沖洗，清除沉積的鹽分，維持粘液層的厚度和穩定性，阻止酸對胃的損害。如果飲水量不足，粘液層被破壞，單單服用抗酸劑是起不到治療作用的【1】。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;不僅如此， F.巴特曼還發現高血壓、高膽固醇等疾病也與飲水量不足有關，他把這種飲水量不足導致的症狀稱之為慢性脫水症，補充足量的水就能緩解症狀。日本生活醫學研究所的川煙愛義提出水有九項藥物功能，即鎮靜、強壯、利尿、發汗、通便、促進新陳代謝、稀釋有毒成分、解熱和催眠【2】。這些觀點使人們對水和人體之間的關係有了新的認識。人體是如此的複雜，水又在人體中占最大的比例，水是如何在人體這個“精密的機器”中發揮作用的，還有很多東西沒有弄明白，但水能夠治病，卻是得到了確認。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;但不是所有的水都能治病，水的品質不達標，反而損害身體健康。人每天都要飲水，因此水的品質和人的健康密切相關，只有健康的飲用水才能保證人的健康。健康的飲用水，指的是既能滿足人體基本的生理功能，長期飲用又能全面促進人體健康的飲水。同時，健康的飲水還必須能夠帶給我們感官上的愉悅感【3】。駿豐頻譜水就是一種健康的飲用水，它由常規飲用水經過廣東駿豐頻譜股份有限公司的高科技產品—駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜製作得到，其理化特性獲得了優化(詳見南方網報導《科學的認識水及不一樣的駿豐頻譜水》 )。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;駿豐頻譜水不單是健康的水，還是能治病的水。經臨床證實，駿豐頻譜水能夠輔助治療以下疾病：慢性咽喉炎和扁桃體炎，便秘，泌尿結石，口腔潰瘍。臨床試驗由中山大學附屬第一醫院和廣州市紅十字會醫院進行。結果如下：&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;1、中山大學附屬第一醫院對駿豐頻譜水臨床應用觀察報告。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;該院在口腔科、中醫科、外科等科室進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、便秘、口腔潰瘍、泌尿結石。治療期間停止藥物及其它局部治療，每名患者每天飲用頻譜水1000-3000ml，7天為一個療程，連續飲用1-2個療程，並進行複查記錄。結果表明：a、慢性咽炎及扁桃體炎痊癒率達42%，顯效率為100%。b、1998年7月-10月第一次臨床觀察泌尿結石排出痊癒率達25%，總有效率為90%，1998年12月-1999年5月第二次臨床觀察，泌尿結石痊癒率28.60%，總有效率90.50%;c、便秘痊癒率達60%，總有效率95%;d、口腔潰瘍痊癒率達80.95%，總有效率 95.23%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;2、廣州紅十字會醫院對駿豐頻譜水臨床應用的觀察報告。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;該院在耳鼻咽喉科、外科、泌尿外科進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、口腔潰瘍、慢性便秘和泌尿系結石。治療期間停止藥物及其它治療，每名患者每天飲用頻譜水1000-3000ml，7天為一個療程，連續飲用1-2個療程。結果顯示：a、對泌尿結石總有效率達94.70%;b、慢性咽炎和扁桃體炎痊癒率為73.30%，總有效率達96.70%;c、口腔潰瘍和慢性便秘總有效率達100%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;以上結果是由臨床資料統計得到，但未提及駿豐頻譜水治療這幾種疾病的機理。由於倫理問題，治病機理一般都是根據動物實驗、基礎實驗和體外細胞實驗的結果來推測，許多藥物的治病機理都是通過這種方式得到的。疾病是由體內或體外的致病因素導致，如果駿豐頻譜水能減弱或者抑制致病因素對人體的損害，就具有治療或輔助治療的效應。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;便秘的主要症狀是大便次數減少，伴排便困難、糞便幹結。糞便在腸管內積存時間過長是主要症狀，治療便秘主要是使腸管內積存的糞便排出體外。劉育英等【4】發現駿豐頻譜水能促進大鼠胃內食物排出，加促小腸內食物移動，這有利於胃腸對食物的消化、吸收和排出。同時使空腸、結腸運動頻率提高，結腸收縮力增高，顯示駿豐頻譜水會使腸管內容物的推進速度加快。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;口腔潰瘍、慢性咽炎和慢性扁桃體炎的共同特點是局部炎症反應，病灶往往積存致病微生物。劉育英【5】【6】等通過大鼠試驗觀察到駿豐頻譜水能夠減輕及改善內毒素引起的微循環障礙，能顯著降低白細胞粘附，改善血液流變性，提高血液中IL-1、IL-6的含量，提高機體的細胞免疫功能。梁曉芸【7】等研究發現頻譜水能提高大鼠巨噬細胞的吞噬功能和血清溶菌酶的含量。這些結果顯示駿豐頻譜水能夠提高免疫力和對致病微生物的吞噬能力。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;泌尿結石的主要成分是鈣化物，相對于普通水，駿豐頻譜水能增加碳酸鈣的溶解度，暨南大學化學系進行駿豐頻譜水與對照未處理自來水溶解碳酸鈣(CaCO3)溶解量比較實驗表明，相對於對照未處理自來水，駿豐頻譜水對碳酸鈣的溶解量增加40.8%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;從上述動物試驗和基礎理化實驗結果可以觀察到駿豐頻譜水能產生一些積極的、對抗疾病的效應，可能是這些效應使這幾種疾病患者的症狀得到改善。(更詳細的動物實驗結果見南方網報導《駿豐頻譜水七大功能改善微循環增強機體免疫力》)。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;除了上述幾種疾病，廣東駿豐頻譜股份有限公司還開展過其它的動物實驗和體外細胞實驗，通過這些實驗觀察到駿豐頻譜水有許多積極的生物學效應，這些效應有可能對其它疾病也有治療或者輔助治療的作用;此外，通過廣東駿豐頻譜股份有限公司CRM系統(客戶關係管理系統)收集到的顧客回饋資訊顯示，駿豐頻譜水對其它一些疾病也有一定的治療和輔助治療效果。但是，這些效果仍需要設計系統和嚴謹的方案，通過臨床實驗來驗證，這是下一步需要開展的工作。要深入瞭解駿豐頻譜水對人體產生的生物醫學效應及這些效應的科學原理，還必須做更多的研究和開發工作。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水的分子構成簡單，在地球上隨處可見;水又不是簡單的物質，作為構成人體的基本物質，它在人體內的作用機制，人們卻知之甚少。有些人往往有一種固有思維，對於熟悉的物質常常抱有一種局限性的觀點，只有打破這種局限性，才能獲得新的認識。對未知的探求，是人類一直進步的原因。無論是普通水，還是駿豐頻譜水，都還有許多未知的東西等待發現。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;參考文獻：&lt;/span&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【1】F.巴特曼.水是最好的藥【M】.吉林：吉林文史出版社，2008.28-29.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【2】張欣.歐美及日本對飲用水評價的研究【J】.西北建築工程學院學報(自然科學版)，1999，3：54-57&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【3】李福志，張曉健，王占生.健康飲水的水質指標體系探討【J】.環境與健康雜誌2002.19(5)：407-408&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【4】劉育英，趙秀梅，劉鳳英，等.頻譜水對大鼠胃腸電位及蠕動功能的影響【J】.中國臨床康復，2004，8(3)：479-481.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【5】劉育英，趙秀梅，劉鳳英，等.頻譜水對大鼠血漿自介素1、6和白細胞行為的影響【J】.微循環學雜誌，2002，12(2)：17-19.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【6】劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠白細胞粘附和微循環的影響【J】.中華實用醫藥雜誌，2002，2(6)：489-490.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【7】梁曉芸，袁立懋，石同幸，等.頻譜水的安全性及保健作用評價【J】.中國公共衛生，2002，18(4)：400-401. 　　&lt;/span&gt;&lt;/p&gt;\r\n', '人們每天飲用大量的水，水是人類不可缺少的東西，它是構成人體的重要成分，又是人體每天必須攝入的物質。人類最開始把水作為一種飲用的、維持生命基本代謝需要的物質');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(9, 1, '健康的飲水及駿豐頻譜水的臨床保健作用 南方網報導', '&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;人們每天飲用大量的水，水是人類不可缺少的東西，它是構成人體的重要成分，又是人體每天必須攝入的物質。人類最開始把水作為一種飲用的、維持生命基本代謝需要的物質。唐代著名的茶文化家和鑒賞家陸羽的《茶經》中，把水分為三種，“山水上，江水中，井水下”，同樣的茶，不同的水泡出來有不同的味道，古人已經認識到，水也有優劣之分，上品和下品之別。這樣就不能叫飲水了，而應該是品水。明朝著名的醫藥學家李時珍所著的《本草綱目》中有“水部”，介紹了許多不同的水，這些不同的水可以用來治不同的疾病。其中記載有一種水叫“明水”，亦稱方諸水，方諸是一種大蚌的名字。“月明之夜，捕得方諸，取其殼中貯水，清明純潔。可以用來洗眼，可以去霧明目，飲此水，還有安神的作用，亦去小兒煩熱”。還有一種水叫“冬霜”，是“用雞毛掃取秋冬的霜，裝入瓶中，密封保存於陰涼處，雖成水液，歷久不壞。可解酒熱，凡酒後面熱耳赤者，飲之立消。傷寒鼻塞，飲冬霜亦可通鼻”。此外，還記載了“井泉水”、“溫湯”、“露水”等等，皆可用來治病,可見在當時，水已經上升到治病的層面上來了。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;由此可見，人類對水的認識是一步一步加深的，從最初的飲，繼而是品，然後是治，這符合人類對事物發展的客觀認識過程。到了現代，人們對水有了更進一步的認識，包括水的微觀結構、宏觀理化性質及生物學效應等等，特別是水進入人體後的作用機制，正是目前研究的熱點。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水分子是由氫原子和氧原子組成，水分子之間再形成團簇結構，室溫下是無色無味的透明液體。人體2/3是由水組成，水在人體內一部分以自由水的形式存在，參與人體代謝，可把營養物質輸送到各個細胞，又把細胞產生的代謝廢物運到排泄器官。另一部分的水則以結合水的形式存在，通過與蛋白質、黏多糖和磷脂等生物大分子結合發揮其複雜的生理功能。水是生命之源，沒有水就沒有生命。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水對人體如此的重要，其能治病不僅在中醫學上有闡述，國外也有人開始研究水與疾病的關係。美國的醫學博士F.巴特曼用水治好了3000多個消化不良疼痛症患者，他把治療報告發表在了《臨床腸胃病學報》上。他認為過度和不適當的服用抗酸劑只會加重消化不良疼痛症患者的疼痛，疼痛是由於飲水量不足導致。胃的內層表面粘膜腺體上有一層粘液，98%是水，另有2%的固體是吸附水分的架構，這個粘液層吸收下面細胞分泌的碳酸氫鈉，當胃酸通過這個保護層時，就會被中和。這一反應過程會產生鹽，過多的中和反應會導致鹽沉積，這些沉積物會導致粘液層物質顆粒不均、粘性降低，破壞粘液層的穩定性，於是胃酸就會滲透到粘膜層，引起疼痛。而飲用足量的水可以阻止這種沉積，水對粘液層反向沖洗，清除沉積的鹽分，維持粘液層的厚度和穩定性，阻止酸對胃的損害。如果飲水量不足，粘液層被破壞，單單服用抗酸劑是起不到治療作用的【1】。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;不僅如此， F.巴特曼還發現高血壓、高膽固醇等疾病也與飲水量不足有關，他把這種飲水量不足導致的症狀稱之為慢性脫水症，補充足量的水就能緩解症狀。日本生活醫學研究所的川煙愛義提出水有九項藥物功能，即鎮靜、強壯、利尿、發汗、通便、促進新陳代謝、稀釋有毒成分、解熱和催眠【2】。這些觀點使人們對水和人體之間的關係有了新的認識。人體是如此的複雜，水又在人體中占最大的比例，水是如何在人體這個“精密的機器”中發揮作用的，還有很多東西沒有弄明白，但水能夠治病，卻是得到了確認。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;但不是所有的水都能治病，水的品質不達標，反而損害身體健康。人每天都要飲水，因此水的品質和人的健康密切相關，只有健康的飲用水才能保證人的健康。健康的飲用水，指的是既能滿足人體基本的生理功能，長期飲用又能全面促進人體健康的飲水。同時，健康的飲水還必須能夠帶給我們感官上的愉悅感【3】。駿豐頻譜水就是一種健康的飲用水，它由常規飲用水經過廣東駿豐頻譜股份有限公司的高科技產品—駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜製作得到，其理化特性獲得了優化(詳見南方網報導《科學的認識水及不一樣的駿豐頻譜水》 )。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;駿豐頻譜水不單是健康的水，還是能治病的水。經臨床證實，駿豐頻譜水能夠輔助治療以下疾病：慢性咽喉炎和扁桃體炎，便秘，泌尿結石，口腔潰瘍。臨床試驗由中山大學附屬第一醫院和廣州市紅十字會醫院進行。結果如下：&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;1、中山大學附屬第一醫院對駿豐頻譜水臨床應用觀察報告。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;該院在口腔科、中醫科、外科等科室進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、便秘、口腔潰瘍、泌尿結石。治療期間停止藥物及其它局部治療，每名患者每天飲用頻譜水1000-3000ml，7天為一個療程，連續飲用1-2個療程，並進行複查記錄。結果表明：a、慢性咽炎及扁桃體炎痊癒率達42%，顯效率為100%。b、1998年7月-10月第一次臨床觀察泌尿結石排出痊癒率達25%，總有效率為90%，1998年12月-1999年5月第二次臨床觀察，泌尿結石痊癒率28.60%，總有效率90.50%;c、便秘痊癒率達60%，總有效率95%;d、口腔潰瘍痊癒率達80.95%，總有效率 95.23%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;2、廣州紅十字會醫院對駿豐頻譜水臨床應用的觀察報告。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;該院在耳鼻咽喉科、外科、泌尿外科進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、口腔潰瘍、慢性便秘和泌尿系結石。治療期間停止藥物及其它治療，每名患者每天飲用頻譜水1000-3000ml，7天為一個療程，連續飲用1-2個療程。結果顯示：a、對泌尿結石總有效率達94.70%;b、慢性咽炎和扁桃體炎痊癒率為73.30%，總有效率達96.70%;c、口腔潰瘍和慢性便秘總有效率達100%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;以上結果是由臨床資料統計得到，但未提及駿豐頻譜水治療這幾種疾病的機理。由於倫理問題，治病機理一般都是根據動物實驗、基礎實驗和體外細胞實驗的結果來推測，許多藥物的治病機理都是通過這種方式得到的。疾病是由體內或體外的致病因素導致，如果駿豐頻譜水能減弱或者抑制致病因素對人體的損害，就具有治療或輔助治療的效應。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;便秘的主要症狀是大便次數減少，伴排便困難、糞便幹結。糞便在腸管內積存時間過長是主要症狀，治療便秘主要是使腸管內積存的糞便排出體外。劉育英等【4】發現駿豐頻譜水能促進大鼠胃內食物排出，加促小腸內食物移動，這有利於胃腸對食物的消化、吸收和排出。同時使空腸、結腸運動頻率提高，結腸收縮力增高，顯示駿豐頻譜水會使腸管內容物的推進速度加快。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;口腔潰瘍、慢性咽炎和慢性扁桃體炎的共同特點是局部炎症反應，病灶往往積存致病微生物。劉育英【5】【6】等通過大鼠試驗觀察到駿豐頻譜水能夠減輕及改善內毒素引起的微循環障礙，能顯著降低白細胞粘附，改善血液流變性，提高血液中IL-1、IL-6的含量，提高機體的細胞免疫功能。梁曉芸【7】等研究發現頻譜水能提高大鼠巨噬細胞的吞噬功能和血清溶菌酶的含量。這些結果顯示駿豐頻譜水能夠提高免疫力和對致病微生物的吞噬能力。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;泌尿結石的主要成分是鈣化物，相對于普通水，駿豐頻譜水能增加碳酸鈣的溶解度，暨南大學化學系進行駿豐頻譜水與對照未處理自來水溶解碳酸鈣(CaCO3)溶解量比較實驗表明，相對於對照未處理自來水，駿豐頻譜水對碳酸鈣的溶解量增加40.8%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;從上述動物試驗和基礎理化實驗結果可以觀察到駿豐頻譜水能產生一些積極的、對抗疾病的效應，可能是這些效應使這幾種疾病患者的症狀得到改善。(更詳細的動物實驗結果見南方網報導《駿豐頻譜水七大功能改善微循環增強機體免疫力》)。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;除了上述幾種疾病，廣東駿豐頻譜股份有限公司還開展過其它的動物實驗和體外細胞實驗，通過這些實驗觀察到駿豐頻譜水有許多積極的生物學效應，這些效應有可能對其它疾病也有治療或者輔助治療的作用;此外，通過廣東駿豐頻譜股份有限公司CRM系統(客戶關係管理系統)收集到的顧客回饋資訊顯示，駿豐頻譜水對其它一些疾病也有一定的治療和輔助治療效果。但是，這些效果仍需要設計系統和嚴謹的方案，通過臨床實驗來驗證，這是下一步需要開展的工作。要深入瞭解駿豐頻譜水對人體產生的生物醫學效應及這些效應的科學原理，還必須做更多的研究和開發工作。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水的分子構成簡單，在地球上隨處可見;水又不是簡單的物質，作為構成人體的基本物質，它在人體內的作用機制，人們卻知之甚少。有些人往往有一種固有思維，對於熟悉的物質常常抱有一種局限性的觀點，只有打破這種局限性，才能獲得新的認識。對未知的探求，是人類一直進步的原因。無論是普通水，還是駿豐頻譜水，都還有許多未知的東西等待發現。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;參考文獻：&lt;/span&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【1】F.巴特曼.水是最好的藥【M】.吉林：吉林文史出版社，2008.28-29.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【2】張欣.歐美及日本對飲用水評價的研究【J】.西北建築工程學院學報(自然科學版)，1999，3：54-57&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【3】李福志，張曉健，王占生.健康飲水的水質指標體系探討【J】.環境與健康雜誌2002.19(5)：407-408&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【4】劉育英，趙秀梅，劉鳳英，等.頻譜水對大鼠胃腸電位及蠕動功能的影響【J】.中國臨床康復，2004，8(3)：479-481.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【5】劉育英，趙秀梅，劉鳳英，等.頻譜水對大鼠血漿自介素1、6和白細胞行為的影響【J】.微循環學雜誌，2002，12(2)：17-19.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【6】劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠白細胞粘附和微循環的影響【J】.中華實用醫藥雜誌，2002，2(6)：489-490.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【7】梁曉芸，袁立懋，石同幸，等.頻譜水的安全性及保健作用評價【J】.中國公共衛生，2002，18(4)：400-401. 　　&lt;/span&gt;&lt;/p&gt;\r\n', '人們每天飲用大量的水，水是人類不可缺少的東西，它是構成人體的重要成分，又是人體每天必須攝入的物質。人類最開始把水作為一種飲用的、維持生命基本代謝需要的物質');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(9, 4, '健康的飲水及駿豐頻譜水的臨床保健作用 南方網報導', '&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;人們每天飲用大量的水，水是人類不可缺少的東西，它是構成人體的重要成分，又是人體每天必須攝入的物質。人類最開始把水作為一種飲用的、維持生命基本代謝需要的物質。唐代著名的茶文化家和鑒賞家陸羽的《茶經》中，把水分為三種，“山水上，江水中，井水下”，同樣的茶，不同的水泡出來有不同的味道，古人已經認識到，水也有優劣之分，上品和下品之別。這樣就不能叫飲水了，而應該是品水。明朝著名的醫藥學家李時珍所著的《本草綱目》中有“水部”，介紹了許多不同的水，這些不同的水可以用來治不同的疾病。其中記載有一種水叫“明水”，亦稱方諸水，方諸是一種大蚌的名字。“月明之夜，捕得方諸，取其殼中貯水，清明純潔。可以用來洗眼，可以去霧明目，飲此水，還有安神的作用，亦去小兒煩熱”。還有一種水叫“冬霜”，是“用雞毛掃取秋冬的霜，裝入瓶中，密封保存於陰涼處，雖成水液，歷久不壞。可解酒熱，凡酒後面熱耳赤者，飲之立消。傷寒鼻塞，飲冬霜亦可通鼻”。此外，還記載了“井泉水”、“溫湯”、“露水”等等，皆可用來治病,可見在當時，水已經上升到治病的層面上來了。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;由此可見，人類對水的認識是一步一步加深的，從最初的飲，繼而是品，然後是治，這符合人類對事物發展的客觀認識過程。到了現代，人們對水有了更進一步的認識，包括水的微觀結構、宏觀理化性質及生物學效應等等，特別是水進入人體後的作用機制，正是目前研究的熱點。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水分子是由氫原子和氧原子組成，水分子之間再形成團簇結構，室溫下是無色無味的透明液體。人體2/3是由水組成，水在人體內一部分以自由水的形式存在，參與人體代謝，可把營養物質輸送到各個細胞，又把細胞產生的代謝廢物運到排泄器官。另一部分的水則以結合水的形式存在，通過與蛋白質、黏多糖和磷脂等生物大分子結合發揮其複雜的生理功能。水是生命之源，沒有水就沒有生命。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水對人體如此的重要，其能治病不僅在中醫學上有闡述，國外也有人開始研究水與疾病的關係。美國的醫學博士F.巴特曼用水治好了3000多個消化不良疼痛症患者，他把治療報告發表在了《臨床腸胃病學報》上。他認為過度和不適當的服用抗酸劑只會加重消化不良疼痛症患者的疼痛，疼痛是由於飲水量不足導致。胃的內層表面粘膜腺體上有一層粘液，98%是水，另有2%的固體是吸附水分的架構，這個粘液層吸收下面細胞分泌的碳酸氫鈉，當胃酸通過這個保護層時，就會被中和。這一反應過程會產生鹽，過多的中和反應會導致鹽沉積，這些沉積物會導致粘液層物質顆粒不均、粘性降低，破壞粘液層的穩定性，於是胃酸就會滲透到粘膜層，引起疼痛。而飲用足量的水可以阻止這種沉積，水對粘液層反向沖洗，清除沉積的鹽分，維持粘液層的厚度和穩定性，阻止酸對胃的損害。如果飲水量不足，粘液層被破壞，單單服用抗酸劑是起不到治療作用的【1】。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;不僅如此， F.巴特曼還發現高血壓、高膽固醇等疾病也與飲水量不足有關，他把這種飲水量不足導致的症狀稱之為慢性脫水症，補充足量的水就能緩解症狀。日本生活醫學研究所的川煙愛義提出水有九項藥物功能，即鎮靜、強壯、利尿、發汗、通便、促進新陳代謝、稀釋有毒成分、解熱和催眠【2】。這些觀點使人們對水和人體之間的關係有了新的認識。人體是如此的複雜，水又在人體中占最大的比例，水是如何在人體這個“精密的機器”中發揮作用的，還有很多東西沒有弄明白，但水能夠治病，卻是得到了確認。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;但不是所有的水都能治病，水的品質不達標，反而損害身體健康。人每天都要飲水，因此水的品質和人的健康密切相關，只有健康的飲用水才能保證人的健康。健康的飲用水，指的是既能滿足人體基本的生理功能，長期飲用又能全面促進人體健康的飲水。同時，健康的飲水還必須能夠帶給我們感官上的愉悅感【3】。駿豐頻譜水就是一種健康的飲用水，它由常規飲用水經過廣東駿豐頻譜股份有限公司的高科技產品—駿豐頻譜水治療保健儀產生特定的電磁振盪頻譜製作得到，其理化特性獲得了優化(詳見南方網報導《科學的認識水及不一樣的駿豐頻譜水》 )。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;駿豐頻譜水不單是健康的水，還是能治病的水。經臨床證實，駿豐頻譜水能夠輔助治療以下疾病：慢性咽喉炎和扁桃體炎，便秘，泌尿結石，口腔潰瘍。臨床試驗由中山大學附屬第一醫院和廣州市紅十字會醫院進行。結果如下：&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;1、中山大學附屬第一醫院對駿豐頻譜水臨床應用觀察報告。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;該院在口腔科、中醫科、外科等科室進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、便秘、口腔潰瘍、泌尿結石。治療期間停止藥物及其它局部治療，每名患者每天飲用頻譜水1000-3000ml，7天為一個療程，連續飲用1-2個療程，並進行複查記錄。結果表明：a、慢性咽炎及扁桃體炎痊癒率達42%，顯效率為100%。b、1998年7月-10月第一次臨床觀察泌尿結石排出痊癒率達25%，總有效率為90%，1998年12月-1999年5月第二次臨床觀察，泌尿結石痊癒率28.60%，總有效率90.50%;c、便秘痊癒率達60%，總有效率95%;d、口腔潰瘍痊癒率達80.95%，總有效率 95.23%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;2、廣州紅十字會醫院對駿豐頻譜水臨床應用的觀察報告。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;該院在耳鼻咽喉科、外科、泌尿外科進行了臨床應用觀察，主要針對慢性咽炎、扁桃體炎、口腔潰瘍、慢性便秘和泌尿系結石。治療期間停止藥物及其它治療，每名患者每天飲用頻譜水1000-3000ml，7天為一個療程，連續飲用1-2個療程。結果顯示：a、對泌尿結石總有效率達94.70%;b、慢性咽炎和扁桃體炎痊癒率為73.30%，總有效率達96.70%;c、口腔潰瘍和慢性便秘總有效率達100%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;以上結果是由臨床資料統計得到，但未提及駿豐頻譜水治療這幾種疾病的機理。由於倫理問題，治病機理一般都是根據動物實驗、基礎實驗和體外細胞實驗的結果來推測，許多藥物的治病機理都是通過這種方式得到的。疾病是由體內或體外的致病因素導致，如果駿豐頻譜水能減弱或者抑制致病因素對人體的損害，就具有治療或輔助治療的效應。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;便秘的主要症狀是大便次數減少，伴排便困難、糞便幹結。糞便在腸管內積存時間過長是主要症狀，治療便秘主要是使腸管內積存的糞便排出體外。劉育英等【4】發現駿豐頻譜水能促進大鼠胃內食物排出，加促小腸內食物移動，這有利於胃腸對食物的消化、吸收和排出。同時使空腸、結腸運動頻率提高，結腸收縮力增高，顯示駿豐頻譜水會使腸管內容物的推進速度加快。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;口腔潰瘍、慢性咽炎和慢性扁桃體炎的共同特點是局部炎症反應，病灶往往積存致病微生物。劉育英【5】【6】等通過大鼠試驗觀察到駿豐頻譜水能夠減輕及改善內毒素引起的微循環障礙，能顯著降低白細胞粘附，改善血液流變性，提高血液中IL-1、IL-6的含量，提高機體的細胞免疫功能。梁曉芸【7】等研究發現頻譜水能提高大鼠巨噬細胞的吞噬功能和血清溶菌酶的含量。這些結果顯示駿豐頻譜水能夠提高免疫力和對致病微生物的吞噬能力。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;泌尿結石的主要成分是鈣化物，相對于普通水，駿豐頻譜水能增加碳酸鈣的溶解度，暨南大學化學系進行駿豐頻譜水與對照未處理自來水溶解碳酸鈣(CaCO3)溶解量比較實驗表明，相對於對照未處理自來水，駿豐頻譜水對碳酸鈣的溶解量增加40.8%。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;從上述動物試驗和基礎理化實驗結果可以觀察到駿豐頻譜水能產生一些積極的、對抗疾病的效應，可能是這些效應使這幾種疾病患者的症狀得到改善。(更詳細的動物實驗結果見南方網報導《駿豐頻譜水七大功能改善微循環增強機體免疫力》)。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;除了上述幾種疾病，廣東駿豐頻譜股份有限公司還開展過其它的動物實驗和體外細胞實驗，通過這些實驗觀察到駿豐頻譜水有許多積極的生物學效應，這些效應有可能對其它疾病也有治療或者輔助治療的作用;此外，通過廣東駿豐頻譜股份有限公司CRM系統(客戶關係管理系統)收集到的顧客回饋資訊顯示，駿豐頻譜水對其它一些疾病也有一定的治療和輔助治療效果。但是，這些效果仍需要設計系統和嚴謹的方案，通過臨床實驗來驗證，這是下一步需要開展的工作。要深入瞭解駿豐頻譜水對人體產生的生物醫學效應及這些效應的科學原理，還必須做更多的研究和開發工作。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;水的分子構成簡單，在地球上隨處可見;水又不是簡單的物質，作為構成人體的基本物質，它在人體內的作用機制，人們卻知之甚少。有些人往往有一種固有思維，對於熟悉的物質常常抱有一種局限性的觀點，只有打破這種局限性，才能獲得新的認識。對未知的探求，是人類一直進步的原因。無論是普通水，還是駿豐頻譜水，都還有許多未知的東西等待發現。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;參考文獻：&lt;/span&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【1】F.巴特曼.水是最好的藥【M】.吉林：吉林文史出版社，2008.28-29.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【2】張欣.歐美及日本對飲用水評價的研究【J】.西北建築工程學院學報(自然科學版)，1999，3：54-57&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【3】李福志，張曉健，王占生.健康飲水的水質指標體系探討【J】.環境與健康雜誌2002.19(5)：407-408&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【4】劉育英，趙秀梅，劉鳳英，等.頻譜水對大鼠胃腸電位及蠕動功能的影響【J】.中國臨床康復，2004，8(3)：479-481.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【5】劉育英，趙秀梅，劉鳳英，等.頻譜水對大鼠血漿自介素1、6和白細胞行為的影響【J】.微循環學雜誌，2002，12(2)：17-19.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【6】劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠白細胞粘附和微循環的影響【J】.中華實用醫藥雜誌，2002，2(6)：489-490.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;【7】梁曉芸，袁立懋，石同幸，等.頻譜水的安全性及保健作用評價【J】.中國公共衛生，2002，18(4)：400-401. 　　&lt;/span&gt;&lt;/p&gt;\r\n', '人們每天飲用大量的水，水是人類不可缺少的東西，它是構成人體的重要成分，又是人體每天必須攝入的物質。人類最開始把水作為一種飲用的、維持生命基本代謝需要的物質');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(10, 1, '駿豐頻譜水七大功能改善微循環增強機體免疫力', '&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;駿豐頻譜水的物理化學性質改變,使其由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。在此基礎上，廣東駿豐頻譜股份有限公司與相關科研機構合作，針對駿豐頻譜水開展了一系列的生物學實驗，以期探索和驗證駿豐頻譜水的生物學效應，具體的生物學效應實驗結果如下：&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;1、駿豐頻譜水(小分子團水)具有更好的滲透性&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;葉紅豔等[1]研究了小分子團水對紅細胞膜的滲透性。實驗用駿豐頻譜水治療保鍵儀製備的小分子團水與普通蒸餾水分別配製不同濃度的氯化鈉溶液，加入到等量的紅細胞中，離心之後通過測定上清液吸光度比較血紅蛋白含量，從而比較用小分子團水與普通蒸餾水對紅細胞的滲透速率。實驗結果發現當NaCl溶液濃度為0.9%時，小分子團水實驗組的吸光度均大於普通蒸餾水組，說明用小分子團水配製的溶液中紅細胞溶血速度更快，小分子團水更容易進入細胞，具有更好的滲透性。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;2、駿豐頻譜水能改善微循環和改善血液粘度&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[2]採用Wistar大鼠靜脈內注入內毒素造成白細胞粘附和微循環障礙模型，檢測了駿豐頻譜水組和自來水組大鼠腸系膜微血管內白細胞粘附和微循環的變化。實驗結果顯示，飲用駿豐頻譜水30～60天的動物，能夠顯著降低白細胞粘附，明顯減輕內皮損傷、血管出血和紅細胞粘附;能夠降低紅細胞聚集，血小板粘附、聚集;能夠緩解炎症反應所引起的血流減慢。研究表明，駿豐頻譜水能夠減輕內毒素引起的微循環障礙，能顯著降低白細胞粘附。結果提示，“飲用頻譜水具有較好的改善微循環的作用”。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[3]進一步研究發現，駿豐頻譜水能較好的改善由內毒素引起的機體血液粘度的變化。研究通過內毒素引起大鼠微循環障礙的實驗模型，在飲水30和60天后，檢測了駿豐頻譜水組和自來水組大鼠全血粘度的變化，結果顯示飲用駿豐頻譜水的大鼠血液粘度均比飲用自來水的低。表明飲用駿豐頻譜水能降低血液粘度，有利於血液的流動。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;3、駿豐頻譜水對胃腸收縮具有雙重調節作用&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等在發表的論文[4]和提供的相關研究報告中，為研究駿豐頻譜水對胃腸蠕動功能的影響，對餵養30天后SD大鼠胃腸電位(快波和慢波)的波幅及頻率，胃、空腸及結腸運動頻率及收縮力，胃的排空速度，腸道對標記物(碳黑)的推進速度，胃腸血流量等進行了測定。結果表明，駿豐頻譜水對胃腸收縮功能有雙重調節作用，空腹狀態下減少胃腸的基本節律電位，使胃腸運動減少，減少胃黏膜的相互摩擦，從而起到保護胃黏膜的作用;灌胃後有食物刺激胃腸黏膜，胃腸電位增強，蠕動頻率和波幅增加，促進胃內食物排出，加促小腸內食物移動，有利於腸道對食物的消化和吸收。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;4、駿豐頻譜水能增強機體免疫功能&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[5]研究了駿豐頻譜水對大鼠血漿中免疫因數白介素1(IL-1)、白介素6(IL-6)和白細胞行為的影響。實驗結果顯示，與飲用自來水相比，飲用駿豐頻譜水的大鼠血漿中IL-l、IL-6的含量增加，對提高機體免疫功能有一定的作用;飲用駿豐頻譜水還能減少白細胞的粘附和白細胞的遊出，減少白細胞與血管內皮細胞間的相互作用，從而減少白細胞對內皮細胞的毒性作用，減輕血管內皮的損傷。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;梁曉芸等[6]以 SD大鼠進行實驗，設置駿豐頻譜水組及自來水組，分別每天供動物自由飲用，連續90天，試驗結束後尾靜脈取血培養作T淋巴細胞轉化試驗，股動脈放血分離血清作溶菌酶含量的測定及洗腹腔液作巨噬細胞吞噬功能檢測。結果顯示駿豐頻譜水組的巨噬細胞吞噬率及血清溶菌酶含量明顯高於自來水組(P≤0.01)，表明駿豐頻譜水具有一定的提高免疫功能的作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;張嘉寧等[7]研究了駿豐頻譜水泡浴加飲用對小鼠免疫功能的影響。實驗將KM小鼠分3組，A組小鼠泡浴駿豐頻譜水加飲用駿豐頻譜水，B組為小鼠泡浴駿豐頻譜水飲用自來水，對照組小鼠泡浴自來水飲用自來水。實驗30天后進行小鼠脾淋巴細胞轉化試驗、遲髮型變態反應實驗、血清溶血素測定、碳廓清試驗、NK細胞活性測定、抗體生成細胞檢測。結果顯示駿豐頻譜水泡浴加飲用、駿豐頻譜水泡浴均能提高淋巴細胞的轉化能力，具有提高小鼠NK細胞活性的作用;駿豐頻譜水泡浴加飲用還能增強小鼠單核巨噬細胞的吞噬功能。表明駿豐頻譜水泡浴、駿豐頻譜水泡浴加飲用均對小鼠的非特異性免疫和特異性細胞免疫反應有一定的促進作用，且駿豐頻譜水泡浴加飲用比單純的駿豐頻譜水泡浴對小鼠免疫功能的增強效果更好。南方醫科大學實驗動物中心在出具的對應的研究報告中進一步指出，根據中華人民共和國衛生部制定的《保健食品檢驗與評價技術規範》(2003版)中的增強免疫功能結果判定條件，受試樣品A組以及受試樣品B組的細胞免疫功能測定結果和NK細胞活性結果均為陽性，受試樣品A組還有促進巨噬細胞吞噬功能作用。結果表明，“駿豐頻譜水受試樣品A組和受試樣品B組具有增強免疫力功能作用。”&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍總醫院病理生理研究室的研究也發現，飲用駿豐頻譜水30天，可以增強小鼠脾臟自然殺傷細胞(NK細胞)活性。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;5、駿豐頻譜水能增強機體抗疲勞耐力&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍總醫院病理生理研究室的研究報告顯示，飲用駿豐頻譜水30天后，可以延長小鼠游泳的時間，駿豐頻譜水組小鼠游泳時間為45.5±16.2 分鐘，明顯長於飲用自來水的小鼠25.4±9.2分鐘(P&amp;lt;0.05);同時，飲用駿豐頻譜水可以增強大鼠游泳後心臟收縮與舒張功能，增加大鼠游泳後骨骼肌血流量。結果表明駿豐頻譜水可以延長動物的游泳時間，提高抗疲勞的耐力。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;6、駿豐頻譜水能提高機體抗氧化功能&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;南方醫科大學實驗動物中心的研究報告顯示，以駿豐頻譜水飼養小鼠並每天泡浴駿豐頻譜水(37℃)45分鐘，40天后測定小鼠血清中脂質過氧化產物丙二醛(MDA)含量、超氧化物歧化酶(SOD)活力和谷胱甘肽過氧化物酶(GSH-PX)活力。結果表明，相對於泡浴和飲用自來水的小鼠，泡浴和飲用駿豐頻譜水的小鼠血清中MDA含量顯著減低(P&amp;lt;0.01)，SOD活力顯著提高(P&amp;lt;0.01)，GSH-PX活力也顯著提高(P&amp;lt;0.01)。據衛生部制定的《保健品食品檢驗與評價技術規範》(2003版)中抗氧化功能檢驗方法可判定泡浴和飲用駿豐頻譜水的受試樣品組抗氧化功能動物實驗結果陽性。說明飲、泡駿豐頻譜水有提高機體抗氧化的功能。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;7、駿豐頻譜水對腫瘤細胞的影響&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍第一軍醫大學的研究報告顯示，經用駿豐頻譜水配置的RPMI-1640培養液分別進行體外培養大腸癌LOVO細胞和肝癌HepG2細胞，實驗研究發現“頻譜水對大腸癌細胞具有殺滅作用”，“頻譜水對肝癌細胞具有殺滅作用”。實驗提示駿豐頻譜水可能具有抑制腫瘤生長的作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;8 駿豐頻譜水的安全性評價&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;梁曉芸等[6]按衛生部GB15193-1994《食品安全性毒理學評價程式和方法》規定的有關方法，評價了駿豐頻譜水的安全性。結果表明，駿豐頻譜水 LD50&amp;gt;15000mg/kg，屬無毒級;小鼠骨髓微核、精子畸形、Ames’試驗均為陰性;90天餵養試驗也表明駿豐頻譜水對大鼠生長發育、血液及生化指標、肝腎功能均無損害作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;結語&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;以上實驗結果表明，駿豐頻譜水具有多種生物學效應，是具有一定輔助防治疾病，促進機體健康的優化水，關於駿豐頻譜水的臨床應用結果將另有文章後續報導。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;參考文獻&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[1] 葉紅豔，劉瑞瑛，皮江，等. 小分子團水與普通蒸餾水的紅細胞滲透速率比較[J]. 科技創新導報，2011，(9)：6-7.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[2] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠白細胞粘附和微循環的影響[J]. 中華實用醫藥雜誌，2002，2(6)：489-490.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[3] 劉育英，韓岳，鄭世榮，等. 頻譜水對大鼠全血粘度和紅細胞變形性的影響[J]. 微循環學雜誌，2003，13(1)：23-24.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[4] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠胃腸電位及蠕動功能的影響[J]. 中國臨床康復，2004，8(3)：479-481.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[5] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠血漿白介素1、6和白細胞行為的影響[J]. 微循環學雜誌，2002，12(2)：17-18.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[6] 梁曉芸，袁立懋，石同幸. 頻譜水的安全性及保健作用評價[J]. 中國公共衛生，2002，18(4)：400-401.&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[7] 張嘉甯，張建明，黃瓊，等. 頻譜水泡浴加飲用對小鼠免疫功能的影響[J]. 實驗動物與比較醫學，2009，29(6)：397-401.　&lt;/span&gt;&lt;/p&gt;\r\n', '駿豐頻譜水的物理化學性質改變,使其由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。在此基礎上，廣東駿豐頻譜股份有限公司與相關科研機構合作，針對駿豐頻譜水開展了一系列的生物學實驗，以期探索和驗證駿豐頻譜水的生物學效應');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(10, 4, '駿豐頻譜水七大功能改善微循環增強機體免疫力', '&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;駿豐頻譜水的物理化學性質改變,使其由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。在此基礎上，廣東駿豐頻譜股份有限公司與相關科研機構合作，針對駿豐頻譜水開展了一系列的生物學實驗，以期探索和驗證駿豐頻譜水的生物學效應，具體的生物學效應實驗結果如下：&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;1、駿豐頻譜水(小分子團水)具有更好的滲透性&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;葉紅豔等[1]研究了小分子團水對紅細胞膜的滲透性。實驗用駿豐頻譜水治療保鍵儀製備的小分子團水與普通蒸餾水分別配製不同濃度的氯化鈉溶液，加入到等量的紅細胞中，離心之後通過測定上清液吸光度比較血紅蛋白含量，從而比較用小分子團水與普通蒸餾水對紅細胞的滲透速率。實驗結果發現當NaCl溶液濃度為0.9%時，小分子團水實驗組的吸光度均大於普通蒸餾水組，說明用小分子團水配製的溶液中紅細胞溶血速度更快，小分子團水更容易進入細胞，具有更好的滲透性。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;2、駿豐頻譜水能改善微循環和改善血液粘度&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[2]採用Wistar大鼠靜脈內注入內毒素造成白細胞粘附和微循環障礙模型，檢測了駿豐頻譜水組和自來水組大鼠腸系膜微血管內白細胞粘附和微循環的變化。實驗結果顯示，飲用駿豐頻譜水30～60天的動物，能夠顯著降低白細胞粘附，明顯減輕內皮損傷、血管出血和紅細胞粘附;能夠降低紅細胞聚集，血小板粘附、聚集;能夠緩解炎症反應所引起的血流減慢。研究表明，駿豐頻譜水能夠減輕內毒素引起的微循環障礙，能顯著降低白細胞粘附。結果提示，“飲用頻譜水具有較好的改善微循環的作用”。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[3]進一步研究發現，駿豐頻譜水能較好的改善由內毒素引起的機體血液粘度的變化。研究通過內毒素引起大鼠微循環障礙的實驗模型，在飲水30和60天后，檢測了駿豐頻譜水組和自來水組大鼠全血粘度的變化，結果顯示飲用駿豐頻譜水的大鼠血液粘度均比飲用自來水的低。表明飲用駿豐頻譜水能降低血液粘度，有利於血液的流動。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;3、駿豐頻譜水對胃腸收縮具有雙重調節作用&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等在發表的論文[4]和提供的相關研究報告中，為研究駿豐頻譜水對胃腸蠕動功能的影響，對餵養30天后SD大鼠胃腸電位(快波和慢波)的波幅及頻率，胃、空腸及結腸運動頻率及收縮力，胃的排空速度，腸道對標記物(碳黑)的推進速度，胃腸血流量等進行了測定。結果表明，駿豐頻譜水對胃腸收縮功能有雙重調節作用，空腹狀態下減少胃腸的基本節律電位，使胃腸運動減少，減少胃黏膜的相互摩擦，從而起到保護胃黏膜的作用;灌胃後有食物刺激胃腸黏膜，胃腸電位增強，蠕動頻率和波幅增加，促進胃內食物排出，加促小腸內食物移動，有利於腸道對食物的消化和吸收。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;4、駿豐頻譜水能增強機體免疫功能&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[5]研究了駿豐頻譜水對大鼠血漿中免疫因數白介素1(IL-1)、白介素6(IL-6)和白細胞行為的影響。實驗結果顯示，與飲用自來水相比，飲用駿豐頻譜水的大鼠血漿中IL-l、IL-6的含量增加，對提高機體免疫功能有一定的作用;飲用駿豐頻譜水還能減少白細胞的粘附和白細胞的遊出，減少白細胞與血管內皮細胞間的相互作用，從而減少白細胞對內皮細胞的毒性作用，減輕血管內皮的損傷。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;梁曉芸等[6]以 SD大鼠進行實驗，設置駿豐頻譜水組及自來水組，分別每天供動物自由飲用，連續90天，試驗結束後尾靜脈取血培養作T淋巴細胞轉化試驗，股動脈放血分離血清作溶菌酶含量的測定及洗腹腔液作巨噬細胞吞噬功能檢測。結果顯示駿豐頻譜水組的巨噬細胞吞噬率及血清溶菌酶含量明顯高於自來水組(P≤0.01)，表明駿豐頻譜水具有一定的提高免疫功能的作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;張嘉寧等[7]研究了駿豐頻譜水泡浴加飲用對小鼠免疫功能的影響。實驗將KM小鼠分3組，A組小鼠泡浴駿豐頻譜水加飲用駿豐頻譜水，B組為小鼠泡浴駿豐頻譜水飲用自來水，對照組小鼠泡浴自來水飲用自來水。實驗30天后進行小鼠脾淋巴細胞轉化試驗、遲髮型變態反應實驗、血清溶血素測定、碳廓清試驗、NK細胞活性測定、抗體生成細胞檢測。結果顯示駿豐頻譜水泡浴加飲用、駿豐頻譜水泡浴均能提高淋巴細胞的轉化能力，具有提高小鼠NK細胞活性的作用;駿豐頻譜水泡浴加飲用還能增強小鼠單核巨噬細胞的吞噬功能。表明駿豐頻譜水泡浴、駿豐頻譜水泡浴加飲用均對小鼠的非特異性免疫和特異性細胞免疫反應有一定的促進作用，且駿豐頻譜水泡浴加飲用比單純的駿豐頻譜水泡浴對小鼠免疫功能的增強效果更好。南方醫科大學實驗動物中心在出具的對應的研究報告中進一步指出，根據中華人民共和國衛生部制定的《保健食品檢驗與評價技術規範》(2003版)中的增強免疫功能結果判定條件，受試樣品A組以及受試樣品B組的細胞免疫功能測定結果和NK細胞活性結果均為陽性，受試樣品A組還有促進巨噬細胞吞噬功能作用。結果表明，“駿豐頻譜水受試樣品A組和受試樣品B組具有增強免疫力功能作用。”&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍總醫院病理生理研究室的研究也發現，飲用駿豐頻譜水30天，可以增強小鼠脾臟自然殺傷細胞(NK細胞)活性。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;5、駿豐頻譜水能增強機體抗疲勞耐力&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍總醫院病理生理研究室的研究報告顯示，飲用駿豐頻譜水30天后，可以延長小鼠游泳的時間，駿豐頻譜水組小鼠游泳時間為45.5±16.2 分鐘，明顯長於飲用自來水的小鼠25.4±9.2分鐘(P&amp;lt;0.05);同時，飲用駿豐頻譜水可以增強大鼠游泳後心臟收縮與舒張功能，增加大鼠游泳後骨骼肌血流量。結果表明駿豐頻譜水可以延長動物的游泳時間，提高抗疲勞的耐力。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;6、駿豐頻譜水能提高機體抗氧化功能&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;南方醫科大學實驗動物中心的研究報告顯示，以駿豐頻譜水飼養小鼠並每天泡浴駿豐頻譜水(37℃)45分鐘，40天后測定小鼠血清中脂質過氧化產物丙二醛(MDA)含量、超氧化物歧化酶(SOD)活力和谷胱甘肽過氧化物酶(GSH-PX)活力。結果表明，相對於泡浴和飲用自來水的小鼠，泡浴和飲用駿豐頻譜水的小鼠血清中MDA含量顯著減低(P&amp;lt;0.01)，SOD活力顯著提高(P&amp;lt;0.01)，GSH-PX活力也顯著提高(P&amp;lt;0.01)。據衛生部制定的《保健品食品檢驗與評價技術規範》(2003版)中抗氧化功能檢驗方法可判定泡浴和飲用駿豐頻譜水的受試樣品組抗氧化功能動物實驗結果陽性。說明飲、泡駿豐頻譜水有提高機體抗氧化的功能。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;7、駿豐頻譜水對腫瘤細胞的影響&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍第一軍醫大學的研究報告顯示，經用駿豐頻譜水配置的RPMI-1640培養液分別進行體外培養大腸癌LOVO細胞和肝癌HepG2細胞，實驗研究發現“頻譜水對大腸癌細胞具有殺滅作用”，“頻譜水對肝癌細胞具有殺滅作用”。實驗提示駿豐頻譜水可能具有抑制腫瘤生長的作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;8 駿豐頻譜水的安全性評價&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;梁曉芸等[6]按衛生部GB15193-1994《食品安全性毒理學評價程式和方法》規定的有關方法，評價了駿豐頻譜水的安全性。結果表明，駿豐頻譜水 LD50&amp;gt;15000mg/kg，屬無毒級;小鼠骨髓微核、精子畸形、Ames’試驗均為陰性;90天餵養試驗也表明駿豐頻譜水對大鼠生長發育、血液及生化指標、肝腎功能均無損害作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;結語&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;以上實驗結果表明，駿豐頻譜水具有多種生物學效應，是具有一定輔助防治疾病，促進機體健康的優化水，關於駿豐頻譜水的臨床應用結果將另有文章後續報導。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;參考文獻&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[1] 葉紅豔，劉瑞瑛，皮江，等. 小分子團水與普通蒸餾水的紅細胞滲透速率比較[J]. 科技創新導報，2011，(9)：6-7.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[2] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠白細胞粘附和微循環的影響[J]. 中華實用醫藥雜誌，2002，2(6)：489-490.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[3] 劉育英，韓岳，鄭世榮，等. 頻譜水對大鼠全血粘度和紅細胞變形性的影響[J]. 微循環學雜誌，2003，13(1)：23-24.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[4] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠胃腸電位及蠕動功能的影響[J]. 中國臨床康復，2004，8(3)：479-481.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[5] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠血漿白介素1、6和白細胞行為的影響[J]. 微循環學雜誌，2002，12(2)：17-18.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[6] 梁曉芸，袁立懋，石同幸. 頻譜水的安全性及保健作用評價[J]. 中國公共衛生，2002，18(4)：400-401.&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[7] 張嘉甯，張建明，黃瓊，等. 頻譜水泡浴加飲用對小鼠免疫功能的影響[J]. 實驗動物與比較醫學，2009，29(6)：397-401.　&lt;/span&gt;&lt;/p&gt;\r\n', '駿豐頻譜水的物理化學性質改變,使其由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。在此基礎上，廣東駿豐頻譜股份有限公司與相關科研機構合作，針對駿豐頻譜水開展了一系列的生物學實驗，以期探索和驗證駿豐頻譜水的生物學效應');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(10, 3, '駿豐頻譜水七大功能改善微循環增強機體免疫力', '&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;駿豐頻譜水的物理化學性質改變,使其由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。在此基礎上，廣東駿豐頻譜股份有限公司與相關科研機構合作，針對駿豐頻譜水開展了一系列的生物學實驗，以期探索和驗證駿豐頻譜水的生物學效應，具體的生物學效應實驗結果如下：&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;1、駿豐頻譜水(小分子團水)具有更好的滲透性&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;葉紅豔等[1]研究了小分子團水對紅細胞膜的滲透性。實驗用駿豐頻譜水治療保鍵儀製備的小分子團水與普通蒸餾水分別配製不同濃度的氯化鈉溶液，加入到等量的紅細胞中，離心之後通過測定上清液吸光度比較血紅蛋白含量，從而比較用小分子團水與普通蒸餾水對紅細胞的滲透速率。實驗結果發現當NaCl溶液濃度為0.9%時，小分子團水實驗組的吸光度均大於普通蒸餾水組，說明用小分子團水配製的溶液中紅細胞溶血速度更快，小分子團水更容易進入細胞，具有更好的滲透性。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;2、駿豐頻譜水能改善微循環和改善血液粘度&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[2]採用Wistar大鼠靜脈內注入內毒素造成白細胞粘附和微循環障礙模型，檢測了駿豐頻譜水組和自來水組大鼠腸系膜微血管內白細胞粘附和微循環的變化。實驗結果顯示，飲用駿豐頻譜水30～60天的動物，能夠顯著降低白細胞粘附，明顯減輕內皮損傷、血管出血和紅細胞粘附;能夠降低紅細胞聚集，血小板粘附、聚集;能夠緩解炎症反應所引起的血流減慢。研究表明，駿豐頻譜水能夠減輕內毒素引起的微循環障礙，能顯著降低白細胞粘附。結果提示，“飲用頻譜水具有較好的改善微循環的作用”。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[3]進一步研究發現，駿豐頻譜水能較好的改善由內毒素引起的機體血液粘度的變化。研究通過內毒素引起大鼠微循環障礙的實驗模型，在飲水30和60天后，檢測了駿豐頻譜水組和自來水組大鼠全血粘度的變化，結果顯示飲用駿豐頻譜水的大鼠血液粘度均比飲用自來水的低。表明飲用駿豐頻譜水能降低血液粘度，有利於血液的流動。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;3、駿豐頻譜水對胃腸收縮具有雙重調節作用&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等在發表的論文[4]和提供的相關研究報告中，為研究駿豐頻譜水對胃腸蠕動功能的影響，對餵養30天后SD大鼠胃腸電位(快波和慢波)的波幅及頻率，胃、空腸及結腸運動頻率及收縮力，胃的排空速度，腸道對標記物(碳黑)的推進速度，胃腸血流量等進行了測定。結果表明，駿豐頻譜水對胃腸收縮功能有雙重調節作用，空腹狀態下減少胃腸的基本節律電位，使胃腸運動減少，減少胃黏膜的相互摩擦，從而起到保護胃黏膜的作用;灌胃後有食物刺激胃腸黏膜，胃腸電位增強，蠕動頻率和波幅增加，促進胃內食物排出，加促小腸內食物移動，有利於腸道對食物的消化和吸收。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;4、駿豐頻譜水能增強機體免疫功能&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;劉育英等[5]研究了駿豐頻譜水對大鼠血漿中免疫因數白介素1(IL-1)、白介素6(IL-6)和白細胞行為的影響。實驗結果顯示，與飲用自來水相比，飲用駿豐頻譜水的大鼠血漿中IL-l、IL-6的含量增加，對提高機體免疫功能有一定的作用;飲用駿豐頻譜水還能減少白細胞的粘附和白細胞的遊出，減少白細胞與血管內皮細胞間的相互作用，從而減少白細胞對內皮細胞的毒性作用，減輕血管內皮的損傷。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;梁曉芸等[6]以 SD大鼠進行實驗，設置駿豐頻譜水組及自來水組，分別每天供動物自由飲用，連續90天，試驗結束後尾靜脈取血培養作T淋巴細胞轉化試驗，股動脈放血分離血清作溶菌酶含量的測定及洗腹腔液作巨噬細胞吞噬功能檢測。結果顯示駿豐頻譜水組的巨噬細胞吞噬率及血清溶菌酶含量明顯高於自來水組(P≤0.01)，表明駿豐頻譜水具有一定的提高免疫功能的作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;張嘉寧等[7]研究了駿豐頻譜水泡浴加飲用對小鼠免疫功能的影響。實驗將KM小鼠分3組，A組小鼠泡浴駿豐頻譜水加飲用駿豐頻譜水，B組為小鼠泡浴駿豐頻譜水飲用自來水，對照組小鼠泡浴自來水飲用自來水。實驗30天后進行小鼠脾淋巴細胞轉化試驗、遲髮型變態反應實驗、血清溶血素測定、碳廓清試驗、NK細胞活性測定、抗體生成細胞檢測。結果顯示駿豐頻譜水泡浴加飲用、駿豐頻譜水泡浴均能提高淋巴細胞的轉化能力，具有提高小鼠NK細胞活性的作用;駿豐頻譜水泡浴加飲用還能增強小鼠單核巨噬細胞的吞噬功能。表明駿豐頻譜水泡浴、駿豐頻譜水泡浴加飲用均對小鼠的非特異性免疫和特異性細胞免疫反應有一定的促進作用，且駿豐頻譜水泡浴加飲用比單純的駿豐頻譜水泡浴對小鼠免疫功能的增強效果更好。南方醫科大學實驗動物中心在出具的對應的研究報告中進一步指出，根據中華人民共和國衛生部制定的《保健食品檢驗與評價技術規範》(2003版)中的增強免疫功能結果判定條件，受試樣品A組以及受試樣品B組的細胞免疫功能測定結果和NK細胞活性結果均為陽性，受試樣品A組還有促進巨噬細胞吞噬功能作用。結果表明，“駿豐頻譜水受試樣品A組和受試樣品B組具有增強免疫力功能作用。”&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍總醫院病理生理研究室的研究也發現，飲用駿豐頻譜水30天，可以增強小鼠脾臟自然殺傷細胞(NK細胞)活性。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;5、駿豐頻譜水能增強機體抗疲勞耐力&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍總醫院病理生理研究室的研究報告顯示，飲用駿豐頻譜水30天后，可以延長小鼠游泳的時間，駿豐頻譜水組小鼠游泳時間為45.5±16.2 分鐘，明顯長於飲用自來水的小鼠25.4±9.2分鐘(P&amp;lt;0.05);同時，飲用駿豐頻譜水可以增強大鼠游泳後心臟收縮與舒張功能，增加大鼠游泳後骨骼肌血流量。結果表明駿豐頻譜水可以延長動物的游泳時間，提高抗疲勞的耐力。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;6、駿豐頻譜水能提高機體抗氧化功能&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;南方醫科大學實驗動物中心的研究報告顯示，以駿豐頻譜水飼養小鼠並每天泡浴駿豐頻譜水(37℃)45分鐘，40天后測定小鼠血清中脂質過氧化產物丙二醛(MDA)含量、超氧化物歧化酶(SOD)活力和谷胱甘肽過氧化物酶(GSH-PX)活力。結果表明，相對於泡浴和飲用自來水的小鼠，泡浴和飲用駿豐頻譜水的小鼠血清中MDA含量顯著減低(P&amp;lt;0.01)，SOD活力顯著提高(P&amp;lt;0.01)，GSH-PX活力也顯著提高(P&amp;lt;0.01)。據衛生部制定的《保健品食品檢驗與評價技術規範》(2003版)中抗氧化功能檢驗方法可判定泡浴和飲用駿豐頻譜水的受試樣品組抗氧化功能動物實驗結果陽性。說明飲、泡駿豐頻譜水有提高機體抗氧化的功能。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;7、駿豐頻譜水對腫瘤細胞的影響&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;中國人民解放軍第一軍醫大學的研究報告顯示，經用駿豐頻譜水配置的RPMI-1640培養液分別進行體外培養大腸癌LOVO細胞和肝癌HepG2細胞，實驗研究發現“頻譜水對大腸癌細胞具有殺滅作用”，“頻譜水對肝癌細胞具有殺滅作用”。實驗提示駿豐頻譜水可能具有抑制腫瘤生長的作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;8 駿豐頻譜水的安全性評價&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;梁曉芸等[6]按衛生部GB15193-1994《食品安全性毒理學評價程式和方法》規定的有關方法，評價了駿豐頻譜水的安全性。結果表明，駿豐頻譜水 LD50&amp;gt;15000mg/kg，屬無毒級;小鼠骨髓微核、精子畸形、Ames’試驗均為陰性;90天餵養試驗也表明駿豐頻譜水對大鼠生長發育、血液及生化指標、肝腎功能均無損害作用。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;結語&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;以上實驗結果表明，駿豐頻譜水具有多種生物學效應，是具有一定輔助防治疾病，促進機體健康的優化水，關於駿豐頻譜水的臨床應用結果將另有文章後續報導。&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;參考文獻&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[1] 葉紅豔，劉瑞瑛，皮江，等. 小分子團水與普通蒸餾水的紅細胞滲透速率比較[J]. 科技創新導報，2011，(9)：6-7.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[2] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠白細胞粘附和微循環的影響[J]. 中華實用醫藥雜誌，2002，2(6)：489-490.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[3] 劉育英，韓岳，鄭世榮，等. 頻譜水對大鼠全血粘度和紅細胞變形性的影響[J]. 微循環學雜誌，2003，13(1)：23-24.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[4] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠胃腸電位及蠕動功能的影響[J]. 中國臨床康復，2004，8(3)：479-481.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[5] 劉育英，趙秀梅，劉鳳英，等. 頻譜水對大鼠血漿白介素1、6和白細胞行為的影響[J]. 微循環學雜誌，2002，12(2)：17-18.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[6] 梁曉芸，袁立懋，石同幸. 頻譜水的安全性及保健作用評價[J]. 中國公共衛生，2002，18(4)：400-401.&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;[7] 張嘉甯，張建明，黃瓊，等. 頻譜水泡浴加飲用對小鼠免疫功能的影響[J]. 實驗動物與比較醫學，2009，29(6)：397-401.　&lt;/span&gt;&lt;/p&gt;\r\n', '駿豐頻譜水的物理化學性質改變,使其由普通水變成為具有一定輔助防治疾病，促進人體健康的優化水。在此基礎上，廣東駿豐頻譜股份有限公司與相關科研機構合作，針對駿豐頻譜水開展了一系列的生物學實驗，以期探索和驗證駿豐頻譜水的生物學效應'),
(11, 3, '頻譜生活', '&lt;p&gt;(第三期)&lt;/p&gt;\r\n', ''),
(11, 1, '頻譜生活', '&lt;p&gt;(第三期)&lt;/p&gt;\r\n', ''),
(12, 1, '頻譜生活', '&lt;p&gt;(第二期)&lt;/p&gt;\r\n', ''),
(12, 4, '頻譜生活', '&lt;p&gt;(第二期)&lt;/p&gt;\r\n', ''),
(12, 3, '頻譜生活', '&lt;p&gt;(第二期)&lt;/p&gt;\r\n', ''),
(20, 3, '空氣和空氣離子療法', '&lt;p&gt;地球周圍包圍著一層厚厚的“被子”---空氣，也叫大氣層，人類就居住在這大氣層的底部。空氣是一種無色、無臭的混合氣體，是由氮氣(N2)、氧氣(O2)、二氧化碳(CO2)及其它微量惰性氣體等組成，其中N2占空氣體積的78%、O2占空氣體積的21%、CO2占空氣體積的0.03%。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣中的氧氣不斷地被包括人類在內的動物界吸入體內利用，然後轉化為CO2呼出體外。自然界的植物白天在光合作用過程吸入CO2，釋放O2；在夜間則吸收O2，釋放CO2，形成空氣內O2和CO2含量的動態穩定。人類需要氧氣才能生存，氧是機體功能活動所需能量來源的重要物質基礎，是機體新陳代謝啟動機制的關鍵之一。人體新陳代謝過程當中必須有足夠的氧，各種營養物質必須同氧結合，才能完成生理氧化過程，產生出能量。所以氧是人體新陳代謝活動關鍵物質，是人體生命運動的第一需要[1,2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　人類通過空氣中的氧氣等來維持生命，需要在清潔的空氣中生活。清潔空氣是指空氣內含有極微量或基本不含有害物質，而且氧氣含量正常、負離子含量充足等具備有利於身體健康的條件。但由於社會經濟不和諧發展，人類生存環境被破壞，空氣也受到了污染，正離子等空氣中污染物增加，嚴重影響人類的健康。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣中污染物質是指所有有害於人體的生物、化合物或物理性微粒，其可以以氣體、固體或液體的形式進入空氣、構成空氣污染物。空氣中大於10微米(PM10)的顆粒可以沉降至地面，稱之為降塵；小於2.5微米(PM2.5)不易沉降至地面的顆粒，稱之為飄塵。PM2.5的直徑只有頭髮直徑的 1/28，能穿透口罩、鼻毛、肺泡等過濾系統進入血液，被認為是“最陰毒”的空氣污染物[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣中大量的帶有正電荷的病毒、細菌、有害物質、有害氣體及含多種成分的塵埃，是各種現代疾病產生的根源。而研究表明負離子能通過與有害物質作用，達到淨化空氣的目的[3,4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在瀑布、宇宙射線、紫外線、微量元素輻射、雷擊閃電等產生的物理能、化學能的作用下，空氣會失去一部分繞其原子核旋轉的最外層電子，使空氣發生電離，逃逸的外層電子稱為自由電子，當自由電子與其它中性氣體分子結合後，就形成帶負電荷的空氣負離子[4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣中含氮雖多，但它對電子的親和力接近於零;其它惰性氣體幾乎不與其它元素結合，並且其量極微。因此，在空氣中氧及二氧化碳，便成為空氣離子化的主題。經過實驗發現：當氧氣存在時，才出現負離子效應;當二氧化碳存在時，才出現正離子效應，而氮及氧則無正離子效應[5]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣負離子包括自然形成的空氣負離子和人工形成的空氣負離子。自然形成的空氣離子，因地區不同，氣象有差異，形成的空氣離子數不同，但以海濱、山地較多。自然形成的空氣離子，從總的來講，數目仍較少，且條件不易控制，故大多僅作為療養因數應用。為了改善空氣品質，人們通過人工方式來產生負離子，增加空氣中負離子濃度[6]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　負離子不但能清除有害氣體及微塵顆粒微生物等，空氣負離子還被稱作空氣的維生素，對人體健康有著積極的作用[7,8]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　大量研究表明，負離子對神經系統、心血管系統、呼吸系統等方面的疾病有一定的保健和輔助治療作用，被應用於臨床，其屬於空氣離子療法，即利用自然的或人工產生的離子化空氣進行疾病的預防及治療的一種物理治療方法[5,7]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　參考文獻&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】徐南圖，生命之源：陽光、空氣、氣—空氣篇，心血管病防治知識，2012年，&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】劉統霞，張玉海，氧氣療法讓生命鮮活起來，中華養生保健，2005年，第3期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】衛罡，金宗哲，黃麗榮等，負離子發生器對柴油機減廢的作用，2005，環境工程，23(4)：39-40&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】宗美娟，王仁卿，趙坤，大氣環境中的負離子與人類健康，2004，山東林業科技，151:32-34&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【5】喬志恒，範維銘等，物理治療學全書，科學技術文獻出版社，p 528-538&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【6】張燕，韋宏，蒙晉佳，人工空氣負離子與自然空氣負離子，科技諮詢導報，2007年，第28期。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【7】金宗哲，負離子與健康和環境，2006，中國建材科技，3：85-87&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【8】王向華，高建雲，空氣負離子中的物理機制，現代物理知識，2007年，第4期&lt;/p&gt;\r\n', ''),
(13, 1, '駿豐頻譜(香港)2014年度飛躍駿馬大獎 - 頒獎', '', ''),
(13, 4, '駿豐頻譜(香港)2014年度飛躍駿馬大獎 - 頒獎', '', ''),
(14, 1, '駿豐頻譜(香港)2014年度卓越領袖大獎 - 頒獎', '', ''),
(14, 4, '駿豐頻譜(香港)2014年度卓越領袖大獎 - 頒獎', '', ''),
(15, 1, '駿豐頻譜(香港)2014年度菁英領袖大獎 - 頒獎', '', ''),
(15, 4, '駿豐頻譜(香港)2014年度菁英領袖大獎 - 頒獎', '', ''),
(15, 3, '駿豐頻譜(香港)2014年度菁英領袖大獎 - 頒獎', '', ''),
(13, 3, '駿豐頻譜(香港)2014年度飛躍駿馬大獎 - 頒獎', '', ''),
(14, 3, '駿豐頻譜(香港)2014年度卓越領袖大獎 - 頒獎', '', ''),
(11, 4, '頻譜生活', '&lt;p&gt;(第三期)&lt;/p&gt;\r\n', ''),
(19, 1, '頻譜生活', '&lt;p&gt;(第一期)&lt;/p&gt;\r\n', ''),
(19, 4, '頻譜生活', '&lt;p&gt;(第一期)&lt;/p&gt;\r\n', ''),
(19, 3, '頻譜生活', '&lt;p&gt;(第一期)&lt;/p&gt;\r\n', ''),
(20, 1, '空氣和空氣離子療法', '&lt;p&gt;地球周圍包圍著一層厚厚的“被子”---空氣，也叫大氣層，人類就居住在這大氣層的底部。空氣是一種無色、無臭的混合氣體，是由氮氣(N2)、氧氣(O2)、二氧化碳(CO2)及其它微量惰性氣體等組成，其中N2占空氣體積的78%、O2占空氣體積的21%、CO2占空氣體積的0.03%。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣中的氧氣不斷地被包括人類在內的動物界吸入體內利用，然後轉化為CO2呼出體外。自然界的植物白天在光合作用過程吸入CO2，釋放O2；在夜間則吸收O2，釋放CO2，形成空氣內O2和CO2含量的動態穩定。人類需要氧氣才能生存，氧是機體功能活動所需能量來源的重要物質基礎，是機體新陳代謝啟動機制的關鍵之一。人體新陳代謝過程當中必須有足夠的氧，各種營養物質必須同氧結合，才能完成生理氧化過程，產生出能量。所以氧是人體新陳代謝活動關鍵物質，是人體生命運動的第一需要[1,2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　人類通過空氣中的氧氣等來維持生命，需要在清潔的空氣中生活。清潔空氣是指空氣內含有極微量或基本不含有害物質，而且氧氣含量正常、負離子含量充足等具備有利於身體健康的條件。但由於社會經濟不和諧發展，人類生存環境被破壞，空氣也受到了污染，正離子等空氣中污染物增加，嚴重影響人類的健康。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣中污染物質是指所有有害於人體的生物、化合物或物理性微粒，其可以以氣體、固體或液體的形式進入空氣、構成空氣污染物。空氣中大於10微米(PM10)的顆粒可以沉降至地面，稱之為降塵；小於2.5微米(PM2.5)不易沉降至地面的顆粒，稱之為飄塵。PM2.5的直徑只有頭髮直徑的 1/28，能穿透口罩、鼻毛、肺泡等過濾系統進入血液，被認為是“最陰毒”的空氣污染物[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣中大量的帶有正電荷的病毒、細菌、有害物質、有害氣體及含多種成分的塵埃，是各種現代疾病產生的根源。而研究表明負離子能通過與有害物質作用，達到淨化空氣的目的[3,4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在瀑布、宇宙射線、紫外線、微量元素輻射、雷擊閃電等產生的物理能、化學能的作用下，空氣會失去一部分繞其原子核旋轉的最外層電子，使空氣發生電離，逃逸的外層電子稱為自由電子，當自由電子與其它中性氣體分子結合後，就形成帶負電荷的空氣負離子[4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣中含氮雖多，但它對電子的親和力接近於零;其它惰性氣體幾乎不與其它元素結合，並且其量極微。因此，在空氣中氧及二氧化碳，便成為空氣離子化的主題。經過實驗發現：當氧氣存在時，才出現負離子效應;當二氧化碳存在時，才出現正離子效應，而氮及氧則無正離子效應[5]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空氣負離子包括自然形成的空氣負離子和人工形成的空氣負離子。自然形成的空氣離子，因地區不同，氣象有差異，形成的空氣離子數不同，但以海濱、山地較多。自然形成的空氣離子，從總的來講，數目仍較少，且條件不易控制，故大多僅作為療養因數應用。為了改善空氣品質，人們通過人工方式來產生負離子，增加空氣中負離子濃度[6]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　負離子不但能清除有害氣體及微塵顆粒微生物等，空氣負離子還被稱作空氣的維生素，對人體健康有著積極的作用[7,8]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　大量研究表明，負離子對神經系統、心血管系統、呼吸系統等方面的疾病有一定的保健和輔助治療作用，被應用於臨床，其屬於空氣離子療法，即利用自然的或人工產生的離子化空氣進行疾病的預防及治療的一種物理治療方法[5,7]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　參考文獻&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】徐南圖，生命之源：陽光、空氣、氣—空氣篇，心血管病防治知識，2012年，&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】劉統霞，張玉海，氧氣療法讓生命鮮活起來，中華養生保健，2005年，第3期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】衛罡，金宗哲，黃麗榮等，負離子發生器對柴油機減廢的作用，2005，環境工程，23(4)：39-40&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】宗美娟，王仁卿，趙坤，大氣環境中的負離子與人類健康，2004，山東林業科技，151:32-34&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【5】喬志恒，範維銘等，物理治療學全書，科學技術文獻出版社，p 528-538&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【6】張燕，韋宏，蒙晉佳，人工空氣負離子與自然空氣負離子，科技諮詢導報，2007年，第28期。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【7】金宗哲，負離子與健康和環境，2006，中國建材科技，3：85-87&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【8】王向華，高建雲，空氣負離子中的物理機制，現代物理知識，2007年，第4期&lt;/p&gt;\r\n', ''),
(20, 4, '空气和空气离子疗法', '&lt;p&gt;地球周围包围着一层厚厚的“被子”---空气，也叫大气层，人类就居住在这大气层的底部。空气是一种无色、无臭的混合气体，是由氮气(N2)、氧气 (O2)、二氧化碳(CO2)及其它微量惰性气体等组成，其中N2占空气体积的78%、O2占空气体积的21%、CO2占空气体积的0.03%。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　空气中的氧气不断地被包括人类在内的动物界吸入体内利用，然后转化为CO2呼出体外。自然界的植物白天在光合作用过程吸入CO2，释放O2；在夜间则吸 收O2，释放CO2，形成空气内O2和CO2含量的动态稳定。人类需要氧气才能生存，氧是机体功能活动所需能量来源的重要物质基础，是机体新陈代谢启动机 制的关键之一。人体新陈代谢过程当中必须有足够的氧，各种营养物质必须同氧结合，才能完成生理氧化过程，产生出能量。所以氧是人体新陈代谢活动关键物质， 是人体生命运动的第一需要[1,2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　人类通过空气中的氧气等来维持生命，需要在清洁的空气中生活。清洁空气是指空气内含有极微量或基 本不含有害物质，而且氧气含量正常、负离子含量充足等具备有利于身体健康的条件。但由于社会经济不和谐发展，人类生存环境被破坏，空气也受到了污染，正离 子等空气中污染物增加，严重影响人类的健康。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空气中污染物质是指所有有害于人体的生物、化合物或物理性微粒，其可以以气体、固体或液体 的形式进入空气、构成空气污染物。空气中大于10微米(PM10)的颗粒可以沉降至地面，称之为降尘；小于2.5微米(PM2.5)不易沉降至地面的颗 粒，称之为飘尘。PM2.5的直径只有头发直径的 1/28，能穿透口罩、鼻毛、肺泡等过滤系统进入血液，被认为是“最阴毒”的空气污染物[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空气中大量的带有正电荷的病毒、细菌、有害物质、有害气体及含多种成分的尘埃，是各种现代疾病产生的根源。而研究表明负离子能通过与有害物质作用，达到净化空气的目的[3,4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在瀑布、宇宙射线、紫外线、微量元素辐射、雷击闪电等产生的物理能、化学能的作用下，空气会失去一部分绕其原子核旋转的最外层电子，使空气发生电离，逃逸的外层电子称为自由电子，当自由电子与其它中性气体分子结合后，就形成带负电荷的空气负离子[4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　空气中含氮虽多，但它对电子的亲和力接近于零;其它惰性气体几乎不与其它元素结合，并且其量极微。因此，在空气中氧及二氧化碳，便成为空气离子化的主 题。经过实验发现：当氧气存在时，才出现负离子效应;当二氧化碳存在时，才出现正离子效应，而氮及氧则无正离子效应[5]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　空气负离子 包括自然形成的空气负离子和人工形成的空气负离子。自然形成的空气离子，因地区不同，气象有差异，形成的空气离子数不同，但以海滨、山地较多。自然形成的 空气离子，从总的来讲，数目仍较少，且条件不易控制，故大多仅作为疗养因数应用。为了改善空气品质，人们通过人工方式来产生负离子，增加空气中负离子浓度 [6]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　负离子不但能清除有害气体及微尘颗粒微生物等，空气负离子还被称作空气的维生素，对人体健康有着积极的作用[7,8]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　大量研究表明，负离子对神经系统、心血管系统、呼吸系统等方面的疾病有一定的保健和辅助治疗作用，被应用于临床，其属于空气离子疗法，即利用自然的或人工产生的离子化空气进行疾病的预防及治疗的一种物理治疗方法[5,7]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　参考文献&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】徐南图，生命之源：阳光、空气、气—空气篇，心血管病防治知识，2012年，&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】刘统霞，张玉海，氧气疗法让生命鲜活起来，中华养生保健，2005年，第3期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】卫罡，金宗哲，黄丽荣等，负离子发生器对柴油机减废的作用，2005，环境工程，23(4)：39-40&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】宗美娟，王仁卿，赵坤，大气环境中的负离子与人类健康，2004，山东林业科技，151:32-34&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【5】乔志恒，范维铭等，物理治疗学全书，科学技术文献出版社，p 528-538&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【6】张燕，韦宏，蒙晋佳，人工空气负离子与自然空气负离子，科技谘询导报，2007年，第28期。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【7】金宗哲，负离子与健康和环境，2006，中国建材科技，3：85-87&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【8】王向华，高建云，空气负离子中的物理机制，现代物理知识，2007年，第4期&lt;/p&gt;\r\n', '');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(21, 3, '水及其對人體的重要性', '&lt;p&gt;水是一種無色、無味、無定形流動的液體，盡人皆知。但要科學地深化對水的認知就不那麼簡單了。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水有著許多獨特的宏觀物理化學性質，例如：與同是元素週期表第六族的氫化物比較，隨著分子量的減小，碲化氫(H2Te)、硒化氫(H2Se)和硫化氫(H2S)的沸點和熔點順序降低，在常溫下它們都是氣體，但分子量更小的水在常溫下是液體，沸點、熔點也明顯增高；此外，水有較大的表面張力，相對較低的粘度及高的介電常數；水的比熱也較大;水還可以溶解許多化合物;不溶于水的一些化合物(疏水物質)也可以在水中存在等等。水的這些特殊的宏觀性質都是由其獨特的微觀結構決定的，因為水分子存在偶極，分子間有較強的相互作用力。目前已經知道這種作用力的基礎是水的微觀結構中有著豐富的“氫鍵”，水並不只是以單個水分子存在，而是以水分子團簇形式存在[1，2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水特殊的宏觀性質及獨特的微觀結構決定著水對生命系統的重要性，沒有水就沒有生命，水是地球上包括人類在內的所有生物生存的必要條件。地球上最早的生命是從水中走上陸地的。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水是地球上存在最普遍的物質，也是生命系統中不可缺少的物質。在人體中，水分就占了70%左右，倘若是嬰兒，更高達70-80%。在血液中，水分占了 83%，肝臟中占了68%，連大腦都含有75%的水。由此看來，生命就像是水的聚合體。人體內的水分，大部分以細胞內液的形式存在，其中包括鉀，磷酸鹽、蛋白質分子等。另外的水分則以細胞外液形式，除了組織細胞與細胞之間的組織液外，還包括淋巴系統運送的淋巴液，以及在血管中迴圈的血液。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水在人體新陳代謝中有著重要的作用，正常的人體功能，正是構建在體內水分的平衡上。水是極佳的溶劑，營養物質通過溶解在水中，運送到各器官組織;如同溶解營養物質一樣，廢棄物也可以溶于水中，通過排泄系統排出體外；水的比熱比較大，升溫慢降溫也慢，而人體又可以通過出汗散熱來調節人體溫度，因此有利於生命體系維持溫度穩定;此外水還參與體內物理、化學反應，有潤滑關節、眼睛器官組織作用等[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水是維持人體生命及正常功能必不可少的要素，人體因排便、呼吸、出汗等會流失一定的水分，所以人體每天需不斷補充足夠量的水，以維持體內水分平衡。然而，水質的好壞與人的健康、疾病和壽命具有至關重要的關係。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　調查研究顯示，許多疾病都與飲用不潔淨的水有關。隨著人們保健意識的增強，飲用健康的水越來越受到重視。我國醫促會健康飲用水專業委員會也提出了健康水的標準[4]：&lt;/p&gt;\r\n\r\n&lt;p&gt;　　不含對人體有毒、有害及有異味的物質；水硬度適中；人體所需礦物質含量適中，比例適宜；pH值呈中性或弱鹼性；水中溶解氧及二氧化碳含量適中；水分子團(簇)小(17O半峰寬≤100Hz); 水的營養生理功能(滲透力、溶解力、氧化還原性等)較強。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　參考文獻&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】張建平，趙林，王林雙，水分子簇中氫鍵作用，化學通報，2005，第68卷.&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】 Philip Ball, Water as an Active Constituent in cell Biology, Nature, 2006.&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】舒玉萍，喝水更健康，江蘇文藝出版社，&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】李復興，水，是藥還是毒?中國市場出版社，2007，p83-87&lt;/p&gt;\r\n', ''),
(21, 1, '水及其對人體的重要性', '&lt;p&gt;水是一種無色、無味、無定形流動的液體，盡人皆知。但要科學地深化對水的認知就不那麼簡單了。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水有著許多獨特的宏觀物理化學性質，例如：與同是元素週期表第六族的氫化物比較，隨著分子量的減小，碲化氫(H2Te)、硒化氫(H2Se)和硫化氫(H2S)的沸點和熔點順序降低，在常溫下它們都是氣體，但分子量更小的水在常溫下是液體，沸點、熔點也明顯增高；此外，水有較大的表面張力，相對較低的粘度及高的介電常數；水的比熱也較大;水還可以溶解許多化合物;不溶于水的一些化合物(疏水物質)也可以在水中存在等等。水的這些特殊的宏觀性質都是由其獨特的微觀結構決定的，因為水分子存在偶極，分子間有較強的相互作用力。目前已經知道這種作用力的基礎是水的微觀結構中有著豐富的“氫鍵”，水並不只是以單個水分子存在，而是以水分子團簇形式存在[1，2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水特殊的宏觀性質及獨特的微觀結構決定著水對生命系統的重要性，沒有水就沒有生命，水是地球上包括人類在內的所有生物生存的必要條件。地球上最早的生命是從水中走上陸地的。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水是地球上存在最普遍的物質，也是生命系統中不可缺少的物質。在人體中，水分就占了70%左右，倘若是嬰兒，更高達70-80%。在血液中，水分占了 83%，肝臟中占了68%，連大腦都含有75%的水。由此看來，生命就像是水的聚合體。人體內的水分，大部分以細胞內液的形式存在，其中包括鉀，磷酸鹽、蛋白質分子等。另外的水分則以細胞外液形式，除了組織細胞與細胞之間的組織液外，還包括淋巴系統運送的淋巴液，以及在血管中迴圈的血液。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水在人體新陳代謝中有著重要的作用，正常的人體功能，正是構建在體內水分的平衡上。水是極佳的溶劑，營養物質通過溶解在水中，運送到各器官組織;如同溶解營養物質一樣，廢棄物也可以溶于水中，通過排泄系統排出體外；水的比熱比較大，升溫慢降溫也慢，而人體又可以通過出汗散熱來調節人體溫度，因此有利於生命體系維持溫度穩定;此外水還參與體內物理、化學反應，有潤滑關節、眼睛器官組織作用等[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水是維持人體生命及正常功能必不可少的要素，人體因排便、呼吸、出汗等會流失一定的水分，所以人體每天需不斷補充足夠量的水，以維持體內水分平衡。然而，水質的好壞與人的健康、疾病和壽命具有至關重要的關係。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　調查研究顯示，許多疾病都與飲用不潔淨的水有關。隨著人們保健意識的增強，飲用健康的水越來越受到重視。我國醫促會健康飲用水專業委員會也提出了健康水的標準[4]：&lt;/p&gt;\r\n\r\n&lt;p&gt;　　不含對人體有毒、有害及有異味的物質；水硬度適中；人體所需礦物質含量適中，比例適宜；pH值呈中性或弱鹼性；水中溶解氧及二氧化碳含量適中；水分子團(簇)小(17O半峰寬≤100Hz); 水的營養生理功能(滲透力、溶解力、氧化還原性等)較強。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　參考文獻&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】張建平，趙林，王林雙，水分子簇中氫鍵作用，化學通報，2005，第68卷.&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】 Philip Ball, Water as an Active Constituent in cell Biology, Nature, 2006.&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】舒玉萍，喝水更健康，江蘇文藝出版社，&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】李復興，水，是藥還是毒?中國市場出版社，2007，p83-87&lt;/p&gt;\r\n', ''),
(21, 4, '水及其对人体的重要性', '&lt;p&gt;水是一种无色、无味、无定形流动的液体，尽人皆知。但要科学地深化对水的认知就不那么简单了。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水有着许多独特的宏观物理 化学性质，例如：与同是元素周期表第六族的氢化物比较，随着分子量的减小，碲化氢(H2Te)、硒化氢(H2Se)和硫化氢(H2S)的沸点和熔点顺序降 低，在常温下它们都是气体，但分子量更小的水在常温下是液体，沸点、熔点也明显增高；此外，水有较大的表面张力，相对较低的粘度及高的介电常数；水的比热 也较大;水还可以溶解许多化合物;不溶于水的一些化合物(疏水物质)也可以在水中存在等等。水的这些特殊的宏观性质都是由其独特的微观结构决定的，因为水 分子存在偶极，分子间有较强的相互作用力。目前已经知道这种作用力的基础是水的微观结构中有着丰富的“氢键”，水并不只是以单个水分子存在，而是以水分子 团簇形式存在[1，2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水特殊的宏观性质及独特的微观结构决定着水对生命系统的重要性，没有水就没有生命，水是地球上包括人类在内的所有生物生存的必要条件。地球上最早的生命是从水中走上陆地的。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　水是地球上存在最普遍的物质，也是生命系统中不可缺少的物质。在人体中，水分就占了70%左右，倘若是婴儿，更高达70-80%。在血液中，水分占了 83%，肝脏中占了68%，连大脑都含有75%的水。由此看来，生命就像是水的聚合体。人体内的水分，大部分以细胞内液的形式存在，其中包括钾，磷酸盐、 蛋白质分子等。另外的水分则以细胞外液形式，除了组织细胞与细胞之间的组织液外，还包括淋巴系统运送的淋巴液，以及在血管中回圈的血液。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　水在人体新陈代谢中有着重要的作用，正常的人体功能，正是构建在体内水分的平衡上。水是极佳的溶剂，营养物质通过溶解在水中，运送到各器官组织;如同溶 解营养物质一样，废弃物也可以溶于水中，通过排泄系统排出体外；水的比热比较大，升温慢降温也慢，而人体又可以通过出汗散热来调节人体温度，因此有利于生 命体系维持温度稳定;此外水还参与体内物理、化学反应，有润滑关节、眼睛器官组织作用等[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　水是维持人体生命及正常功能必不可少的要素，人体因排便、呼吸、出汗等会流失一定的水分，所以人体每天需不断补充足够量的水，以维持体内水分平衡。然而，水质的好坏与人的健康、疾病和寿命具有至关重要的关系。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　调查研究显示，许多疾病都与饮用不洁净的水有关。随着人们保健意识的增强，饮用健康的水越来越受到重视。我国医促会健康饮用水专业委员会也提出了健康水的标准[4]：&lt;/p&gt;\r\n\r\n&lt;p&gt;　　不含对人体有毒、有害及有异味的物质；水硬度适中；人体所需矿物质含量适中，比例适宜；pH值呈中性或弱碱性；水中溶解氧及二氧化碳含量适中；水分子团(簇)小(17O半峰宽≤100Hz); 水的营养生理功能(渗透力、溶解力、氧化还原性等)较强。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　参考文献&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】张建平，赵林，王林双，水分子簇中氢键作用，化学通报，2005，第68卷.&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】 Philip Ball, Water as an Active Constituent in cell Biology, Nature, 2006.&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】舒玉萍，喝水更健康，江苏文艺出版社，&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】李复兴，水，是药还是毒?中国市场出版社，2007，p83-87&lt;/p&gt;\r\n', ''),
(22, 3, '陽光與光療', '&lt;p&gt;萬物生長靠太陽，沒有太陽就沒有生命。人的生命離不開太陽，陽光是健康所必需的要素之一。太陽是離我們最近的一顆恒星，體積達地球數百萬倍，距離地球 1.5億公里，太陽表面溫度6000℃。陽光是太陽核反應“燃燒”發出的光。到達地球時，太陽光光譜(太陽電磁輻射)如下圖，但太陽電磁輻射中的能量主要集中在紅外區(0.75-1000μm)、可見光區(0.40-0.75μm)和紫外區(0.18-0.40μm)三個波段。紅外線和紫外線是肉眼看不見的非可見光線[1,2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　太陽光是一種具有電磁波和粒子流二重性的物質，即具有波長、頻率、反射、折射、干涉等電磁波特性，也具有能量、吸收、光電效應等量子特性。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　光照射到物質上時，除發生反射、折射外，還可以被物質吸收，轉化成熱、化學能、生物能，引起一系列理化變化。當光的能量不大時，只能使物質分子或原子發生旋轉或振動，由動能變為熱能，例如紅外線和紅光多屬此類，當光的能量足夠大時，可使物質分子或原子產生光化學反應，例如紫外線[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　眾所周知，光對生物的生長發育，具有重要的作用。植物需要進行光合作用才能生長，日光照射充足的花木，枝葉繁茂，生長旺盛;缺少日光照射的植物不僅生長緩慢，甚至還會枯萎。動物或人類，如果長時間在黑暗的環境中生活，常常出現抗病能力下降，骨骼發育不良，患佝僂病或骨質疏鬆症。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　早在西元2世紀就有了日光療法的記載，光療法始於日光療法，光療法即利用光線的輻射能治療疾病的理療法，不同波段的輻射具有不同生理和治療作用。隨著光療在臨床治療的各領域中得到廣泛應用和不斷發展，逐漸出現了各種光療法，包括可見光、紅外線、紫外線及鐳射療法等[3,4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　光療法作為物理療法的一種，具有副作用小、無創無痛、療效顯著等許多優點，已經在臨床取得了顯著成果。特別是光療中的紅外線理療技術在我國得到了快速發展。“紅外燈泡”、“紅外線治療儀”、“神燈(特定電磁波治療儀)”、“場效應儀”等治療儀器層出不窮，並且取得了一定的療效[5]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　紅外線又稱紅外輻射，波長較紅光長，是人肉眼看不見的光線，屬電磁波輻射中能產生熱效應的一段頻譜，其波長為0.75-1000μm。用紅外線治療疾病的療法為紅外線療法。目前醫療用紅外線分為二段，即短波紅外線(0.75μm-1.5μm)、長波紅外線(1.5μm-15μm)。紅外線的波長長，光量子能量低，故作用於組織後只引起分子轉動和振動，不引起電子激發，其主要的生物學作用為熱效應[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　隨著科學技術的發展和醫療水準的不斷提高，相信紅外線療法將在醫療、保健事業中發揮出更大的作用。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　參考文獻&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】喬志恒，範維銘等，物理治療學全書，科學技術文獻出版社&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】徐南圖，生命之源：陽光、空氣、水---陽光篇，心血管病防治知識，2012年，第9期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】王春雪，張宇，王擁軍等，一種悄然興起的非藥物治療—光療，中國全科醫學，第2001年，第4卷，第5期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】龐小峰，生物電磁學，國防工業出版社，2008年，p210-p211&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【5】金海龍，田宏毅，洪文學等，複合光物理治療系統的光譜特性研究，中國生物醫學工程學報，2008年，第27卷，第1期。&lt;/p&gt;\r\n', ''),
(22, 1, '陽光與光療', '&lt;p&gt;萬物生長靠太陽，沒有太陽就沒有生命。人的生命離不開太陽，陽光是健康所必需的要素之一。太陽是離我們最近的一顆恒星，體積達地球數百萬倍，距離地球 1.5億公里，太陽表面溫度6000℃。陽光是太陽核反應“燃燒”發出的光。到達地球時，太陽光光譜(太陽電磁輻射)如下圖，但太陽電磁輻射中的能量主要集中在紅外區(0.75-1000μm)、可見光區(0.40-0.75μm)和紫外區(0.18-0.40μm)三個波段。紅外線和紫外線是肉眼看不見的非可見光線[1,2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　太陽光是一種具有電磁波和粒子流二重性的物質，即具有波長、頻率、反射、折射、干涉等電磁波特性，也具有能量、吸收、光電效應等量子特性。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　光照射到物質上時，除發生反射、折射外，還可以被物質吸收，轉化成熱、化學能、生物能，引起一系列理化變化。當光的能量不大時，只能使物質分子或原子發生旋轉或振動，由動能變為熱能，例如紅外線和紅光多屬此類，當光的能量足夠大時，可使物質分子或原子產生光化學反應，例如紫外線[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　眾所周知，光對生物的生長發育，具有重要的作用。植物需要進行光合作用才能生長，日光照射充足的花木，枝葉繁茂，生長旺盛;缺少日光照射的植物不僅生長緩慢，甚至還會枯萎。動物或人類，如果長時間在黑暗的環境中生活，常常出現抗病能力下降，骨骼發育不良，患佝僂病或骨質疏鬆症。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　早在西元2世紀就有了日光療法的記載，光療法始於日光療法，光療法即利用光線的輻射能治療疾病的理療法，不同波段的輻射具有不同生理和治療作用。隨著光療在臨床治療的各領域中得到廣泛應用和不斷發展，逐漸出現了各種光療法，包括可見光、紅外線、紫外線及鐳射療法等[3,4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　光療法作為物理療法的一種，具有副作用小、無創無痛、療效顯著等許多優點，已經在臨床取得了顯著成果。特別是光療中的紅外線理療技術在我國得到了快速發展。“紅外燈泡”、“紅外線治療儀”、“神燈(特定電磁波治療儀)”、“場效應儀”等治療儀器層出不窮，並且取得了一定的療效[5]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　紅外線又稱紅外輻射，波長較紅光長，是人肉眼看不見的光線，屬電磁波輻射中能產生熱效應的一段頻譜，其波長為0.75-1000μm。用紅外線治療疾病的療法為紅外線療法。目前醫療用紅外線分為二段，即短波紅外線(0.75μm-1.5μm)、長波紅外線(1.5μm-15μm)。紅外線的波長長，光量子能量低，故作用於組織後只引起分子轉動和振動，不引起電子激發，其主要的生物學作用為熱效應[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　隨著科學技術的發展和醫療水準的不斷提高，相信紅外線療法將在醫療、保健事業中發揮出更大的作用。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　參考文獻&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】喬志恒，範維銘等，物理治療學全書，科學技術文獻出版社&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】徐南圖，生命之源：陽光、空氣、水---陽光篇，心血管病防治知識，2012年，第9期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】王春雪，張宇，王擁軍等，一種悄然興起的非藥物治療—光療，中國全科醫學，第2001年，第4卷，第5期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】龐小峰，生物電磁學，國防工業出版社，2008年，p210-p211&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【5】金海龍，田宏毅，洪文學等，複合光物理治療系統的光譜特性研究，中國生物醫學工程學報，2008年，第27卷，第1期。&lt;/p&gt;\r\n', ''),
(22, 4, '陽光與光療', '&lt;p&gt;万物生长靠太阳，没有太阳就没有生命。人的生命离不开太阳，阳光是健康所必需的要素之一。太阳是离我们最近的一颗恒星，体积达地球数百万倍，距离地 球 1.5亿公里，太阳表面温度6000℃。阳光是太阳核反应“燃烧”发出的光。到达地球时，太阳光光谱(太阳电磁辐射)如下图，但太阳电磁辐射中的能量主要 集中在红外区(0.75-1000μm)、可见光区(0.40-0.75μm)和紫外区(0.18-0.40μm)三个波段。红外线和紫外线是肉眼看不见 的非可见光线[1,2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　太阳光是一种具有电磁波和粒子流二重性的物质，即具有波长、频率、反射、折射、干涉等电磁波特性，也具有能量、吸收、光电效应等量子特性。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　光照射到物质上时，除发生反射、折射外，还可以被物质吸收，转化成热、化学能、生物能，引起一系列理化变化。当光的能量不大时，只能使物质分子或原子发 生旋转或振动，由动能变为热能，例如红外线和红光多属此类，当光的能量足够大时，可使物质分子或原子产生光化学反应，例如紫外线[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　众所周知，光对生物的生长发育，具有重要的作用。植物需要进行光合作用才能生长，日光照射充足的花木，枝叶繁茂，生长旺盛;缺少日光照射的植物不仅生长 缓慢，甚至还会枯萎。动物或人类，如果长时间在黑暗的环境中生活，常常出现抗病能力下降，骨骼发育不良，患佝偻病或骨质疏松症。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　早在西 元2世纪就有了日光疗法的记载，光疗法始于日光疗法，光疗法即利用光线的辐射能治疗疾病的理疗法，不同波段的辐射具有不同生理和治疗作用。随着光疗在临床 治疗的各领域中得到广泛应用和不断发展，逐渐出现了各种光疗法，包括可见光、红外线、紫外线及镭射疗法等[3,4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　光疗法作为物理疗 法的一种，具有副作用小、无创无痛、疗效显著等许多优点，已经在临床取得了显著成果。特别是光疗中的红外线理疗技术在我国得到了快速发展。“红外灯泡”、 “红外线治疗仪”、“神灯(特定电磁波治疗仪)”、“场效应仪”等治疗仪器层出不穷，并且取得了一定的疗效[5]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　红外线又称红外辐 射，波长较红光长，是人肉眼看不见的光线，属电磁波辐射中能产生热效应的一段频谱，其波长为0.75-1000μm。用红外线治疗疾病的疗法为红外线疗 法。目前医疗用红外线分为二段，即短波红外线(0.75μm-1.5μm)、长波红外线(1.5μm-15μm)。红外线的波长长，光量子能量低，故作用 于组织后只引起分子转动和振动，不引起电子激发，其主要的生物学作用为热效应[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　随着科学技术的发展和医疗水准的不断提高，相信红外线疗法将在医疗、保健事业中发挥出更大的作用。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　参考文献&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】乔志恒，范维铭等，物理治疗学全书，科学技术文献出版社&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】徐南图，生命之源：阳光、空气、水---阳光篇，心血管病防治知识，2012年，第9期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】王春雪，张宇，王拥军等，一种悄然兴起的非药物治疗—光疗，中国全科医学，第2001年，第4卷，第5期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】庞小峰，生物电磁学，国防工业出版社，2008年，p210-p211&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【5】金海龙，田宏毅，洪文学等，复合光物理治疗系统的光谱特性研究，中国生物医学工程学报，2008年，第27卷，第1期。&lt;/p&gt;\r\n', ''),
(23, 1, '環境、健康與物理治療', '&lt;p&gt;人，從出生起，無時無刻不在接受著各種物理因數的影響，如空氣、溫度、濕度、陽光等。這些因素直接影響著人體內部器官組織的功能變化，影響著人體生長和發育。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　人類在進化的過程中，通過長期與自然鬥爭，獲得了在一定條件下保持機體內環境平衡的能力，獲得了抵禦各種自然災害和抗病能力。人類為了適應各種自然環境變化，在漫長的歷史中，人體通過遺傳和變異的相互作用，形成一整套防病結構，其中包括屏障、細胞和體液因素等，維持著人體正常的生命活動[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　人與自然環境，在發展中維持動態平衡，舊的平衡不斷被打破，新的平衡又不斷的建立。自然環境對人體的作用有兩個方面：有利的一面和有害的一面。如適宜的陽光、空氣、水、食物(某些植物和動物)，都是人體新陳代謝不可缺少的。人體通過新陳代謝，與自然界進行著物質交換和能量交換，維持著人的生命活動，這是有利作用的一面；而有害作用的一面，像污染的空氣，不良的水質，惡劣的氣候條件，不合理的膳食等等，往往使人患病甚至造成死亡。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　隨著人們生活水準的提高、科學的進步，對人與自然、生命和健康關係的認識，已經發展到一個新的階段。人們更加深刻體會到，在現代化都市生活和工作中，存在不少有害健康的因素，如擁擠狹小的生存空間，煙塵遮蔽的昏暗日光，充斥霧霾的混濁空氣，有害物質超標的飲用水，過多化學添加劑的食品等。再加上緊張、快捷的生活節奏，體能鍛煉的缺乏、食用過多的垃圾食品以及化學藥品的毒副作用等等。以上種種因素嚴重影響人們的健康，並造成許多疾病的高發，縮短了人們的生存壽命。因此人類尤其是都市人群的生存品質需求及醫療品質需求的深化和提高，迫切呼喚更為自然，有效的治療方法。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在現代醫學中，把應用天然或人工的物理因數作用於人體，引起體內一系列生物學效應，通過神經、體液、內分泌和免疫等生理調節機制，達到保健、預防、治療和康復目的方法，稱為物理治療，又簡稱理療[2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　物理治療在我國已有幾十年的發展歷史，是一門涉及多種知識的學科。物理治療是無痛苦、無創傷治療，很少引起身體的不適反應，副作用小，效果持久，反復多次的治療方法還可以產生治療效果的疊加和累積作用。可同時運用多種療法協同治療，具有療效確切、治療費用低等優點，是康復醫學的重要治療手段之一[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　物理治療直接作用於機體，能引起一系列的反應，這種反應大致分為三個階段：物理反應階段(物理因數與局部細胞及其周圍基質相互作用，機體吸收能量)、理化效應階段(機體吸收能量後產生一系列生物物理、生物化學、生物磁學及電力學等理化反應)、生物效應階段(局部理化效應的結果是引起細胞功能狀態、體液迴圈、微循環和物質代謝的改變，使組織建立起新的營養代謝水準)。在物理因數的作用下，神經系統、內分泌體液系統等，各系統相互作用，引起機體產生複雜綜合的反應[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　物理治療包括光療(紅外線光療、紫外線光療、可見光療法、鐳射療法)、電療(直流電療：離子導入法等;低頻電療；中頻電療;高頻電療等)、磁療(靜磁場療法、脈衝磁場療法、低頻交變磁場療法等)、聲療(治療性超聲波)、水療(對比浴、漩渦浴、氣泡浴等)、冷療(冰敷、冰按摩等)、熱療(熱敷、蠟療、透熱療法等)、力療(牽引力、壓力、撞擊力、摩擦力等)等[1][4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　參考文獻&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】喬志恒，範維銘等，物理治療學全書，科學技術文獻出版社&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】齊麗晶，淺談物理治療設備的風險與對策，中國醫療器械資訊，2011年&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】邸慧豔，綜合醫院開展物理治療的現狀與對策，西部中醫藥，2011年，第24卷，第8期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】陳旭，現代醫學中物理治療的綜合概述，醫療裝備，2007年，第5期&lt;/p&gt;\r\n', ''),
(23, 4, '环境、健康与物理治疗', '&lt;p&gt;人，从出生起，无时无刻不在接受着各种物理因数的影响，如空气、温度、湿度、阳光等。这些因素直接影响着人体内部器官组织的功能变化，影响着人体生长和发育。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　人类在进化的过程中，通过长期与自然斗争，获得了在一定条件下保持机体内环境平衡的能力，获得了抵御各种自然灾害和抗病能力。人类为了适应各种自然环境 变化，在漫长的历史中，人体通过遗传和变异的相互作用，形成一整套防病结构，其中包括屏障、细胞和体液因素等，维持着人体正常的生命活动[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　人与自然环境，在发展中维持动态平衡，旧的平衡不断被打破，新的平衡又不断的建立。自然环境对人体的作用有两个方面：有利的一面和有害的一面。如适宜的 阳光、空气、水、食物(某些植物和动物)，都是人体新陈代谢不可缺少的。人体通过新陈代谢，与自然界进行着物质交换和能量交换，维持着人的生命活动，这是 有利作用的一面；而有害作用的一面，像污染的空气，不良的水质，恶劣的气候条件，不合理的膳食等等，往往使人患病甚至造成死亡。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　随着人 们生活水准的提高、科学的进步，对人与自然、生命和健康关系的认识，已经发展到一个新的阶段。人们更加深刻体会到，在现代化都市生活和工作中，存在不少有 害健康的因素，如拥挤狭小的生存空间，烟尘遮蔽的昏暗日光，充斥雾霾的混浊空气，有害物质超标的饮用水，过多化学添加剂的食品等。再加上紧张、快捷的生活 节奏，体能锻炼的缺乏、食用过多的垃圾食品以及化学药品的毒副作用等等。以上种种因素严重影响人们的健康，并造成许多疾病的高发，缩短了人们的生存寿命。 因此人类尤其是都市人群的生存品质需求及医疗品质需求的深化和提高，迫切呼唤更为自然，有效的治疗方法。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在现代医学中，把应用天然或人工的物理因数作用于人体，引起体内一系列生物学效应，通过神经、体液、内分泌和免疫等生理调节机制，达到保健、预防、治疗和康复目的方法，称为物理治疗，又简称理疗[2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　物理治疗在我国已有几十年的发展历史，是一门涉及多种知识的学科。物理治疗是无痛苦、无创伤治疗，很少引起身体的不适反应，副作用小，效果持久，反复多 次的治疗方法还可以产生治疗效果的叠加和累积作用。可同时运用多种疗法协同治疗，具有疗效确切、治疗费用低等优点，是康复医学的重要治疗手段之一[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　物理治疗直接作用于机体，能引起一系列的反应，这种反应大致分为三个阶段：物理反应阶段(物理因数与局部细胞及其周围基质相互作用，机体吸收能量)、理 化效应阶段(机体吸收能量后产生一系列生物物理、生物化学、生物磁学及电力学等理化反应)、生物效应阶段(局部理化效应的结果是引起细胞功能状态、体液回 圈、微循环和物质代谢的改变，使组织建立起新的营养代谢水准)。在物理因数的作用下，神经系统、内分泌体液系统等，各系统相互作用，引起机体产生复杂综合 的反应[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　物理治疗包括光疗(红外线光疗、紫外线光疗、可见光疗法、镭射疗法)、电疗(直流电疗：离子导入法等;低频电疗；中频电 疗;高频电疗等)、磁疗(静磁场疗法、脉冲磁场疗法、低频交变磁场疗法等)、声疗(治疗性超声波)、水疗(对比浴、漩涡浴、气泡浴等)、冷疗(冰敷、冰按 摩等)、热疗(热敷、蜡疗、透热疗法等)、力疗(牵引力、压力、撞击力、摩擦力等)等[1][4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　参考文献&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】乔志恒，范维铭等，物理治疗学全书，科学技术文献出版社&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】齐丽晶，浅谈物理治疗设备的风险与对策，中国医疗器械资讯，2011年&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】邸慧艳，综合医院开展物理治疗的现状与对策，西部中医药，2011年，第24卷，第8期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】陈旭，现代医学中物理治疗的综合概述，医疗装备，2007年，第5期&lt;/p&gt;\r\n', ''),
(23, 3, '環境、健康與物理治療', '&lt;p&gt;人，從出生起，無時無刻不在接受著各種物理因數的影響，如空氣、溫度、濕度、陽光等。這些因素直接影響著人體內部器官組織的功能變化，影響著人體生長和發育。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　人類在進化的過程中，通過長期與自然鬥爭，獲得了在一定條件下保持機體內環境平衡的能力，獲得了抵禦各種自然災害和抗病能力。人類為了適應各種自然環境變化，在漫長的歷史中，人體通過遺傳和變異的相互作用，形成一整套防病結構，其中包括屏障、細胞和體液因素等，維持著人體正常的生命活動[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　人與自然環境，在發展中維持動態平衡，舊的平衡不斷被打破，新的平衡又不斷的建立。自然環境對人體的作用有兩個方面：有利的一面和有害的一面。如適宜的陽光、空氣、水、食物(某些植物和動物)，都是人體新陳代謝不可缺少的。人體通過新陳代謝，與自然界進行著物質交換和能量交換，維持著人的生命活動，這是有利作用的一面；而有害作用的一面，像污染的空氣，不良的水質，惡劣的氣候條件，不合理的膳食等等，往往使人患病甚至造成死亡。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　隨著人們生活水準的提高、科學的進步，對人與自然、生命和健康關係的認識，已經發展到一個新的階段。人們更加深刻體會到，在現代化都市生活和工作中，存在不少有害健康的因素，如擁擠狹小的生存空間，煙塵遮蔽的昏暗日光，充斥霧霾的混濁空氣，有害物質超標的飲用水，過多化學添加劑的食品等。再加上緊張、快捷的生活節奏，體能鍛煉的缺乏、食用過多的垃圾食品以及化學藥品的毒副作用等等。以上種種因素嚴重影響人們的健康，並造成許多疾病的高發，縮短了人們的生存壽命。因此人類尤其是都市人群的生存品質需求及醫療品質需求的深化和提高，迫切呼喚更為自然，有效的治療方法。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在現代醫學中，把應用天然或人工的物理因數作用於人體，引起體內一系列生物學效應，通過神經、體液、內分泌和免疫等生理調節機制，達到保健、預防、治療和康復目的方法，稱為物理治療，又簡稱理療[2]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　物理治療在我國已有幾十年的發展歷史，是一門涉及多種知識的學科。物理治療是無痛苦、無創傷治療，很少引起身體的不適反應，副作用小，效果持久，反復多次的治療方法還可以產生治療效果的疊加和累積作用。可同時運用多種療法協同治療，具有療效確切、治療費用低等優點，是康復醫學的重要治療手段之一[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　物理治療直接作用於機體，能引起一系列的反應，這種反應大致分為三個階段：物理反應階段(物理因數與局部細胞及其周圍基質相互作用，機體吸收能量)、理化效應階段(機體吸收能量後產生一系列生物物理、生物化學、生物磁學及電力學等理化反應)、生物效應階段(局部理化效應的結果是引起細胞功能狀態、體液迴圈、微循環和物質代謝的改變，使組織建立起新的營養代謝水準)。在物理因數的作用下，神經系統、內分泌體液系統等，各系統相互作用，引起機體產生複雜綜合的反應[1]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　物理治療包括光療(紅外線光療、紫外線光療、可見光療法、鐳射療法)、電療(直流電療：離子導入法等;低頻電療；中頻電療;高頻電療等)、磁療(靜磁場療法、脈衝磁場療法、低頻交變磁場療法等)、聲療(治療性超聲波)、水療(對比浴、漩渦浴、氣泡浴等)、冷療(冰敷、冰按摩等)、熱療(熱敷、蠟療、透熱療法等)、力療(牽引力、壓力、撞擊力、摩擦力等)等[1][4]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　參考文獻&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【1】喬志恒，範維銘等，物理治療學全書，科學技術文獻出版社&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【2】齊麗晶，淺談物理治療設備的風險與對策，中國醫療器械資訊，2011年&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【3】邸慧豔，綜合醫院開展物理治療的現狀與對策，西部中醫藥，2011年，第24卷，第8期&lt;/p&gt;\r\n\r\n&lt;p&gt;　　【4】陳旭，現代醫學中物理治療的綜合概述，醫療裝備，2007年，第5期&lt;/p&gt;\r\n', ''),
(24, 3, '駿豐頻譜水理化性質的優化', '&lt;p&gt;水分子是極性分子，由一個氧原子和兩個氫原子組成(H2O)，氫原子和氧原子之間形成極性共價鍵，氫原子帶正電荷，氧原子帶負電荷，存在一個較大的偶極矩(1.85D)；單個水分子之間通過氫鍵作用形成團簇結構，且水中團簇結構處於一個動態平衡中(氫鍵的斷裂與形成是一個動態平衡過程)[1]；此外，飲用水中還存在一定的礦物質離子，因此水對外界電磁場是有一定的電磁回應。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　有文獻報導[2]，外加磁場能改變水分子團簇大小，因為水中氫鍵處於一種不停地斷開與結合的動態平衡中，外加磁場有利於平衡趨向氫鍵斷開的一邊，形成小分子團水。但是普通的磁場(包括普通的電磁場)處理的水並不穩定，很快就恢復到原水的狀態，需立即使用[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　駿豐頻譜水是經過駿豐頻譜水治療保健儀製作的水，駿豐頻譜水經過特殊電磁振盪頻譜的電磁場(簡稱頻譜場)處理，使其理化性質發生改變，成為不一樣的駿豐頻譜水。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　駿豐頻譜水的不一樣在理化性質改變方面具體體現在以下幾個方面：&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆經權威機構檢測，對比原水和駿豐頻譜水的17O核磁共振譜線，證實駿豐頻譜水的17O核磁共振譜線線寬變窄。另外，對駿豐頻譜水17O核磁共振譜線半峰寬進行了跟蹤測試，在6天內，半峰寬沒有發生變化。北京大學分析中心核磁共振專家呂木堅教授和清華大學聯合發表的論文《用17O核磁共振研究液態水的團簇結構》[4]中提到：“利用17O核磁共振譜線可以反映液態水團簇結構的平均相對大小，譜線越寬，團簇越大；譜線越窄，團簇越小。”駿豐頻譜水17O核磁共振譜線變窄，且在6天內半峰寬沒有發生變化，說明駿豐頻譜水分子團簇變小，且其比較穩定，能維持較長時間。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆通過測定駿豐頻譜水與自來水、血漿電導率頻譜，結果表明：a、駿豐頻譜水與原自來水的電導率頻譜明顯差異，駿豐頻譜水的電導率明顯高於處理前的自來水。b、與自來水比較，駿豐頻譜水的電導率頻譜曲線更接近血漿的電導率頻譜曲線。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆測定駿豐頻譜水的pH值發現，駿豐頻譜水的PH值比對照未處理的自來水的pH值高。實驗資料說明駿豐頻譜水的PH值發生了域移。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆駿豐頻譜水與對照未處理自來水溶解碳酸鈣(CaCO3,)溶解量比較實驗表明，駿豐頻譜水對CaCO3的溶解量較未處理的對照水提高。說明駿豐頻譜水的溶解力增加。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆根據檢測結果顯示，駿豐頻譜水中溶解氧含量相對未處理的對照水增高。研究表明，含氧量高的水(富氧水)對耐缺氧和緩解疲勞有一定的積極作用[5]。高原實驗人群觀察也表明，口服富氧水抗缺氧效果十分顯著[6]，可增加組織對氧的利用，改善微循環，預防急性高原病的發生[7]，頻譜水中溶解氧增加，表明頻譜水在一定程度上能增加對機體供氧。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆經檢測以自來水為原水的駿豐頻譜水氯仿含量降至1.7μg/L以下，遠低於國家規定的自來水中氯仿含量不超過60μg/L的要求。由於日常飲用的自來水是用氯氣來殺死水中的病菌和其它微生物，但也產生了一種有害致癌物質氯仿，駿豐頻譜水中氯仿含量降低，說明其能降低水中因氯仿給人體帶來的危害。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆經權威機構檢測，頻譜水的介電常數比未處理的水高，說明頻譜水中水分子極化率提高，推測頻譜水更好的與生物蛋白質分子作用，發揮生物學效應[8]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　正是由於以上種種實驗研究，表明駿豐頻譜水的物理化學性質發生改變，水由普通水變成為不一樣的駿豐頻譜水。&lt;/p&gt;\r\n', ''),
(24, 1, '駿豐頻譜水理化性質的優化', '&lt;p&gt;水分子是極性分子，由一個氧原子和兩個氫原子組成(H2O)，氫原子和氧原子之間形成極性共價鍵，氫原子帶正電荷，氧原子帶負電荷，存在一個較大的偶極矩(1.85D)；單個水分子之間通過氫鍵作用形成團簇結構，且水中團簇結構處於一個動態平衡中(氫鍵的斷裂與形成是一個動態平衡過程)[1]；此外，飲用水中還存在一定的礦物質離子，因此水對外界電磁場是有一定的電磁回應。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　有文獻報導[2]，外加磁場能改變水分子團簇大小，因為水中氫鍵處於一種不停地斷開與結合的動態平衡中，外加磁場有利於平衡趨向氫鍵斷開的一邊，形成小分子團水。但是普通的磁場(包括普通的電磁場)處理的水並不穩定，很快就恢復到原水的狀態，需立即使用[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　駿豐頻譜水是經過駿豐頻譜水治療保健儀製作的水，駿豐頻譜水經過特殊電磁振盪頻譜的電磁場(簡稱頻譜場)處理，使其理化性質發生改變，成為不一樣的駿豐頻譜水。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　駿豐頻譜水的不一樣在理化性質改變方面具體體現在以下幾個方面：&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆經權威機構檢測，對比原水和駿豐頻譜水的17O核磁共振譜線，證實駿豐頻譜水的17O核磁共振譜線線寬變窄。另外，對駿豐頻譜水17O核磁共振譜線半峰寬進行了跟蹤測試，在6天內，半峰寬沒有發生變化。北京大學分析中心核磁共振專家呂木堅教授和清華大學聯合發表的論文《用17O核磁共振研究液態水的團簇結構》[4]中提到：“利用17O核磁共振譜線可以反映液態水團簇結構的平均相對大小，譜線越寬，團簇越大；譜線越窄，團簇越小。”駿豐頻譜水17O核磁共振譜線變窄，且在6天內半峰寬沒有發生變化，說明駿豐頻譜水分子團簇變小，且其比較穩定，能維持較長時間。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆通過測定駿豐頻譜水與自來水、血漿電導率頻譜，結果表明：a、駿豐頻譜水與原自來水的電導率頻譜明顯差異，駿豐頻譜水的電導率明顯高於處理前的自來水。b、與自來水比較，駿豐頻譜水的電導率頻譜曲線更接近血漿的電導率頻譜曲線。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆測定駿豐頻譜水的pH值發現，駿豐頻譜水的PH值比對照未處理的自來水的pH值高。實驗資料說明駿豐頻譜水的PH值發生了域移。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆駿豐頻譜水與對照未處理自來水溶解碳酸鈣(CaCO3,)溶解量比較實驗表明，駿豐頻譜水對CaCO3的溶解量較未處理的對照水提高。說明駿豐頻譜水的溶解力增加。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆根據檢測結果顯示，駿豐頻譜水中溶解氧含量相對未處理的對照水增高。研究表明，含氧量高的水(富氧水)對耐缺氧和緩解疲勞有一定的積極作用[5]。高原實驗人群觀察也表明，口服富氧水抗缺氧效果十分顯著[6]，可增加組織對氧的利用，改善微循環，預防急性高原病的發生[7]，頻譜水中溶解氧增加，表明頻譜水在一定程度上能增加對機體供氧。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆經檢測以自來水為原水的駿豐頻譜水氯仿含量降至1.7μg/L以下，遠低於國家規定的自來水中氯仿含量不超過60μg/L的要求。由於日常飲用的自來水是用氯氣來殺死水中的病菌和其它微生物，但也產生了一種有害致癌物質氯仿，駿豐頻譜水中氯仿含量降低，說明其能降低水中因氯仿給人體帶來的危害。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆經權威機構檢測，頻譜水的介電常數比未處理的水高，說明頻譜水中水分子極化率提高，推測頻譜水更好的與生物蛋白質分子作用，發揮生物學效應[8]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　正是由於以上種種實驗研究，表明駿豐頻譜水的物理化學性質發生改變，水由普通水變成為不一樣的駿豐頻譜水。&lt;/p&gt;\r\n', '');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(24, 4, '骏丰频谱水理化性质的优化', '&lt;p&gt;水分子是极性分子，由一个氧原子和两个氢原子组成(H2O)，氢原子和氧原子之间形成极性共价键，氢原子带正电荷，氧原子带负电荷，存在一个较大的 偶极矩(1.85D)；单个水分子之间通过氢键作用形成团簇结构，且水中团簇结构处于一个动态平衡中(氢键的断裂与形成是一个动态平衡过程)[1]；此 外，饮用水中还存在一定的矿物质离子，因此水对外界电磁场是有一定的电磁回应。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　有文献报导[2]，外加磁场能改变水分子团簇大小，因为水中氢键处于一种不停地断开与结合的动态平衡中，外加磁场有利于平衡趋向氢键断开的一边，形成小分子团水。但是普通的磁场(包括普通的电磁场)处理的水并不稳定，很快就恢复到原水的状态，需立即使用[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　骏丰频谱水是经过骏丰频谱水治疗保健仪制作的水，骏丰频谱水经过特殊电磁振荡频谱的电磁场(简称频谱场)处理，使其理化性质发生改变，成为不一样的骏丰频谱水。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　骏丰频谱水的不一样在理化性质改变方面具体体现在以下几个方面：&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　◆经权威机构检测，对比原水和骏丰频谱水的17O核磁共振谱线，证实骏丰频谱水的17O核磁共振谱线线宽变窄。另外，对骏丰频谱水17O核磁共振谱线半 峰宽进行了跟踪测试，在6天内，半峰宽没有发生变化。北京大学分析中心核磁共振专家吕木坚教授和清华大学联合发表的论文《用17O核磁共振研究液态水的团 簇结构》[4]中提到：“利用17O核磁共振谱线可以反映液态水团簇结构的平均相对大小，谱线越宽，团簇越大；谱线越窄，团簇越小。”骏丰频谱水17O核 磁共振谱线变窄，且在6天内半峰宽没有发生变化，说明骏丰频谱水分子团簇变小，且其比较稳定，能维持较长时间。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆通过测定骏丰频谱水与自来水、血浆电导率频谱，结果表明：a、骏丰频谱水与原自来水的电导率频谱明显差异，骏丰频谱水的电导率明显高于处理前的自来水。b、与自来水比较，骏丰频谱水的电导率频谱曲线更接近血浆的电导率频谱曲线。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆测定骏丰频谱水的pH值发现，骏丰频谱水的PH值比对照未处理的自来水的pH值高。实验资料说明骏丰频谱水的PH值发生了域移。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆骏丰频谱水与对照未处理自来水溶解碳酸钙(CaCO3,)溶解量比较实验表明，骏丰频谱水对CaCO3的溶解量较未处理的对照水提高。说明骏丰频谱水的溶解力增加。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　◆根据检测结果显示，骏丰频谱水中溶解氧含量相对未处理的对照水增高。研究表明，含氧量高的水(富氧水)对耐缺氧和缓解疲劳有一定的积极作用[5]。高 原实验人群观察也表明，口服富氧水抗缺氧效果十分显著[6]，可增加组织对氧的利用，改善微循环，预防急性高原病的发生[7]，频谱水中溶解氧增加，表明 频谱水在一定程度上能增加对机体供氧。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆经检测以自来水为原水的骏丰频谱水氯仿含量降至1.7μg/L以下，远低于国家规定的自来水中 氯仿含量不超过60μg/L的要求。由于日常饮用的自来水是用氯气来杀死水中的病菌和其它微生物，但也产生了一种有害致癌物质氯仿，骏丰频谱水中氯仿含量 降低，说明其能降低水中因氯仿给人体带来的危害。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　◆经权威机构检测，频谱水的介电常数比未处理的水高，说明频谱水中水分子极化率提高，推测频谱水更好的与生物蛋白质分子作用，发挥生物学效应[8]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　正是由于以上种种实验研究，表明骏丰频谱水的物理化学性质发生改变，水由普通水变成为不一样的骏丰频谱水。&lt;/p&gt;\r\n', ''),
(25, 3, '駿豐紅外頻譜新技術', '&lt;p&gt;研究證明[1,2]，紅外線對人體皮膚及皮下組織有一定的穿透能力，用紅外線照射體表，可引起皮膚及皮下組織細胞內外分子振動加劇，產生熱效應和非熱效應[2]，啟動生物大分子和水分子，從而啟動細胞，產生積極的生物醫學效應。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　紅外線照射時皮膚及皮下組織將吸收的紅外線能量轉變成熱，熱可以引起血管擴張、血流加速、局部血液迴圈改善、組織的營養代謝加強;由於血液迴圈的改善，可以加快局部滲出物吸收，從而促進腫脹消退；同時熱作用時骨骼肌肌張力降低及胃腸平滑肌鬆弛，蠕動減弱；熱可降低感覺神經興奮性，干擾痛閾，同時血液迴圈的改善、缺血缺氧的好轉、滲出物的吸收、腫脹的消退、痙攣的緩解等，都有利於疼痛緩解；此外，熱作用使局部溫度升高，水分蒸發，對於滲出性病變使其表層組織乾燥、結痂、制止進一步滲出[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　廣東駿豐頻譜股份有限公司與國家科研院所合作，利用新材料、新技術和新工藝，開發出一種具有紅外頻譜(紅外線)生物效應和負離子效應雙重功效的紅外頻譜輻射技術。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　自然界的許多材料都具有一定的紅外發射率，若需進一步提高其發射率，可以減小其顆粒的粒徑，這是因為顆粒越小，比表面積就越大，分佈在表面的原子就越多，顆粒的表面活性就增加，從而材料的發射率就得以提高。駿豐頻譜紅外發生裝置採用具有較高紅外發射率的新紅外線輻射材料，並利用微納米工藝技術將材料製成細微性分佈均勻的微納米級顆粒。不但提高了輻射材料的法向全發射率，而且在同一配方情況下，微納米化前後，紅外輻射塗層的輻射峰值波長範圍也發生了變化，與人體吸收的波長更匹配。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　駿豐頻譜紅外發生裝置採用環保高性能水性成膜劑技術，固化成形負離子遠紅外頻譜塗層，具有三大特色：(1)頻譜發生器輻射層室溫固化成形，製造設備簡單，製造能耗顯著降低，更加節能環保。(2)採用有機物/無機物微觀複合技術，消除了塗層的開裂、脫落等現象，增強了紅外頻譜發生層的粘接牢度等機械性能，使其更加堅固耐用，性能更穩定，使用壽命更長，治療保健功效更佳。(3) 微納米塗層材料比表面積大，適用基材範圍廣，在各種基材上均可穩固吸附，塗層附著力顯著提高，此外微納米顆粒特有的視覺效應，使頻譜塗層更加美觀大方。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　國家紅外及工業電熱產品品質監督檢驗中心的檢測結果顯示，駿豐頻譜紅外發生裝置這種兼具遠紅外效應和負離子效應的新型頻譜發生器，其工業化產品的法向全發射率達到0.87，在同類產品中居領先地位；更重要的是，在其相對輻射頻譜曲線中，輻射峰值波長範圍在8～10μm左右，與人體的最佳吸收波長9.35μm非常匹配。&lt;/p&gt;\r\n', ''),
(25, 1, '駿豐紅外頻譜新技術', '&lt;p&gt;研究證明[1,2]，紅外線對人體皮膚及皮下組織有一定的穿透能力，用紅外線照射體表，可引起皮膚及皮下組織細胞內外分子振動加劇，產生熱效應和非熱效應[2]，啟動生物大分子和水分子，從而啟動細胞，產生積極的生物醫學效應。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　紅外線照射時皮膚及皮下組織將吸收的紅外線能量轉變成熱，熱可以引起血管擴張、血流加速、局部血液迴圈改善、組織的營養代謝加強;由於血液迴圈的改善，可以加快局部滲出物吸收，從而促進腫脹消退；同時熱作用時骨骼肌肌張力降低及胃腸平滑肌鬆弛，蠕動減弱；熱可降低感覺神經興奮性，干擾痛閾，同時血液迴圈的改善、缺血缺氧的好轉、滲出物的吸收、腫脹的消退、痙攣的緩解等，都有利於疼痛緩解；此外，熱作用使局部溫度升高，水分蒸發，對於滲出性病變使其表層組織乾燥、結痂、制止進一步滲出[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　廣東駿豐頻譜股份有限公司與國家科研院所合作，利用新材料、新技術和新工藝，開發出一種具有紅外頻譜(紅外線)生物效應和負離子效應雙重功效的紅外頻譜輻射技術。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　自然界的許多材料都具有一定的紅外發射率，若需進一步提高其發射率，可以減小其顆粒的粒徑，這是因為顆粒越小，比表面積就越大，分佈在表面的原子就越多，顆粒的表面活性就增加，從而材料的發射率就得以提高。駿豐頻譜紅外發生裝置採用具有較高紅外發射率的新紅外線輻射材料，並利用微納米工藝技術將材料製成細微性分佈均勻的微納米級顆粒。不但提高了輻射材料的法向全發射率，而且在同一配方情況下，微納米化前後，紅外輻射塗層的輻射峰值波長範圍也發生了變化，與人體吸收的波長更匹配。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　駿豐頻譜紅外發生裝置採用環保高性能水性成膜劑技術，固化成形負離子遠紅外頻譜塗層，具有三大特色：(1)頻譜發生器輻射層室溫固化成形，製造設備簡單，製造能耗顯著降低，更加節能環保。(2)採用有機物/無機物微觀複合技術，消除了塗層的開裂、脫落等現象，增強了紅外頻譜發生層的粘接牢度等機械性能，使其更加堅固耐用，性能更穩定，使用壽命更長，治療保健功效更佳。(3) 微納米塗層材料比表面積大，適用基材範圍廣，在各種基材上均可穩固吸附，塗層附著力顯著提高，此外微納米顆粒特有的視覺效應，使頻譜塗層更加美觀大方。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　國家紅外及工業電熱產品品質監督檢驗中心的檢測結果顯示，駿豐頻譜紅外發生裝置這種兼具遠紅外效應和負離子效應的新型頻譜發生器，其工業化產品的法向全發射率達到0.87，在同類產品中居領先地位；更重要的是，在其相對輻射頻譜曲線中，輻射峰值波長範圍在8～10μm左右，與人體的最佳吸收波長9.35μm非常匹配。&lt;/p&gt;\r\n', ''),
(25, 4, '骏丰红外频谱新技术', '&lt;p&gt;研究证明[1,2]，红外线对人体皮肤及皮下组织有一定的穿透能力，用红外线照射体表，可引起皮肤及皮下组织细胞内外分子振动加剧，产生热效应和非热效应[2]，启动生物大分子和水分子，从而启动细胞，产生积极的生物医学效应。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　红外线照射时皮肤及皮下组织将吸收的红外线能量转变成热，热可以引起血管扩张、血流加速、局部血液回圈改善、组织的营养代谢加强;由于血液回圈的改善， 可以加快局部渗出物吸收，从而促进肿胀消退；同时热作用时骨骼肌肌张力降低及胃肠平滑肌松弛，蠕动减弱；热可降低感觉神经兴奋性，干扰痛阈，同时血液回圈 的改善、缺血缺氧的好转、渗出物的吸收、肿胀的消退、痉挛的缓解等，都有利于疼痛缓解；此外，热作用使局部温度升高，水分蒸发，对于渗出性病变使其表层组 织干燥、结痂、制止进一步渗出[3]。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　广东骏丰频谱股份有限公司与国家科研院所合作，利用新材料、新技术和新工艺，开发出一种具有红外频谱(红外线)生物效应和负离子效应双重功效的红外频谱辐射技术。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　自然界的许多材料都具有一定的红外发射率，若需进一步提高其发射率，可以减小其颗粒的粒径，这是因为颗粒越小，比表面积就越大，分布在表面的原子就越 多，颗粒的表面活性就增加，从而材料的发射率就得以提高。骏丰频谱红外发生装置采用具有较高红外发射率的新红外线辐射材料，并利用微纳米工艺技术将材料制 成细微性分布均匀的微纳米级颗粒。不但提高了辐射材料的法向全发射率，而且在同一配方情况下，微纳米化前后，红外辐射涂层的辐射峰值波长范围也发生了变 化，与人体吸收的波长更匹配。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　骏丰频谱红外发生装置采用环保高性能水性成膜剂技术，固化成形负离子远红外频谱涂层，具有三大特 色：(1)频谱发生器辐射层室温固化成形，制造设备简单，制造能耗显著降低，更加节能环保。(2)采用有机物/无机物微观复合技术，消除了涂层的开裂、脱 落等现象，增强了红外频谱发生层的粘接牢度等机械性能，使其更加坚固耐用，性能更稳定，使用寿命更长，治疗保健功效更佳。(3) 微纳米涂层材料比表面积大，适用基材范围广，在各种基材上均可稳固吸附，涂层附着力显著提高，此外微纳米颗粒特有的视觉效应，使频谱涂层更加美观大方。&lt;/p&gt;\r\n\r\n&lt;p&gt;　 　国家红外及工业电热产品品质监督检验中心的检测结果显示，骏丰频谱红外发生装置这种兼具远红外效应和负离子效应的新型频谱发生器，其工业化产品的法向全 发射率达到0.87，在同类产品中居领先地位；更重要的是，在其相对辐射频谱曲线中，辐射峰值波长范围在8～10μm左右，与人体的最佳吸收波长 9.35μm非常匹配。&lt;/p&gt;\r\n', ''),
(35, 3, '一位世界冠軍與駿豐結緣 - 何灼強', '&lt;p&gt;&amp;nbsp;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/article/user/ - 一位世界冠軍與駿豐結緣.jpg&quot; style=&quot;width: 382px; height: 300px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 2008年5月7日，廣州萬人空巷，2008年北京奧運會火炬傳遞活動在這裡進行。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在208位火炬手當中，有一位與駿豐頻譜公司有著深厚情誼。他，就是有“九破一超”之稱的舉重世界冠軍何灼強。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼強，1967年生於廣東南海，是我國20世紀80年代著名的舉重運動員。13歲進入少年體校開始練習舉重，14歲進入廣東舉重隊。自1984年起，曾9次打破世界舉重紀錄，一次超世界紀錄，成為我國第一位創造舉重總成績世界紀錄的運動員，也是打破世界紀錄最多的舉重運動員之一。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼強現任職於廣州體育學院競賽訓練處，為培養更多的冠軍而默默耕耘。談到成為奧運火炬手，何灼強說，奧運會在我們祖國舉行是一件很鼓舞人心的事，自己能成為火炬手，更是覺得非常驕傲與自豪。雖然每一個火炬手只是跑短短的兩百米，但何灼強卻不放鬆，他堅持每天跑步，爭取以最佳的狀態去跑這兩百米。當被問到手握火炬時是什麼心情時，何灼強顯得特別激動:“看到聖火向自己靠近時感覺很神聖，到自己接握火炬時，更多的是感到開心與激動。”&lt;/p&gt;\r\n\r\n&lt;p&gt;　　然而，何灼強說，當天還是有一個遺憾的，那就是他本來想戴著印有駿豐頻譜標誌的護腕去跑的，但因為組委會對於火炬手的著裝有嚴格規定，這個想法最終無法實現。究竟是什麼令這位世界冠軍對駿豐頻譜如此有深厚感情呢?&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼強說，以前當運動員的時候，受傷是家常便飯。而從事舉重運動，手、肩、膝蓋和腰這些部位是受傷最多的。他們一般是通過按摩、康復治療、吃中藥調理等來治療，但都恢復得比較慢。後來，他接觸到了頻譜儀，受傷的時候也用頻譜儀進行輔助治療，效果很不錯，恢復也快了。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 在2007年，由駿豐頻譜公司全程贊助的“關注南極冰川融化”環保活動向社會公開招募環保志願者，何灼強得知消息後便毅然報名了，最後在眾多的報名者中脫穎而出，成功當選為南極環保免費志願者，與駿豐頻譜公司總裁陳險峰、廣東省科學家運動探險俱樂部CEO黎宇宇組成“南極環保三劍客”出征南極，開展了一系列環保活動。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼強說，當運動員時經常出國，但這次南極之行是最特別的，他從來沒有見過如此冰天雪地的地方，而景色卻又是如此迷人，一切都是那麼的美麗與神聖。然而，給他留下最深印象的，卻是人類環保意識的缺失。他親眼看到了因全球氣候變暖而導致的南極冰川融化，還有各國在南極留下的令人觸目驚心的污染物。現在奧運會在我們中國舉行，我們喊出了綠色奧運的口號，希望把這次奧運成功辦成一屆綠色環保的奧運。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　南極之行後，何灼強對於駿豐頻譜也有了更深的理解與認同。他認為，駿豐頻譜從事的是非藥物的綠色保健事業，在自身發展的同時還能開展這種有益於社會的活動很難能可貴。希望能夠借助駿豐頻譜的影響力，呼籲更多的企業和人參與環保。&lt;/p&gt;\r\n', '2008年5月7日，廣州萬人空巷，2008年北京奧運會火炬傳遞活動在這裡進行。\r\n在208位火炬手當中，有一位與駿豐頻譜公司有著深厚情誼。他，就是有“九破一超”之稱的舉重世界冠軍何灼強。\r\n'),
(35, 1, '一位世界冠軍與駿豐結緣 - 何灼強', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/article/user/ - 一位世界冠軍與駿豐結緣.jpg&quot; style=&quot;width: 382px; height: 300px;&quot; /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 2008年5月7日，廣州萬人空巷，2008年北京奧運會火炬傳遞活動在這裡進行。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在208位火炬手當中，有一位與駿豐頻譜公司有著深厚情誼。他，就是有“九破一超”之稱的舉重世界冠軍何灼強。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼強，1967年生於廣東南海，是我國20世紀80年代著名的舉重運動員。13歲進入少年體校開始練習舉重，14歲進入廣東舉重隊。自1984年起，曾9次打破世界舉重紀錄，一次超世界紀錄，成為我國第一位創造舉重總成績世界紀錄的運動員，也是打破世界紀錄最多的舉重運動員之一。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼強現任職於廣州體育學院競賽訓練處，為培養更多的冠軍而默默耕耘。談到成為奧運火炬手，何灼強說，奧運會在我們祖國舉行是一件很鼓舞人心的事，自己能成為火炬手，更是覺得非常驕傲與自豪。雖然每一個火炬手只是跑短短的兩百米，但何灼強卻不放鬆，他堅持每天跑步，爭取以最佳的狀態去跑這兩百米。當被問到手握火炬時是什麼心情時，何灼強顯得特別激動:“看到聖火向自己靠近時感覺很神聖，到自己接握火炬時，更多的是感到開心與激動。”&lt;/p&gt;\r\n\r\n&lt;p&gt;　　然而，何灼強說，當天還是有一個遺憾的，那就是他本來想戴著印有駿豐頻譜標誌的護腕去跑的，但因為組委會對於火炬手的著裝有嚴格規定，這個想法最終無法實現。究竟是什麼令這位世界冠軍對駿豐頻譜如此有深厚感情呢?&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼強說，以前當運動員的時候，受傷是家常便飯。而從事舉重運動，手、肩、膝蓋和腰這些部位是受傷最多的。他們一般是通過按摩、康復治療、吃中藥調理等來治療，但都恢復得比較慢。後來，他接觸到了頻譜儀，受傷的時候也用頻譜儀進行輔助治療，效果很不錯，恢復也快了。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 在2007年，由駿豐頻譜公司全程贊助的“關注南極冰川融化”環保活動向社會公開招募環保志願者，何灼強得知消息後便毅然報名了，最後在眾多的報名者中脫穎而出，成功當選為南極環保免費志願者，與駿豐頻譜公司總裁陳險峰、廣東省科學家運動探險俱樂部CEO黎宇宇組成“南極環保三劍客”出征南極，開展了一系列環保活動。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼強說，當運動員時經常出國，但這次南極之行是最特別的，他從來沒有見過如此冰天雪地的地方，而景色卻又是如此迷人，一切都是那麼的美麗與神聖。然而，給他留下最深印象的，卻是人類環保意識的缺失。他親眼看到了因全球氣候變暖而導致的南極冰川融化，還有各國在南極留下的令人觸目驚心的污染物。現在奧運會在我們中國舉行，我們喊出了綠色奧運的口號，希望把這次奧運成功辦成一屆綠色環保的奧運。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　南極之行後，何灼強對於駿豐頻譜也有了更深的理解與認同。他認為，駿豐頻譜從事的是非藥物的綠色保健事業，在自身發展的同時還能開展這種有益於社會的活動很難能可貴。希望能夠借助駿豐頻譜的影響力，呼籲更多的企業和人參與環保。&lt;/p&gt;\r\n', '2008年5月7日，廣州萬人空巷，2008年北京奧運會火炬傳遞活動在這裡進行。\r\n在208位火炬手當中，有一位與駿豐頻譜公司有著深厚情誼。他，就是有“九破一超”之稱的舉重世界冠軍何灼強。\r\n'),
(35, 4, '一位世界冠军与骏丰结缘 - 何灼强', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/article/user/ - 一位世界冠軍與駿豐結緣.jpg&quot; style=&quot;width: 382px; height: 300px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 2008年5月7日，广州万人空巷，2008年北京奥运会火炬传递活动在这里进行。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　在208位火炬手当中，有一位与骏丰频谱公司有着深厚情谊。他，就是有“九破一超”之称的举重世界冠军何灼强。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼强，1967年生于广东南海，是我国20世纪80年代著名的举重运动员。13岁进入少年体校开始练习举重，14岁进入广东举重队。自1984年起，曾9次打破世界举重纪录，一次超世界纪录，成为我国第一位创造举重总成绩世界纪录的运动员，也是打破世界纪录最多的举重运动员之一。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼强现任职于广州体育学院竞赛训练处，为培养更多的冠军而默默耕耘。谈到成为奥运火炬手，何灼强说，奥运会在我们祖国举行是一件很鼓舞人心的事，自己能成为火炬手，更是觉得非常骄傲与自豪。虽然每一个火炬手只是跑短短的两百米，但何灼强却不放松，他坚持每天跑步，争取以最佳的状态去跑这两百米。当被问到手握火炬时是什么心情时，何灼强显得特别激动:“看到圣火向自己靠近时感觉很神圣，到自己接握火炬时，更多的是感到开心与激动。”&lt;/p&gt;\r\n\r\n&lt;p&gt;　　然而，何灼强说，当天还是有一个遗憾的，那就是他本来想戴着印有骏丰频谱标志的护腕去跑的，但因为组委会对于火炬手的着装有严格规定，这个想法最终无法实现。究竟是什么令这位世界冠军对骏丰频谱如此有深厚感情呢?&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼强说，以前当运动员的时候，受伤是家常便饭。而从事举重运动，手、肩、膝盖和腰这些部位是受伤最多的。他们一般是通过按摩、康复治疗、吃中药调理等来治疗，但都恢复得比较慢。后来，他接触到了频谱仪，受伤的时候也用频谱仪进行辅助治疗，效果很不错，恢复也快了。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 在2007年，由骏丰频谱公司全程赞助的“关注南极冰川融化”环保活动向社会公开招募环保志愿者，何灼强得知消息后便毅然报名了，最后在众多的报名者中脱颖而出，成功当选为南极环保免费志愿者，与骏丰频谱公司总裁陈险峰、广东省科学家运动探险俱乐部CEO黎宇宇组成“南极环保三剑客”出征南极，开展了一系列环保活动。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　何灼强说，当运动员时经常出国，但这次南极之行是最特别的，他从来没有见过如此冰天雪地的地方，而景色却又是如此迷人，一切都是那么的美丽与神圣。然而，给他留下最深印象的，却是人类环保意识的缺失。他亲眼看到了因全球气候变暖而导致的南极冰川融化，还有各国在南极留下的令人触目惊心的污染物。现在奥运会在我们中国举行，我们喊出了绿色奥运的口号，希望把这次奥运成功办成一届绿色环保的奥运。&lt;/p&gt;\r\n\r\n&lt;p&gt;　　南极之行后，何灼强对于骏丰频谱也有了更深的理解与认同。他认为，骏丰频谱从事的是非药物的绿色保健事业，在自身发展的同时还能开展这种有益于社会的活动很难能可贵。希望能够借助骏丰频谱的影响力，呼吁更多的企业和人参与环保。&lt;/p&gt;\r\n', '2008年5月7日，广州万人空巷，2008年北京奥运会火炬传递活动在这里进行。\r\n在208位火炬手当中，有一位与骏丰频谱公司有着深厚情谊。他，就是有“九破一超”之称的举重世界冠军何灼强。\r\n'),
(34, 3, '秦凱吳敏霞世錦賽再奪冠駿豐頻譜康復保健全程助力', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015世界游泳錦標賽近日於俄羅斯喀山順利舉行，來自世界各地的代表團和頂尖選手競相登場。中國代表團保持了上屆世錦賽以來的良好狀態，在7月28日的女子雙人3米板的比賽中，我國跳水名將吳敏霞憑藉著近乎完美的表現，連續第七次奪得了金牌，創造出了一項前無古人的歷史佳績。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;而吳敏霞奪得七連冠後的第二天，中國代表團再次傳來捷報。我國泳界常勝將軍秦凱在跳水男子雙人三米板中與隊友曹緣完美配合，順利奪得冠軍，實現了中國男雙三米板世錦賽六連冠的佳績。秦凱也在獲得了個人世錦賽五連冠的同時，成為了超越前輩田亮的新一代“雙人跳水之王”。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;在賽後的採訪中，兩人均表示這一路下來非常不容易。而此次之所以能獲得這樣的好成績，不僅因為平時的刻苦訓練，還因為一直以來得到了團隊所有成員的幫助和後勤保障。自今年年初與國家體育總局達成長期戰略性合作後，廣東駿豐頻譜股份有限公司旗下的以“內喝外照”為特點的頻譜治療保健系列產品便成為了“體育･訓練局國家隊運動員頻譜康復保健產品”，為超過1000名頂尖運動員和約13支國家運動隊提供健康呵護，助力國家隊運動員的日常訓練康復。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;經過近半年的使用，駿豐頻譜治療保健產品獲得了國家體育總局訓練局內運動員們的普遍歡迎和點贊。泳壇女神吳敏霞在一次採訪中表示：“運動員們都非常放心使用與訓練局進行合作的駿豐頻譜產品。平時訓練完後使用，對體能恢復、消除疲勞都有很好的效果。”&lt;br /&gt;\r\n			而新一代的跳臺之王秦凱也是駿豐頻譜保健產品的忠實擁躉。在7月初於北京舉行的駿豐頻譜“百歲健步走·助力申冬奧”活動上，奧運冠軍秦凱親自為現場近300名觀眾介紹運動健康心得，並在採訪時表示：”作為國家隊運動員，每日身體負荷非常大，加之平時訓練的確非常辛苦，所以在訓練之後要做一些理療康復。而駿豐頻譜為我們提供了包括駿豐頻譜水治療保健儀等產品，由內而外地促進了我們日常的訓練康復。”&lt;br /&gt;\r\n			相信隨著本屆游泳世錦賽的進行，中國代表隊還將斬獲更多榮譽。而駿豐頻譜持續開展的一系列“百歲健步走·助力申冬奧”活動也獲得了回報，在7月31日的國際奧會全會上，國際奧會宣佈2022年冬奧會花落中國。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(34, 4, '秦凯吴敏霞世锦赛再夺冠骏丰频谱康复保健全程助力', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015 世界游泳锦标赛近日于俄罗斯喀山顺利举行，来自世界各地的代表团和顶尖选手竞相登场。中国代表团保持了上届世锦赛以来的良好状态，在7月28日的女子双人 3米板的比赛中，我国跳水名将吴敏霞凭藉着近乎完美的表现，连续第七次夺得了金牌，创造出了一项前无古人的历史佳绩。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;而吴敏霞夺得七连冠后的第二天，中国代表团再次传来捷报。我国泳界常胜将军秦凯在跳水男子双人三米板中与队友曹缘完美配合，顺利夺得冠军，实现了中国男双三米板世锦赛六连冠的佳绩。秦凯也在获得了个人世锦赛五连冠的同时，成为了超越前辈田亮的新一代“双人跳水之王”。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;在 赛后的采访中，两人均表示这一路下来非常不容易。而此次之所以能获得这样的好成绩，不仅因为平时的刻苦训练，还因为一直以来得到了团队所有成员的帮助和后 勤保障。自今年年初与国家体育总局达成长期战略性合作后，广东骏丰频谱股份有限公司旗下的以“内喝外照”为特点的频谱治疗保健系列产品便成为了“体育･训 练局国家队运动员频谱康复保健产品”，为超过1000名顶尖运动员和约13支国家运动队提供健康呵护，助力国家队运动员的日常训练康复。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;经过近半年的使用，骏丰频谱治疗保健产品获得了国家体育总局训练局内运动员们的普遍欢迎和点赞。泳坛女神吴敏霞在一次采访中表示：“运动员们都非常放心使用与训练局进行合作的骏丰频谱产品。平时训练完后使用，对体能恢复、消除疲劳都有很好的效果。”&lt;br /&gt;\r\n			而 新一代的跳台之王秦凯也是骏丰频谱保健产品的忠实拥趸。在7月初于北京举行的骏丰频谱“百岁健步走·助力申冬奥”活动上，奥运冠军秦凯亲自为现场近300 名观众介绍运动健康心得，并在采访时表示：”作为国家队运动员，每日身体负荷非常大，加之平时训练的确非常辛苦，所以在训练之后要做一些理疗康复。而骏丰 频谱为我们提供了包括骏丰频谱水治疗保健仪等产品，由内而外地促进了我们日常的训练康复。”&lt;br /&gt;\r\n			相信随着本届游泳世锦赛的进行，中国代表队还将斩获更多荣誉。而骏丰频谱持续开展的一系列“百岁健步走·助力申冬奥”活动也获得了回报，在7月31日的国际奥会全会上，国际奥会宣布2022年冬奥会花落中国。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(34, 1, '秦凱吳敏霞世錦賽再奪冠駿豐頻譜康復保健全程助力', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015 世界游泳錦標賽近日於俄羅斯喀山順利舉行，來自世界各地的代表團和頂尖選手競相登場。中國代表團保持了上屆世錦賽以來的良好狀態，在7月28日的女子雙人 3米板的比賽中，我國跳水名將吳敏霞憑藉著近乎完美的表現，連續第七次奪得了金牌，創造出了一項前無古人的歷史佳績。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;而吳敏霞奪得七連冠後的第二天，中國代表團再次傳來捷報。我國泳界常勝將軍秦凱在跳水男子雙人三米板中與隊友曹緣完美配合，順利奪得冠軍，實現了中國男雙三米板世錦賽六連冠的佳績。秦凱也在獲得了個人世錦賽五連冠的同時，成為了超越前輩田亮的新一代“雙人跳水之王”。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;在 賽後的採訪中，兩人均表示這一路下來非常不容易。而此次之所以能獲得這樣的好成績，不僅因為平時的刻苦訓練，還因為一直以來得到了團隊所有成員的幫助和後 勤保障。自今年年初與國家體育總局達成長期戰略性合作後，廣東駿豐頻譜股份有限公司旗下的以“內喝外照”為特點的頻譜治療保健系列產品便成為了“體育･訓 練局國家隊運動員頻譜康復保健產品”，為超過1000名頂尖運動員和約13支國家運動隊提供健康呵護，助力國家隊運動員的日常訓練康復。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news09/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;經過近半年的使用，駿豐頻譜治療保健產品獲得了國家體育總局訓練局內運動員們的普遍歡迎和點贊。泳壇女神吳敏霞在一次採訪中表示：“運動員們都非常放心使用與訓練局進行合作的駿豐頻譜產品。平時訓練完後使用，對體能恢復、消除疲勞都有很好的效果。”&lt;br /&gt;\r\n			而 新一代的跳臺之王秦凱也是駿豐頻譜保健產品的忠實擁躉。在7月初於北京舉行的駿豐頻譜“百歲健步走·助力申冬奧”活動上，奧運冠軍秦凱親自為現場近300 名觀眾介紹運動健康心得，並在採訪時表示：”作為國家隊運動員，每日身體負荷非常大，加之平時訓練的確非常辛苦，所以在訓練之後要做一些理療康復。而駿豐 頻譜為我們提供了包括駿豐頻譜水治療保健儀等產品，由內而外地促進了我們日常的訓練康復。”&lt;br /&gt;\r\n			相信隨著本屆游泳世錦賽的進行，中國代表隊還將斬獲更多榮譽。而駿豐頻譜持續開展的一系列“百歲健步走·助力申冬奧”活動也獲得了回報，在7月31日的國際奧會全會上，國際奧會宣佈2022年冬奧會花落中國。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(33, 4, '骏丰频谱为“中国飞人”苏炳添加油', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;5月31日凌晨，在美国尤金举行的2015年国际田联钻石联赛尤金站比赛，中国飞人苏炳添在男子100米比赛中，以9秒99的成绩并列获得季军。苏炳添就此成为历史上首位突破10秒大关的黄种人，也创造了新的全国纪录，完成了中国几代“飞人”的夙愿。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news08/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;2012年8月4日，在伦敦奥运会上，苏炳添就成为中国第一位晋级奥运会男子百米半决赛的短跑选手，创造了历史。此次钻石联赛美国尤金站决赛，苏炳添更以9秒99的成绩打破由张培萌保持的10秒整的全国纪录。&lt;/p&gt;\r\n\r\n			&lt;p&gt;从赛季之初的10秒10、10秒06到9秒99，苏炳添正式踏上新台阶。“对于高手来说，零点几秒的进步都很艰难，可以说苏炳添进步来源于新技术。”北京体育大学田径教授熊西北认为，在预防伤病的情况下，苏炳添的成绩还能上台阶。&lt;/p&gt;\r\n\r\n			&lt;p&gt;众 所周知，运动员在比赛及日常训练过程中时常发生伤病，需要及时治疗，高强度的体力消耗之后也需要科学的体能恢复。所以康复保健是运动员日常训练中非常重要 的一环，对于国家队运动员来说尤其如此。苏炳添所在的中国田径队是国家体育总局训练局13支驻训国家队之一，每逢大赛前后，运动员都要在训练局进行训练康 复。&lt;/p&gt;\r\n\r\n			&lt;p&gt;今年，国家体育总局训练局通过层层筛选和多次实地考察，引进了骏丰频谱“内喝外照”系列治疗保健产品，利用高科技的现代化生物频谱技术更好地满足国家队运动员的日常康复保健需求。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;目前，骏丰频谱水治疗保健仪、骏丰频谱治疗保健仪、骏丰频谱治疗保健房等产品已经在训练局被13支驻训国家队运动员广泛使用，并受到吴敏霞、冯喆、罗玉通等著名运动员的好评。&lt;/p&gt;\r\n\r\n			&lt;p&gt;接下来，苏炳添将备战8月份的世界田径锦标赛，骏丰频谱“内喝外照”产品将持续为苏炳添及其他13支国家队运动员的健康保驾护航，助力驻训运动员在2016年里约热内卢奥运会实现夺冠梦!&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news08/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(33, 3, '駿豐頻譜為“中國飛人”蘇炳添加油', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;5月31日淩晨，在美國尤金舉行的2015年國際田聯鑽石聯賽尤金站比賽，中國飛人蘇炳添在男子100米比賽中，以9秒99的成績並列獲得季軍。蘇炳添就此成為歷史上首位突破10秒大關的黃種人，也創造了新的全國紀錄，完成了中國幾代“飛人”的夙願。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news08/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;2012年8月4日，在倫敦奧運會上，蘇炳添就成為中國第一位晉級奧運會男子百米半決賽的短跑選手，創造了歷史。此次鑽石聯賽美國尤金站決賽，蘇炳添更以9秒99的成績打破由張培萌保持的10秒整的全國紀錄。&lt;/p&gt;\r\n\r\n			&lt;p&gt;從賽季之初的10秒10、10秒06到9秒99，蘇炳添正式踏上新台階。“對於高手來說，零點幾秒的進步都很艱難，可以說蘇炳添進步來源於新技術。”北京體育大學田徑教授熊西北認為，在預防傷病的情況下，蘇炳添的成績還能上臺階。&lt;/p&gt;\r\n\r\n			&lt;p&gt;眾 所周知，運動員在比賽及日常訓練過程中時常發生傷病，需要及時治療，高強度的體力消耗之後也需要科學的體能恢復。所以康復保健是運動員日常訓練中非常重要 的一環，對於國家隊運動員來說尤其如此。蘇炳添所在的中國田徑隊是國家體育總局訓練局13支駐訓國家隊之一，每逢大賽前後，運動員都要在訓練局進行訓練康 復。&lt;/p&gt;\r\n\r\n			&lt;p&gt;今年，國家體育總局訓練局通過層層篩選和多次實地考察，引進了駿豐頻譜“內喝外照”系列治療保健產品，利用高科技的現代化生物頻譜技術更好地滿足國家隊運動員的日常康復保健需求。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;目前，駿豐頻譜水治療保健儀、駿豐頻譜治療保健儀、駿豐頻譜治療保健房等產品已經在訓練局被13支駐訓國家隊運動員廣泛使用，並受到吳敏霞、馮喆、羅玉通等著名運動員的好評。&lt;/p&gt;\r\n\r\n			&lt;p&gt;接下來，蘇炳添將備戰8月份的世界田徑錦標賽，駿豐頻譜“內喝外照”產品將持續為蘇炳添及其他13支國家隊運動員的健康保駕護航，助力駐訓運動員在2016年里約熱內盧奧運會實現奪冠夢!&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news08/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(33, 1, '駿豐頻譜為“中國飛人”蘇炳添加油', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;5月31日淩晨，在美國尤金舉行的2015年國際田聯鑽石聯賽尤金站比賽，中國飛人蘇炳添在男子100米比賽中，以9秒99的成績並列獲得季軍。蘇炳添就此成為歷史上首位突破10秒大關的黃種人，也創造了新的全國紀錄，完成了中國幾代“飛人”的夙願。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news08/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;2012年8月4日，在倫敦奧運會上，蘇炳添就成為中國第一位晉級奧運會男子百米半決賽的短跑選手，創造了歷史。此次鑽石聯賽美國尤金站決賽，蘇炳添更以9秒99的成績打破由張培萌保持的10秒整的全國紀錄。&lt;/p&gt;\r\n\r\n			&lt;p&gt;從賽季之初的10秒10、10秒06到9秒99，蘇炳添正式踏上新台階。“對於高手來說，零點幾秒的進步都很艱難，可以說蘇炳添進步來源於新技術。”北京體育大學田徑教授熊西北認為，在預防傷病的情況下，蘇炳添的成績還能上臺階。&lt;/p&gt;\r\n\r\n			&lt;p&gt;眾所周知，運動員在比賽及日常訓練過程中時常發生傷病，需要及時治療，高強度的體力消耗之後也需要科學的體能恢復。所以康復保健是運動員日常訓練中非常重要的一環，對於國家隊運動員來說尤其如此。蘇炳添所在的中國田徑隊是國家體育總局訓練局13支駐訓國家隊之一，每逢大賽前後，運動員都要在訓練局進行訓練康復。&lt;/p&gt;\r\n\r\n			&lt;p&gt;今年，國家體育總局訓練局通過層層篩選和多次實地考察，引進了駿豐頻譜“內喝外照”系列治療保健產品，利用高科技的現代化生物頻譜技術更好地滿足國家隊運動員的日常康復保健需求。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;目前，駿豐頻譜水治療保健儀、駿豐頻譜治療保健儀、駿豐頻譜治療保健房等產品已經在訓練局被13支駐訓國家隊運動員廣泛使用，並受到吳敏霞、馮喆、羅玉通等著名運動員的好評。&lt;/p&gt;\r\n\r\n			&lt;p&gt;接下來，蘇炳添將備戰8月份的世界田徑錦標賽，駿豐頻譜“內喝外照”產品將持續為蘇炳添及其他13支國家隊運動員的健康保駕護航，助力駐訓運動員在2016年里約熱內盧奧運會實現奪冠夢!&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news08/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(32, 3, '跳水女皇吳敏霞情迷駿豐頻譜產品', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015年5月25日，國家跳水隊運動員奧運冠軍吳敏霞出席了在上海舉辦的駿豐頻譜新品發佈會，與700多名消費者面對面分享健康心得，並為冠軍版JF-802駿豐頻譜儀揭幕。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news07/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;吳敏霞1998年入選中國國家跳水隊，至今運動生涯已超過18年。在這期間，吳敏霞憑藉刻苦訓練、堅持不懈的精神，收穫了一個又一個冠軍榮譽，成為了世界各地人們關注的焦點。但對運動員來說，鮮花與成功的背後，是身體平時長期高強度運動訓練後，也面臨著傷病困擾。因此，避免運動損傷，保障身體機能健康是運動員爭取榮譽的關鍵因素。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2015年，駿豐頻譜與國家體育總局訓練局攜手合作，駿豐頻譜提供的以“內喝外照”為特點的頻譜治療保健系列產品成為“體育･訓練局國家隊運動員頻譜康復保健產品”，為超過1000名頂尖運動員和約13支代表國家榮譽的國家運動隊提供健康呵護，助力國家隊運動員的日常訓練康復，為運動員的“冠軍夢”保駕護航。今年年初，吳敏霞就與體操奧運冠軍馮喆一同出席了駿豐頻譜與國家體育總局訓練局聯合舉辦的新聞發佈會，表達了對訓練康復這一問題的關切以及對駿豐頻譜產品的期待。之後，駿豐頻譜訓練康復保健產品陸續進駐國家體育總局訓練局，幫助訓練局運動員訓練後康復理療，收到了良好效果，駿豐頻譜產品也得到了運動員們的認可與讚揚。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;\r\n			&lt;p&gt;此次駿豐頻譜在上海召開新品發佈會，發佈的冠軍版JF-802駿豐頻譜治療保健儀就與進駐國家體育總局訓練局的為同一款。&lt;/p&gt;\r\n			發佈會現場，吳敏霞稱讚駿豐公司是一個非常負責任的企業，對健康事業作出了巨大貢獻，對中國體育的發展給予了很高的支援。她說，運動員們都非常放心使用與訓練局進行合作的駿豐頻譜產品，平時訓練完後使用，對體能恢復、消除疲勞都有很好的效果。同時，她還代表國家隊運動員對駿豐頻譜寄予了深切的期望，希望駿豐公司能夠堅持創新，開發出更多更好的產品來。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(26, 3, '駿豐頻譜整合全球資源打造健康事業創新未來', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news01/photo01.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;span style=&quot;line-height: 20.8px;&quot;&gt;近 日，駿豐頻譜公司一年一度的表彰大會分別在歷史名城西安和璀璨明珠海口舉行，參加大會的有來自全國各地的1600多名健康大使和員工。會上，廣東 駿豐頻譜股份有限公司總裁陳險峰先生作了精彩演講，並邀請了一位特別的嘉賓——駿豐海外研發機構義大利設計中心的首席設計師Emilio Libera。Emilio兩米高的大個子以及陽光帥氣的形象一下子吸引了全場的目光，他不僅是一位非常有名的工業設計師，也是一位熱愛生活、喜歡探險的 航海愛好者。在大會上，駿豐公司總裁陳險峰宣佈了與Emilio所在團隊的戰略合作關係，本次合作將推動人類健康事業進一步向前發展。&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;\r\n			&lt;p&gt;與國際設計公司強強聯合&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 據瞭解，Emilio所在的團隊是一家國際化的設計公司，在新型消費品的設計、生產以及工藝工程上，擁有20年的豐富經驗。該公司擁有一支來自不同領域、 高資質、高效率的專業性隊伍，工程師和設計團隊來自義大利、德國、英國、西班牙、俄羅斯、阿根廷、美國和墨西哥，在設計美學的背景下，追求開發創造性和創 新性的方法，在有關產品開發的各種工業工序工程中，追求高效創新和專業技能，運用最新科技快速經濟地獲得最理想的產品。並且，因為有著不同的文化背景，讓 該公司掌握了最先進的技術，瞭解不同市場的需求，這一競爭優勢使該公司連續多年獲得國際創新大獎。&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Emilio對與駿豐未來的合作表達了極大的期待。他說：“我們今天在這裡選擇與駿豐企業合作，是因為感受到了駿豐的企業精神和遠大理想。我們覺得駿豐公 司提高全人類生命生活品質的健康事業非常有意義，所以我非常期待在未來的日子裡，與駿豐公司的科研人員一起，為人類帶來更多的健康解決方案和高科技現代化 產品！”&lt;br /&gt;\r\n			&amp;nbsp;&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 整合全球資源提升用戶健康體驗&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 駿豐頻譜公司自創業至今已經25年，是一家專門致力於家庭醫療健康事業，集科、工、貿於一體的高新技術企業。“振興民族高科技，造福全人類健康”是企業宗 旨。為此，駿豐公司十分重視當今世界各國都很關注的一個重要課題——如何提高人類生命品質，一直堅持從事被稱為“朝陽科學”的生物頻譜技術的研發和推廣工 作，並不斷拓展其內涵，精心開發出一批專利產品和專有技術。公司生產和經營的駿豐頻譜水治療保健儀系列產品，其核心技術已通過科技成果鑒定，獲得中、美、 德、英、澳和新加坡等多國發明專利，在國內榮獲“科技進步獎”，並榮獲5項國際發明大獎；駿豐頻譜房系列產品已獲得三項中國發明專利和四項外觀設計專利。 在長期實踐生物頻譜技術研究開發及推廣應用中，駿豐公司還不斷創新進行科學整合，在國內外獨創“內喝外照”生物頻譜療法，進一步滿足了人們對健康的需求， 是實現人們夢寐以求的非藥物自然療法的又一重大貢獻，深受廣大用戶的歡迎與好評。&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 目前，駿豐的健康事業行銷網路已橫跨大江南北、長城內外，遍佈包括北京、上海、廣州、深圳在內的全國60多個大中城市，並於2012年正式在香港成立公 司，為進一步拓展國際市場搭建了更大的平台。會上，駿豐公司總裁陳險峰表示：“駿豐創業至今已經25年，始終秉承‘振興民族高科技，造福全人類健康’的崇 高宗旨，牢記‘責任、服務、奉獻’的核心價值觀，不遺餘力地致力於造福人類健康的工作。香港公司的成立，表示我們要‘走出去’，同時我們也要‘請進來’， 整合全球資源，打造創新未來，為駿豐的健康事業規劃美好藍圖，與國際化的研發設計公司合作，順應了時代的潮流，將給我們的使用者帶去更好的產品體驗。”&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 據悉，駿豐與海外研發機構合作開發的首款最新健康產品即將上市，相信未來將給用戶帶來更好的健康體驗。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(26, 1, '駿豐頻譜整合全球資源打造健康事業創新未來', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news01/photo01.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;span style=&quot;line-height: 20.8px;&quot;&gt;近日，駿豐頻譜公司一年一度的表彰大會分別在歷史名城西安和璀璨明珠海口舉行，參加大會的有來自全國各地的1600多名健康大使和員工。會上，廣東 駿豐頻譜股份有限公司總裁陳險峰先生作了精彩演講，並邀請了一位特別的嘉賓——駿豐海外研發機構義大利設計中心的首席設計師Emilio Libera。Emilio兩米高的大個子以及陽光帥氣的形象一下子吸引了全場的目光，他不僅是一位非常有名的工業設計師，也是一位熱愛生活、喜歡探險的 航海愛好者。在大會上，駿豐公司總裁陳險峰宣佈了與Emilio所在團隊的戰略合作關係，本次合作將推動人類健康事業進一步向前發展。&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;\r\n			&lt;p&gt;與國際設計公司強強聯合&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 據瞭解，Emilio所在的團隊是一家國際化的設計公司，在新型消費品的設計、生產以及工藝工程上，擁有20年的豐富經驗。該公司擁有一支來自不同領域、高資質、高效率的專業性隊伍，工程師和設計團隊來自義大利、德國、英國、西班牙、俄羅斯、阿根廷、美國和墨西哥，在設計美學的背景下，追求開發創造性和創新性的方法，在有關產品開發的各種工業工序工程中，追求高效創新和專業技能，運用最新科技快速經濟地獲得最理想的產品。並且，因為有著不同的文化背景，讓該公司掌握了最先進的技術，瞭解不同市場的需求，這一競爭優勢使該公司連續多年獲得國際創新大獎。&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Emilio對與駿豐未來的合作表達了極大的期待。他說：“我們今天在這裡選擇與駿豐企業合作，是因為感受到了駿豐的企業精神和遠大理想。我們覺得駿豐公司提高全人類生命生活品質的健康事業非常有意義，所以我非常期待在未來的日子裡，與駿豐公司的科研人員一起，為人類帶來更多的健康解決方案和高科技現代化產品！”&lt;br /&gt;\r\n			&amp;nbsp;&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 整合全球資源提升用戶健康體驗&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 駿豐頻譜公司自創業至今已經25年，是一家專門致力於家庭醫療健康事業，集科、工、貿於一體的高新技術企業。“振興民族高科技，造福全人類健康”是企業宗旨。為此，駿豐公司十分重視當今世界各國都很關注的一個重要課題——如何提高人類生命品質，一直堅持從事被稱為“朝陽科學”的生物頻譜技術的研發和推廣工作，並不斷拓展其內涵，精心開發出一批專利產品和專有技術。公司生產和經營的駿豐頻譜水治療保健儀系列產品，其核心技術已通過科技成果鑒定，獲得中、美、德、英、澳和新加坡等多國發明專利，在國內榮獲“科技進步獎”，並榮獲5項國際發明大獎；駿豐頻譜房系列產品已獲得三項中國發明專利和四項外觀設計專利。在長期實踐生物頻譜技術研究開發及推廣應用中，駿豐公司還不斷創新進行科學整合，在國內外獨創“內喝外照”生物頻譜療法，進一步滿足了人們對健康的需求，是實現人們夢寐以求的非藥物自然療法的又一重大貢獻，深受廣大用戶的歡迎與好評。&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 目前，駿豐的健康事業行銷網路已橫跨大江南北、長城內外，遍佈包括北京、上海、廣州、深圳在內的全國60多個大中城市，並於2012年正式在香港成立公司，為進一步拓展國際市場搭建了更大的平台。會上，駿豐公司總裁陳險峰表示：“駿豐創業至今已經25年，始終秉承‘振興民族高科技，造福全人類健康’的崇高宗旨，牢記‘責任、服務、奉獻’的核心價值觀，不遺餘力地致力於造福人類健康的工作。香港公司的成立，表示我們要‘走出去’，同時我們也要‘請進來’，整合全球資源，打造創新未來，為駿豐的健康事業規劃美好藍圖，與國際化的研發設計公司合作，順應了時代的潮流，將給我們的使用者帶去更好的產品體驗。”&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 據悉，駿豐與海外研發機構合作開發的首款最新健康產品即將上市，相信未來將給用戶帶來更好的健康體驗。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(26, 4, '骏丰频谱整合全球资源打造健康事业创新未来', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news01/photo01.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&lt;span style=&quot;line-height: 20.8px;&quot;&gt;近 日，骏丰频谱公司一年一度的表彰大会分别在历史名城西安和璀璨明珠海口举行，参加大会的有来自全国各地的1600多名健康大使和员工。会上，广东 骏丰频谱股份有限公司总裁陈险峰先生作了精彩演讲，并邀请了一位特别的嘉宾——骏丰海外研发机构义大利设计中心的首席设计师Emilio Libera。Emilio两米高的大个子以及阳光帅气的形象一下子吸引了全场的目光，他不仅是一位非常有名的工业设计师，也是一位热爱生活、喜欢探险的 航海爱好者。在大会上，骏丰公司总裁陈险峰宣布了与Emilio所在团队的战略合作关系，本次合作将推动人类健康事业进一步向前发展。&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;\r\n			&lt;p&gt;与国际设计公司强强联合&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 据了解，Emilio所在的团队是一家国际化的设计公司，在新型消费品的设计、生产以及工艺工程上，拥有20年的丰富经验。该公司拥有一支来自不同领域、 高资质、高效率的专业性队伍，工程师和设计团队来自义大利、德国、英国、西班牙、俄罗斯、阿根廷、美国和墨西哥，在设计美学的背景下，追求开发创造性和创 新性的方法，在有关产品开发的各种工业工序工程中，追求高效创新和专业技能，运用最新科技快速经济地获得最理想的产品。并且，因为有着不同的文化背景，让 该公司掌握了最先进的技术，了解不同市场的需求，这一竞争优势使该公司连续多年获得国际创新大奖。&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Emilio对与骏丰未来的合作表达了极大的期待。他说：“我们今天在这里选择与骏丰企业合作，是因为感受到了骏丰的企业精神和远大理想。我们觉得骏丰公 司提高全人类生命生活品质的健康事业非常有意义，所以我非常期待在未来的日子里，与骏丰公司的科研人员一起，为人类带来更多的健康解决方案和高科技现代化 产品！”&lt;br /&gt;\r\n			&amp;nbsp;&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 整合全球资源提升用户健康体验&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 骏丰频谱公司自创业至今已经25年，是一家专门致力于家庭医疗健康事业，集科、工、贸于一体的高新技术企业。“振兴民族高科技，造福全人类健康”是企业宗 旨。为此，骏丰公司十分重视当今世界各国都很关注的一个重要课题——如何提高人类生命品质，一直坚持从事被称为“朝阳科学”的生物频谱技术的研发和推广工 作，并不断拓展其内涵，精心开发出一批专利产品和专有技术。公司生产和经营的骏丰频谱水治疗保健仪系列产品，其核心技术已通过科技成果鉴定，获得中、美、 德、英、澳和新加坡等多国发明专利，在国内荣获“科技进步奖”，并荣获5项国际发明大奖；骏丰频谱房系列产品已获得三项中国发明专利和四项外观设计专利。 在长期实践生物频谱技术研究开发及推广应用中，骏丰公司还不断创新进行科学整合，在国内外独创“内喝外照”生物频谱疗法，进一步满足了人们对健康的需求， 是实现人们梦寐以求的非药物自然疗法的又一重大贡献，深受广大用户的欢迎与好评。&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 目前，骏丰的健康事业行销网路已横跨大江南北、长城内外，遍布包括北京、上海、广州、深圳在内的全国60多个大中城市，并于2012年正式在香港成立公 司，为进一步拓展国际市场搭建了更大的平台。会上，骏丰公司总裁陈险峰表示：“骏丰创业至今已经25年，始终秉承‘振兴民族高科技，造福全人类健康’的崇 高宗旨，牢记‘责任、服务、奉献’的核心价值观，不遗余力地致力于造福人类健康的工作。香港公司的成立，表示我们要‘走出去’，同时我们也要‘请进来’， 整合全球资源，打造创新未来，为骏丰的健康事业规划美好蓝图，与国际化的研发设计公司合作，顺应了时代的潮流，将给我们的使用者带去更好的产品体验。”&lt;br /&gt;\r\n			&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 据悉，骏丰与海外研发机构合作开发的首款最新健康产品即将上市，相信未来将给用户带来更好的健康体验。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(27, 1, '駿豐頻譜家庭保健事業獲國際認可', '&lt;p&gt;&lt;span&gt;&lt;span style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;right:0px;border-right-color:#ff0000;border-width:8px 8px 8px 0;top:-8px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;left:0px;border-left-color:#ff0000;border-width:8px 0 8px 8px;top:-8px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span contenteditable=&quot;false&quot; style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;height:17px;width:17px;right:17px;background:url(http://202.74.0.45/temp/jfchealth/admin/view/javascript/ckeditor/plugins/magicline/images/icon.png) center no-repeat #ff0000;cursor:pointer;top:-8px;-moz-border-radius:2px;border-radius:2px&quot; title=&quot;Insert paragraph here&quot;&gt;↵&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;table cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;近 日，由聯合國南南合作辦公室和聯合國愛滋病規劃共同舉辦的“通過南南和三角合作增強包容性合作夥伴關係促進健康、運動、發展”國際論壇在南京舉行。這次會 議正值南京青奧會舉辦期間，同時也借助了青奧會的國際平臺，呼籲發展中國家關注國民健康，並提供了可借鑒的成功政策和舉措。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news02/photo01.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;這次論壇是聯合國在南京青奧會期間唯一的邊會活動。會議由聯合國愛滋病規劃署執行總幹事代表Djibril Diallo博士主持，國際奧會國際合作和發展部部長Lindsay Glassco女士，聯合國秘書長大使代表Teresa Liu博士等國際政要以及江蘇省副省長張雷、南京市副市長胡萬進等政府領導出席論壇並發言。&lt;/p&gt;\r\n			　 　隨著中國經濟、社會的高速發展，人民生活水準要求越來越高，運動、健康的意識也越來越深入人心。然而，人們對保健的理解，僅僅停留在依靠一般的體育鍛煉 增強體質，而正確的保健方式並未真正的為大眾所理解，更不用說普及應用。作為唯一一家受邀參與本次論壇的中國企業——廣東駿豐頻譜股份有限公司，其總裁陳 險峰在大會上的一席發言充分表達了發展中國家健康保健的現狀。陳險峰說到，在發展中國家，除了物質和精神的兩大貧窮之外，人民健康的貧窮也是一個重要問 題，這集中反映在健康觀念淡薄、生活方式不健康和醫療水準低下等方面。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;廣 東駿豐頻譜股份有限公司是中國家庭醫療保健的領軍企業，從其誕生至今已有25年歷史，充分見證了中國經濟生活的發展，瞭解人民對於家庭醫療保健的缺失和需 要，並積極宣傳醫療保健的重要性和正確方法，研發出一系列家庭保健產品。據瞭解，至今已有兩千多萬名亞健康或重病患者為此獲益。同時，其在國際上積極開展 與其他國家的健康交流，受到了國際一致好評，並且成為莫三比克總統與軍隊醫院、厄瓜多爾駐廣州總領事館的指定健康產品。受到國際世界的廣泛關注。&lt;/p&gt;\r\n\r\n			&lt;p&gt;　　針對此次論壇，駿豐頻譜也帶來了專為家庭設計的360度醫療保健解決方案，提出了“百歲健康家庭”的概念，運用陽光、空氣、水這人類生存三大要素，通過駿豐醫療保健儀器，打造360度健康的家居環境。駿豐頻譜這一構想和舉措也得到了與會人士的充分肯定。&lt;/p&gt;\r\n			　　在論壇交流中，論壇主辦方表示聯合國的各項機構、基金和專案將積極支持發展中國家官方、民間非營利組織和私營組織所開展的相關醫療活動。相信在聯合國等國際組織的説明，和發展中國家之間的共相互助下，發展中國家的醫療水準和國民的健康衛生意識都將會有進一步的提高。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news02/photo02.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(27, 4, '駿豐頻譜家庭保健事業獲國際認可', '&lt;p&gt;&lt;span&gt;&lt;span style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;right:0px;border-right-color:#ff0000;border-width:8px 8px 8px 0;top:-8px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;left:0px;border-left-color:#ff0000;border-width:8px 0 8px 8px;top:-8px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span contenteditable=&quot;false&quot; style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;height:17px;width:17px;right:17px;background:url(http://202.74.0.45/temp/jfchealth/admin/view/javascript/ckeditor/plugins/magicline/images/icon.png) center no-repeat #ff0000;cursor:pointer;top:-8px;-moz-border-radius:2px;border-radius:2px&quot; title=&quot;Insert paragraph here&quot;&gt;↵&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;table cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;近 日，由联合国南南合作办公室和联合国爱滋病规划共同举办的“通过南南和三角合作增强包容性合作伙伴关系促进健康、运动、发展”国际论坛在南京举行。这次会 议正值南京青奥会举办期间，同时也借助了青奥会的国际平台，呼吁发展中国家关注国民健康，并提供了可借鉴的成功政策和举措。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news02/photo01.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;这 次论坛是联合国在南京青奥会期间唯一的边会活动。会议由联合国爱滋病规划署执行总干事代表Djibril Diallo博士主持，国际奥会国际合作和发展部部长Lindsay Glassco女士，联合国秘书长大使代表Teresa Liu博士等国际政要以及江苏省副省长张雷、南京市副市长胡万进等政府领导出席论坛并发言。&lt;/p&gt;\r\n			　 　随着中国经济、社会的高速发展，人民生活水准要求越来越高，运动、健康的意识也越来越深入人心。然而，人们对保健的理解，仅仅停留在依靠一般的体育锻炼 增强体质，而正确的保健方式并未真正的为大众所理解，更不用说普及应用。作为唯一一家受邀参与本次论坛的中国企业——广东骏丰频谱股份有限公司，其总裁陈 险峰在大会上的一席发言充分表达了发展中国家健康保健的现状。陈险峰说到，在发展中国家，除了物质和精神的两大贫穷之外，人民健康的贫穷也是一个重要问 题，这集中反映在健康观念淡薄、生活方式不健康和医疗水准低下等方面。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;广 东骏丰频谱股份有限公司是中国家庭医疗保健的领军企业，从其诞生至今已有25年历史，充分见证了中国经济生活的发展，了解人民对于家庭医疗保健的缺失和需 要，并积极宣传医疗保健的重要性和正确方法，研发出一系列家庭保健产品。据了解，至今已有两千多万名亚健康或重病患者为此获益。同时，其在国际上积极开展 与其他国家的健康交流，受到了国际一致好评，并且成为莫三比克总统与军队医院、厄瓜多尔驻广州总领事馆的指定健康产品。受到国际世界的广泛关注。&lt;/p&gt;\r\n\r\n			&lt;p&gt;　　针对此次论坛，骏丰频谱也带来了专为家庭设计的360度医疗保健解决方案，提出了“百岁健康家庭”的概念，运用阳光、空气、水这人类生存三大要素，通过骏丰医疗保健仪器，打造360度健康的家居环境。骏丰频谱这一构想和举措也得到了与会人士的充分肯定。&lt;/p&gt;\r\n			　　在论坛交流中，论坛主办方表示联合国的各项机构、基金和专案将积极支持发展中国家官方、民间非营利组织和私营组织所开展的相关医疗活动。相信在联合国等国际组织的说明，和发展中国家之间的共相互助下，发展中国家的医疗水准和国民的健康卫生意识都将会有进一步的提高。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news02/photo02.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(27, 3, '駿豐頻譜家庭保健事業獲國際認可', '&lt;table cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;近日，由聯合國南南合作辦公室和聯合國愛滋病規劃共同舉辦的“通過南南和三角合作增強包容性合作夥伴關係促進健康、運動、發展”國際論壇在南京舉行。這次會議正值南京青奧會舉辦期間，同時也借助了青奧會的國際平臺，呼籲發展中國家關注國民健康，並提供了可借鑒的成功政策和舉措。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news02/photo01.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;這次論壇是聯合國在南京青奧會期間唯一的邊會活動。會議由聯合國愛滋病規劃署執行總幹事代表Djibril Diallo博士主持，國際奧會國際合作和發展部部長Lindsay Glassco女士，聯合國秘書長大使代表Teresa Liu博士等國際政要以及江蘇省副省長張雷、南京市副市長胡萬進等政府領導出席論壇並發言。&lt;/p&gt;\r\n			　　隨著中國經濟、社會的高速發展，人民生活水準要求越來越高，運動、健康的意識也越來越深入人心。然而，人們對保健的理解，僅僅停留在依靠一般的體育鍛煉增強體質，而正確的保健方式並未真正的為大眾所理解，更不用說普及應用。作為唯一一家受邀參與本次論壇的中國企業——廣東駿豐頻譜股份有限公司，其總裁陳險峰在大會上的一席發言充分表達了發展中國家健康保健的現狀。陳險峰說到，在發展中國家，除了物質和精神的兩大貧窮之外，人民健康的貧窮也是一個重要問題，這集中反映在健康觀念淡薄、生活方式不健康和醫療水準低下等方面。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;廣東駿豐頻譜股份有限公司是中國家庭醫療保健的領軍企業，從其誕生至今已有25年歷史，充分見證了中國經濟生活的發展，瞭解人民對於家庭醫療保健的缺失和需要，並積極宣傳醫療保健的重要性和正確方法，研發出一系列家庭保健產品。據瞭解，至今已有兩千多萬名亞健康或重病患者為此獲益。同時，其在國際上積極開展與其他國家的健康交流，受到了國際一致好評，並且成為莫三比克總統與軍隊醫院、厄瓜多爾駐廣州總領事館的指定健康產品。受到國際世界的廣泛關注。&lt;/p&gt;\r\n\r\n			&lt;p&gt;　　針對此次論壇，駿豐頻譜也帶來了專為家庭設計的360度醫療保健解決方案，提出了“百歲健康家庭”的概念，運用陽光、空氣、水這人類生存三大要素，通過駿豐醫療保健儀器，打造360度健康的家居環境。駿豐頻譜這一構想和舉措也得到了與會人士的充分肯定。&lt;/p&gt;\r\n			　　在論壇交流中，論壇主辦方表示聯合國的各項機構、基金和專案將積極支持發展中國家官方、民間非營利組織和私營組織所開展的相關醫療活動。相信在聯合國等國際組織的説明，和發展中國家之間的共相互助下，發展中國家的醫療水準和國民的健康衛生意識都將會有進一步的提高。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news02/photo02.png&quot; style=&quot;opacity: 0.9; line-height: 20.8px; width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(32, 1, '跳水女皇吳敏霞情迷駿豐頻譜產品', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015年5月25日，國家跳水隊運動員奧運冠軍吳敏霞出席了在上海舉辦的駿豐頻譜新品發佈會，與700多名消費者面對面分享健康心得，並為冠軍版JF-802駿豐頻譜儀揭幕。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news07/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;吳 敏霞1998年入選中國國家跳水隊，至今運動生涯已超過18年。在這期間，吳敏霞憑藉刻苦訓練、堅持不懈的精神，收穫了一個又一個冠軍榮譽，成為了世界各 地人們關注的焦點。但對運動員來說，鮮花與成功的背後，是身體平時長期高強度運動訓練後，也面臨著傷病困擾。因此，避免運動損傷，保障身體機能健康是運動 員爭取榮譽的關鍵因素。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2015年，駿豐頻譜與國家體育總局訓練局攜手合作，駿豐頻譜提供的以“內喝外照”為特點的頻譜治療保健系 列產品成為“體育･訓練局國家隊運動員頻譜康復保健產品”，為超過1000名頂尖運動員和約13支代表國家榮譽的國家運動隊提供健康呵護，助力國家隊運動 員的日常訓練康復，為運動員的“冠軍夢”保駕護航。今年年初，吳敏霞就與體操奧運冠軍馮喆一同出席了駿豐頻譜與國家體育總局訓練局聯合舉辦的新聞發佈會， 表達了對訓練康復這一問題的關切以及對駿豐頻譜產品的期待。之後，駿豐頻譜訓練康復保健產品陸續進駐國家體育總局訓練局，幫助訓練局運動員訓練後康復理 療，收到了良好效果，駿豐頻譜產品也得到了運動員們的認可與讚揚。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;\r\n			&lt;p&gt;此次駿豐頻譜在上海召開新品發佈會，發佈的冠軍版JF-802駿豐頻譜治療保健儀就與進駐國家體育總局訓練局的為同一款。&lt;/p&gt;\r\n			發 佈會現場，吳敏霞稱讚駿豐公司是一個非常負責任的企業，對健康事業作出了巨大貢獻，對中國體育的發展給予了很高的支援。她說，運動員們都非常放心使用與訓 練局進行合作的駿豐頻譜產品，平時訓練完後使用，對體能恢復、消除疲勞都有很好的效果。同時，她還代表國家隊運動員對駿豐頻譜寄予了深切的期望，希望駿豐 公司能夠堅持創新，開發出更多更好的產品來。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(32, 4, '跳水女皇吴敏霞情迷骏丰频谱产品', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015年5月25日，国家跳水队运动员奥运冠军吴敏霞出席了在上海举办的骏丰频谱新品发布会，与700多名消费者面对面分享健康心得，并为冠军版JF-802骏丰频谱仪揭幕。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news07/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;吴 敏霞1998年入选中国国家跳水队，至今运动生涯已超过18年。在这期间，吴敏霞凭藉刻苦训练、坚持不懈的精神，收获了一个又一个冠军荣誉，成为了世界各 地人们关注的焦点。但对运动员来说，鲜花与成功的背后，是身体平时长期高强度运动训练后，也面临着伤病困扰。因此，避免运动损伤，保障身体机能健康是运动 员争取荣誉的关键因素。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2015年，骏丰频谱与国家体育总局训练局携手合作，骏丰频谱提供的以“内喝外照”为特点的频谱治疗保健系 列产品成为“体育･训练局国家队运动员频谱康复保健产品”，为超过1000名顶尖运动员和约13支代表国家荣誉的国家运动队提供健康呵护，助力国家队运动 员的日常训练康复，为运动员的“冠军梦”保驾护航。今年年初，吴敏霞就与体操奥运冠军冯喆一同出席了骏丰频谱与国家体育总局训练局联合举办的新闻发布会， 表达了对训练康复这一问题的关切以及对骏丰频谱产品的期待。之后，骏丰频谱训练康复保健产品陆续进驻国家体育总局训练局，帮助训练局运动员训练后康复理 疗，收到了良好效果，骏丰频谱产品也得到了运动员们的认可与赞扬。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;\r\n			&lt;p&gt;此次骏丰频谱在上海召开新品发布会，发布的冠军版JF-802骏丰频谱治疗保健仪就与进驻国家体育总局训练局的为同一款。&lt;/p&gt;\r\n			发 布会现场，吴敏霞称赞骏丰公司是一个非常负责任的企业，对健康事业作出了巨大贡献，对中国体育的发展给予了很高的支援。她说，运动员们都非常放心使用与训 练局进行合作的骏丰频谱产品，平时训练完后使用，对体能恢复、消除疲劳都有很好的效果。同时，她还代表国家队运动员对骏丰频谱寄予了深切的期望，希望骏丰 公司能够坚持创新，开发出更多更好的产品来。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(28, 1, '駿豐頻譜進駐國家體育總局訓練局，為“冠軍夢”保駕護航', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;1 月20日，國家體育總局訓練局攜手廣東駿豐頻譜股份有限公司在北京體育館召開主題為“駿豐夢·冠軍夢·健康夢——駿豐頻譜贊助國家體育總局訓練局”的新聞 發佈會，國家體育總局訓練局副局長呂鐵杭、訓練局體能康復中心主任李強、跳水奧運冠軍吳敏霞、體操奧運冠軍馮喆、廣東駿豐頻譜股份有限公司總裁陳險峰等出 席了合作發佈會。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;會上，呂鐵杭副局長宣佈國 家體育總局訓練局將與廣東駿豐頻譜股份有限公司攜手合作，駿豐頻譜提供的以“內喝外照”為特點的頻譜治療保健系列產品，將成為“體育･訓練局國家隊運動員 頻譜康復保健產品”，在未來兩年內，為超過1000名頂尖運動員和約13支代表國家榮譽的國家運動隊提供最優質的駿豐頻譜“內喝外照”產品，助力國家隊運 動員的日常訓練康復，為運動員的“冠軍夢”保駕護航。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;康 復保健是運動員日常訓練中非常重要的一環，對於國家隊運動員來說尤其如此。據訓練局康復中心介紹，運動員在比賽及日常訓練過程中時常發生傷病，需要及時治 療，高強度的體力消耗之後也需要科學的體能恢復。國家隊運動員的訓練康復有著高標準嚴要求，訓練局為此特別設置了康復中心，專門負責運動員的身體理療、體 能恢復等工作。此次通過層層篩選和多次實地考察，引進駿豐頻譜系列治療保健產品，就是希望利用高科技的現代化生物頻譜技術更好地滿足國家隊運動員的日常康 復保健需求。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;未來兩年，駿豐頻譜將為駐訓練局國家隊運動員提供包括駿豐頻譜水治療保健儀、駿豐頻譜治療保健儀、駿豐頻譜治療保健房等產品。運動員通過“內喝外照”的綜合應用，能由內而外更有效地促進身體的康復和體能的恢復。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;此次發佈會上，著名體育主持人楊健就運動員日常傷病問題，與訓練局康復中心專家展開了討論，奧運冠軍吳敏霞和馮喆也表達了對訓練康復這一問題的關切以及對駿豐頻譜產品的期待。駿豐頻譜的消費者代表還帶來了精彩的表演，並向運動員送上了精美手工自製禮品。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;發 佈會最後，駿豐頻譜還攜手國家體育總局訓練局正式向全國發起“都一齊來·百歲健步走”的大型全民健身活動，旨在號召大眾動起來，加強體育鍛煉，關注身體健 康，為推進體育強國建設而共同努力。駿豐公司總裁陳險峰表示，“振興民族高科技，造福全人類健康”是駿豐企業的宗旨，此次通過攜手國家體育總局訓練局，以 駿豐頻譜產品為運動員康復保駕護航，以“駿豐夢”助力國家隊運動員實現“冠軍夢”，號召全國大眾廣泛參與，希望健康惠及所有老百姓，最終實現“全民健康 夢”。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(28, 4, '骏丰频谱进驻国家体育总局训练局，为“冠军梦”保驾护航', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;1 月20日，国家体育总局训练局携手广东骏丰频谱股份有限公司在北京体育馆召开主题为“骏丰梦·冠军梦·健康梦——骏丰频谱赞助国家体育总局训练局”的新闻 发布会，国家体育总局训练局副局长吕铁杭、训练局体能康复中心主任李强、跳水奥运冠军吴敏霞、体操奥运冠军冯喆、广东骏丰频谱股份有限公司总裁陈险峰等出 席了合作发布会。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;会 上，吕铁杭副局长宣布国 家体育总局训练局将与广东骏丰频谱股份有限公司携手合作，骏丰频谱提供的以“内喝外照”为特点的频谱治疗保健系列产品，将成为“体育･训练局国家队运动员 频谱康复保健产品”，在未来两年内，为超过1000名顶尖运动员和约13支代表国家荣誉的国家运动队提供最优质的骏丰频谱“内喝外照”产品，助力国家队运 动员的日常训练康复，为运动员的“冠军梦”保驾护航。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;康 复保健是运动员日常训练中非常重要的一环，对于国家队运动员来说尤其如此。据训练局康复中心介绍，运动员在比赛及日常训练过程中时常发生伤病，需要及时治 疗，高强度的体力消耗之后也需要科学的体能恢复。国家队运动员的训练康复有着高标准严要求，训练局为此特别设置了康复中心，专门负责运动员的身体理疗、体 能恢复等工作。此次通过层层筛选和多次实地考察，引进骏丰频谱系列治疗保健产品，就是希望利用高科技的现代化生物频谱技术更好地满足国家队运动员的日常康 复保健需求。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;未来两年，骏丰频谱将为驻训练局国家队运动员提供包括骏丰频谱水治疗保健仪、骏丰频谱治疗保健仪、骏丰频谱治疗保健房等产品。运动员通过“内喝外照”的综合应用，能由内而外更有效地促进身体的康复和体能的恢复。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;此次发布会上，著名体育主持人杨健就运动员日常伤病问题，与训练局康复中心专家展开了讨论，奥运冠军吴敏霞和冯喆也表达了对训练康复这一问题的关切以及对骏丰频谱产品的期待。骏丰频谱的消费者代表还带来了精彩的表演，并向运动员送上了精美手工自制礼品。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;发 布会最后，骏丰频谱还携手国家体育总局训练局正式向全国发起“都一齐来·百岁健步走”的大型全民健身活动，旨在号召大众动起来，加强体育锻炼，关注身体健 康，为推进体育强国建设而共同努力。骏丰公司总裁陈险峰表示，“振兴民族高科技，造福全人类健康”是骏丰企业的宗旨，此次通过携手国家体育总局训练局，以 骏丰频谱产品为运动员康复保驾护航，以“骏丰梦”助力国家队运动员实现“冠军梦”，号召全国大众广泛参与，希望健康惠及所有老百姓，最终实现“全民健康 梦”。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(28, 3, '駿豐頻譜進駐國家體育總局訓練局，為“冠軍夢”保駕護航', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;1月20日，國家體育總局訓練局攜手廣東駿豐頻譜股份有限公司在北京體育館召開主題為“駿豐夢·冠軍夢·健康夢——駿豐頻譜贊助國家體育總局訓練局”的新聞發佈會，國家體育總局訓練局副局長呂鐵杭、訓練局體能康復中心主任李強、跳水奧運冠軍吳敏霞、體操奧運冠軍馮喆、廣東駿豐頻譜股份有限公司總裁陳險峰等出席了合作發佈會。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;會上，呂鐵杭副局長宣佈國家體育總局訓練局將與廣東駿豐頻譜股份有限公司攜手合作，駿豐頻譜提供的以“內喝外照”為特點的頻譜治療保健系列產品，將成為“體育･訓練局國家隊運動員頻譜康復保健產品”，在未來兩年內，為超過1000名頂尖運動員和約13支代表國家榮譽的國家運動隊提供最優質的駿豐頻譜“內喝外照”產品，助力國家隊運動員的日常訓練康復，為運動員的“冠軍夢”保駕護航。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;康復保健是運動員日常訓練中非常重要的一環，對於國家隊運動員來說尤其如此。據訓練局康復中心介紹，運動員在比賽及日常訓練過程中時常發生傷病，需要及時治療，高強度的體力消耗之後也需要科學的體能恢復。國家隊運動員的訓練康復有著高標準嚴要求，訓練局為此特別設置了康復中心，專門負責運動員的身體理療、體能恢復等工作。此次通過層層篩選和多次實地考察，引進駿豐頻譜系列治療保健產品，就是希望利用高科技的現代化生物頻譜技術更好地滿足國家隊運動員的日常康復保健需求。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;未來兩年，駿豐頻譜將為駐訓練局國家隊運動員提供包括駿豐頻譜水治療保健儀、駿豐頻譜治療保健儀、駿豐頻譜治療保健房等產品。運動員通過“內喝外照”的綜合應用，能由內而外更有效地促進身體的康復和體能的恢復。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;此次發佈會上，著名體育主持人楊健就運動員日常傷病問題，與訓練局康復中心專家展開了討論，奧運冠軍吳敏霞和馮喆也表達了對訓練康復這一問題的關切以及對駿豐頻譜產品的期待。駿豐頻譜的消費者代表還帶來了精彩的表演，並向運動員送上了精美手工自製禮品。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news03/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;發佈會最後，駿豐頻譜還攜手國家體育總局訓練局正式向全國發起“都一齊來·百歲健步走”的大型全民健身活動，旨在號召大眾動起來，加強體育鍛煉，關注身體健康，為推進體育強國建設而共同努力。駿豐公司總裁陳險峰表示，“振興民族高科技，造福全人類健康”是駿豐企業的宗旨，此次通過攜手國家體育總局訓練局，以駿豐頻譜產品為運動員康復保駕護航，以“駿豐夢”助力國家隊運動員實現“冠軍夢”，號召全國大眾廣泛參與，希望健康惠及所有老百姓，最終實現“全民健康夢”。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(30, 3, '駿豐頻譜“內喝外照”產品受國家體育總局訓練局好評', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;今年，國家體育總局訓練局引入了駿豐頻譜“內喝外照”產品，為運動員的康復提供理療輔助。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;為了讓駐局的教練員、運動員及各運動隊的相關專家更好地瞭解駿豐“內喝外照”生物頻譜技術。4月9日，國家體育總局訓練局邀請駿豐頻譜公司，共同舉辦了一場“駿豐頻譜‘內喝外照’頻譜技術對運動康復理療的作用專題講座”。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;講座邀請到駿豐事業創始人趙毅董事長、中國醫學科學院基礎醫學研究所、北京協和醫學院基礎學院博士生導師吳元德教授、北京大學醫學部微循環研究中心副主任劉育英教授，與教練員、運動員們講解、分享交流“內喝外照”生物頻譜技術對運動康復理療的作用。&lt;/p&gt;\r\n\r\n			&lt;p&gt;通過此次講座，訓練局代表更瞭解生物頻譜療法和使用方法，他們對駿豐產品充滿了信心。體能康復中心李強主任表示：駿豐頻譜房在康復中心受到運動員追捧，大家都搶著用，特別是體操和舉重運動員用的最多。&lt;/p&gt;\r\n\r\n			&lt;p&gt;(右圖) 趙毅董事長(左二)向訓練局領導講解駿豐產品，訓練局副局長呂鐵杭(左一)對駿豐產品很感興趣。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;接下來，國家體育總局訓練局將進一步與駿豐公司展開合作，就駿豐“內喝外照”科技產品如何更好地實現運動員訓練後康復等問題進行科研合作，助力駐訓運動員在2016年里約熱內盧奧運會實現奪冠夢!&lt;/p&gt;\r\n\r\n			&lt;p&gt;(左圖) 吳元德教授講解駿豐生物頻譜技術原理。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;劉育英教授講解駿豐生物頻譜技術對運動康復理療的作用。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo06.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;(上圖) 駿豐與體育有著不解之緣，而趙毅董事長曾是一名&lt;br /&gt;\r\n			勇破全國紀錄的國家自行車運動員。深受生物頻譜療法之惠的她講解駿豐“內喝外照”產品的使用方法。&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;(上圖) 駿豐董事長趙毅(左二)與跳水奧運冠軍何沖(右二)、陳若琳(左一)合影。&lt;/p&gt;\r\n			祝願駐訓練局的國家隊運動員們在明年的里約熱內盧奧運會取得優異成績，也希望越來越多的人在駿豐內喝外照產品的説明下身心健康。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(31, 1, '駿豐頻譜“內喝外照”產品閃耀日內瓦發明展', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015年4月19日，第43屆日內瓦國際發明展在瑞士日內瓦巴萊斯堡展覽會議中心閉幕，經過85名來自世界各地各個領域的專家評審，駿豐頻譜“內喝外照”生物頻譜套裝產品一舉獲得3項銀獎，成為全場獲獎最多的參展企業。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;日內瓦國際發明展創辦於1973年，是世界上舉辦歷史最長、規模最大的發明展之一，與德國紐倫堡國際發明展、美國匹茲堡國際發明展並稱為世界三大發明展，迄今已成功舉辦了43屆。本屆展會吸引了全球48個國家和地區的700多個發明者參與，帶來了1000餘件新發明。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;日內瓦發明展創始人兼主席讓-呂克·文森特表示，本屆發明展數量最多的發明門類集中在醫藥及健康護理、電子和電腦科學、機械及工業、環境與能源保護等領域。20多年來，廣東駿豐頻譜股份有限公司一直堅持自主創新，致力於運用中國人自己發明的生物頻譜技術提高人們的生命生活品質。在此次發明展會上，駿豐頻譜公司研發生產的駿豐頻譜水治療保健儀JF-139型、駿豐頻譜治療保健儀JF-802型、駿豐頻譜治療保健房JF-902C型“內喝外照”生物頻譜套裝產品一舉獲得3項銀獎，在700多個參展者中脫穎而出，成為獲獎最多的參展企業。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;早在2006年6月，駿豐頻譜水治療保健儀就在第22屆美國匹茲堡國際新發明新產品博覽會上，獲得了一金二銀三項發明大獎。至此，在世界兩大發明展會上，駿豐頻譜共斬獲了六項國際發明大獎，充分表明了駿豐頻譜產品技術的獨特性、創新性以及科技性。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(29, 1, '奧運冠軍馮喆、羅玉通出席“愛的事業•再啟航”駿豐頻譜第13屆健康大使表彰大會', '&lt;p&gt;&lt;span style=&quot;&quot;&gt;&lt;span style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;right:0px;border-right-color:#ff0000;border-width:8px 8px 8px 0;top:-8px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;left:0px;border-left-color:#ff0000;border-width:8px 0 8px 8px;top:-8px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span contenteditable=&quot;false&quot; style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;height:17px;width:17px;right:17px;background:url(http://202.74.0.45/temp/jfchealth/admin/view/javascript/ckeditor/plugins/magicline/images/icon.png) center no-repeat #ff0000;cursor:pointer;top:-8px;-moz-border-radius:2px;border-radius:2px&quot; title=&quot;Insert paragraph here&quot;&gt;↵&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015 年3月24日，“愛的事業·再啟航”駿豐頻譜第13屆健康大使表彰大會在廣州保利世貿博覽館隆重召開。國家司法部原部長高昌禮，國家體育總局訓練局副局長 呂鐵杭，奧運跳水冠軍羅玉通，奧運體操冠軍馮喆，中國醫學科學院基礎醫學研究所研究員、北京協和醫院教授、博士生導師吳元德，駿豐事業的創始人、董事長趙 毅，監事長陳光漢等嘉賓出席了本次盛會，與來自全國各地1700多位傳遞健康，奉獻愛心的健康大使們歡聚一堂，共同見證駿豐愛的事業再次揚帆啟航。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;駿 豐一直與體育有著不解之緣。今年初，駿豐頻譜與國家體育總局訓練局正式合作，駿豐頻譜提供的以“內喝外照”為特點的頻譜治療保健系列產品，成為“體育·訓 練局國家隊運動員頻譜康復保健產品”，在未來兩年內，將幫助超過1000名頂尖運動員和約13支國家運動隊進行日常訓練後康復，為運動員的“冠軍夢”保駕 護航。&lt;/p&gt;\r\n			表彰大會當晚，國家體育總局訓練局副局長呂鐵杭，奧運跳水冠軍羅玉通，奧運體操冠軍馮喆也特別出席了本次盛會。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;兩 位奧運冠軍現場分享使用駿豐頻譜產品的心得。他們表示，駿豐頻譜“內喝外照”產品進駐國家體育總局訓練局，在硬體設施上提升了駐訓練局的康復保健水準，對 運動員日常的訓練康復起到了非常積極的輔助作用，為運動員日常訓練提供了一個很好的健康保障。兩位奧運冠軍現場還與駿豐人互動，教授駿豐人如何練習平衡 球，以鍛煉人體肌肉平衡，提高身體柔韌度和力量。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;會 上，呂鐵杭副局長致辭感謝駿豐頻譜對國家體育事業做出的積極貢獻，希望未來能與駿豐頻譜共同見證駿豐健康夢想的實現。康復保健是運動員日常訓練中非常重要 的一環，對於國家隊運動員來說尤其如此。據訓練局康復中心介紹，運動員在比賽及日常訓練過程中經常發生傷病，需要及時治療，高強度的體力消耗之後也需要科 學的體能恢復。此次通過層層篩選和多次實地考察，引進駿豐頻譜系列治療保健產品，就是希望利用高科技的現代化生物頻譜技術更好地滿足國家隊運動員的日常康 復保健需求。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;帶著駿豐員工和顧客親人兩支隊伍的祝福，董事長趙毅向國家體育總局訓練局贈送了特製金色版的JF-802駿豐頻譜治療保健儀，祝願駐訓運動員在明年的奧運會上取得好成績。呂鐵杭副局長也回贈駿豐一份極其珍貴的禮物——代表著國家榮譽的奧運冠軍錄紀念冊。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;活動當天，駿豐頻譜產品的資深使用者、受益者、宣傳者，國家司法部原部長高昌禮也在現場分享了自己使用駿豐頻譜產品的感受和體驗，並對駿豐頻譜和國家體育總局訓練局的合作給予了高度的讚賞。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(29, 4, '奥运冠军冯喆、罗玉通出席“爱的事业．再启航”骏丰频谱第13届健康大使表彰大会', '&lt;p&gt;&lt;span style=&quot;&quot;&gt;&lt;span style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;right:0px;border-right-color:#ff0000;border-width:8px 8px 8px 0;top:-8px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;left:0px;border-left-color:#ff0000;border-width:8px 0 8px 8px;top:-8px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span contenteditable=&quot;false&quot; style=&quot;width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;height:17px;width:17px;right:17px;background:url(http://202.74.0.45/temp/jfchealth/admin/view/javascript/ckeditor/plugins/magicline/images/icon.png) center no-repeat #ff0000;cursor:pointer;top:-8px;-moz-border-radius:2px;border-radius:2px&quot; title=&quot;Insert paragraph here&quot;&gt;↵&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015 年3月24日，“爱的事业·再启航”骏丰频谱第13届健康大使表彰大会在广州保利世贸博览馆隆重召开。国家司法部原部长高昌礼，国家体育总局训练局副局长 吕铁杭，奥运跳水冠军罗玉通，奥运体操冠军冯喆，中国医学科学院基础医学研究所研究员、北京协和医院教授、博士生导师吴元德，骏丰事业的创始人、董事长赵 毅，监事长陈光汉等嘉宾出席了本次盛会，与来自全国各地1700多位传递健康，奉献爱心的健康大使们欢聚一堂，共同见证骏丰爱的事业再次扬帆启航。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;骏 丰一直与体育有着不解之缘。今年初，骏丰频谱与国家体育总局训练局正式合作，骏丰频谱提供的以“内喝外照”为特点的频谱治疗保健系列产品，成为“体育·训 练局国家队运动员频谱康复保健产品”，在未来两年内，将帮助超过1000名顶尖运动员和约13支国家运动队进行日常训练后康复，为运动员的“冠军梦”保驾 护航。&lt;/p&gt;\r\n			表彰大会当晚，国家体育总局训练局副局长吕铁杭，奥运跳水冠军罗玉通，奥运体操冠军冯喆也特别出席了本次盛会。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;两 位奥运冠军现场分享使用骏丰频谱产品的心得。他们表示，骏丰频谱“内喝外照”产品进驻国家体育总局训练局，在硬体设施上提升了驻训练局的康复保健水准，对 运动员日常的训练康复起到了非常积极的辅助作用，为运动员日常训练提供了一个很好的健康保障。两位奥运冠军现场还与骏丰人互动，教授骏丰人如何练习平衡 球，以锻炼人体肌肉平衡，提高身体柔韧度和力量。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;会 上，吕铁杭副局长致辞感谢骏丰频谱对国家体育事业做出的积极贡献，希望未来能与骏丰频谱共同见证骏丰健康梦想的实现。康复保健是运动员日常训练中非常重要 的一环，对于国家队运动员来说尤其如此。据训练局康复中心介绍，运动员在比赛及日常训练过程中经常发生伤病，需要及时治疗，高强度的体力消耗之后也需要科 学的体能恢复。此次通过层层筛选和多次实地考察，引进骏丰频谱系列治疗保健产品，就是希望利用高科技的现代化生物频谱技术更好地满足国家队运动员的日常康 复保健需求。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;带着骏丰员工和顾客亲人两支队伍的祝福，董事长赵毅向国家体育总局训练局赠送了特制金色版的JF-802骏丰频谱治疗保健仪，祝愿驻训运动员在明年的奥运会上取得好成绩。吕铁杭副局长也回赠骏丰一份极其珍贵的礼物——代表着国家荣誉的奥运冠军录纪念册。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;活动当天，骏丰频谱产品的资深使用者、受益者、宣传者，国家司法部原部长高昌礼也在现场分享了自己使用骏丰频谱产品的感受和体验，并对骏丰频谱和国家体育总局训练局的合作给予了高度的赞赏。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(29, 3, '奧運冠軍馮喆、羅玉通出席“愛的事業•再啟航”駿豐頻譜第13屆健康大使表彰大會', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015年3月24日，“愛的事業·再啟航”駿豐頻譜第13屆健康大使表彰大會在廣州保利世貿博覽館隆重召開。國家司法部原部長高昌禮，國家體育總局訓練局副局長呂鐵杭，奧運跳水冠軍羅玉通，奧運體操冠軍馮喆，中國醫學科學院基礎醫學研究所研究員、北京協和醫院教授、博士生導師吳元德，駿豐事業的創始人、董事長趙毅，監事長陳光漢等嘉賓出席了本次盛會，與來自全國各地1700多位傳遞健康，奉獻愛心的健康大使們歡聚一堂，共同見證駿豐愛的事業再次揚帆啟航。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;駿豐一直與體育有著不解之緣。今年初，駿豐頻譜與國家體育總局訓練局正式合作，駿豐頻譜提供的以“內喝外照”為特點的頻譜治療保健系列產品，成為“體育·訓練局國家隊運動員頻譜康復保健產品”，在未來兩年內，將幫助超過1000名頂尖運動員和約13支國家運動隊進行日常訓練後康復，為運動員的“冠軍夢”保駕護航。&lt;/p&gt;\r\n			表彰大會當晚，國家體育總局訓練局副局長呂鐵杭，奧運跳水冠軍羅玉通，奧運體操冠軍馮喆也特別出席了本次盛會。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;兩位奧運冠軍現場分享使用駿豐頻譜產品的心得。他們表示，駿豐頻譜“內喝外照”產品進駐國家體育總局訓練局，在硬體設施上提升了駐訓練局的康復保健水準，對運動員日常的訓練康復起到了非常積極的輔助作用，為運動員日常訓練提供了一個很好的健康保障。兩位奧運冠軍現場還與駿豐人互動，教授駿豐人如何練習平衡球，以鍛煉人體肌肉平衡，提高身體柔韌度和力量。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;會上，呂鐵杭副局長致辭感謝駿豐頻譜對國家體育事業做出的積極貢獻，希望未來能與駿豐頻譜共同見證駿豐健康夢想的實現。康復保健是運動員日常訓練中非常重要的一環，對於國家隊運動員來說尤其如此。據訓練局康復中心介紹，運動員在比賽及日常訓練過程中經常發生傷病，需要及時治療，高強度的體力消耗之後也需要科學的體能恢復。此次通過層層篩選和多次實地考察，引進駿豐頻譜系列治療保健產品，就是希望利用高科技的現代化生物頻譜技術更好地滿足國家隊運動員的日常康復保健需求。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;帶著駿豐員工和顧客親人兩支隊伍的祝福，董事長趙毅向國家體育總局訓練局贈送了特製金色版的JF-802駿豐頻譜治療保健儀，祝願駐訓運動員在明年的奧運會上取得好成績。呂鐵杭副局長也回贈駿豐一份極其珍貴的禮物——代表著國家榮譽的奧運冠軍錄紀念冊。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news04/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;活動當天，駿豐頻譜產品的資深使用者、受益者、宣傳者，國家司法部原部長高昌禮也在現場分享了自己使用駿豐頻譜產品的感受和體驗，並對駿豐頻譜和國家體育總局訓練局的合作給予了高度的讚賞。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '');
INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `description`, `infod`) VALUES
(31, 4, '骏丰频谱“内喝外照”产品闪耀日内瓦发明展', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015年4月19日，第43届日内瓦国际发明展在瑞士日内瓦巴莱斯堡展览会议中心闭幕，经过85名来自世界各地各个领域的专家评审，骏丰频谱“内喝外照”生物频谱套装产品一举获得3项银奖，成为全场获奖最多的参展企业。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;日内瓦国际发明展创办于1973年，是世界上举办历史最长、规模最大的发明展之一，与德国纽伦堡国际发明展、美国匹兹堡国际发明展并称为世界三大发明展，迄今已成功举办了43届。本届展会吸引了全球48个国家和地区的700多个发明者参与，带来了1000余件新发明。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;日 内瓦发明展创始人兼主席让-吕克·文森特表示，本届发明展数量最多的发明门类集中在医药及健康护理、电子和电脑科学、机械及工业、环境与能源保护等领域。 20多年来，广东骏丰频谱股份有限公司一直坚持自主创新，致力于运用中国人自己发明的生物频谱技术提高人们的生命生活品质。在此次发明展会上，骏丰频谱公 司研发生产的骏丰频谱水治疗保健仪JF-139型、骏丰频谱治疗保健仪JF-802型、骏丰频谱治疗保健房JF-902C型“内喝外照”生物频谱套装产品 一举获得3项银奖，在700多个参展者中脱颖而出，成为获奖最多的参展企业。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;早在2006年6月，骏丰频谱水治疗保健仪就在第22届美国匹兹堡国际新发明新产品博览会上，获得了一金二银三项发明大奖。至此，在世界两大发明展会上，骏丰频谱共斩获了六项国际发明大奖，充分表明了骏丰频谱产品技术的独特性、创新性以及科技性。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(31, 3, '駿豐頻譜“內喝外照”產品閃耀日內瓦發明展', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;2015年4月19日，第43屆日內瓦國際發明展在瑞士日內瓦巴萊斯堡展覽會議中心閉幕，經過85名來自世界各地各個領域的專家評審，駿豐頻譜“內喝外照”生物頻譜套裝產品一舉獲得3項銀獎，成為全場獲獎最多的參展企業。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;日內瓦國際發明展創辦於1973年，是世界上舉辦歷史最長、規模最大的發明展之一，與德國紐倫堡國際發明展、美國匹茲堡國際發明展並稱為世界三大發明展，迄今已成功舉辦了43屆。本屆展會吸引了全球48個國家和地區的700多個發明者參與，帶來了1000餘件新發明。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;日 內瓦發明展創始人兼主席讓-呂克·文森特表示，本屆發明展數量最多的發明門類集中在醫藥及健康護理、電子和電腦科學、機械及工業、環境與能源保護等領域。 20多年來，廣東駿豐頻譜股份有限公司一直堅持自主創新，致力於運用中國人自己發明的生物頻譜技術提高人們的生命生活品質。在此次發明展會上，駿豐頻譜公 司研發生產的駿豐頻譜水治療保健儀JF-139型、駿豐頻譜治療保健儀JF-802型、駿豐頻譜治療保健房JF-902C型“內喝外照”生物頻譜套裝產品 一舉獲得3項銀獎，在700多個參展者中脫穎而出，成為獲獎最多的參展企業。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news06/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;早在2006年6月，駿豐頻譜水治療保健儀就在第22屆美國匹茲堡國際新發明新產品博覽會上，獲得了一金二銀三項發明大獎。至此，在世界兩大發明展會上，駿豐頻譜共斬獲了六項國際發明大獎，充分表明了駿豐頻譜產品技術的獨特性、創新性以及科技性。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(30, 1, '駿豐頻譜“內喝外照”產品受國家體育總局訓練局好評', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;今年，國家體育總局訓練局引入了駿豐頻譜“內喝外照”產品，為運動員的康復提供理療輔助。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;為了讓駐局的教練員、運動員及各運動隊的相關專家更好地瞭解駿豐“內喝外照”生物頻譜技術。4月9日，國家體育總局訓練局邀請駿豐頻譜公司，共同舉辦了一場“駿豐頻譜‘內喝外照’頻譜技術對運動康復理療的作用專題講座”。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;講座邀請到駿豐事業創始人趙毅董事長、中國醫學科學院基礎醫學研究所、北京協和醫學院基礎學院博士生導師吳元德教授、北京大學醫學部微循環研究中心副主任劉育英教授，與教練員、運動員們講解、分享交流“內喝外照”生物頻譜技術對運動康復理療的作用。&lt;/p&gt;\r\n\r\n			&lt;p&gt;通過此次講座，訓練局代表更瞭解生物頻譜療法和使用方法，他們對駿豐產品充滿了信心。體能康復中心李強主任表示：駿豐頻譜房在康復中心受到運動員追捧，大家都搶著用，特別是體操和舉重運動員用的最多。&lt;/p&gt;\r\n\r\n			&lt;p&gt;(右圖) 趙毅董事長(左二)向訓練局領導講解駿豐產品，訓練局副局長呂鐵杭(左一)對駿豐產品很感興趣。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;接下來，國家體育總局訓練局將進一步與駿豐公司展開合作，就駿豐“內喝外照”科技產品如何更好地實現運動員訓練後康復等問題進行科研合作，助力駐訓運動員在2016年里約熱內盧奧運會實現奪冠夢!&lt;/p&gt;\r\n\r\n			&lt;p&gt;(左圖) 吳元德教授講解駿豐生物頻譜技術原理。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;劉育英教授講解駿豐生物頻譜技術對運動康復理療的作用。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo06.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;(上圖) 駿豐與體育有著不解之緣，而趙毅董事長曾是一名&lt;br /&gt;\r\n			勇破全國紀錄的國家自行車運動員。深受生物頻譜療法之惠的她講解駿豐“內喝外照”產品的使用方法。&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;(上圖) 駿豐董事長趙毅(左二)與跳水奧運冠軍何沖(右二)、陳若琳(左一)合影。&lt;/p&gt;\r\n			祝願駐訓練局的國家隊運動員們在明年的里約熱內盧奧運會取得優異成績，也希望越來越多的人在駿豐內喝外照產品的説明下身心健康。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', ''),
(30, 4, '駿豐頻譜“內喝外照”產品受國家體育總局訓練局好評', '&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;2&quot;&gt;今年，国家体育总局训练局引入了骏丰频谱“内喝外照”产品，为运动员的康复提供理疗辅助。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo01.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;为了让驻局的教练员、运动员及各运动队的相关专家更好地了解骏丰“内喝外照”生物频谱技术。4月9日，国家体育总局训练局邀请骏丰频谱公司，共同举办了一场“骏丰频谱‘内喝外照’频谱技术对运动康复理疗的作用专题讲座”。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;讲座邀请到骏丰事业创始人赵毅董事长、中国医学科学院基础医学研究所、北京协和医学院基础学院博士生导师吴元德教授、北京大学医学部微循环研究中心副主任刘育英教授，与教练员、运动员们讲解、分享交流“内喝外照”生物频谱技术对运动康复理疗的作用。&lt;/p&gt;\r\n\r\n			&lt;p&gt;通过此次讲座，训练局代表更了解生物频谱疗法和使用方法，他们对骏丰产品充满了信心。体能康复中心李强主任表示：骏丰频谱房在康复中心受到运动员追捧，大家都抢着用，特别是体操和举重运动员用的最多。&lt;/p&gt;\r\n\r\n			&lt;p&gt;(右图) 赵毅董事长(左二)向训练局领导讲解骏丰产品，训练局副局长吕铁杭(左一)对骏丰产品很感兴趣。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo02.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo03.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;接下来，国家体育总局训练局将进一步与骏丰公司展开合作，就骏丰“内喝外照”科技产品如何更好地实现运动员训练后康复等问题进行科研合作，助力驻训运动员在2016年里约热内卢奥运会实现夺冠梦!&lt;/p&gt;\r\n\r\n			&lt;p&gt;(左图) 吴元德教授讲解骏丰生物频谱技术原理。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;刘育英教授讲解骏丰生物频谱技术对运动康复理疗的作用。&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo04.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width: 850px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo05.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;http://202.74.0.45/temp/jfchealth/image/data/news/news05/photo06.png&quot; style=&quot;width: 300px; height: 230px;&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;(上图) 骏丰与体育有着不解之缘，而赵毅董事长曾是一名&lt;br /&gt;\r\n			勇破全国纪录的国家自行车运动员。深受生物频谱疗法之惠的她讲解骏丰“内喝外照”产品的使用方法。&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;(上图) 骏丰董事长赵毅(左二)与跳水奥运冠军何冲(右二)、陈若琳(左一)合影。&lt;/p&gt;\r\n			祝愿驻训练局的国家队运动员们在明年的里约热内卢奥运会取得优异成绩，也希望越来越多的人在骏丰内喝外照产品的说明下身心健康。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_news_image`
--

CREATE TABLE IF NOT EXISTS `oc_news_image` (
  `news_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `oc_news_image`
--

INSERT INTO `oc_news_image` (`news_image_id`, `news_id`, `image`, `sort_order`) VALUES
(8, 35, 'data/article/user/ - 一位世界冠軍與駿豐結緣.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'checkbox', 3),
(4, 'text', 4),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 1),
(12, 'date', 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size'),
(1, 3, 'Radio'),
(2, 3, 'Checkbox'),
(4, 3, 'Text'),
(6, 3, 'Textarea'),
(8, 3, 'Date'),
(7, 3, 'File'),
(5, 3, 'Select'),
(9, 3, 'Time'),
(10, 3, 'Date &amp; Time'),
(12, 3, 'Delivery Date'),
(11, 3, 'Size'),
(1, 4, 'Radio'),
(2, 4, 'Checkbox'),
(4, 4, 'Text'),
(6, 4, 'Textarea'),
(8, 4, 'Date'),
(7, 4, 'File'),
(5, 4, 'Select'),
(9, 4, 'Time'),
(10, 4, 'Date &amp; Time'),
(12, 4, 'Delivery Date'),
(11, 4, 'Size');

-- --------------------------------------------------------

--
-- 表的结构 `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small'),
(43, 3, 1, 'Large'),
(32, 3, 1, 'Small'),
(45, 3, 2, 'Checkbox 4'),
(44, 3, 2, 'Checkbox 3'),
(31, 3, 1, 'Medium'),
(42, 3, 5, 'Yellow'),
(41, 3, 5, 'Green'),
(39, 3, 5, 'Red'),
(40, 3, 5, 'Blue'),
(23, 3, 2, 'Checkbox 1'),
(24, 3, 2, 'Checkbox 2'),
(48, 3, 11, 'Large'),
(47, 3, 11, 'Medium'),
(46, 3, 11, 'Small'),
(43, 4, 1, 'Large'),
(32, 4, 1, 'Small'),
(45, 4, 2, 'Checkbox 4'),
(44, 4, 2, 'Checkbox 3'),
(31, 4, 1, 'Medium'),
(42, 4, 5, 'Yellow'),
(41, 4, 5, 'Green'),
(39, 4, 5, 'Red'),
(40, 4, 5, 'Blue'),
(23, 4, 2, 'Checkbox 1'),
(24, 4, 2, 'Checkbox 2'),
(48, 4, 11, 'Large'),
(47, 4, 11, 'Medium'),
(46, 4, 11, 'Small');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/', 0, 1, 'test0624', 'test0624', '343419466@qq.com', '15878454212', '', 'test0624', 'test0624', '', '', '', '31354654', '', '321561', '', 'Brunei Darussalam', 32, 'Temburong', 477, '', '貨到付款', 'cod', 'test0624', 'test0624', '', '31354654', '', '321561', '', 'Brunei Darussalam', 32, 'Temburong', 477, '', '固定運費率', 'flat.flat', '', '105.0000', 1, 0, '0.0000', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'zh-CN,zh;q=0.8,zh-TW;q=0.6,en;q=0.4,ja;q=0.2', '2014-06-29 15:05:16', '2014-06-29 15:05:18'),
(2, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/', 0, 1, 'test0624', 'test0624', '343419466@qq.com', '15878454212', '', 'test0624', 'test0624', '', '', '', '31354654', '', '321561', '', 'Bahrain', 17, 'Central', 316, '', '貨到付款', 'cod', 'test0624', 'test0624', '', '31354654', '', '321561', '', 'Bahrain', 17, 'Central', 316, '', '固定運費率', 'flat.flat', '', '105.0000', 1, 0, '0.0000', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'zh-CN,zh;q=0.8,zh-TW;q=0.6,en;q=0.4,ja;q=0.2', '2014-06-29 15:06:39', '2014-06-29 15:06:41'),
(3, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/', 0, 1, 'test0624', 'test0624', 'pmw1014@163.com', '15878454212', '', 'test0624', 'test0624', '', '', '', '31354654', '', '321561', '', 'Bahamas', 16, 'Mangrove Cay', 301, '', '貨到付款', 'cod', 'test0624', 'test0624', '', '31354654', '', '321561', '', 'Bahamas', 16, 'Mangrove Cay', 301, '', '固定運費率', 'flat.flat', '', '204.9900', 1, 0, '0.0000', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'zh-CN,zh;q=0.8,zh-TW;q=0.6,en;q=0.4,ja;q=0.2', '2014-06-29 15:08:42', '2014-06-29 15:08:44'),
(4, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/', 0, 1, 'test0624', 'test0624', 'pmw1014@163.com', '15878454212', '', 'test0624', 'test0624', '', '', '', '31354654', '', '321561', '412315', 'China', 44, 'Inner Mongolia', 699, '', '免費結帳', 'free_checkout', 'test0624', 'test0624', '', '31354654', '', '321561', '412315', 'China', 44, 'Inner Mongolia', 699, '', '固定運費率', 'flat.flat', '', '0.0000', 1, 0, '0.0000', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'zh-CN,zh;q=0.8,zh-TW;q=0.6,en;q=0.4,ja;q=0.2', '2014-07-09 10:24:38', '2014-07-09 10:24:40'),
(5, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/', 0, 1, 'test0624', 'test0624', 'pmw1014@163.com', '15878454212', '', 'test0624', 'test0624', '', '', '', '31354654', '', '321561', '412315', 'China', 44, 'Henan', 695, '', '免費結帳', 'free_checkout', 'test0624', 'test0624', '', '31354654', '', '321561', '412315', 'China', 44, 'Henan', 695, '', '固定運費率', 'flat.flat', '', '0.0000', 1, 0, '0.0000', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'zh-CN,zh;q=0.8,zh-TW;q=0.6,en;q=0.4,ja;q=0.2', '2014-07-09 15:02:54', '2014-07-09 15:02:55'),
(6, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/', 0, 1, 'test0624', 'test0624', 'pmw1014@163.com', '15878454212', '', 'test0624', 'test0624', '', '', '', '31354654', '', '321561', '', 'China', 44, 'Hunan', 698, '', '免費結帳', 'free_checkout', 'test0624', 'test0624', '', '31354654', '', '321561', '', 'China', 44, 'Hunan', 698, '', '固定運費率', 'flat.flat', '', '0.0000', 0, 0, '0.0000', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'zh-CN,zh;q=0.8,zh-TW;q=0.6,en;q=0.4,ja;q=0.2', '2014-07-17 09:30:46', '2014-07-17 09:30:46'),
(7, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/', 0, 1, 'test0624', 'test0624', 'pmw1014@163.com', '15878454212', '', 'test0624', 'test0624', '', '', '', '31354654', '', '321561', '', 'China', 44, 'Hunan', 698, '', '貨到付款', 'cod', 'test0624', 'test0624', '', '31354654', '', '321561', '', 'China', 44, 'Hunan', 698, '', '固定運費率', 'flat.flat', '', '602.0000', 1, 0, '0.0000', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'zh-CN,zh;q=0.8,zh-TW;q=0.6,en;q=0.4,ja;q=0.2', '2014-07-17 10:15:38', '2014-07-17 10:15:42'),
(8, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/', 0, 1, 'test man', 'test man', 'test@163.com', '15874521268', '', 'test man', 'test man', '', '', '', 'test addr', '', 'test', '', 'China', 44, 'Guangdong', 689, '', '貨到付款', 'cod', 'test man', 'test man', '', 'test addr', '', 'test', '', 'China', 44, 'Guangdong', 689, '', '固定運費率', 'flat.flat', '', '600.0000', 1, 0, '0.0000', 2, 2, 'USD', '1.00000000', '14.198.112.191', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4', '2014-08-08 14:08:55', '2014-08-08 14:08:57'),
(9, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, 'test', 'test', 'test@test.com', '123456', '', 'test', 'test', '', '', '', 'testtest', '', 'test', '', 'China', 44, 'Jiangsu', 700, '', 'PayPal Express Checkout', 'pp_express', 'test', 'test', '', 'testtest', '', 'test', '', 'China', 44, 'Jiangsu', 700, '', '固定運費率', 'flat.flat', '', '100.0000', 0, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '27.38.211.233', '', 'Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/20100101 Firefox/31.0', 'en-US,en;q=0.5', '2014-09-12 16:23:56', '2014-09-12 16:23:56'),
(10, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, 'Joson', 'TSe', 'josontse@tcglobalwork.com', '98092200', '', 'Joson', 'TSe', '', '', '', 'HK 1000000', '', 'HK', '', 'China', 44, 'Hong Kong', 696, '', 'PayPal Express Checkout', 'pp_express', 'Joson', 'TSe', '', 'HK 1000000', '', 'HK', '', 'China', 44, 'Hong Kong', 696, '', '固定運費率', 'flat.flat', '', '500.0000', 0, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '14.198.112.191', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4', '2014-09-12 16:49:55', '2014-09-12 16:49:55'),
(11, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, '小姐', '123', '123@yahoo.com', '12345678', '', '小姐', '123', '', '', '', '1234', '', '123', '123', 'China', 44, 'Hong Kong', 696, '', 'PayPal Express Checkout', 'pp_express', '小姐', '123', '', '1234', '', '123', '123', 'China', 44, 'Hong Kong', 696, '', '固定運費率', 'flat.flat', '', '500.0000', 0, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '202.140.108.96', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-hk; LG-V500 Build/KOT49I.V50020d) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.1599.103 Safari/537.36', 'zh-HK,en-US;q=0.8', '2014-09-16 12:59:48', '2014-09-16 12:59:48'),
(12, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, 'Joson', 'Tse', 'Josontse@hotmail.com', '98092200', '', 'Joson', 'Tse', '', '', '', 'Hhhhhioklphggy', '', 'HK', '', 'China', 44, 'Hong Kong', 696, '', 'PayPal Express Checkout', 'pp_express', 'Joson', 'Tse', '', 'Hhhhhioklphggy', '', 'HK', '', 'China', 44, 'Hong Kong', 696, '', '固定運費率', 'flat.flat', '', '500.0000', 0, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '120.88.228.106', '', 'Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53', 'zh-tw', '2014-09-16 12:59:49', '2014-09-16 12:59:49'),
(13, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, 'admin', '11111111111', '123@qq.com', '1111111111', '', 'admin', '11111111111', '', '', '', '11111111', '', '1111', '', 'China', 44, 'Chongqing', 686, '', '銀行轉帳', 'bank_transfer', 'admin', '11111111111', '', '11111111', '', '1111', '', 'China', 44, 'Chongqing', 686, '', '固定運費率', 'flat.flat', '', '500.0000', 7, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '27.38.223.251', '', 'Mozilla/5.0 (Windows NT 6.1; rv:32.0) Gecko/20100101 Firefox/32.0', 'en-US,en;q=0.5', '2014-09-27 11:02:22', '2014-09-27 11:02:23'),
(14, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, 'admin', '11111111111', '555555555555@qq.com', '1111111111', '', 'admin', '11111111111', '', '', '', '11111111', '', 'ShenZhen', '', 'China', 44, 'Henan', 695, '', '貨到付款', 'cod', 'admin', '11111111111', '', '11111111', '', 'ShenZhen', '', 'China', 44, 'Henan', 695, '', '固定運費率', 'flat.flat', '', '150.0000', 1, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '58.251.82.33', '', 'Mozilla/5.0 (Windows NT 6.1; rv:32.0) Gecko/20100101 Firefox/32.0', 'en-US,en;q=0.5', '2014-11-06 15:24:35', '2014-11-06 15:24:37'),
(15, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, 'test', 'test', 'test@test.com', '1111111111', '', 'test', 'test', '', '', '', 'test', '', 'test', '', 'China', 44, 'Jiangxi', 701, '', '銀行轉帳', 'bank_transfer', 'test', 'test', '', 'test', '', 'test', '', 'China', 44, 'Jiangxi', 701, '', '固定運費率', 'flat.flat', '', '68.0000', 7, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '58.251.82.250', '', 'Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0', 'en-US,en;q=0.5', '2014-11-22 14:23:29', '2014-11-22 14:23:31'),
(16, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, 'admin', '11111111111', '555555555555@qq.com', '1111111111', '', 'admin', '11111111111', '', '', '', '11111111', '', 'ShenZhen', '', 'China', 44, 'Chongqing', 686, '', '銀行轉帳', 'bank_transfer', 'admin', '11111111111', '', '11111111', '', 'ShenZhen', '', 'China', 44, 'Chongqing', 686, '', '固定運費率', 'flat.flat', '', '68.0000', 7, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '58.251.86.75', '', 'Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0', 'en-US,en;q=0.5', '2014-12-01 17:00:52', '2014-12-01 17:00:54'),
(17, 0, 'INV-2013-00', 0, 'NETNETGO', 'http://www.netnetgo.com/test/', 0, 1, 'admin', '11111111111', '7676@qwe.cc', '1111111111', '', 'admin', '11111111111', '', '', '', '11111111', '', 'ShenZhen', '', 'China', 44, 'Heilongjiang', 694, '', 'PayPal Express Checkout', 'pp_express', 'admin', '11111111111', '', '11111111', '', 'ShenZhen', '', 'China', 44, 'Heilongjiang', 694, '', '固定運費率', 'flat.flat', '', '68.0000', 0, 0, '0.0000', 2, 2, 'HKD', '1.00000000', '58.251.86.75', '', 'Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0', 'en-US,en;q=0.5', '2014-12-02 10:31:56', '2014-12-02 10:31:56');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_download`
--

CREATE TABLE IF NOT EXISTS `oc_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_fraud`
--

CREATE TABLE IF NOT EXISTS `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 1, '', '2014-06-29 15:05:18'),
(2, 2, 1, 1, '', '2014-06-29 15:06:41'),
(3, 3, 1, 1, '', '2014-06-29 15:08:44'),
(4, 4, 1, 1, '', '2014-07-09 10:24:40'),
(5, 5, 1, 1, '', '2014-07-09 15:02:55'),
(6, 7, 1, 1, '', '2014-07-17 10:15:42'),
(7, 8, 1, 1, '', '2014-08-08 14:08:57'),
(8, 13, 7, 1, '銀行轉帳指令:\n\n銀行轉帳操作指南\n\n收到付款後我們將按訂單給您發貨。', '2014-09-27 11:02:23'),
(9, 14, 1, 1, '', '2014-11-06 15:24:37'),
(10, 15, 7, 1, '銀行轉帳指令:\n\n銀行轉帳操作指南\n\n收到付款後我們將按訂單給您發貨。', '2014-11-22 14:23:31'),
(11, 16, 7, 1, '銀行轉帳指令:\n\n銀行轉帳操作指南\n\n收到付款後我們將按訂單給您發貨。', '2014-12-01 17:00:54');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '0.0000', 0),
(2, 2, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '0.0000', 0),
(3, 3, 49, 'Samsung Galaxy Tab 10.1', 'SAM1', 1, '199.9900', '199.9900', '0.0000', 1000),
(4, 4, 54, '泊美 植物倍水潤系列 I水潤型面部護理套裝補水保濕 正品', 'NDJ-01', 6, '0.0000', '0.0000', '0.0000', 0),
(5, 5, 50, '萃瀅亮皙白隔離霜', 'NN2', 1, '0.0000', '0.0000', '0.0000', 0),
(6, 5, 54, '泊美 植物倍水潤系列 I水潤型面部護理套裝補水保濕 正品', 'NDJ-01', 1, '0.0000', '0.0000', '0.0000', 0),
(7, 6, 50, '萃瀅亮皙白隔離霜', 'NN2', 1, '0.0000', '0.0000', '0.0000', 0),
(8, 7, 50, '萃瀅亮皙白隔離霜', 'NN2', 1, '0.0000', '0.0000', '0.0000', 0),
(9, 7, 53, '民族風美容化妝刷組合1', 'GLS-011', 2, '1.0000', '2.0000', '0.0000', 0),
(10, 7, 56, 'test pro1', 'GLS-01d', 1, '600.0000', '600.0000', '0.0000', 0),
(11, 8, 56, 'test pro1', 'GLS-01d', 1, '600.0000', '600.0000', '0.0000', 0),
(12, 9, 67, '(全新)Qeelin 香氛', 'AC0008', 1, '100.0000', '100.0000', '0.0000', 0),
(13, 10, 74, '(九成新)CELINE 紅色添皮化妝袋', 'AD0028', 1, '500.0000', '500.0000', '0.0000', 0),
(14, 11, 74, '(九成新)CELINE 紅色添皮化妝袋', 'AD0028', 1, '500.0000', '500.0000', '0.0000', 0),
(15, 12, 74, '(九成新)CELINE 紅色添皮化妝袋', 'AD0028', 1, '500.0000', '500.0000', '0.0000', 0),
(16, 13, 74, '(九成新)CELINE 紅色添皮化妝袋', 'AD0028', 1, '500.0000', '500.0000', '0.0000', 0),
(17, 14, 73, '(全新)Ermenegildo Zegna 間條布袋', 'AD0017', 1, '150.0000', '150.0000', '0.0000', 0),
(18, 15, 80, 'AA0001-(全新有盒)The Peninsula 聖誕Ball', 'AA0001', 1, '68.0000', '68.0000', '0.0000', 0),
(19, 16, 80, 'AA0001-(全新有盒)The Peninsula 聖誕Ball', 'AA0001', 1, '68.0000', '68.0000', '0.0000', 0),
(20, 17, 80, 'AA0001-(全新有盒)The Peninsula 聖誕Ball', 'AA0001', 1, '68.0000', '68.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired'),
(2, 3, 'Processing'),
(3, 3, 'Shipped'),
(7, 3, 'Canceled'),
(5, 3, 'Complete'),
(8, 3, 'Denied'),
(9, 3, 'Canceled Reversal'),
(10, 3, 'Failed'),
(11, 3, 'Refunded'),
(12, 3, 'Reversed'),
(13, 3, 'Chargeback'),
(1, 3, 'Pending'),
(16, 3, 'Voided'),
(15, 3, 'Processed'),
(14, 3, 'Expired'),
(2, 4, 'Processing'),
(3, 4, 'Shipped'),
(7, 4, 'Canceled'),
(5, 4, 'Complete'),
(8, 4, 'Denied'),
(9, 4, 'Canceled Reversal'),
(10, 4, 'Failed'),
(11, 4, 'Refunded'),
(12, 4, 'Reversed'),
(13, 4, 'Chargeback'),
(1, 4, 'Pending'),
(16, 4, 'Voided'),
(15, 4, 'Processed'),
(14, 4, 'Expired');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', '商品總額', '$100.00', '100.0000', 1),
(2, 1, 'shipping', '固定運費率', '$5.00', '5.0000', 3),
(3, 1, 'total', '訂單總額', '$105.00', '105.0000', 9),
(4, 2, 'sub_total', '商品總額', '$100.00', '100.0000', 1),
(5, 2, 'shipping', '固定運費率', '$5.00', '5.0000', 3),
(6, 2, 'total', '訂單總額', '$105.00', '105.0000', 9),
(7, 3, 'sub_total', '商品總額', '$199.99', '199.9900', 1),
(8, 3, 'shipping', '固定運費率', '$5.00', '5.0000', 3),
(9, 3, 'total', '訂單總額', '$204.99', '204.9900', 9),
(10, 4, 'sub_total', '商品總額', '$0.00', '0.0000', 1),
(11, 4, 'total', '訂單總額', '$0.00', '0.0000', 9),
(12, 5, 'sub_total', '商品總額', '$0.00', '0.0000', 1),
(13, 5, 'total', '訂單總額', '$0.00', '0.0000', 9),
(14, 6, 'sub_total', '商品總額', '$0.00', '0.0000', 1),
(15, 6, 'total', '訂單總額', '$0.00', '0.0000', 9),
(16, 7, 'sub_total', '商品總額', '$602.00', '602.0000', 1),
(17, 7, 'total', '訂單總額', '$602.00', '602.0000', 9),
(18, 8, 'sub_total', '商品總額', '$600.00', '600.0000', 1),
(19, 8, 'total', '訂單總額', '$600.00', '600.0000', 9),
(20, 9, 'sub_total', '商品總額', 'HKD$100.00', '100.0000', 1),
(21, 9, 'total', '訂單總額', 'HKD$100.00', '100.0000', 9),
(22, 10, 'sub_total', '商品總額', 'HKD$500.00', '500.0000', 1),
(23, 10, 'total', '訂單總額', 'HKD$500.00', '500.0000', 9),
(24, 11, 'sub_total', '商品總額', 'HKD$500.00', '500.0000', 1),
(25, 11, 'total', '訂單總額', 'HKD$500.00', '500.0000', 9),
(26, 12, 'sub_total', '商品總額', 'HKD$500.00', '500.0000', 1),
(27, 12, 'total', '訂單總額', 'HKD$500.00', '500.0000', 9),
(28, 13, 'sub_total', '商品總額', 'HKD$500.00', '500.0000', 1),
(29, 13, 'total', '訂單總額', 'HKD$500.00', '500.0000', 9),
(30, 14, 'sub_total', '商品總額', 'HKD$150.00', '150.0000', 1),
(31, 14, 'total', '訂單總額', 'HKD$150.00', '150.0000', 9),
(32, 15, 'sub_total', '商品總額', 'HKD$68.00', '68.0000', 1),
(33, 15, 'total', '訂單總額', 'HKD$68.00', '68.0000', 9),
(34, 16, 'sub_total', '商品總額', 'HKD$68.00', '68.0000', 1),
(35, 16, 'total', '訂單總額', 'HKD$68.00', '68.0000', 9),
(36, 17, 'sub_total', '商品總額', 'HKD$68.00', '68.0000', 1),
(37, 17, 'total', '訂單總額', 'HKD$68.00', '68.0000', 9);

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_paypal_order`
--

CREATE TABLE IF NOT EXISTS `oc_paypal_order` (
  `paypal_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `capture_status` enum('Complete','NotComplete') DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `authorization_id` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`paypal_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_paypal_order_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_paypal_order_transaction` (
  `paypal_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_order_id` int(11) NOT NULL,
  `transaction_id` char(20) NOT NULL,
  `parent_transaction_id` char(20) NOT NULL,
  `created` datetime NOT NULL,
  `note` varchar(255) NOT NULL,
  `msgsubid` char(38) NOT NULL,
  `receipt_id` char(20) NOT NULL,
  `payment_type` enum('none','echeck','instant','refund','void') DEFAULT NULL,
  `payment_status` char(20) NOT NULL,
  `pending_reason` char(50) NOT NULL,
  `transaction_entity` char(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `debug_data` text NOT NULL,
  `call_data` text NOT NULL,
  PRIMARY KEY (`paypal_order_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `is_net` int(1) DEFAULT '0',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `is_net` (`is_net`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=206 ;

--
-- 转存表中的数据 `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`, `is_net`, `filename`) VALUES
(186, 'JF-139', '', '', '', '', '', '', '', 1, 5, 'data/products/139/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 1, '2015-04-23 13:56:50', '2015-10-12 18:18:42', 112, 0, 'data/img_product_139_home.png'),
(187, 'WF-1', '', '', '', '', '', '', '', 1, 5, 'data/products/WF-1/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-04-23 13:57:32', '2015-10-13 11:26:21', 43, 0, 'data/img_productWF1_home.png'),
(188, 'JF-902C', '', '', '', '', '', '', '', 1, 5, 'data/products/JF-902C/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 4, 1, '2015-04-23 13:58:15', '2015-10-13 16:44:10', 99, 0, 'data/img_productJF902C_home.png'),
(189, 'JF-802', '', '', '', '', '', '', '', 1, 5, 'data/products/JF-802/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 3, 1, '2015-04-25 09:49:07', '2015-10-13 13:44:34', 134, 0, 'data/img_product802_home.png'),
(190, 'JF-316', '', '', '', '', '', '', '', 1, 5, 'data/products/JF-316/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 1, '2015-04-25 10:25:23', '2015-10-12 16:12:53', 41, 0, 'data/img_productJF316_home.png'),
(191, 'JF-306', '', '', '', '', '', '', '', 1, 5, 'data/products/JF-306/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-04-25 10:30:35', '2015-10-13 11:40:03', 50, 0, 'data/img_productJF306_home.png'),
(192, 'JF-139/JF-802', '', '', '', '', '', '', '', 1, 5, 'data/products/set1/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 3, 1, '2015-04-25 10:37:47', '2015-10-02 12:58:23', 86, 0, 'data/products/set/img_index_set01.png'),
(203, 'TK160X90-1X / TK180X145-2X', '', '', '', '', '', '', '', 1, 5, 'data/products/TK160X90-1X/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 5, 1, '2015-06-08 17:26:33', '2015-10-12 15:39:03', 54, 0, 'data/products/TK160X90-1X/img_TK160_index_product01.png'),
(195, 'JF-W136', '', '', '', '', '', '', '', 1, 5, 'data/products/JF-W136/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 3, 1, '2015-04-25 10:47:11', '2015-10-12 16:43:14', 46, 0, 'data/img_productW136_home.png'),
(196, 'JF-MJ-625', '', '', '', '', '', '', '', 1, 5, 'data/products/JF-MJ-625/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 1, '2015-04-25 10:48:55', '2015-10-13 13:04:57', 74, 0, 'data/img_productJF625_home.png'),
(197, '300 ml', '', '', '', '', '', '', '', 1, 5, 'data/products/ Permeate/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-04-25 10:52:50', '2015-10-12 18:30:05', 41, 0, 'data/img_productJF123A_home.png'),
(204, 'JF-139B / DK3060-1SX', '', '', '', '', '', '', '', 1, 5, 'data/products/set2/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 1, '2015-06-09 15:46:06', '2015-10-02 13:04:27', 21, 0, 'data/products/set/img_index_set02.png'),
(205, 'JF-118B / JF-306', '', '', '', '', '', '', '', 1, 5, 'data/products/set3/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-06-09 15:54:35', '2015-10-02 14:23:33', 18, 0, 'data/products/set/img_index_set03.png'),
(185, 'JF-139B', '', '', '', '', '', '', '', 1, 5, 'data/products/139B/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 3, 1, '2015-04-23 13:56:12', '2015-10-10 12:54:44', 256, 0, 'data/product_home.png'),
(198, 'JF-118B', '', '', '', '', '', '', '', 1, 5, 'data/products/118B/img_products_01.png', 0, 1, '0.0000', 0, 0, '2015-04-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-05-28 14:25:54', '2015-10-12 12:51:33', 64, 0, 'data/products/JF_118/img_index-JF118B.png'),
(201, 'DK30X60-2S', '', '', '', '', '', '', '', 1, 5, 'data/products/DK3060-1SX/img_products_02.png', 0, 1, '0.0000', 0, 0, '2015-04-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 4, 1, '2015-06-08 17:12:05', '2015-10-12 15:17:50', 93, 0, 'data/img_productDK3060_home.png');

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `feature` text,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(185, 1, '駿豐頻譜水保健儀 (座枱式)', '&lt;p&gt;“駿豐頻譜水保健儀”是採用國際頂尖頻譜科技製作而成的家居健康頻譜水飲用器。它通過特定的頻譜場作用，將普通飲用水製作成與人體正常器官組織、細胞頻譜場相匹配的駿豐頻譜水。&lt;/p&gt;\r\n\r\n&lt;p&gt;當改變了原飲用水的理化特性後，它改變了O17核磁共振譜線；提高了電導率，電導率更接近於人體血漿電導率譜；增加了水中的含氧量5％；降低了水中氯仿含量1.7微克 / 升；提高了水對無機物的溶解力40.8％。&lt;/p&gt;\r\n\r\n&lt;p&gt;駿豐頻譜水不含任何藥物成份，製作方便，口感良好，飲用後能迅速進入並滲透到體內各部份與之相互作用，對已失調的人體內部結構進行調解，使其恢復到正常平衡狀態，同時使健康的器官、細胞功能更加穩定，改善微循環、促進新陳化謝、增強腸胃功能、促進食物消化與營養吸收、提高人體綜合免疫能力，從而達到預防、保健的效果。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;right&quot; class=&quot;index_content_txt&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;3&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;頻譜水的特點&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;1. 更容易被人體吸收和利用;&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						2. 增加對人體各系統的供氧;&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						3. 有利於人體的新陳代謝;&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						4. 減少由氯仿帶來的不健康因素;&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						5. 提高人體免疫功能。&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;產品輔助功能&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;p&gt;1. 更容易被人體器官組織細胞吸收和利用&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 増加人體各細胞的供氧量促進新陳代謝&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 改善微循環調節神經及調節泌尿系統功能&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 減少飲水中由氯化物帶來的不健康因素&lt;/p&gt;\r\n\r\n						&lt;p&gt;5. 提高人體綜合免疫力及抗氧化能力&lt;/p&gt;\r\n\r\n						&lt;p&gt;6. 增強腸胃功能促進食物消化與營養吸收&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;主要研究機構&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;a) 中國計量科學研究院&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						b) 北京大學分析測試中心&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						c) 解放軍總醫院（301醫院）&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						d) 國家城市供水水質監測網北京監測站&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						e) 中山醫科大學及廣州市紅十字會醫院&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(185, 4, '骏丰频谱水保健仪 (座枱式)', '&lt;p&gt;“骏丰频谱水保健仪”是采用国际顶尖频谱科技制作而成的家居健康频谱水饮用器。它通过特定的频谱场作用，将普通饮用水制作成与人体正常器官组织、细胞频谱场相匹配的骏丰频谱水。&lt;/p&gt;\r\n\r\n&lt;p&gt;当改变了原饮用水的理化特性后，它改变了O17核磁共振谱线；提高了电导率，电导率更接近于人体血浆电导率谱；增加了水中的含氧量5％；降低了水中氯仿含量1.7微克 / 升；提高了水对无机物的溶解力40.8％。&lt;/p&gt;\r\n\r\n&lt;p&gt;骏丰频谱水不含任何药物成份，制作方便，口感良好，饮用后能迅速进入并渗透到体内各部份与之相互作用，对已失调的人体内部结构进行调解，使其恢复到正常平衡状态，同时使健康的器官、细胞功能更加稳定，改善微循环、促进新陈化谢、增强肠胃功能、促进食物消化与营养吸收、提高人体综合免疫能力，从而达到预防、保健的效果。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;right&quot; class=&quot;index_content_txt&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;3&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;产品特点&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;\r\n						&lt;p&gt;1. 骏丰频谱水保健仪的频谱发生器装置已拥有中国、美国、德国、英国、澳大利亚和新加坡六个国家共七项发明专利。&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 与美国世界著名Teams Design公司联合设计，款式新颖、高档大方，是走在时尚尖端的高科技健康产品。&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 采用世界先进的电子技术，实现轻触式开关控制电磁水阀出/停水、触摸按键式开关及荧光显示屏智能技术控制，控制模式更加优化，使用更加方便。&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 选用高质量材料，更美观、高档，手感细腻；且防菌、抗高热，质量稳定。&lt;/p&gt;\r\n\r\n						&lt;p&gt;5. 采用微电脑芯片控制，设有水位自检、防干烧检测及双重防干烧保护功能，更有效地延长加热系统的使用寿命。&lt;/p&gt;\r\n\r\n						&lt;p&gt;6. 人性化设计使用功能，将排水孔设于产品背部，使清洗更加方便。&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;产品功能&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;p&gt;1. 更容易被人体器官组织细胞吸收和利用&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 増加人体各细胞的供氧量促进新陈代谢&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 改善微循环调节神经及调节泌尿系统功能&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 减少饮水中由氯化物带来的不健康因素&lt;/p&gt;\r\n\r\n						&lt;p&gt;5. 提高人体综合免疫力及抗氧化能力&lt;/p&gt;\r\n\r\n						&lt;p&gt;6. 增强肠胃功能促进食物消化与营养吸收&lt;/p&gt;\r\n\r\n						&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;主要研究机构&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;p&gt;a) 中国计量科学研究院&lt;/p&gt;\r\n\r\n						&lt;p&gt;b) 北京大学分析测试中心&lt;/p&gt;\r\n\r\n						&lt;p&gt;c) 解放军总医院（301医院）&lt;/p&gt;\r\n\r\n						&lt;p&gt;d) 国家城市供水水质监测网北京监测站&lt;/p&gt;\r\n\r\n						&lt;p&gt;e) 中山医科大学及广州市红十字会医院&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(185, 3, '駿豐頻譜水保健儀 (座枱式)', '&lt;p&gt;“駿豐頻譜水保健儀”是採用國際頂尖頻譜科技製作而成的家居健康頻譜水飲用器。它通過特定的頻譜場作用，將普通飲用水製作成與人體正常器官組織、細胞頻譜場相匹配的駿豐頻譜水。&lt;/p&gt;\r\n\r\n&lt;p&gt;當改變了原飲用水的理化特性後，它改變了O17核磁共振譜線；提高了電導率，電導率更接近於人體血漿電導率譜；增加了水中的含氧量5％；降低了水中氯仿含量1.7微克 / 升；提高了水對無機物的溶解力40.8％。&lt;/p&gt;\r\n\r\n&lt;p&gt;駿豐頻譜水不含任何藥物成份，製作方便，口感良好，飲用後能迅速進入並滲透到體內各部份與之相互作用，對已失調的人體內部結構進行調解，使其恢復到正常平衡狀態，同時使健康的器官、細胞功能更加穩定，改善微循環、促進新陳化謝、增強腸胃功能、促進食物消化與營養吸收、提高人體綜合免疫能力，從而達到預防、保健的效果。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;right&quot; class=&quot;index_content_txt&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;3&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;產品特點&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;p&gt;1. 駿豐頻譜水保健儀的頻譜發生器裝置已擁有中國、美國、德國、英國、澳大利亞和新加坡六個國家共七項發明專利。&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 與美國世界著名Teams Design公司聯合設計，款式新穎、高檔大方，是走在時尚尖端的高科技健康產品。&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 採用世界先進的電子技術，實現輕觸式開關控制電磁水閥出/停水、觸摸按鍵式開關及螢光顯示幕智慧技術控制，控制模式更加優化，使用更加方便。&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 選用高品質材料，更美觀、高檔，手感細膩；且防菌、抗高熱，品質穩定。&lt;/p&gt;\r\n\r\n						&lt;p&gt;5. 採用微電腦晶片控制，設有水位自檢、防幹燒檢測及雙重防幹燒保護功能，更有效地延長加熱系統的使用壽命。&lt;/p&gt;\r\n\r\n						&lt;p&gt;6. 人性化設計使用功能，將排水孔設於產品背部，使清洗更加方便。&lt;br /&gt;\r\n						&amp;nbsp;&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;產品功能&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;p&gt;1. 更容易被人體器官組織細胞吸收和利用&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 增加人體各細胞的供氧量促進新陳代謝&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 改善微循環調節神經及調節泌尿系統功能&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 減少飲水中由氯化物帶來的不健康因素&lt;/p&gt;\r\n\r\n						&lt;p&gt;5. 提高人體綜合免疫力及抗氧化能力&lt;/p&gt;\r\n\r\n						&lt;p&gt;6. 增強腸胃功能促進食物消化與營養吸收&lt;br /&gt;\r\n						&amp;nbsp;&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;主要研究機構&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;a) 中國計量科學研究院&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						b) 北京大學分析測試中心&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						c) 解放軍總醫院（301醫院）&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						d) 國家城市供水水質監測網北京監測站&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						e) 中山醫科大學及廣州市紅十字會醫院&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(186, 1, 'JunFeng Spectrum of water and Health Meter', '&lt;p&gt;JunFeng Spectrum of water and Health Meter is among the best well-known health care instruments for “WATER” in the world. It is an international healthy water dispenser which is made by cutting edge spectrum technology.It’s modulates ordinary drinking water into optimized water through specific spectrum field.&lt;/p&gt;\r\n\r\n&lt;p&gt;The spectrum water is created by changing the physicochemical property of original water! It changes the O&lt;sup&gt;17&lt;/sup&gt;&amp;nbsp;nuclear magnetic resonance (NMR) spectroscopic curves; improves the conductivity, so that the conductivity is closer to the plasma conductivity spectrum of the human body; improves 5% of oxygen content in the water; lowers the chloroform rate by 1.7mg/liter of the water, improves the inorganic substance dissolving power by 48%.&amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp;&lt;br /&gt;\r\nJUNFENG spectrum water does not contain any pharmaceutical ingredients, is easy to prepare, has a great in taste, can enter and penetrate into cells of tissue in all organs of body, with the inter-reaction between them, carries out mediation to the disordered human organs and cells to return them to their normal balance, stabilizes healthy organs and cells, thereby providing the effects of prevention and health care.&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;The characteristics of Spectrum Water&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;1. Easier to be body absorbed and utilized.;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2. Increases the supply of oxygen to the various systems of the body.;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3. Improves the metabolism of the human body.;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4. Reduces the possible unbealth factors of chlorine.;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			5. Improves the immune system and anti-infection ability of the human body.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;PRODUCT AUXILARY FUNCTIONS&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;1. Some improvement of microcirculation and blood rheclogy characteristics.;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2. Maintain the health of the urinary system.;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3. Enhances gastrointestinal function, boosts the digestion of food and up taking of nutrients.;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4. Adjusts the neural connections and balances the metabolism.;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			5. A definite help on anti-inflammation. Improves synthesize immune-competence.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;Research institutes&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;a) China measurement science researcher;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			b) Analysis and test center of Beijing university;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			c) PLA general hospital ( 301 hospital);&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			d) National city water supply water quality monitoring network Beijing monitoring station;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			e)&lt;span style=&quot;line-height: 1.6em; font-size: 13px;&quot;&gt;The medical school of Zhongshan University and Guangzhou City Red Cross Hospital&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;span class=&quot;product_name&quot;&gt;Specifications&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;PRODUCT：JunFeng Spectrum Water and Health Meter&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			MODEL：JF-139&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			TYPE：Stand-alone&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			DIMENSIONS：450 x 368 x 1061 mm2&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			NET / GROSS WIEGHT：16.8 kg / 18.8 kg&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			INTERNATIONAL CERTIFICATION：GB/TI9001 – 2008&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(186, 4, '骏丰频谱水保健仪 (座地式)', '&lt;p&gt;“骏丰频谱水保健仪”是采用国际顶尖频谱科技制作而成的家居健康频谱水饮用器。它通过特定的频谱场作用，将普通饮用水制作成与人体正常器官组织、细胞频谱场相匹配的骏丰频谱水。&lt;/p&gt;\r\n\r\n&lt;p&gt;当改变了原饮用水的理化特性后，它改变了O17核磁共振谱线；提高了电导率，电导率更接近于人体血浆电导率谱；增加了水中的含氧量5％；降低了水中氯仿含量1.7微克 / 升；提高了水对无机物的溶解力40.8％。&lt;/p&gt;\r\n\r\n&lt;p&gt;骏丰频谱水不含任何药物成份，制作方便，口感良好，饮用后能迅速进入并渗透到体内各部份与之相互作用，对已失调的人体内部结构进行调解，使其恢复到正常平衡状态，同时使健康的器官、细胞功能更加稳定，改善微循环、促进新陈化谢、增强肠胃功能、促进食物消化与营养吸收、提高人体综合免疫能力，从而达到预防、保健的效果。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica;&quot;&gt;产品特点&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;1. 骏丰频谱水保健仪的频谱发生器装置已拥有中国、美国、德国、英国、澳大利亚和新加坡六个国家共七项发明专利。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 与美国世界著名Teams Design公司联合设计，款式新颖、高档大方，是走在时尚尖端的高科技健康产品。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 采用世界先进的电子技术，实现轻触式开关控制电磁水阀出/停水、触摸按键式开关及荧光显示屏智能技术控制，控制模式更加优化，使用更加方便。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 选用高质量材料，更美观、高档，手感细腻；且防菌、抗高热，质量稳定。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 采用微电脑芯片控制，设有水位自检、防干烧检测及双重防干烧保护功能，更有效地延长加热系统的使用寿命。&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 人性化设计使用功能，将排水孔设于产品背部，使清洗更加方便。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica;&quot;&gt;产品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 更容易被人体器官组织细胞吸收和利用&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 增加人体各细胞的供氧量促进新陈代谢&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 改善微循环调节神经及调节泌尿系统功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 减少饮水中由氯化物带来的不健康因素&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 提高人体综合免疫力及抗氧化能力&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica;&quot;&gt;主要研究机构&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;a) 中国计量科学研究院&lt;/p&gt;\r\n\r\n			&lt;p&gt;b) 北京大学分析测试中心&lt;/p&gt;\r\n\r\n			&lt;p&gt;c) 解放军总医院 (301医院)&lt;/p&gt;\r\n\r\n			&lt;p&gt;d) 国家城市供水水质监测网北京监测站&lt;/p&gt;\r\n\r\n			&lt;p&gt;e) 中山医科大学及广州市红十字会医院&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(186, 3, '駿豐頻譜水保健儀 (座地式)', '&lt;p&gt;“駿豐頻譜水保健儀”是採用國際頂尖頻譜科技製作而成的家居健康頻譜水飲用器。它通過特定的頻譜場作用，將普通飲用水製作成與人體正常器官組織、細胞頻譜場相匹配的駿豐頻譜水。&lt;/p&gt;\r\n\r\n&lt;p&gt;當改變了原飲用水的理化特性後，它改變了O17核磁共振譜線；提高了電導率，電導率更接近於人體血漿電導率譜；增加了水中的含氧量5％；降低了水中氯仿含量1.7微克 / 升；提高了水對無機物的溶解力40.8％。&lt;/p&gt;\r\n\r\n&lt;p&gt;駿豐頻譜水不含任何藥物成份，製作方便，口感良好，飲用後能迅速進入並滲透到體內各部份與之相互作用，對已失調的人體內部結構進行調解，使其恢復到正常平衡狀態，同時使健康的器官、細胞功能更加穩定，改善微循環、促進新陳化謝、增強腸胃功能、促進食物消化與營養吸收、提高人體綜合免疫能力，從而達到預防、保健的效果。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica;&quot;&gt;產品特點&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;1.&amp;nbsp;駿豐頻譜水保健儀的頻譜發生器裝置已擁有中國、美國、德國、英國、澳大利亞和新加坡六個國家共七項發明專利。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 與美國世界著名Teams Design公司聯合設計，款式新穎、高檔大方，是走在時尚尖端的高科技健康產品。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 採用世界先進的電子技術，實現輕觸式開關控制電磁水閥出/停水、觸摸按鍵式開關及螢光顯示屏智能技術控制，控制模式更加優化，使用更加方便。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 選用高品質材料，更美觀、高檔，手感細膩；且防菌、抗高熱，質量穩定。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 採用微電腦芯片控制，設有水位自檢、防乾燒檢測及雙重防乾燒保護功能，更有效地延長加熱系統的使用壽命。&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 人性化設計使用功能，將排水孔設於產品背部，使清洗更加方便。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica;&quot;&gt;產品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;1.&amp;nbsp;更容易被人體器官組織細胞吸收和利用&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 增加人體各細胞的供氧量促進新陳代謝&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 改善微循環調節神經及調節泌尿系統功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 減少飲水中由氯化物帶來的不健康因素&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 提高人體綜合免疫力及抗氧化能力&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 增強腸胃功能促進食物消化與營養吸收&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica;&quot;&gt;主要研究機構&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;a) 中國計量科學研究院&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			b) 北京大學分析測試中心&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			c) 解放軍總醫院 ( 301醫院 )&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			d) 國家城市供水水質監測網北京監測站&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			e) 中山醫科大學及廣州市紅十字會醫院&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(189, 1, '駿豐頻譜保健儀', '&lt;p&gt;“駿豐頻譜保健儀”主要是通過一種含有特殊功能的陶瓷/高分子複合材料組成的複合塗層材料在受熱時能輻射寬波段的紅外頻譜，其紅外頻譜的波長範圍在3-25μm（微米），峰值波長區為7.7-10μm，與人體紅外吸收（發射）的峰值波長9.35μm相匹配。產品產生的紅外頻譜作用於人體後，產生良好的生物醫學效應，如改善局部血液迴圈，促進腫脹消退，降低肌張力，緩解肌痙攣，鎮痛和表面乾燥作用等，從而達到保健作用。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品特點&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 與世界知名DesignPlus公司聯合研發，外觀時尚大方。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 大面積紅外頻譜發生器，頻譜照射範圍廣。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 照射空間寬敞，適合不同的體形和體位多角度照射。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 高功能成膜劑技術，性能穩定*。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 微納米技術，法向發射率高、好吸收*。&lt;/p&gt;\r\n\r\n			&lt;p&gt;( * 獲兩項中國發明專利 : ZL200910089899.8、ZL200910093489.0 )&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 全新網格設計，照射聚焦。&lt;/p&gt;\r\n\r\n			&lt;p&gt;7. 負離子效應，清新空氣。&lt;/p&gt;\r\n\r\n			&lt;p&gt;8. 時尚智慧隱藏式控制裝置，方便操控。&lt;/p&gt;\r\n\r\n			&lt;p&gt;9. 雙重感溫控制技術，溫度控制人性化。&lt;/p&gt;\r\n\r\n			&lt;p&gt;10. 新型輕質材料，產品重量輕，方便移動。&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n						&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n							&lt;tbody&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用範圍&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n							&lt;/tbody&gt;\r\n						&lt;/table&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n						&lt;p&gt;具有改善局部血液迴圈，促進腫脹消退，降低肌張力，緩解肌痙攣，鎮痛，表面乾燥的作用。可用於下列疾病的輔助治療：軟組織扭挫傷恢復期、肌纖維織炎、關節炎、軟組織炎症（癤、癰、蜂窩織炎、丹毒、乳腺炎、淋巴結炎）吸收期、神經痛、凍瘡、褥瘡、促進傷口癒合。&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用方法&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;1. 使用次數及時間：照射1-2次/日，每次不少於30分鐘；保健可1次/日，每次30分鐘以上。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2. 使用前先用強檔預熱，再根據個人需要，選用適當的溫度和時間，以自我感覺舒適為宜。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3.使用時被照部​​位完全裸露療效為佳，但要避免風吹受涼；對非照射部位注意保暖，照射後應立即穿好衣服。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4.使用前後各喝一杯水，每杯水300ml左右。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(188, 1, 'JunFeng Bio-spectrum Technology (BST) SAUNA', '&lt;p&gt;A biological spectrum generator device with mid-infrared and anion effect is implanted in the “Health Care Kiosk”. It could radiate mid-infrared spectrum field with wide band. It could help us to adjust the various functions of the body and keep us healthy.&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;5 Technical Features&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;With modern aerospace manufacturing technology, the “Health Care Kiosk” is equipped with new features and new health care effects.&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			1. The wide-band mid-infrared biological spectrum field made by new composite materials matches the mid-infrared wavelength of human beings’ biological spectrum.&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2. By using a scientific mixture of negative oxygen ion generating materials, the device has a combined effect of mid-infrared and biochemical spectrum field which may improve our body''s health.&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3. The film-forming technology enhances the mechanical properties of the spectrum layer and make it much more durable and stable and results in a better health.&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4. By applying the special micro-nano scale radiation spectrum broad materials, which are manufactured by using an advanced ultra fine grinding technology, the radiation rate of the radiating spectrum field is improved and this may improve our body''s health.&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			5. A large bio-spectrum generator with 10 pieces of spectrum generator can reach more parts of the body. With the help of drinking spectrum water, the Kiosk treatment reaches its best effect. According to the Chinese Quality Supervision and Inspection Center, “the Kiosk” has a composite pattern of biological spectrum infrared, as well as negative ions generators. It is an advanced invention with a positive health result.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;Specifications&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;PRODUCT: JunFeng Bio-spectrum Technology (BST)&amp;nbsp;SAUNA&lt;br /&gt;\r\n&lt;br /&gt;\r\nMODEL: JF-902C&lt;/p&gt;\r\n\r\n&lt;p&gt;TYPE: Floor type&lt;br /&gt;\r\n&lt;br /&gt;\r\nDIMENSIONS: 955x875xl880mm3&lt;br /&gt;\r\n&lt;br /&gt;\r\nNET/ GROSS WIEGHT: 135kg/155kg&lt;br /&gt;\r\n&lt;br /&gt;\r\nINTERNATIONAL CERTIFICATION: SFDA (Approved) 2009 2260531&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(188, 4, '骏丰频谱保健房', '&lt;p&gt;“骏丰频谱保健房”采用具有中红外效应与负离子效应特殊功能的生物频谱发生器装置，可以发射宽波段中红外频谱场，作用于人体，人体获得该能量后，发生有益的生理、生化反应，达到系统调节人体各种功能，预防疾病，全面提高人体的健康水平。&lt;/p&gt;\r\n\r\n&lt;p&gt;“骏丰频谱保健房”是一种高科技保健产品，其频谱场波长范围为3μm~25μm，峰值波长区是8μm~10μm，与人体红外吸收和发射峰值波长9.35μm~9.60μm相匹配，作用于人体后，能产生共振吸收，更有效地改善血液循环，使保健程度达到人体深部，产生良好的生物频谱效应，从而达到全身的保健效果。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;产品特点&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;\r\n			&lt;p&gt;骏丰频谱公司与时俱进和国家级科研院所合作，采用现代航天新材料、新技术、新工艺，进一步开发研制成功新的生物频谱发生器装置，并精心设计制成新型“骏丰频谱保健房”，是一种既具有生物频谱技术（BST）效应又具有负离子效应双重作用和特殊功能的高科技保健产品，已获得三项中国发明专利。&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 采用现代航天科技中的新材料制作的生物频谱发生器装置，其发生的频谱与人体吸收波长非常匹配，从而能更好地共振吸收。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 生物频谱发生器装置采用科学配剂，加入了特殊的负离子生成材料，使其既具有生物频谱效应又具有负离子效应。负离子能改善频谱房内空气质量，还能改善神经系统功能，活化细胞，促进新陈代谢，提高免疫力。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 采用航天使用的高功能成膜剂技术，增强了频谱发生层的机械性能，使其更加坚固耐用，物理性能更稳定，保健效果更好。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 生物频谱发生器装置的功能部件，是采用微纳米技术特制而成，增加了频谱发射率和发射强度，进一步提高了人体对频谱的吸收，增强了保健功效。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 频谱房内装有10块已获得二项中国发明专利的频谱发生器，增加了人体照射的部位，从而保障全身进行保健的效果。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;&lt;br /&gt;\r\n			​&lt;span style=&quot;color: rgb(222, 41, 37); line-height: 21.33px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 23.99px; font-weight: bold;&quot;&gt;产品功能&lt;/span&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; style=&quot;line-height: 1.6em; font-size: 13px;&quot; width=&quot;670&quot; /&gt;&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 人体全身产生良好共振匹配吸收&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 促进血液循环&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 改善新陈代谢&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 调节神经系统&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 缓解肌肉紧张&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 提高人体免疫力&lt;/p&gt;\r\n\r\n			&lt;p&gt;7. 消除疲劳&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(188, 3, '駿豐頻譜保健房', '&lt;p&gt;“駿豐頻譜保健房”採用具有中紅外效應與負離子效應特殊功能的生物頻譜發生器裝置，可以發射寬波段中紅外頻譜場，作用於人體，人體獲得該能量後，發生有益的生理、生化反應，達到系統調節人體各種功能，預防疾病，全面提高人體的健康水平。&lt;/p&gt;\r\n\r\n&lt;p&gt;“駿豐頻譜保健房”是一種高科技保健產品，其頻譜場波長範圍為3μm~25μm，峰值波長區是8μm~10μm，與人體紅外吸收和發射峰值波長9.35μm~9.60μm相匹配，作用於人體後，能產生共振吸收，更有效地改善血液循環，使保健程度達到人體深部，產生良好的生物頻譜效應，從而達到全身的保健效果。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;產品特點&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;br /&gt;\r\n			&lt;span style=&quot;font-family: &amp;quot;新細明體&amp;quot;,&amp;quot;serif&amp;quot;; font-size: 12pt; mso-bidi-font-size: 11.0pt; mso-bidi-font-family: &amp;quot;Times New Roman&amp;quot;; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-TW; mso-ansi-language: EN-US; mso-bidi-language: AR-SA;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;駿豐頻譜公司與時俱進和國家級科研院所合作，採用現代航太新材料、新技術、新工藝，進一步開發研製成功新的生物頻譜發生器裝置，並精心設計製成新型“駿豐頻譜保健房”，是一種既具有生物頻譜技術（&lt;span lang=&quot;EN-US&quot;&gt;BST&lt;/span&gt;）效應又具有負離子效應雙重作用和特殊功能的高科技保健產品，已獲得三項中國發明專利。&lt;/font&gt;&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;1. 採用現代航太科技中的新材料製作的生物頻譜發生器裝置，其發生的頻譜與人體吸收波長非常匹配，從而能更好地共振吸收。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 生物頻譜發生器裝置採用科學配劑，加入了特殊的負離子生成材料，使其既具有生物頻譜效應又具有負離子效應。負離子能改善頻譜房內空氣品質，還能改善神經系統功能，活化細胞，促進新陳代謝，提高免疫力。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 採用航太使用的高功能成膜劑技術，增強了頻譜發生層的機械性能，使其更加堅固耐用，物理性能更穩定，保健效果更好。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 生物頻譜發生器裝置的功能部件，是採用微納米技術特製而成，增加了頻譜發射率和發射強度，進一步提高了人體對頻譜的吸收，增強了保健功效。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 頻譜房內裝有10塊已獲得二項中國發明專利的頻譜發生器，增加了人體照射的部位，從而保障全身進行保健的效果。&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;產品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/p&gt;\r\n\r\n			&lt;p&gt;1.&amp;nbsp;人體全身產生良好共振匹配吸收&lt;/p&gt;\r\n\r\n			&lt;p&gt;2.&amp;nbsp;促進血液循環&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 改善新陳代謝&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 調節神經系統&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 緩解肌肉緊張&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 提高人體免疫力&lt;/p&gt;\r\n\r\n			&lt;p&gt;7. 消除疲勞&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(189, 3, '駿豐頻譜保健儀', '&lt;p&gt;“駿豐頻譜保健儀”主要是通過一種含有特殊功能的陶瓷/高分子複合材料組成的複合塗層材料在受熱時能輻射寬波段的紅外頻譜，其紅外頻譜的波長範圍在3-25μm（微米），峰值波長區為7.7-10μm，與人體紅外吸收（發射）的峰值波長9.35μm相匹配。產品產生的紅外頻譜作用於人體後，產生良好的生物醫學效應，如改善局部血液迴圈，促進腫脹消退，降低肌張力，緩解肌痙攣，鎮痛和表面乾燥作用等，從而達到保健作用。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;產品特點&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 與世界知名DesignPlus公司聯合研發，外觀時尚大方。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 大面積紅外頻譜發生器，頻譜照射範圍廣。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 照射空間寬敞，適合不同的體形和體位多角度照射。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 高功能成膜劑技術，性能穩定*。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 微納米技術，法向發射率高、好吸收*。&lt;/p&gt;\r\n\r\n			&lt;p&gt;( * 獲兩項中國發明專利 : ZL200910089899.8、ZL200910093489.0 )&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 全新網格設計，照射聚焦。&lt;/p&gt;\r\n\r\n			&lt;p&gt;7. 負離子效應，清新空氣。&lt;/p&gt;\r\n\r\n			&lt;p&gt;8. 時尚智慧隱藏式控制裝置，方便操控。&lt;/p&gt;\r\n\r\n			&lt;p&gt;9. 雙重感溫控制技術，溫度控制人性化。&lt;/p&gt;\r\n\r\n			&lt;p&gt;10. 新型輕質材料，產品重量輕，方便移動。&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n						&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n							&lt;tbody&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用範圍&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n							&lt;/tbody&gt;\r\n						&lt;/table&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n						&lt;p&gt;具有改善局部血液迴圈，促進腫脹消退，降低肌張力，緩解肌痙攣，鎮痛，表面乾燥的作用。可用於下列疾病的輔助治療：軟組織扭挫傷恢復期、肌纖維織炎、關節炎、軟組織炎症（癤、癰、蜂窩織炎、丹毒、乳腺炎、淋巴結炎）吸收期、神經痛、凍瘡、褥瘡、促進傷口癒合。&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用方法&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 使用次數及時間：照射1-2次/日，每次不少於30分鐘；保健可1次/日，每次30分鐘以上。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 使用前先用強檔預熱，再根據個人需要，選用適當的溫度和時間，以自我感覺舒適為宜。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 使用時被照部位完全裸露療效為佳，但要避免風吹受涼；對非照射部位注意保暖，照射後應立即穿好衣服。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 使用前後各喝一杯水，每杯水300ml左右。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(189, 4, '骏丰频谱保健仪', '&lt;p&gt;“骏丰频谱保健仪”主要是通过一种含有特殊功能的陶瓷/高分子复合材料组成的复合涂层材料在受热时能辐射宽波段的红外频谱，其红外频谱的波长范围在3-25μm（微米），峰值波长区为7.7-10μm，与人体红外吸收（发射）的峰值波长9.35μm相匹配。产品产生的红外频谱作用于人体后，产生良好的生物医学效应，如改善局部血液循环，促进肿胀消退，降低肌张力，缓解肌痉挛，镇痛和表面干燥作用等，从而达到保健作用。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品特點&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 与世界知名DesignPlus公司联合研发，外观时尚大方。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 大面积红外频谱发生器，频谱照射范围广。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 照射空间宽敞，适合不同的体形和体位多角度照射。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 高功能成膜剂技术，性能稳定*。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 微纳米技术，法向发射率高、好吸收*。&lt;/p&gt;\r\n\r\n			&lt;p&gt;( * 获两项中国发明专利 : ZL200910089899.8、ZL200910093489.0 )&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 全新网格设计，照射聚焦。&lt;/p&gt;\r\n\r\n			&lt;p&gt;7. 负离子效应，清新空气。&lt;/p&gt;\r\n\r\n			&lt;p&gt;8. 时尚智能隐藏式控制装置，方便操控。&lt;/p&gt;\r\n\r\n			&lt;p&gt;9. 双重感温控制技术，温度控制人性化。&lt;/p&gt;\r\n\r\n			&lt;p&gt;10. 新型轻质材料，产品重量轻，方便移动。&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n						&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n							&lt;tbody&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n									&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n										&lt;tbody&gt;\r\n											&lt;tr&gt;\r\n												&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;适用范围&lt;/td&gt;\r\n											&lt;/tr&gt;\r\n											&lt;tr&gt;\r\n												&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n											&lt;/tr&gt;\r\n										&lt;/tbody&gt;\r\n									&lt;/table&gt;\r\n									&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n									&lt;p&gt;具有改善局部血液循环，促进肿胀消退，降低肌张力，缓解肌痉挛，镇痛，表面干燥的作用。可用于下列疾病的辅助治疗：软组织扭挫伤恢复期、肌纤维织炎、关节炎、软组织炎症（疖、痈、蜂窝织炎、丹毒、乳腺炎、淋巴结炎）吸收期、神经痛、冻疮、褥疮、促进伤口愈合。&lt;/p&gt;\r\n									&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n							&lt;/tbody&gt;\r\n						&lt;/table&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用方法&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n						&lt;p&gt;1. 使用次数及时间：照射1-2次/日，每次不少于30分钟；保健可1次/日，每次30分钟以上。&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 使用前先用强档预热，再根据个人需要，选用适当的温度和时间，以自我感觉舒适为宜。&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 使用时被照部位完全裸露疗效为佳，但要避免风吹受凉；对非照射部位注意保暖，照射后应立即穿好衣服。&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 使用前后各喝一杯水，每杯水300ml左右。&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(190, 4, '骏丰频谱健康颈椎仪', '&lt;p style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;“骏丰频谱健康颈椎仪”主要是通过一种含有特殊功能的陶瓷/高分子复合材料组成的复合涂层材料在受热时能辐射宽波段的红外频谱，其红外频谱的波长范围在3-25μm（微米），峰值波长区为7.7-10μm，与人体红外吸收（发射）的峰值波长9.35μm相匹配。它产生的红外频谱作用于人体肩颈部后，产生良好的生物频谱效应，如改善局部血液循环，促进肿胀消退，降低肌张力，缓解肌痉挛，镇痛等。同时产品结合人体工效学，设计成特殊弧线曲度的枕式结构，可利用人体头部的自重舒缓的牵引颈椎，从而达到保健作用。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 产生对人体有益的生物学效应&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 活化组织细胞，恢复组织功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 改善局部血液循环及供血不足&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 促进局部新陈代谢及消除水肿&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 减轻局部神经受压造成的不适&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 能帮助改善部分慢性颈椎问题&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用方法&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 使用时每日1～2次，开始时每次20分钟，可逐渐增加至每次30～45分钟；保健每日1次，每次30分钟。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 使用前先用强档预热，再根据个人需要调整温度，以感觉舒适为宜；被照部位需裸露，但要避免风吹受凉。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 使用时可加垫抬高头部，以达到舒适睡姿。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 使用过程中最好闭目养神，保持放松状态，同时可加戴眼罩以防眩晕&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;适合人群&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;骏丰频谱健康颈椎仪适用人群广泛，可用于长者、儿童、成年人的日常保健。&lt;br /&gt;\r\n			特别适用人群：&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 长期低头族与电脑颈人士&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 颈椎不适人士&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 肩周不适人士&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 颈肩部软组织损伤人士&lt;br /&gt;\r\n			&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(190, 3, '駿豐頻譜健康頸椎儀', '&lt;p style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;“駿豐頻譜健康頸椎儀”主要是通過一種含有特殊功能的陶瓷/高分子複合材料組成的複合塗層材料在受熱時能輻射寬波段的紅外頻譜，其紅外頻譜的波長範圍在3-25μm（微米），峰值波長區為7.7-10μm，與人體紅外吸收（發射）的峰值波長9.35μm相匹配。它產生的紅外頻譜作用於人體肩頸部後，產生良好的生物頻譜效應，如改善局部血液循環，促進腫脹消退，降低肌張力，緩解肌痙攣，鎮痛等。同時產品結合人體工效學，設計成特殊弧線曲度的枕式結構，可利用人體頭部的自重舒緩的牽引頸椎，從而達到保健作用。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 產生對人體有益的生物學效應&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 活化組織細胞，恢復組織功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 改善局部血液循環及供血不足&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 促進局部新陳代謝及消除水腫&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 減輕局部神經受壓造成的不適&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 能幫助改善部分慢性頸椎問題&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用方法&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;1. 使用時每日1～2次，開始時每次20分鐘，可逐漸增加至每次30～45分鐘；保健每日1次，每次30分鐘。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2. 使用前先用強檔預熱，再根據個人需要調整溫度，以感覺舒適為宜；被照部位需裸露，但要避免風吹受涼。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3. 使用時可加墊抬高頭部，以達到舒適睡姿。&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4. 使用過程中最好閉目養神，保持放鬆狀態，同時可加戴眼罩以防眩暈。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;適合人群&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;適合人群駿豐頻譜健康頸椎儀適用人群廣泛，可用於長者、兒童、成年人的日常保健。&lt;/p&gt;\r\n\r\n			&lt;p&gt;特別適用人群：&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 長期低頭族與電腦頸人士&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 頸椎不適人士&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 肩周不適人士&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 頸肩部軟組織損傷人士&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(190, 1, 'JunFeng BFS Smart BioNeck ', '&lt;p&gt;Cervical’s problem is a common problem among the elderly, increasing with age. It is caused by cervical bone hyperplasia, calcification of ligaments, vascular cerebral insufficiency due to soft tissue edema oppression, cerebral vascular sclerosis and results in a stiff pain in the neck, headache, dizziness, tinnitus, forgetfulness, chest tightness, upset symptoms, or even numbness, weakness, paralysis. The common cervical spondylitis is associated with cerebral vascular disease symptoms and is very dangerous if the brain atrophies and can result in cerebral infarction or stroke without proper.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Product features&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. Accelerates and improves local blood circulation&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			​2. Promotes metabolism, elimination of edema and inflammation&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. Improves the nervous system, relieving the pains of nerve compression.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;How to use&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 1 to 2 times a day, 20 minutes each time at the beginning, gradually increasing to 30 to 45 minutes each time; then once a day regularly, 30 minutes each time.&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. Warm it up with warm-up function, and then adjust the temperature to the level of your comfort. The parts of your body to which it is applied have to be uncovered.&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. Put a pad under your head.&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. Close your eyes and relax. You may also wear goggles to prevent dizziness.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;One instrument, no cervical issues&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;With “the biological spectrum”, “the Smart Bio-Neck” affects the soft tissues of the neck and shoulder, having biological effects on the human body to activate the cells and restore their function.&lt;/span&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Specifications&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;PRODUCT: JunFeng BFS Smart Bioneck&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			MODEL: JF-316&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			DIMENSIONS: 368×175×278mm3&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			GROSS WEIGHT: 1.5kg&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(196, 3, '濟福頻譜健康背心', '&lt;p&gt;“濟福頻譜健康背心”是採用新型複合材料研製開發出具有紅外效應特殊功能的新型頻譜產品，作用於人體後，能產生共振匹配吸收，具有很好的促進健康及保健的功能。&lt;/p&gt;\r\n\r\n&lt;p&gt;“濟福頻譜健康背心”具有保暖功效且能促進和改善局部血液循環；增加組織器官供血；緩解肌肉緊張和促進消除疲勞。&lt;/p&gt;\r\n\r\n&lt;p&gt;“濟福頻譜健康背心”是採用鋰電池給發熱體供電，發熱體為納米碳纖維，性能安全，工作持久，家居戶外適用，能滿足您高品質的健康生活需要。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品功能：&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n						&lt;p&gt;1. 人體全身產生共振匹配吸收&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 改善血液循環，促進氣血運行&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 消除疲勞，緩解肌肉緊張&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 具有保暖功效，保健的功能&lt;/p&gt;\r\n\r\n						&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n						&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n							&lt;tbody&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品特點：&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n									&lt;p&gt;1. 採用新型複合材料研製發出具有紅外效應特殊功能的頻譜背心。&lt;/p&gt;\r\n\r\n									&lt;p&gt;2. 採用鋰電池給發熱體供電，發熱體為納米碳纖維，性能安全。&lt;/p&gt;\r\n\r\n									&lt;p&gt;3. 電池設有1-5檔加熱調節溫度，可自行調節溫度。&lt;/p&gt;\r\n\r\n									&lt;p&gt;4. 頻譜背心具有保暖及保健作用，適合任何人士穿著。&lt;/p&gt;\r\n									&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n							&lt;/tbody&gt;\r\n						&lt;/table&gt;\r\n\r\n						&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n							&lt;tbody&gt;\r\n								&lt;tr&gt;\r\n									&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n								&lt;/tr&gt;\r\n							&lt;/tbody&gt;\r\n						&lt;/table&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n\r\n			&lt;p&gt;產品尺吋：&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;table border=&quot;1&quot; bordercolor=&quot;#252525&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot; style=&quot;width: 500px;&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;尺吋&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;適合身高&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;調整&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;長度&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;闊度&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;S - M&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;150 - 170 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;合上拉鍊&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;64 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;86 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;打開拉鍊&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;64 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;98 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;L - XL&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;170 - 180 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;合上拉鍊&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;70 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;110 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;打開拉鍊&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;70 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;122 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; colspan=&quot;1&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;XXL - XXXL&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; colspan=&quot;1&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;180 - 190 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;合上拉鍊&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;73 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;120 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;打開拉鍊&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;73 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;132 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(191, 1, 'Portable Health Carer Device', '&lt;p&gt;JFC Health Bio-spectrum Device is an innovative Bio-Frequency Spectrum product made of advanced composite materials, generating infrared heat effects. If applied to the human body, it matches the resonance absorption rate and can promote health significantly.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Product Functions&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;1. Improving local blood circulation and stimulating the metabolism；&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2. Improving micro-circulation and increasing blood supply；&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3. Regulating the nerve system and improving immunity；&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4. Alleviating muscular tension and reducing fatigue&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Product Features&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;1. Pure physical spectrum effects, effectively improving functions of the human body&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2. 12V direct current low voltage power supply, ensuring safe use；&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3. Small size facilitating home and office use and travelling；&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4. Human oriented design for handholding or fixed positioning, for use during work and leisurely hours；&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			5. Good looks, comfortable fee, superb performance, satisfying your needs for a high-quality and healthy life&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Product Size&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;Rated voltage：100-240V~50/60Hz&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			Work Voltage：12V&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			Rated power：15W&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			Gross Weight：1.4公斤&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			Net Weight：1.2公斤&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			Cube：387x157x239mm3&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(191, 4, '便携式频谱仪', '&lt;p&gt;“骏丰频谱便携保健仪”是用新型复合材料研制开发出具有红外效应的新型频谱产品，主要是通过一种含有特殊功能的陶瓷/高分子复合材料组成的复合涂层材料在受热时能辐射宽波段的红外频谱，其红外频谱的波长范围在3-25μm（微米），峰值波长区为7.7-10μm，与人体红外吸收（发射）的峰值波长9.35μm相匹配。产品产生的红外频谱作用于人体后，产生良好的生物频谱效应，如改善局部血液循环，促进肿胀消退，降低肌张力，缓解肌痉挛，镇痛和表面干燥的作用等，从而达到保健作用。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; style=&quot;opacity: 0.9;&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 改善血液循环&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 促进肿胀消退&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 减轻皮肤表面干燥&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 缓解肌肉紧张&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 促进伤口愈合&lt;/p&gt;\r\n			6. 减轻不适&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品特点&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 人体学设计的双向弧线频谱发出孔，让频谱波发散更为开阔。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 高科技材质，独具匠心陶瓷表面附着频谱涂层防滑。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 90度旋转设计，一键操作简单易用，附设高低两个档位，可自由调节时间。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 采用12V直流低电压供电，确保产品使用安全。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. U型折迭设计，人性化防滑手柄，收纳更方便，人体美学设计的底座，让它成为一件艺术品。&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 体积轻巧，方便居家、旅行、办公室使用携带方便。&lt;/p&gt;\r\n\r\n			&lt;p&gt;7. 人性化设计，可手持、定位放置，工作、休闲均可使用。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(204, 1, 'JunFeng BFS Healthcare Rug', '&lt;p&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;A healthy life starting from better sleeping&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We spend one third of our lives in bed. Sleeping helps human beings to rest and restore our brains and bodies. It has an important role in the detoxification of the body’s organs, allows blood to accumulate oxygen, cells to repair and improve metabolism. It is an indispensable component to good health.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug is a product with traditional Chinese medical ideas as well as modern biological spectrum technology. By producing heat and vibration, it synchronizes the acupuncture points and meridians to help you sleep. Together with our biological spectrum drinking therapy, Super Bio-Sleeping Rug improves blood circulation, relieves fatigue, as well as promoting detoxification of organs.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug, the biological spectrum healthcare during your sleep.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;A new warm step to good health&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;1.Adjusts spleen and stomach function&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2.Improves female gynecological issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3.Improves the male prostate issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4.Improves the endocrine system&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Suitable group&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p&gt;JunFeng BFS Healthcare Blanket is widely applicable for the elderly, children, and adults. Particularly applies to the following groups who:&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p&gt;1. Suffer from gynecological problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. Have prostate and urinary system problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. Hope to improve his/her spleen and stomach system&lt;/p&gt;\r\n\r\n			&lt;p&gt;4.&amp;nbsp;Have weak immune systems&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. Who drive or sail for long periods of time&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Feature Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;1. Washable cloth cover&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;2. Automatic temperature adjustment&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;3. 3 hours auto-off function&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Material Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;● Cotton layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; The JFC green spectrum bionic layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; PVC insulation&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; Temperature sensing alloy wire&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Temperature sensing protective layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Heating alloy heating wire&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; High intensity Rally fiber&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Manufactured by the finest Japanese double heating temperature line&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Specifications&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;PRODUCT :&amp;nbsp;JunFeng BFS Healthcare Blanket&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			MODEL : DK3060-1SX&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			DIMENSIONS : 420×100×400mm3&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			NET WEIGHT : 0.35kg&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(192, 4, '家庭套装', '&lt;p&gt;“内喝外照”生物频谱保健法，即“内喝”骏丰频谱水，“外照”骏丰频谱仪/房等系列产品。 “内喝外照”生物频谱保健法符合国际上宣导提出的自行医疗和自我健康法五要素——安全（无副作用）、比较有效、简单、随时可进行、短时间完成，进一步满足了人们对健康的需求，全家人男女老幼均可使用。&lt;/p&gt;\r\n\r\n&lt;p&gt;饮用骏丰频谱水是由内向外，照射骏丰频谱仪/房等系列产品是由外向内，双管齐下，能使人体内外同时产生有益的生物频谱匹配共振吸收的生化反应，把二者的作用有机结合起来，内外互补，相得益彰，从而获得1+1＞2的双重功能和叠加效应的理想效果。&lt;/p&gt;\r\n', '', '', '', ''),
(192, 3, '家庭套裝', '&lt;p&gt;“內喝外照”生物頻譜保健法，即“內喝”駿豐頻譜水，“外照”&lt;span class=&quot;short_text&quot; id=&quot;result_box&quot; lang=&quot;zh-TW&quot;&gt;&lt;span title=&quot;照射骏丰频谱仪/房&quot;&gt;駿豐頻譜儀/房&lt;/span&gt;&lt;/span&gt;等系列產品。 “內喝外照”生物頻譜保健法符合國際上宣導提出的自行醫療和自我健康法五要素——安全（無副作用）、比較有效、簡單、隨時可進行、短時間完成，進一步滿足了人們對健康的需求，全家人男女老幼均可使用。&lt;/p&gt;\r\n\r\n&lt;p&gt;飲用駿豐頻譜水是由內向外，&lt;span class=&quot;short_text&quot; id=&quot;result_box&quot; lang=&quot;zh-TW&quot;&gt;&lt;span title=&quot;照射骏丰频谱仪/房&quot;&gt;照射駿豐頻譜儀/房&lt;/span&gt;&lt;/span&gt;等系列產品是由外向內，雙管齊下，能使人體內外同時產生有益的生物頻譜匹配共振吸收的生化反應，把二者的作用有機結合起來，內外互補，相得益彰，從而獲得1+1＞2的雙重功能和疊加效應的理想效果。&lt;/p&gt;\r\n', '', '', '', ''),
(204, 4, '实用套装', '&lt;p&gt;“内喝外照”生物频谱保健法，即“内喝”骏丰频谱水，“外照”骏丰频谱仪/房等系列产品。 “内喝外照”生物频谱保健法符合国际上宣导提出的自行医疗和自我健康法五要素——安全（无副作用）、比较有效、简单、随时可进行、短时间完成，进一步满足 了人们对健康的需求，全家人男女老幼均可使用。&lt;/p&gt;\r\n\r\n&lt;p&gt;饮用骏丰频谱水是由内向外，照射骏丰频谱仪/房等系列产品是由外向内，双管齐下，能使人体内外同时产生有益的生物频谱匹配共振吸收的生化反应，把二者的作用有机结合起来，内外互补，相得益彰，从而获得1+1＞2的双重功能和叠加效应的理想效果。&lt;/p&gt;\r\n', '', '', '', ''),
(204, 3, '實用套裝', '&lt;p&gt;“內喝外照”生物頻譜保健法，即“內喝”駿豐頻譜水，“外照”&lt;span class=&quot;short_text&quot; id=&quot;result_box&quot; lang=&quot;zh-TW&quot;&gt;&lt;span title=&quot;照射骏丰频谱仪/房&quot;&gt;駿豐頻譜儀/房&lt;/span&gt;&lt;/span&gt;等系列產品。 “內喝外照”生物頻譜保健法符合國際上宣導提出的自行醫療和自我健康法五要素——安全（無副作用）、比較有效、簡單、隨時可進行、短時間完成，進一步滿足了人們對健康的需求，全家人男女老幼均可使用。&lt;/p&gt;\r\n\r\n&lt;p&gt;飲用駿豐頻譜水是由內向外，&lt;span class=&quot;short_text&quot; id=&quot;result_box&quot; lang=&quot;zh-TW&quot;&gt;&lt;span title=&quot;照射骏丰频谱仪/房&quot;&gt;照射駿豐頻譜儀/房&lt;/span&gt;&lt;/span&gt;等系列產品是由外向內，雙管齊下，能使人體內外同時產生有益的生物頻譜匹配共振吸收的生化反應，把二者的作用有機結合起來，內外互補，相得益彰，從而獲得1+1＞2的雙重功能和疊加效應的理想效果。&lt;/p&gt;\r\n', '', '', '', ''),
(192, 1, 'JunFeng BFS Healthcare Rug', '&lt;p&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;A healthy life starting from better sleeping&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We spend one third of our lives in bed. Sleeping helps human beings to rest and restore our brains and bodies. It has an important role in the detoxification of the body’s organs, allows blood to accumulate oxygen, cells to repair and improve metabolism. It is an indispensable component to good health.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug is a product with traditional Chinese medical ideas as well as modern biological spectrum technology. By producing heat and vibration, it synchronizes the acupuncture points and meridians to help you sleep. Together with our biological spectrum drinking therapy, Super Bio-Sleeping Rug improves blood circulation, relieves fatigue, as well as promoting detoxification of organs.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug, the biological spectrum healthcare during your sleep.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;A new warm step to good health&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;1.Adjusts spleen and stomach function&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2.Improves female gynecological issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3.Improves the male prostate issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4.Improves the endocrine system&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Suitable group&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p&gt;JunFeng BFS Healthcare Blanket is widely applicable for the elderly, children, and adults. Particularly applies to the following groups who:&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p&gt;1. Suffer from gynecological problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. Have prostate and urinary system problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. Hope to improve his/her spleen and stomach system&lt;/p&gt;\r\n\r\n			&lt;p&gt;4.&amp;nbsp;Have weak immune systems&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. Who drive or sail for long periods of time&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Feature Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;1. Washable cloth cover&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;2. Automatic temperature adjustment&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;3. 3 hours auto-off function&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Material Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;● Cotton layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; The JFC green spectrum bionic layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; PVC insulation&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; Temperature sensing alloy wire&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Temperature sensing protective layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Heating alloy heating wire&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; High intensity Rally fiber&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Manufactured by the finest Japanese double heating temperature line&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Specifications&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;PRODUCT :&amp;nbsp;JunFeng BFS Healthcare Blanket&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			MODEL : DK3060-1SX&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			DIMENSIONS : 420×100×400mm3&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			NET WEIGHT : 0.35kg&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(187, 3, '駿豐健康淨水器', '&lt;p&gt;“駿豐健康淨水器”是駿豐頻譜研究院聯合國內外資深專家及國家權威科研機構，按世界衛生組織(WHO)對健康水的要求，研製出的高科技健康升級產品。一體式複合濾芯，四重深度淨化，擁有國家發明專利，能讓普通的自來水直接變為乾淨、新鮮、甘甜的直飲水。配合“駿豐頻譜水保健儀”使用，讓您和您的家人隨時隨地享受健康水生活。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;專利技術 - 體式複合濾芯 四重深度淨化&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;strong&gt;一體式複合濾芯：&lt;/strong&gt;&lt;br /&gt;\r\n			一體式複合濾芯採用目前世界領先尖端技術梯度陶瓷膜，OMMT/HTV納米材料製成，高精度過濾孔均勻分布，袪除有害物質同時，全面保留水中有益於健康的礦物質和微量元素，擁有國家發明專利。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;四重深度淨化：&lt;/strong&gt;&lt;br /&gt;\r\n			高精度過濾孔平均孔徑0.15微米，孔隙均勻、緊密，吸附容量大、強度高，四重淨化清除原水中的細菌、水垢、鐵鏽、重金屬等有害物質，濾芯中的椰殼活性炭能保持水質的健康潔淨、持久新鮮。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;優勢突出 - 4大優勢 品質保証&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;strong&gt;配套使用，杜絕隱患&lt;/strong&gt;\r\n			&lt;p&gt;“駿豐健康淨水器”專門為駿豐頻譜水保健儀139系列量身定制，避免了其他品牌淨水產品不配套、易漏水等弊端，免去您在飲用水方面的種種擔心和憂慮。黃金組合，配合使用，讓您喝上更加新鮮、甘甜、健康的頻譜水。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;專利技術，效果更好&lt;/strong&gt;&lt;br /&gt;\r\n			一體式複合濾芯採用獲得國家發明專利的梯度陶瓷膜結構，平均孔徑0.15微米，相當於頭髮絲的1/500，複合濾芯是目前淨水領域中能實現同時濾除多重有害物質的高科技產品，技術水平世界領先。&lt;/p&gt;\r\n\r\n			&lt;p&gt;&lt;br /&gt;\r\n			&lt;strong&gt;一體結構，防止污染&lt;/strong&gt;&lt;br /&gt;\r\n			一體式複合過濾原理，高效四芯同時淨化，功能更強大，水質更健康，從根本上杜絕了傳統組合濾芯滲水、漏水、二次污染的危險，讓每一滴水都保持純淨好味道。&lt;/p&gt;\r\n\r\n			&lt;p&gt;&lt;br /&gt;\r\n			&lt;strong&gt;長效過濾，節約便捷&lt;/strong&gt;&lt;br /&gt;\r\n			只需加自來水，即可飲用，耐污性強，清洗方便，可週期性啟用新濾孔，比一般濾芯更長效，淨化效果更突出。長效濾芯的淨化容量可達2000升，相當於105桶5加侖的桶裝水。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;功能全面 - 3項功能 享受綠色健康水&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;吸附：高精度濾孔及濾芯內置的活性炭能有效的吸附異味，淨化吸附雙重保障。&lt;/p&gt;\r\n\r\n			&lt;p&gt;保鮮：主濾芯中的椰殼活性炭能保持水質的持久新鮮，水質更健康，口感更甘甜。&lt;/p&gt;\r\n\r\n			&lt;p&gt;淨化：採用國際先進的陶瓷膜過濾技術，有效除掉水中泥沙、鐵銹、懸浮物、重金屬及細菌。&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(187, 1, 'JunFeng Healthy Water Purifier', '&lt;p&gt;JunFeng Healthy Water purifier was developed by JFC spectrum Research Institute and experts from national scientific research institutions. It meets the standard of healthy water established by the World Health Organization (WHO). With a national invention patent, it has an integrated composite filter and quadruple deep purification system. It converts ordinary tap water directly into a clean, fresh, sweet drinking water. With JFC spectrum Water modulator, you and your family can enjoy healthy water any time.&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;Patented technology&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;strong&gt;One-piece composite filter：&lt;/strong&gt;&lt;br /&gt;\r\n			The patented one-piece composite filter applies the technology of a gradient ceramic membrane and is made of OMMT/HTV nano materials. The high-precision filter holes are evenly distributed, which eliminates hazardous substances and retains healthy minerals and trace elements of water.&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;Quadruple depth purify：&lt;/strong&gt;&lt;br /&gt;\r\n			High-precision filter, with an average filter hole pore size of 0.15 micron, has unified and intense holes. The quadruple purifying system filters bacteria, scale, rust, heavy metals and other hazardous substances from raw water. There are also coconut shell carbons in the filter which help to maintain the cleanliness and freshness of water.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;4 advantages&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;strong&gt;Completing set of equipment &lt;/strong&gt;&lt;br /&gt;\r\n			“JunFeng Healthy Water Purifier” is tailored for JFC spectrum water modulator 139 series. They perfectly match each other and are without problems such as leakage. With them, you may drink more fresh, sweet, healthy spectrum water.&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;Patented technology&lt;/strong&gt;&lt;br /&gt;\r\n			One-piece composite filter has patented gradient ceramic membrane structure. The average size of each pore is 0.15 micron, equivalent to 1/500 times the width of a hair. This world leading technology enables the filter to remove many harmful substances.&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;Integrated structure and no pollution &lt;/strong&gt;&lt;br /&gt;\r\n			Integrated composite filtration system has four filters. It prevents seepage and leakage, as well as gets rid of the risk of secondary pollution. Every drop of water is pure and tastes good.&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;Long-lasting filter&lt;/strong&gt;&lt;br /&gt;\r\n			Uses tap water. The filter is easy to clean. Different pores sizes can be applied regularly. It is longer lasting than average filters with more effective purification. The long-lasting filter purification capacity is up to 2000 liters, which equals 105 five gallon bottles of water.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;3 functions&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;Purification: The international advanced ceramic membrane filtration technology effectively gets rid of sediment, rust, suspended solids, heavy metals and bacteria in the water.&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&amp;nbsp;Activation: Adjusts the ph value of the water, increasing the amount of dissolved oxygen in the water, which helps to clear acidic toxins in the body.&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&amp;nbsp;Mineralization: Leaves elements like zinc, magnesium, calcium, potassium and other minerals to make the tap water a healthy, fresh mineral water in weak alkaline.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(187, 4, '骏丰健康净水器', '&lt;p&gt;“骏丰健康净水器”是骏丰频谱研究院联合国内外资深专家及国家权威科研机构，按世界卫生组织(WHO)对健康水的要求，研制出的高科技健康升级产品。一体式复合滤芯，四重深度净化，拥有国家发明专利，能让普通的自来水直接变为干净、新鲜、甘甜的直饮水。配合“骏丰频谱水保健仪”使用，让您和您的家人随时随地享受健康水生活。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;专利技术 - 体式复合滤芯 四重深度净化&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;strong&gt;一体式复合滤芯：&lt;/strong&gt;&lt;br /&gt;\r\n			一体式复合滤芯采用目前世界领先尖端技术梯度陶瓷膜，OMMT/HTV纳米材料制成，高精度过滤孔均匀分布，袪除有害物质同时，全面保留水中有益于健康的矿物质和微量元素，拥有国家发明专利。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;四重深度净化：：&lt;/strong&gt;&lt;br /&gt;\r\n			高精度过滤孔平均孔径0.15微米，孔隙均匀、紧密，吸附容量大、强度高，四重净化清除原水中的细菌、水垢、铁锈、重金属等有害物质，滤芯中的椰壳活性炭能保持水质的健康洁净、持久新鲜。&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;优势突出 - 4大优势 品质保证&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;strong&gt;配套使用，杜绝隐患&lt;/strong&gt;\r\n			&lt;p&gt;“骏丰健康净水器”专门为骏丰频谱水保健仪139系列量身定制，避免了其他品牌净水产品不配套、易漏水等弊端，免去您在饮用水方面的种种担心和忧虑。黄金组合，配合使用，让您喝上更加新鲜、甘甜、健康的频谱水。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;专利技术，效果更好&lt;/strong&gt;&lt;br /&gt;\r\n			一体式复合滤芯采用获得国家发明专利的梯度陶瓷膜结构，平均孔径0.15微米，相当于头发丝的1/500，复合滤芯是目前净水领域中能实现同时滤除多重有害物质的高科技产品，技术水平世界领先。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;一体结构，防止污染 &lt;/strong&gt;&lt;br /&gt;\r\n			一体式复合过滤原理，高效四芯同时净化，功能更强大，水质更健康，从根本上杜绝了传统组合滤芯渗水、漏水、二次污染的危险，让每一滴水都保持纯净好味道！&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;strong&gt;长效过滤，节约便捷&lt;/strong&gt;&lt;br /&gt;\r\n			只需加自来水，即可饮用，耐污性强，清洗方便，可周期性启用新滤孔，比一般滤芯更长效，净化效果更突出。长效滤芯的净化容量可达2000升，相当于105桶5加仑的桶装水。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot;&gt;功能全面 - 3&lt;strong&gt;项&lt;/strong&gt;功能 享受&lt;strong&gt;绿&lt;/strong&gt;色健康水&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot;&gt;\r\n			&lt;p&gt;净化：采用国际先进的陶瓷膜过滤技术，有效除掉水中泥沙、铁锈、悬浮物、重金属及细菌。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			吸附：高精度滤孔及滤芯内置的活性炭能有效的吸附异味，净化吸附双重保障。&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			保鲜：主滤芯中的椰壳活性炭能保持水质的持久新鲜，水质更健康，口感更甘甜。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(205, 1, 'JunFeng BFS Healthcare Rug', '&lt;p&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;font-size: 14px; font-weight: bold; color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; line-height: 18px;&quot;&gt;A healthy life starting from better sleeping&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We spend one third of our lives in bed. Sleeping helps human beings to rest and restore our brains and bodies. It has an important role in the detoxification of the body’s organs, allows blood to accumulate oxygen, cells to repair and improve metabolism. It is an indispensable component to good health.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug is a product with traditional Chinese medical ideas as well as modern biological spectrum technology. By producing heat and vibration, it synchronizes the acupuncture points and meridians to help you sleep. Together with our biological spectrum drinking therapy, Super Bio-Sleeping Rug improves blood circulation, relieves fatigue, as well as promoting detoxification of organs.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug, the biological spectrum healthcare during your sleep.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; line-height: normal;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;A new warm step to good health&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;1.Adjusts spleen and stomach function&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2.Improves female gynecological issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3.Improves the male prostate issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4.Improves the endocrine system&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Suitable group&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p&gt;JunFeng BFS Healthcare Blanket is widely applicable for the elderly, children, and adults. Particularly applies to the following groups who:&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p&gt;1. Suffer from gynecological problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. Have prostate and urinary system problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. Hope to improve his/her spleen and stomach system&lt;/p&gt;\r\n\r\n			&lt;p&gt;4.&amp;nbsp;Have weak immune systems&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. Who drive or sail for long periods of time&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Feature Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;1. Washable cloth cover&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;2. Automatic temperature adjustment&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;3. 3 hours auto-off function&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Material Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;● Cotton layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; The JFC green spectrum bionic layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; PVC insulation&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt; Temperature sensing alloy wire&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Temperature sensing protective layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Heating alloy heating wire&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; High intensity Rally fiber&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left:6.0pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica; font-size: 14px; line-height: 18px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Manufactured by the finest Japanese double heating temperature line&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;font-size: 24px; color: rgb(222, 41, 37); font-weight: bold; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;Specifications&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;font-size: 14px; color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, ''ヒラギノ角ゴ Pro W3'', ''Hiragino Kaku Gothic Pro'', Osaka, ''ＭＳ Ｐゴシック'', ''MS PGothic'', sans-serif, arial, helvetica;&quot;&gt;PRODUCT :&amp;nbsp;JunFeng BFS Healthcare Blanket&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			MODEL : DK3060-1SX&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			DIMENSIONS : 420×100×400mm3&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			NET WEIGHT : 0.35kg&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(203, 4, '骏丰频谱健康睡宝', '&lt;p&gt;拥有健康人生&amp;nbsp; 由睡眠开始&lt;/p&gt;\r\n\r\n&lt;p&gt;“骏丰频谱健康睡宝”是采用新型复合材料研制开发出具有红外效应的新型频谱产品，其频谱仿生层能产生红外频谱（红外线），红外频谱的波长范围在4-16μm（微米），峰值波长区为7-10μm，与人体红外吸收（发射）的峰值波长9.35μm相匹配。&lt;/p&gt;\r\n\r\n&lt;p&gt;“骏丰频谱健康睡宝”结合传统中医的反射原理及现代生物频谱科技，应用于全身，与人体共振匹配吸收，同步调频全身诸多穴位和经络，调节神经系统，达到改善睡眠的效果；进一步巩固“内喝外照”生物频谱疗法，改善血液循环、恢复微循环障碍，迅速缓解和消除全身疲劳，保持精力旺盛，促进各脏腑器官的排毒，从而达到强身健体的功效。&lt;/p&gt;\r\n\r\n&lt;p&gt;“骏丰频谱健康睡宝”是目前生物频谱疗法中能在睡眠中对人体进行呵护的贴身伴侣。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品特点&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 人体全身产生共振匹配吸收&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 调理全身穴位和经络&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 改善血液循环，促进气血运行&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 调节神经系统，提高睡眠质量&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 改善入睡困难与失眠等问题&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 可自动调节温度&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 9小时自动关机功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 微电脑控制技术，温度控制准确，恒温效果更好&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 采用24V直流低电压供电隔离，安全节能功能说明&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;适用人群&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;骏丰频谱健康腹宝适用人群广泛，可用于长者，儿童，成年人的日常保健，特别适用人群：&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 入睡困难、易惊醒、失眠人士；&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 腰背酸痛、四肢麻痹、关节、风湿不适等患者；&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 手脚冰冷、怕冷人士；&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 正在进行“内喝外照”频谱保健疗法的各类患者；&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 工作繁忙，无暇顾及养生保健人士。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(195, 1, 'JunFeng BFS Water and Skincare Device', '&lt;p&gt;Smart Shower Pro is a healthy home shower made with an international spectrum technology. Through spectral field, tap water is made into spectrum water which matches the spectrum field of human tissues, organs and cells.&lt;/p&gt;\r\n\r\n&lt;p&gt;When you change the chemical characteristic of raw water, the spectrum of water is changed.After a shower or bath, spectrum water quickly penetrates into the cells of the skin to help restore the normal state of equilibrium, as well as stabilizing healthy skin cells and achieving good health and prevention.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Comprehensive antioxidant and elimination of free radicals&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;Scientists have found that harmful free radicals are from oxygen-containing materials. They name these radicals as reactive oxygen radicals. The process of reactive oxygen radical damage to the human body is a process of oxidation. To reduce the damage, we need to start with an antioxidant.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Preventing aging = antioxidant = eliminating free radicals&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;Free radicals are everywhere, from sun-burn, stress, environmental pollution and so on. As a result, the skin may look bleak and old. All we need to do is provide an antioxidant and eliminate free radicals in order to protect our skin.&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Features of the product&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;1. Enhances the luster and elasticity of the skin&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;2. Reduces the damage caused by free radicals&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;3. Helps prevent hair loss&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;4. Slows the decline of body functions&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;5. Strengthens body resistance&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;6. Improvs skin immunity&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Specifications&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;PRODUCT: JunFeng BFS Water and Skincare Device&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			MODEL: JF-W136&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			TYPE: Wall Mounted&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			DIMENSIONS: 366 x 243 x 433 mm2&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			NET / GROSS WIEGHT: 3.6 kg / 4.8 kg&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			INTERNATIONAL CERTIFICATION: ISO 9001 : 2008 GB/T19001 - 2008&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(195, 3, '駿豐頻譜健康浴寶', '&lt;p&gt;“駿豐頻譜健康浴寶”是採用國際頂尖頻譜科技製作而成的家居健康沐浴器。它通過特定的頻譜場作用，將普通的自來水調制處理成與人體正常組織器官、細胞頻譜場相匹配的頻譜水。&lt;/p&gt;\r\n\r\n&lt;p&gt;當改變了原水的理化特性後，頻譜水便產生。在淋浴或泡浴後，頻譜水更迅速滲透到皮膚各組織內，與之相互作用，對已失調的皮膚組織進行調整和恢復到正常平衡狀態，而同時對健康的皮膚組織增強穩定功能，從而達到保健和預防的效果。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;全面抗氧化 清除自由基&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;科學家們發現損害人體健康的自由基幾乎都與那些活性較強的含氧物質有關，他們把與這些物質相結合的自由基叫作活性氧自由基。活性氧自由基對人體的損害實際上是一種氧化過程。因此，要降低自由基的損害，就要從抗氧化做起。&lt;/p&gt;\r\n\r\n			&lt;p&gt;日常生活中，日曬、壓力、環境污染等都能讓肌膚自由基氾濫，從而產生面色暗淡，缺水等氧化現象。氧化是肌膚衰老的最大威脅，所以無論從健康層面還是從護膚層面，我們都需要在日常生活中注意抗氧化，清除自由基。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 減少體內自由基對人體的損傷&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 增強皮膚光澤及彈性&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 有助改善脫髮問題&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 增強身體抵抗力&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 提高皮膚免疫力&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 延緩機體功能衰退&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(195, 4, '骏丰频谱健康浴宝', '&lt;p&gt;“骏丰频谱健康浴宝”是采用国际顶尖频谱科技制作而成的家居健康沐浴器。它通过特定的频谱场作用，将普通的自来水调制处理成与人体正常组织器官、细胞频谱场相匹配的频谱水。&lt;/p&gt;\r\n\r\n&lt;p&gt;当改变了原水的理化特性后，频谱水便产生。在淋浴或泡浴后，频谱水更迅速渗透到皮肤各组织内，与之相互作用，对已失调的皮肤组织进行调整和恢复到正常平衡状态，而同时对健康的皮肤组织增强稳定功能，从而达到保健和预防的效果。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;全面抗氧化 清除自由基&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;科学家们发现损害人体健康的自由基几乎都与那些活性较强的含氧物质有关，他们把与这些物质相结合的自由基叫作活性氧自由基。活性氧自由基对人体的损害实际上是一种氧化过程。因此，要降低自由基的损害，就要从抗氧化做起。&lt;/p&gt;\r\n\r\n			&lt;p&gt;日常生活中，日晒、压力、环境污染等都能让肌肤自由基泛滥，从而产生面色暗淡，缺水等氧化现象。氧化是肌肤衰老的最大威胁，所以无论从健康层面还是从护肤层面，我们都需要在日常生活中注意抗氧化，清除自由基。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 减少体内自由基对人体的损伤&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 增强皮肤光泽及弹性&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 有助改善脱发问题&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 增强身体抵抗力&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 提高皮肤免疫力&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 推迟机体功能衰退&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(196, 1, 'Smart Body Warmer', '&lt;p&gt;The Smart Body Warmer, made of advanced composite materials, is an innovative Bio-Frequency Spectrum product with infrared effects. If applied to the human body, it matches the resonance absorption rate and can promote health significantly.&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\nThis product has a heating function, can promote and improve local blood circulation, micro-circulation, increase blood supply to tissues and organs, alleviate muscular tension and reduce fatigue.&lt;/p&gt;\r\n\r\n&lt;p&gt;This product uses Li-ion batteries to supply the heating element which is made of nano-carbon fiber. This product is safe and suitable for both outdoor and household use with a long operating time to meet your high-quality needs for a healthy life.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Product Size：&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;table border=&quot;1&quot; bordercolor=&quot;#252525&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;Size&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;For height&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;Adjustment&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;Length&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;Width&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;S - M&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;150 - 170 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;Zipped&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;64 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;86 cm&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;Unzipped&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;64 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;98 cm&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;L - XL&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;170 - 180 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;Zipped&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;70 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;110 cm&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;Unzipped&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;70 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;122 cm&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; colspan=&quot;1&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;XXL - XXXL&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; colspan=&quot;1&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;180 - 190 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;Zipped&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;73 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;120 cm&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;Unzipped&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;73 cm&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;132 cm&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(196, 4, '济福频谱健康马夹', '&lt;p&gt;“济福频谱健康背心”是采用新型复合材料研制开发出具有红外效应特殊功能的新型频谱产品，作用于人体后，能产生共振匹配吸收，具有很好的促进健康及保健的功能。&lt;/p&gt;\r\n\r\n&lt;p&gt;“济福频谱健康背心”具有保暖功效且能促进和改善局部血液循环；增加组织器官供血；缓解肌肉紧张和促进消除疲劳。&lt;/p&gt;\r\n\r\n&lt;p&gt;“济福频谱健康背心”是采用锂电池给发热体供电，发热体为纳米碳纤维，性能安全，工作持久，家居户外适用，能满足您高质量的健康生活需要。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品功能：&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 人体全身产生共振匹配吸收&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 改善血液循环，促进气血运行&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 消除疲劳，缓解肌肉紧张&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 具有保暖功效，保健的功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品特點：&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n						&lt;p&gt;1. 采用新型复合材料研制发出具有红外效应特殊功能的频谱背心。&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 采用锂电池给发热体供电，发热体为纳米碳纤维，性能安全。&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 电池设有1-5文件加热调节温度，可自行调节温度。&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 频谱背心具有保暖及保健作用，适合任何人士穿着。&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color: rgb(222, 41, 37); line-height: 20.79px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 23.99px; font-weight: bold;&quot;&gt;产品尺吋：&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;line-height: 20.79px; font-size: 13px;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/span&gt;&lt;/font&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;table border=&quot;1&quot; bordercolor=&quot;#252525&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;尺寸&lt;/span&gt;&lt;/font&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;适合身高&lt;/span&gt;&lt;/font&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;调整&lt;/span&gt;&lt;/font&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;长度&lt;/span&gt;&lt;/font&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;阔度&lt;/span&gt;&lt;/font&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;S&amp;nbsp;- M&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;150 - 170 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;合上拉链&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;64 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;86 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;打开拉鍊&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;64 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;98&amp;nbsp;厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;L - XL&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;170 - 180 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;合上拉链&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;70 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;110 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;打开拉鍊&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;70&amp;nbsp;厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;122 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; colspan=&quot;1&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;XXL - XXXL&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; colspan=&quot;1&quot; rowspan=&quot;2&quot; valign=&quot;middle&quot;&gt;180 - 190 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;合上拉链&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;73 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;120 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; height=&quot;30&quot; valign=&quot;middle&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;打开拉鍊&lt;/span&gt;&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;73 厘米&lt;/td&gt;\r\n						&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;132 厘米&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(191, 3, '便擕式頻譜儀', '&lt;p&gt;“駿豐頻譜便攜保健儀”是用新型複合材料研製開發出具有紅外效應的新型頻譜產品，主要是通過一種含有特殊功能的陶瓷/高分子複合材料組成的複合塗層材料在受熱時能輻射寬波段的紅外頻譜，其紅外頻譜的波長範圍在3-25μm（微米），峰值波長區為7.7-10μm，與人體紅外吸收（發射）的峰值波長9.35μm相匹配。產品產生的紅外頻譜作用於人體後，產生良好的生物頻譜效應，如改善局部血液循環，促進腫脹消退，降低肌張力，緩解肌痙攣，鎮痛和表面乾燥的作用等，從而達到保健作用。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; style=&quot;opacity: 0.9;&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 改善血液循環&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 促進腫脹消退&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 減輕皮膚表面乾燥&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 緩解肌肉緊張&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 促進傷口癒合&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 減輕不適&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品特點&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 人體學設計的雙向弧線頻譜發出孔，讓頻譜波發散更為開闊。&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 高科技材質，獨具匠心陶瓷表面附著頻譜塗層防滑。&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 90度旋轉設計，一鍵操作簡單易用，附設高低兩個檔位，可自由調節時間。&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 採用12V直流低電壓供電，確保產品使用安全。&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. U型折疊設計，人性化防滑手柄，收納更方便，人體美學設計的底座，讓它成為一件藝術品。&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 體積輕巧，方便居家、旅行、辦公室使用攜帶方便。&lt;/p&gt;\r\n\r\n			&lt;p&gt;7. 人性化設計，可手持、定位放置，工作、休閒均可使用。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(197, 1, 'Osmosis Bio Spectrum Mist', '&lt;p&gt;Main Function&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 6pt;&quot;&gt;● Enhance the efficiency of spectrum irrodiation enhance the effect.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;●&lt;/span&gt;&amp;nbsp;&amp;nbsp; Reduce muscle soreness after exerise.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;●&lt;/span&gt;&amp;nbsp;&amp;nbsp; Moisturizing the skin, locl in moisture, does not dry the skin spectrum irradiation.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;●&lt;/span&gt;&amp;nbsp;&amp;nbsp; Helps to relieve muscle tension.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;●&lt;/span&gt;&amp;nbsp;&amp;nbsp; Rapidelimination of spansms and cramping.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;line-height: 21.33px; font-size: 13.33px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Refrenshing spirit, help eliminate futigue.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Usage Instruction&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;​&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;Sprayed on the need to position&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;成分&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;水﹐荷荷巴油﹐1.2-丁二醇﹐咪唑烷基脲&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(197, 4, '济福频谱渗透液', '&lt;p&gt;主要功能&lt;/p&gt;\r\n\r\n&lt;p&gt;- 增强频谱照射的效率，提升效果&lt;/p&gt;\r\n\r\n&lt;p&gt;- 减轻运动后的肌肉酸痛&lt;/p&gt;\r\n\r\n&lt;p&gt;- 滋润肌肤、锁住水分、频谱照射时皮肤不干燥&lt;/p&gt;\r\n\r\n&lt;p&gt;- 有助于缓解肌肉紧张&lt;/p&gt;\r\n\r\n&lt;p&gt;- 快速消除痉挛和抽筋&lt;/p&gt;\r\n\r\n&lt;p&gt;- 提神解乏、帮助疲劳消除&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用方法&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;喷洒于需要的部位&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;成分&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;水、荷荷巴油、1.2 -丁二醇、咪唑烷基脲&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(197, 3, '濟福頻譜滲透液', '&lt;p&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px; font-weight: bold;&quot;&gt;主要功能&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;- 增強頻譜照射的效率，提升效果&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;- 減輕運動後的肌肉酸痛&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;- 滋潤肌膚、鎖住水分、頻譜照射時皮膚不乾燥&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;- 有助於緩解肌肉緊張&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;- 快速消除痙攣和抽筋&lt;/span&gt;&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;- 提神解乏、幫助疲勞消除&lt;/span&gt;&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;使用方法&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;噴灑於需要的部位&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;成份&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;水、荷荷巴油、1.2 -丁二醇、咪唑烷基脲&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(198, 1, '駿豐頻譜水保健儀 (便携式)', '&lt;p&gt;“駿豐頻譜水保健儀”是採用國際頂尖頻譜科技製作而成的家居健康頻譜水飲用器。它通過特定的頻譜場作用，將普通飲用水製作成與人體正常器官組織、細胞頻譜場相匹配的駿豐頻譜水。&lt;/p&gt;\r\n\r\n&lt;p&gt;當改變了原飲用水的理化特性後，它改變了O17核磁共振譜線；提高了電導率，電導率更接近於人體血漿電導率譜；增加了水中的含氧量，降低了水中氯仿含量；提高了水對無機物的溶解力。&lt;/p&gt;\r\n\r\n&lt;p&gt;駿豐頻譜水不含任何藥物成份，製作方便，口感良好，飲用後能迅速進入並滲透到體內各部份與之相互作用，對已失調的人體內部結構進行調解，使其恢復到正常平衡狀態，同時使健康的器官、細胞功能更加穩定，改善微循環、促進新陳化謝、增強腸胃功能、促進食物消化與營養吸收、提高人體綜合免疫能力，從而達到預防、保健的效果。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;right&quot; class=&quot;index_content_txt&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;3&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;產品特點&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;p&gt;1. 駿豐頻譜水保健儀的頻譜發生器裝置已擁有中國、美國、德國、英國、澳大利亞和新加坡六個國家共七項發明專利。&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 小巧精緻，方便攜帶，特別適合居家、辦公室或外出旅行使用。&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 採用世界先進的電子技術，輕觸式按鈕啟動，小體積承載大功能。&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 採用304不鏽鋼材料，表面拉絲工藝，耐高溫、耐低溫、防腐蝕及防撞擊，品質穩定，美觀大方。&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;產品功能&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;1. 更容易被身體組織各個細胞吸收和利用&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						2. 增加對人體內大部分細胞的持續供氧量&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						3. 改善身體細胞新陳代謝及調節泌尿系統&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						4. 減少飲水中由氯化物帶來的不健康因素&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						5. 有效提高人體的免疫功能和抗感染能力&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						6. 增強腸胃功能幫助食物消化與營養吸收&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;主要研究機構&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;a) 中國計量科學研究院&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						b) 北京大學分析測試中心&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						c) 解放軍總醫院 (301醫院)&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						d) 國家城市供水水質監測網北京監測站&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						e) 中山醫科大學及廣州市紅十字會醫院&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(198, 4, '骏丰频谱水保健仪 (便携式)', '&lt;p&gt;“骏丰频谱水保健仪”是采用国际顶尖频谱科技制作而成的家居健康频谱水饮用器。它通过特定的频谱场作用，将普通饮用水制作成与人体正常器官组织、细胞频谱场相匹配的骏丰频谱水。&lt;/p&gt;\r\n\r\n&lt;p&gt;当改变了原饮用水的理化特性后，它改变了O17核磁共振谱线；提高了电导率，电导率更接近于人体血浆电导率谱；增加了水中的含氧量，降低了水中氯仿含量；提高了水对无机物的溶解力。&lt;/p&gt;\r\n\r\n&lt;p&gt;骏丰频谱水不含任何药物成份，制作方便，口感良好，饮用后能迅速进入并渗透到体内各部份与之相互作用，对已失调的人体内部结构进行调解，使其恢复到正常平衡状态，同时使健康的器官、细胞功能更加稳定，改善微循环、促进新陈化谢、增强肠胃功能、促进食物消化与营养吸收、提高人体综合免疫能力，从而达到预防、保健的效果。&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;right&quot; class=&quot;index_content_txt&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;3&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;产品特点&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;p&gt;1. 骏丰频谱水保健仪的频谱发生器装置已拥有中国、美国、德国、英国、澳大利亚和新加坡六个国家共七项发明专利。&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 小巧精致，方便携带，特别适合居家、办公室或外出旅行使用。&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 采用世界先进的电子技术，轻触式按钮启动，小体积承载大功能。&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 采用304不锈钢材料，表面拉丝工艺，耐高温、耐低温、防腐蚀及防撞击，质量稳定，美观大方。&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;产品功能&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;1. 更容易被身体组织各个细胞吸收和利用&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						2. 增加对人体内大部分细胞的持续供氧量&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						3. 改善身体细胞新陈代谢及调节泌尿系统&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						4. 减少饮水中由氯化物带来的不健康因素&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						5. 有效提高人体的免疫功能和抗感染能力&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						6. 增强肠胃功能帮助食物消化与营养吸收&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;主要研究机构&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;a) 中国计量科学研究院&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						b) 北京大学分析测试中心&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						c) 解放軍總醫院 (301醫院)&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						d) 国家城市供水水质监测网北京监测站&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						e) 中山医科大学及广州市红十字会医院&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(198, 3, '駿豐頻譜水保健儀 (便携式)', '&lt;p&gt;“駿豐頻譜水保健儀”是採用國際頂尖頻譜科技製作而成的家居健康頻譜水飲用器。它通過特定的頻譜場作用，將普通飲用水製作成與人體正常器官組織、細胞頻譜場相匹配的駿豐頻譜水。&lt;/p&gt;\r\n\r\n&lt;p&gt;當改變了原飲用水的理化特性後，它改變了O17核磁共振譜線；提高了電導率，電導率更接近於人體血漿電導率譜；增加了水中的含氧量，降低了水中氯仿含量；提高了水對無機物的溶解力。&lt;/p&gt;\r\n\r\n&lt;p&gt;駿豐頻譜水不含任何藥物成份，製作方便，口感良好，飲用後能迅速進入並滲透到體內各部份與之相互作用，對已失調的人體內部結構進行調解，使其恢復到正常平衡狀態，同時使健康的器官、細胞功能更加穩定，改善微循環、促進新陳化謝、增強腸胃功能、促進食物消化與營養吸收、提高人體綜合免疫能力，從而達到預防、保健的效果。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;style type=&quot;text/css&quot;&gt;.product_name {\r\n	font-size: 24px;\r\n	color: #de2925;\r\n	font-weight: bold;\r\n	font-family: &quot;メイリオ&quot;,&quot;Meiryo&quot;,&quot;ヒラギノ角ゴ Pro W3&quot;,&quot;Hiragino Kaku Gothic Pro&quot;, &quot;Osaka&quot;,&quot;ＭＳ Ｐゴシック&quot;,&quot;MS PGothic&quot;,&quot;sans-serif&quot;,&quot;arial&quot;,&quot;helvetica&quot;;\r\n}\r\n&lt;/style&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;right&quot; class=&quot;index_content_txt&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;3&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;670&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;產品特點&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;\r\n						&lt;p&gt;1. 駿豐頻譜水保健儀的頻譜發生器裝置已擁有中國、美國、德國、英國、澳大利亞和新加坡六個國家共七項發明專利。&lt;/p&gt;\r\n\r\n						&lt;p&gt;2. 小巧精緻，方便攜帶，特別適合居家、辦公室或外出旅行使用。&lt;/p&gt;\r\n\r\n						&lt;p&gt;3. 採用世界先進的電子技術，輕觸式按鈕啟動，小體積承載大功能。&lt;/p&gt;\r\n\r\n						&lt;p&gt;4. 採用304不鏽鋼材料，表面拉絲工藝，耐高溫、耐低溫、防腐蝕及防撞擊，品質穩定，美觀大方。&lt;/p&gt;\r\n\r\n						&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;產品功能&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;1. 更容易被身體組織各個細胞吸收和利用&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						2. 增加對人體內大部分細胞的持續供氧量&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						3. 改善身體細胞新陳代謝及調節泌尿系統&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						4. 減少飲水中由氯化物帶來的不健康因素&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						5. 有效提高人體的免疫功能和抗感染能力&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						6. 增強腸胃功能幫助食物消化與營養吸收&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;product_name&quot;&gt;主要研究機構&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td class=&quot;index_content_txt&quot;&gt;a) 中國計量科學研究院&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						b) 北京大學分析測試中心&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						c) 解放軍總醫院 (301醫院)&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						d) 國家城市供水水質監測網北京監測站&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						e) 中山醫科大學及廣州市紅十字會醫院&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(203, 3, '駿豐頻譜健康睡寶', '&lt;p&gt;擁有健康人生&amp;nbsp; 由睡眠開始&lt;/p&gt;\r\n\r\n&lt;p&gt;“駿豐頻譜健康睡寶”是採用新型複合材料研製開發出具有紅外效應的新型頻譜產品，其頻譜仿生層能產生紅外頻譜（紅外線），紅外頻譜的波長範圍在4-16μm（微米），峰值波長區為7-10μm，與人體紅外吸收（發射）的峰值波長9.35μm相匹配。&lt;/p&gt;\r\n\r\n&lt;p&gt;“駿豐頻譜健康睡寶”結合傳統中醫的反射原理及現代生物頻譜科技，應用於全身，與人體共振匹配吸收，同步調頻全身諸多穴位和經絡，調節神經系統，達到改善睡眠的效果；進一步鞏固“內喝外照”生物頻譜療法，改善血液循環、恢復微循環障礙，迅速緩解和消除全身疲勞，保持精力旺盛，促進各臟腑器官的排毒，從而達到強身健體的功效。&lt;/p&gt;\r\n\r\n&lt;p&gt;“駿豐頻譜健康睡寶”是目前生物頻譜療法中能在睡眠中對人體進行呵護的貼身伴侶。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品特點&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n			&lt;p&gt;1. 人體全身產生共振匹配吸收&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 調理全身穴位和經絡&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 改善血液迴圈，促進氣血運行&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 調節神經系統，提高睡眠品質&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 改善入睡困難與失眠等問題&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 可自動調節溫度&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 9小時自動關機功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 微電腦控制技術，溫度控制準確，恒溫效果更好&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 採用24V直流低電壓供電隔離，安全節能功能說明&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;適用人群&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;駿豐頻譜健康腹寶適用人群廣泛，可用於長者、兒童、成年人的日常保健。 特別適用人群：&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 入睡困難、易驚醒、失眠人士；&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 腰背酸痛、四肢麻痹、關節、風濕不適等患者；&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 手腳冰冷、怕冷人士；&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 正在進行“內喝外照”頻譜保健療法的各類患者；&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 工作繁忙，無暇顧及養生保健人士。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(203, 1, 'JunFeng BFS Healthcare Rug', '&lt;p&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px; font-weight: bold;&quot;&gt;A healthy life starting from better sleeping&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We spend one third of our lives in bed. Sleeping helps human beings to rest and restore our brains and bodies. It has an important role in the detoxification of the body’s organs, allows blood to accumulate oxygen, cells to repair and improve metabolism. It is an indispensable component to good health.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug is a product with traditional Chinese medical ideas as well as modern biological spectrum technology. By producing heat and vibration, it synchronizes the acupuncture points and meridians to help you sleep. Together with our biological spectrum drinking therapy, Super Bio-Sleeping Rug improves blood circulation, relieves fatigue, as well as promoting detoxification of organs.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug, the biological spectrum healthcare during your sleep.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;670&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;A new warm step to good health&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;1.Adjusts spleen and stomach function&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2.Improves female gynecological issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3.Improves the male prostate issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4.Improves the endocrine system&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Suitable group&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;JunFeng BFS Healthcare Blanket is widely applicable for the elderly, children, and adults. Particularly applies to the following groups who:&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. Suffer from gynecological problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. Have prostate and urinary system problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. Hope to improve his/her spleen and stomach system&lt;/p&gt;\r\n\r\n			&lt;p&gt;4.&amp;nbsp;Have weak immune systems&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. Who drive or sail for long periods of time&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Feature Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;1. Washable cloth cover&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;2. Automatic temperature adjustment&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;3. 3 hours auto-off function&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Material Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;● Cotton layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;●&lt;/span&gt; The JFC green spectrum bionic layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;●&lt;/span&gt; PVC insulation&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;●&lt;/span&gt; Temperature sensing alloy wire&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Temperature sensing protective layer&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Heating alloy heating wire&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; High intensity Rally fiber&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&lt;span style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;●&lt;/span&gt;&amp;nbsp; Manufactured by the finest Japanese double heating temperature line&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(222, 41, 37); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Specifications&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;670&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;PRODUCT :&amp;nbsp;JunFeng BFS Healthcare Blanket&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			MODEL : DK3060-1SX&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			DIMENSIONS : 420×100×400mm3&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			NET WEIGHT : 0.35kg&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(201, 3, '駿豐頻譜健康腹寶', '&lt;p&gt;擁有健康人生 由護腹開始&lt;/p&gt;\r\n\r\n&lt;p&gt;“駿豐頻譜健康腹寶”是採用新型複合材料研製開發出具有紅外效應的新型頻譜產品，其頻譜仿生層能產生紅外頻譜（紅外線），紅外頻譜的波長範圍在4-16μm（微米），峰值波長區為7-10μm，與人體紅外吸收（發射）的峰值波長9.35μm相匹配。&lt;/p&gt;\r\n\r\n&lt;p&gt;“駿豐頻譜健康腹寶”結合傳統中醫的反射原理及現代生物頻譜科技，應用於腹部的五臟六腑，產生共振匹配吸收，尤其能改善人體五臟六腑的血液循環，可調整脾胃功能和改善女性婦科、男性前列腺等內分泌系統；可以鞏固“內喝外照”生物頻譜療法“改善血液循環、促進氣血運行、增強新陳代謝、增強機體免疫力”等功能，從而達到強身健體的功效。&lt;/p&gt;\r\n\r\n&lt;p&gt;本產品簡單靈活，性能安全、透氣保暖，能滿足您高品質的健康生活需要。您可自由選擇，或家用或辦公室或汽車上使用，是您健康生活不可缺少的伴侶。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品特點&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 人體產生共振匹配吸收&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 改善血液循環，促進氣血運行&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 促進新陳代謝，增強免疫力&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 調理宮寒及改善各種婦女不適問題&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 改善男性前列腺及泌尿系統失調&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 改善脾胃功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;適合人群&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;駿豐頻譜健康腹寶適用人群廣泛，可用於老人、兒童、成年人的日常保健。特別適用於以下人群：&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 宮寒及各種不適問題的女性；&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 前列腺或泌尿系統不適的男性；&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 體弱多病、免疫力低人士；&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 希望改善脾胃功能人士；&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 各類駕駛員、船上工作人士；&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 工作繁忙，無暇顧及養生保健人士。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;產品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 可拆卸布套清洗，乾淨衛生&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 微電腦控制技術，溫度控制準確，恆溫效果更好&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 可自動調節溫度，3小時自動關機功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 採用24V直流低電壓供電隔離，安全節能&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(201, 1, 'JunFeng BFS Healthcare Blanket', '&lt;p&gt;&lt;span class=&quot;index_news_title&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px; font-weight: bold;&quot;&gt;A healthy life starting from better sleeping&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We spend one third of our lives in bed. Sleeping helps human beings to rest and restore our brains and bodies. It has an important role in the detoxification of the body’s organs, allows blood to accumulate oxygen, cells to repair and improve metabolism. It is an indispensable component to good health.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug is a product with traditional Chinese medical ideas as well as modern biological spectrum technology. By producing heat and vibration, it synchronizes the acupuncture points and meridians to help you sleep. Together with our biological spectrum drinking therapy, Super Bio-Sleeping Rug improves blood circulation, relieves fatigue, as well as promoting detoxification of organs.&lt;/p&gt;\r\n\r\n&lt;p&gt;JunFeng BFS Healthcare Rug, the biological spectrum healthcare during your sleep.&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;A new warm step to good health&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;1.Adjusts spleen and stomach function&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			2.Improves female gynecological issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			3.Improves the male prostate issues&amp;nbsp;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			4.Improves the endocrine system&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Suitable group&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;JunFeng BFS Healthcare Blanket is widely applicable for the elderly, children, and adults. Particularly applies to the following groups who:&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. Suffer from gynecological problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. Have prostate and urinary system problem&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. Hope to improve his/her spleen and stomach system&lt;/p&gt;\r\n\r\n			&lt;p&gt;4.&amp;nbsp;Have weak immune systems&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. Who drive or sail for long periods of time&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;Feature Description&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;1. Washable cloth cover&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;2. Automatic temperature adjustment&lt;/p&gt;\r\n\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;3. 3 hours auto-off function&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p style=&quot;margin-left: 6pt;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(201, 4, '骏丰频谱健康腹宝', '&lt;p&gt;拥有健康人生 由护腹开始&lt;/p&gt;\r\n\r\n&lt;p&gt;“骏丰频谱健康腹宝”是采用新型复合材料研制开发出具有红外效应的新型频谱产品，其频谱仿生层能产生红外频谱（红外线），红外频谱的波长范围在4-16μm（微米），峰值波长区为7-10μm，与人体红外吸收（发射）的峰值波长9.35μm相匹配。&lt;/p&gt;\r\n\r\n&lt;p&gt;“骏丰频谱健康腹宝”结合传统中医的反射原理及现代生物频谱科技，应用于腹部的五脏六腑，产生共振匹配吸收，尤其能改善人体五脏六腑的血液循环，可调整脾胃功能和改善女性妇科、男性前列腺等内分泌系统；可以巩固“内喝外照”生物频谱疗法“改善血液循环、促进气血运行、增强新陈代谢、增强机体免疫力”等功能，从而达到强身健体的功效。&lt;/p&gt;\r\n\r\n&lt;p&gt;本产品简单灵活，性能安全、透气保暖，能满足您高质量的健康生活需要。您可自由选择，或家用或办公室或汽车上使用，是您健康生活不可缺少的伴侣。&lt;/p&gt;\r\n', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;color: rgb(0, 0, 0); line-height: normal; font-family: Simsun; font-size: medium;&quot; width=&quot;850&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品特点&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 人体产生共振匹配吸收&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 改善血液循环，促进气血运行&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 促进新陈代谢，增强免疫力&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 调理宫寒及改善各种妇女不适问题&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 改善男性前列腺及泌尿系统失调&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 改善脾胃功能&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; height=&quot;30&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;适合人群&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;骏丰频谱健康腹宝适用人群广泛，可用于長者、儿童、成年人的日常保健。特别适用于以下人群：&lt;/p&gt;\r\n\r\n			&lt;p&gt;1. 宫寒及各种不适问题的女性；&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 前列腺或泌尿系统不适的男性；&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 体弱多病、免疫力低人士；&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 希望改善脾胃功能人士；&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n\r\n			&lt;p&gt;5. 各类驾驶员、船上工作人士；&lt;/p&gt;\r\n\r\n			&lt;p&gt;6. 工作繁忙，无暇顾及养生保健人士。&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;产品功能&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&lt;img height=&quot;1&quot; src=&quot;catalog/view/theme/jfchealth/images/img_product_line.png&quot; width=&quot;850&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;1. 可拆卸布套清洗，干净卫生&lt;/p&gt;\r\n\r\n			&lt;p&gt;2. 微电脑控制技术，温度控制准确，恒温效果更好&lt;/p&gt;\r\n\r\n			&lt;p&gt;3. 可自动调节温度，3小时自动关机功能&lt;/p&gt;\r\n\r\n			&lt;p&gt;4. 采用24V直流低电压供电隔离，安全节能&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;product_name&quot; style=&quot;color: rgb(97, 137, 172); font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 24px; font-weight: bold;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;index_content_txt&quot; style=&quot;color: rgb(37, 37, 37); line-height: 18px; font-family: メイリオ, Meiryo, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, Osaka, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, &amp;quot;MS PGothic&amp;quot;, sans-serif, arial, helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n', '', '', ''),
(205, 4, '便携套装', '&lt;p&gt;“内喝外照”生物频谱保健法，即“内喝”骏丰频谱水，“外照”骏丰频谱仪/房等系列产品。 “内喝外照”生物频谱保健法符合国际上宣导提出的自行医疗和自我健康法五要素——安全（无副作用）、比较有效、简单、随时可进行、短时间完成，进一步满足 了人们对健康的需求，全家人男女老幼均可使用。&lt;/p&gt;\r\n\r\n&lt;p&gt;饮用骏丰频谱水是由内向外，照射骏丰频谱仪/房等系列产品是由外向内，双管齐下，能使人体内外同时产生有益的生物频谱匹配共振吸收的生化反应，把二者的作用有机结合起来，内外互补，相得益彰，从而获得1+1＞2的双重功能和叠加效应的理想效果。&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `feature`, `meta_description`, `meta_keyword`, `tag`) VALUES
(205, 3, '便攜套裝', '&lt;p&gt;“內喝外照”生物頻譜保健法，即“內喝”駿豐頻譜水，“外照”&lt;span class=&quot;short_text&quot; id=&quot;result_box&quot; lang=&quot;zh-TW&quot;&gt;&lt;span title=&quot;照射骏丰频谱仪/房&quot;&gt;駿豐頻譜儀/房&lt;/span&gt;&lt;/span&gt;等系列產品。 “內喝外照”生物頻譜保健法符合國際上宣導提出的自行醫療和自我健康法五要素——安全（無副作用）、比較有效、簡單、隨時可進行、短時間完成，進一步滿足了人們對健康的需求，全家人男女老幼均可使用。&lt;/p&gt;\r\n\r\n&lt;p&gt;飲用駿豐頻譜水是由內向外，&lt;span class=&quot;short_text&quot; id=&quot;result_box&quot; lang=&quot;zh-TW&quot;&gt;&lt;span title=&quot;照射骏丰频谱仪/房&quot;&gt;照射駿豐頻譜儀/房&lt;/span&gt;&lt;/span&gt;等系列產品是由外向內，雙管齊下，能使人體內外同時產生有益的生物頻譜匹配共振吸收的生化反應，把二者的作用有機結合起來，內外互補，相得益彰，從而獲得1+1＞2的雙重功能和疊加效應的理想效果。&lt;/p&gt;\r\n', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=441 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(201, 0),
(203, 0),
(204, 0),
(205, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2966 ;

--
-- 转存表中的数据 `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2935, 186, 'data/products/139/img_products_02.png', 1),
(2918, 195, 'data/products/JF-W136/img_products_03.png', 2),
(2943, 191, 'data/products/JF-306/img_products_03.png', 2),
(2942, 191, 'data/products/JF-306/img_products_02.png', 1),
(2809, 204, 'data/products/DK3060-1SX/img_products_02.png', 1),
(2808, 204, 'data/products/139B/img_products_02.png', 2),
(2903, 203, 'data/products/TK160X90-1X/img_products_03.png', 1),
(2807, 192, 'data/products/JF-802/img_products_02.png', 1),
(2806, 192, 'data/products/139/img_products_02.png', 2),
(2902, 203, 'data/products/TK160X90-1X/img_products_02.png', 2),
(2939, 187, 'data/products/WF-1/img_products_02.png', 2),
(2938, 187, 'data/products/WF-1/img_products_03.png', 1),
(2964, 188, 'data/products/JF-902C/img_products_02.png', 2),
(2965, 188, 'data/products/JF-902C/img_products_03.png', 1),
(2861, 185, 'data/products/139B/img_products_03.png', 1),
(2860, 185, 'data/products/139B/img_products_02.png', 2),
(2897, 201, 'data/products/DK3060-1SX/img_products_01.png', 2),
(2811, 205, 'data/products/JF-306/img_products_02.png', 2),
(2810, 205, 'data/products/118B/img_products_03.png', 1),
(2871, 198, 'data/products/118B/img_products_03.png', 2),
(2870, 198, 'data/products/118B/img_products_02.png', 1),
(2896, 201, 'data/products/DK3060-1SX/img_products_03.png', 3),
(2961, 189, 'data/products/JF-802/img_products_02.png', 1),
(2937, 197, 'data/products/ Permeate/img_products_02.png', 1),
(2953, 196, 'data/products/JF-MJ-625/img_products_02.png', 1),
(2917, 195, 'data/products/JF-W136/img_products_02.png', 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_profile`
--

CREATE TABLE IF NOT EXISTS `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(0, 185),
(0, 186),
(0, 187),
(0, 188),
(0, 189),
(0, 190),
(0, 191),
(0, 192),
(0, 195),
(0, 196),
(0, 197),
(0, 198),
(0, 201),
(0, 203),
(0, 204),
(0, 205),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(201, 0),
(203, 0),
(204, 0),
(205, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=571 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=440 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(185, 99),
(186, 99),
(187, 99),
(188, 100),
(189, 100),
(190, 100),
(191, 100),
(192, 101),
(195, 102),
(196, 102),
(197, 102),
(198, 99),
(201, 102),
(203, 102),
(204, 101),
(205, 101);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_to_download`
--

INSERT INTO `oc_product_to_download` (`product_id`, `download_id`) VALUES
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(201, 0),
(203, 0),
(204, 0),
(205, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(201, 0),
(203, 0),
(204, 0),
(205, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_profile`
--

CREATE TABLE IF NOT EXISTS `oc_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_profile_description`
--

CREATE TABLE IF NOT EXISTS `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent'),
(1, 3, 'Refunded'),
(2, 3, 'Credit Issued'),
(3, 3, 'Replacement Sent'),
(1, 4, 'Refunded'),
(2, 4, 'Credit Issued'),
(3, 4, 'Replacement Sent');

-- --------------------------------------------------------

--
-- 表的结构 `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details'),
(1, 3, 'Dead On Arrival'),
(2, 3, 'Received Wrong Item'),
(3, 3, 'Order Error'),
(4, 3, 'Faulty, please supply details'),
(5, 3, 'Other, please supply details'),
(1, 4, 'Dead On Arrival'),
(2, 4, 'Received Wrong Item'),
(3, 4, 'Order Error'),
(4, 4, 'Faulty, please supply details'),
(5, 4, 'Other, please supply details');

-- --------------------------------------------------------

--
-- 表的结构 `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products'),
(1, 3, 'Pending'),
(3, 3, 'Complete'),
(2, 3, 'Awaiting Products'),
(1, 4, 'Pending'),
(3, 4, 'Complete'),
(2, 4, 'Awaiting Products');

-- --------------------------------------------------------

--
-- 表的结构 `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5651 ;

--
-- 转存表中的数据 `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(5640, 0, 'config', 'config_seo_url', '0', 0),
(5641, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(5642, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/octet-stream\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(2256, 0, 'flat', 'flat_sort_order', '1', 0),
(2255, 0, 'flat', 'flat_status', '1', 0),
(2254, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(2253, 0, 'flat', 'flat_tax_class_id', '0', 0),
(2252, 0, 'flat', 'flat_cost', '0.00', 0),
(3590, 0, 'category', 'category_module', 'a:3:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:4:{s:9:"layout_id";s:2:"12";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(1403, 0, 'latest', 'latest_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"9";s:11:"image_width";s:3:"190";s:12:"image_height";s:3:"190";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(5645, 0, 'config', 'config_encryption', 'd105839c7d5f858a2f3655f34e0dfa73', 0),
(5644, 0, 'config', 'config_password', '1', 0),
(5643, 0, 'config', 'config_maintenance', '0', 0),
(5639, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(5638, 0, 'config', 'config_shared', '0', 0),
(5637, 0, 'config', 'config_secure', '0', 0),
(5636, 0, 'config', 'config_fraud_status_id', '7', 0),
(5635, 0, 'config', 'config_fraud_score', '', 0),
(5634, 0, 'config', 'config_fraud_key', '', 0),
(5633, 0, 'config', 'config_fraud_detection', '0', 0),
(5632, 0, 'config', 'config_alert_emails', '', 0),
(5631, 0, 'config', 'config_account_mail', '0', 0),
(5630, 0, 'config', 'config_alert_mail', '0', 0),
(5629, 0, 'config', 'config_smtp_timeout', '5', 0),
(5626, 0, 'config', 'config_smtp_username', '', 0),
(5627, 0, 'config', 'config_smtp_password', '', 0),
(5628, 0, 'config', 'config_smtp_port', '25', 0),
(5625, 0, 'config', 'config_smtp_host', '', 0),
(5624, 0, 'config', 'config_mail_parameter', '', 0),
(5623, 0, 'config', 'config_mail_protocol', 'mail', 0),
(5622, 0, 'config', 'config_ftp_status', '0', 0),
(5621, 0, 'config', 'config_ftp_root', '', 0),
(5620, 0, 'config', 'config_ftp_password', '', 0),
(5619, 0, 'config', 'config_ftp_username', '', 0),
(5618, 0, 'config', 'config_ftp_port', '21', 0),
(5617, 0, 'config', 'config_ftp_host', 'netnetgo.com', 0),
(5616, 0, 'config', 'config_image_cart_height', '47', 0),
(5615, 0, 'config', 'config_image_cart_width', '47', 0),
(5614, 0, 'config', 'config_image_wishlist_height', '47', 0),
(5613, 0, 'config', 'config_image_wishlist_width', '47', 0),
(5612, 0, 'config', 'config_image_compare_height', '90', 0),
(5610, 0, 'config', 'config_image_related_height', '80', 0),
(2381, 0, 'pp_express', 'pp_express_username', 'sjsnetnetgo_api1.gmail.com', 0),
(2382, 0, 'pp_express', 'pp_express_password', 'Q5TMBH49Y62YYRF9', 0),
(2383, 0, 'pp_express', 'pp_express_signature', 'AiPC9BjkCyDFQXbSkoZcgqH3hpacA49XttY5YlJVpesQL8FZHhgKviYu', 0),
(2384, 0, 'pp_express', 'pp_express_test', '0', 0),
(2385, 0, 'pp_express', 'pp_express_debug', '0', 0),
(2386, 0, 'pp_express', 'pp_express_method', 'Sale', 0),
(2387, 0, 'pp_express', 'pp_express_total', '', 0),
(2388, 0, 'pp_express', 'pp_express_geo_zone_id', '0', 0),
(2389, 0, 'pp_express', 'pp_express_currency', 'HKD', 0),
(2390, 0, 'pp_express', 'pp_express_status', '1', 0),
(2391, 0, 'pp_express', 'pp_express_sort_order', '', 0),
(2392, 0, 'pp_express', 'pp_express_profile_cancel_status', '0', 0),
(2393, 0, 'pp_express', 'pp_express_canceled_reversal_status_id', '9', 0),
(2394, 0, 'pp_express', 'pp_express_completed_status_id', '5', 0),
(2395, 0, 'pp_express', 'pp_express_denied_status_id', '8', 0),
(2396, 0, 'pp_express', 'pp_express_expired_status_id', '14', 0),
(2397, 0, 'pp_express', 'pp_express_failed_status_id', '10', 0),
(2398, 0, 'pp_express', 'pp_express_pending_status_id', '1', 0),
(2399, 0, 'pp_express', 'pp_express_processed_status_id', '15', 0),
(2400, 0, 'pp_express', 'pp_express_refunded_status_id', '11', 0),
(2401, 0, 'pp_express', 'pp_express_reversed_status_id', '12', 0),
(2402, 0, 'pp_express', 'pp_express_voided_status_id', '16', 0),
(2403, 0, 'pp_express', 'pp_express_allow_note', '0', 0),
(2404, 0, 'pp_express', 'pp_express_logo', '', 0),
(2405, 0, 'pp_express', 'pp_express_border_colour', '', 0),
(2406, 0, 'pp_express', 'pp_express_header_colour', '', 0),
(2407, 0, 'pp_express', 'pp_express_page_colour', '', 0),
(2409, 0, 'bank_transfer', 'bank_transfer_bank_1', '銀行轉帳操作指南', 0),
(2410, 0, 'bank_transfer', 'bank_transfer_bank_2', '銀行轉帳操作指南', 0),
(2411, 0, 'bank_transfer', 'bank_transfer_total', '', 0),
(2412, 0, 'bank_transfer', 'bank_transfer_order_status_id', '7', 0),
(2413, 0, 'bank_transfer', 'bank_transfer_geo_zone_id', '0', 0),
(2414, 0, 'bank_transfer', 'bank_transfer_status', '1', 0),
(2415, 0, 'bank_transfer', 'bank_transfer_sort_order', '', 0),
(5611, 0, 'config', 'config_image_compare_width', '90', 0),
(5608, 0, 'config', 'config_image_additional_height', '55', 0),
(5609, 0, 'config', 'config_image_related_width', '80', 0),
(5607, 0, 'config', 'config_image_additional_width', '55', 0),
(5606, 0, 'config', 'config_image_product_height', '145', 0),
(5605, 0, 'config', 'config_image_product_width', '145', 0),
(5603, 0, 'config', 'config_image_popup_width', '620', 0),
(5604, 0, 'config', 'config_image_popup_height', '620', 0),
(5602, 0, 'config', 'config_image_thumb_height', '620', 0),
(5600, 0, 'config', 'config_image_category_height', '52', 0),
(5601, 0, 'config', 'config_image_thumb_width', '620', 0),
(5599, 0, 'config', 'config_image_category_width', '52', 0),
(5598, 0, 'config', 'config_icon', 'data/icon-cart.jpg', 0),
(5597, 0, 'config', 'config_logo', 'data/img_logo.png', 0),
(5596, 0, 'config', 'config_return_status_id', '2', 0),
(5595, 0, 'config', 'config_return_id', '0', 0),
(5594, 0, 'config', 'config_commission', '5', 0),
(5593, 0, 'config', 'config_affiliate_id', '0', 0),
(5592, 0, 'config', 'config_stock_status_id', '5', 0),
(5591, 0, 'config', 'config_stock_checkout', '0', 0),
(5589, 0, 'config', 'config_stock_display', '1', 0),
(5590, 0, 'config', 'config_stock_warning', '0', 0),
(5588, 0, 'config', 'config_complete_status_id', '5', 0),
(5587, 0, 'config', 'config_order_status_id', '1', 0),
(5585, 0, 'config', 'config_order_edit', '100', 0),
(5586, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(5584, 0, 'config', 'config_checkout_id', '0', 0),
(5583, 0, 'config', 'config_guest_checkout', '1', 0),
(5582, 0, 'config', 'config_cart_weight', '0', 0),
(5581, 0, 'config', 'config_account_id', '0', 0),
(5580, 0, 'config', 'config_customer_price', '0', 0),
(5579, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(5578, 0, 'config', 'config_customer_group_id', '1', 0),
(5574, 0, 'config', 'config_vat', '0', 0),
(5575, 0, 'config', 'config_tax_default', 'shipping', 0),
(5576, 0, 'config', 'config_tax_customer', 'shipping', 0),
(5577, 0, 'config', 'config_customer_online', '0', 0),
(5573, 0, 'config', 'config_tax', '1', 0),
(5572, 0, 'config', 'config_voucher_max', '1000', 0),
(5571, 0, 'config', 'config_voucher_min', '1', 0),
(5570, 0, 'config', 'config_download', '0', 0),
(5569, 0, 'config', 'config_review_status', '0', 0),
(5568, 0, 'config', 'config_product_count', '1', 0),
(5567, 0, 'config', 'config_admin_limit', '20', 0),
(5566, 0, 'config', 'config_catalog_limit', '15', 0),
(5565, 0, 'config', 'config_weight_class_id', '1', 0),
(5564, 0, 'config', 'config_length_class_id', '1', 0),
(5563, 0, 'config', 'config_currency_auto', '1', 0),
(5562, 0, 'config', 'config_currency', 'HKD', 0),
(5561, 0, 'config', 'config_admin_language', 'en', 0),
(5559, 0, 'config', 'config_zone_id', '696', 0),
(5560, 0, 'config', 'config_language', 'en', 0),
(5558, 0, 'config', 'config_country_id', '44', 0),
(5557, 0, 'config', 'config_layout_id', '4', 0),
(5554, 0, 'config', 'config_title', '駿豐頻譜（香港）有限公司', 0),
(5555, 0, 'config', 'config_meta_description', 'Dared', 0),
(5556, 0, 'config', 'config_template', 'jfchealth', 0),
(5553, 0, 'config', 'config_fax', '', 0),
(5552, 0, 'config', 'config_telephone', '123456789', 0),
(5551, 0, 'config', 'config_email', 'info@dared.com.hk', 0),
(5550, 0, 'config', 'config_address', 'Address 1', 0),
(5549, 0, 'config', 'config_owner', 'Dared', 0),
(5548, 0, 'config', 'config_name', 'Dared', 0),
(5646, 0, 'config', 'config_compression', '0', 0),
(5647, 0, 'config', 'config_error_display', '0', 0),
(5648, 0, 'config', 'config_error_log', '1', 0),
(5649, 0, 'config', 'config_error_filename', 'error.txt', 0),
(5650, 0, 'config', 'config_google_analytics', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2 - 3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2 - 3 Days'),
(7, 3, 'In Stock'),
(8, 3, 'Pre-Order'),
(5, 3, 'Out Of Stock'),
(6, 3, '2 - 3 Days'),
(7, 4, 'In Stock'),
(8, 4, 'Pre-Order'),
(5, 4, 'Out Of Stock'),
(6, 4, '2 - 3 Days');

-- --------------------------------------------------------

--
-- 表的结构 `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support`
--

CREATE TABLE IF NOT EXISTS `oc_support` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `is_net` int(1) DEFAULT '0',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filename1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filename2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `is_net` (`is_net`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=179 ;

--
-- 转存表中的数据 `oc_support`
--

INSERT INTO `oc_support` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`, `is_net`, `filename`, `filename1`, `filename2`) VALUES
(163, 'T-9 – Preamplifier', '', '', '', '', '', '', '', 1, 5, 'data/dared_front_high (Small).jpg', 0, 1, '0.0000', 0, 0, '2014-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2014-12-11 11:06:40', '2015-01-22 14:39:12', 0, 0, 'Mars - Catalogue.pdf', '', 'Mars - Datasheet (CES).pdf'),
(164, 'HPA-55L', '', '', '', '', '', '', '', 1, 5, 'data/File5 (Small).JPG', 0, 1, '0.0000', 0, 0, '2014-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2014-12-11 11:07:31', '2015-01-22 14:45:05', 0, 0, 'HPA-55L.pdf', '', 'HPA-55L - Datasheet (New).pdf'),
(165, 'RD-1', '', '', '', '', '', '', '', 1, 5, 'data/RD-1 2 (Small).jpg', 0, 1, '0.0000', 0, 0, '2014-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2014-12-11 16:05:39', '2015-01-22 15:23:29', 0, 0, 'RD-1 Catalogue.pdf', '', 'RD-1 - Datasheet (New).pdf'),
(167, 'S2O', '', '', '', '', '', '', '', 1, 5, 'data/S2O (Small).jpg', 0, 1, '0.0000', 0, 0, '2015-01-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-21 12:04:05', '2015-01-22 14:57:50', 0, 0, 'S2O.pdf', '', ''),
(169, 'Saturn Signature', '', '', '', '', '', '', '', 1, 5, 'data/Signature Front (Small).jpg', 0, 1, '0.0000', 0, 0, '2015-01-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-22 15:48:02', '2015-01-27 15:51:50', 0, 0, '', 'Driver.rar', 'Saturn Signature - Datasheet.pdf'),
(170, 'SP-02', '', '', '', '', '', '', '', 1, 5, 'data/SP-02 1 (Small).JPG', 0, 1, '0.0000', 0, 0, '2015-01-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-22 16:13:39', '0000-00-00 00:00:00', 0, 0, 'SP-02 Catalogue.pdf', '', 'SP-02 - Datasheet.pdf'),
(171, 'LP-100', '', '', '', '', '', '', '', 1, 5, 'data/LP-100 Front (Small).jpg', 0, 1, '0.0000', 0, 0, '2015-01-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-22 17:06:39', '0000-00-00 00:00:00', 0, 0, '', '', 'LP-100 - Datasheet.pdf'),
(172, 'DR-100', '', '', '', '', '', '', '', 1, 5, 'data/p05 (Small).jpg', 0, 1, '0.0000', 0, 0, '2015-01-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-22 17:24:13', '2015-01-27 15:52:03', 0, 0, 'DR-100 Catalogue.pdf', '', 'DR-100 - Datasheet (New).pdf'),
(173, 'MP-5BT', '', '', '', '', '', '', '', 1, 5, 'data/MP-5BT 2 (Small).jpg', 0, 1, '0.0000', 0, 0, '2015-01-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-26 13:04:52', '0000-00-00 00:00:00', 0, 0, 'MP-5BT Catalogue 2.pdf', '', 'MP-5BT - Datasheet (New).pdf'),
(174, 'T-9', '', '', '', '', '', '', '', 1, 5, 'data/img_photo01.jpg', 0, 1, '0.0000', 0, 0, '2015-01-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-26 13:32:37', '0000-00-00 00:00:00', 0, 0, '', '', 'T-9 - Datasheet (New).pdf'),
(175, 'T-2A3C', '', '', '', '', '', '', '', 1, 5, 'data/img_photo011.jpg', 0, 1, '0.0000', 0, 0, '2015-01-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-26 13:47:13', '0000-00-00 00:00:00', 0, 0, '', '', 'T-2A3C - Datasheet (New).pdf'),
(177, 'VP-845LE', '', '', '', '', '', '', '', 1, 5, 'data/VP-845 (Small).jpg', 0, 1, '0.0000', 0, 0, '2015-01-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-26 14:31:30', '0000-00-00 00:00:00', 0, 0, '', '', 'VP-845LE - Datasheet.pdf'),
(178, 'LP-1', '', '', '', '', '', '', '', 1, 5, 'data/LP-1  2 (Small).jpg', 0, 1, '0.0000', 0, 0, '2015-01-26', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2015-01-27 17:42:22', '2015-02-09 12:18:10', 0, 0, '', '', 'LP-1 - Datasheet.pdf');

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_support_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_description`
--

CREATE TABLE IF NOT EXISTS `oc_support_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_support_description`
--

INSERT INTO `oc_support_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(164, 1, 'HPA-55L - Protable Headphone Amplifier', '', '', '', ''),
(165, 1, 'RD-1 - Retro Tabletop Radio w. DAB/RDS/Wireless/ USB DAC', '', '', '', ''),
(163, 1, 'MARS - Hybrid Vacuum Tube Amplifier', '', '', '', ''),
(167, 1, 'S2O - Signal Source Optimizer', '', '', '', ''),
(169, 1, 'Saturn Signature - Class A Integrated Amplifier (Single KT-150)', '', '', '', ''),
(170, 1, 'SP-02 - 2 Way Bookshelf Loudspeaker System', '', '', '', ''),
(171, 1, 'LP-100 - MM/MC Audiophile Grade Tube Phono Amplifier', '', '', '', ''),
(172, 1, 'DR-100 - Tube FM/DAB/RDS Receiver', '', '', '', ''),
(173, 1, 'MP-5BT - Hybrid Int. Amp. &amp; Preamp w. Wireless/USB DAC', '', '', '', ''),
(174, 1, 'T-9 - Class A Full Function Vacuum Tube Preamplifier', '', '', '', ''),
(175, 1, 'T-2A3C - 70 Watt Block Power Amplifier (Push Pull)', '', '', '', ''),
(177, 1, 'VP-845LE - Integrated Amplifier (15th Anniversary Edition)', '', '', '', ''),
(178, 1, 'LP-1 - MM/MC Phono Pre-amplifier', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_discount`
--

CREATE TABLE IF NOT EXISTS `oc_support_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=441 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_filter`
--

CREATE TABLE IF NOT EXISTS `oc_support_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_support_filter`
--

INSERT INTO `oc_support_filter` (`product_id`, `filter_id`) VALUES
(163, 0),
(164, 0),
(165, 0),
(167, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(177, 0),
(178, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_image`
--

CREATE TABLE IF NOT EXISTS `oc_support_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2402 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_option`
--

CREATE TABLE IF NOT EXISTS `oc_support_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_support_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_profile`
--

CREATE TABLE IF NOT EXISTS `oc_support_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_support_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_related`
--

CREATE TABLE IF NOT EXISTS `oc_support_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_support_related`
--

INSERT INTO `oc_support_related` (`product_id`, `related_id`) VALUES
(0, 163),
(0, 164),
(0, 165),
(0, 167),
(0, 169),
(0, 170),
(0, 171),
(0, 172),
(0, 173),
(0, 174),
(0, 175),
(0, 177),
(0, 178),
(163, 0),
(164, 0),
(165, 0),
(167, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(177, 0),
(178, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_reward`
--

CREATE TABLE IF NOT EXISTS `oc_support_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=571 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_special`
--

CREATE TABLE IF NOT EXISTS `oc_support_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=440 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_support_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_support_to_category`
--

INSERT INTO `oc_support_to_category` (`product_id`, `category_id`) VALUES
(163, 92),
(164, 91),
(165, 96),
(167, 91),
(169, 92),
(170, 94),
(171, 95),
(172, 93),
(173, 93),
(174, 90),
(175, 90),
(177, 90),
(178, 95);

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_support_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_support_to_download`
--

INSERT INTO `oc_support_to_download` (`product_id`, `download_id`) VALUES
(163, 0),
(164, 0),
(165, 0),
(167, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(177, 0),
(178, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_support_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_support_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_support_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_support_to_store`
--

INSERT INTO `oc_support_to_store` (`product_id`, `store_id`) VALUES
(163, 0),
(164, 0),
(165, 0),
(167, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(177, 0),
(178, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- 表的结构 `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- 转存表中的数据 `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (17.5%)', '17.5000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- 表的结构 `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- 转存表中的数据 `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- 表的结构 `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=824 ;

--
-- 转存表中的数据 `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(730, 'manufacturer_id=8', 'apple'),
(823, 'information_id=4', 'about_us');

-- --------------------------------------------------------

--
-- 表的结构 `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '74cdbcf9ab3a17027f5fa562171b35e9288cbc55', 'b8c0e6a77', '', '', 'pmw1014@163.com', '', '219.76.184.175', 1, '2014-06-29 10:56:25');

-- --------------------------------------------------------

--
-- 表的结构 `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 'a:2:{s:6:"access";a:151:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:14:"catalog/course";i:4;s:23:"catalog/course_customer";i:5;s:16:"catalog/download";i:6;s:14:"catalog/filter";i:7;s:19:"catalog/information";i:8;s:24:"catalog/mainpage_setting";i:9;s:20:"catalog/manufacturer";i:10;s:12:"catalog/news";i:11;s:14:"catalog/option";i:12;s:15:"catalog/product";i:13;s:15:"catalog/profile";i:14;s:14:"catalog/review";i:15;s:15:"catalog/support";i:16;s:18:"common/filemanager";i:17;s:13:"design/banner";i:18;s:19:"design/custom_field";i:19;s:13:"design/layout";i:20;s:14:"extension/feed";i:21;s:17:"extension/manager";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:20:"localisation/country";i:30;s:21:"localisation/currency";i:31;s:21:"localisation/geo_zone";i:32;s:21:"localisation/language";i:33;s:25:"localisation/length_class";i:34;s:25:"localisation/order_status";i:35;s:26:"localisation/return_action";i:36;s:26:"localisation/return_reason";i:37;s:26:"localisation/return_status";i:38;s:25:"localisation/stock_status";i:39;s:22:"localisation/tax_class";i:40;s:21:"localisation/tax_rate";i:41;s:25:"localisation/weight_class";i:42;s:17:"localisation/zone";i:43;s:14:"module/account";i:44;s:16:"module/affiliate";i:45;s:29:"module/amazon_checkout_layout";i:46;s:13:"module/banner";i:47;s:17:"module/bestseller";i:48;s:15:"module/carousel";i:49;s:15:"module/category";i:50;s:18:"module/ebaydisplay";i:51;s:15:"module/featured";i:52;s:13:"module/filter";i:53;s:18:"module/google_talk";i:54;s:18:"module/information";i:55;s:13:"module/latest";i:56;s:17:"module/openbaypro";i:57;s:16:"module/pp_layout";i:58;s:16:"module/slideshow";i:59;s:14:"module/special";i:60;s:12:"module/store";i:61;s:14:"module/welcome";i:62;s:14:"openbay/amazon";i:63;s:22:"openbay/amazon_listing";i:64;s:22:"openbay/amazon_product";i:65;s:16:"openbay/amazonus";i:66;s:24:"openbay/amazonus_listing";i:67;s:24:"openbay/amazonus_product";i:68;s:20:"openbay/ebay_profile";i:69;s:21:"openbay/ebay_template";i:70;s:15:"openbay/openbay";i:71;s:23:"payment/amazon_checkout";i:72;s:24:"payment/authorizenet_aim";i:73;s:21:"payment/bank_transfer";i:74;s:14:"payment/cheque";i:75;s:11:"payment/cod";i:76;s:21:"payment/free_checkout";i:77;s:22:"payment/klarna_account";i:78;s:22:"payment/klarna_invoice";i:79;s:14:"payment/liqpay";i:80;s:20:"payment/moneybookers";i:81;s:14:"payment/nochex";i:82;s:15:"payment/paymate";i:83;s:16:"payment/paypoint";i:84;s:13:"payment/payza";i:85;s:26:"payment/perpetual_payments";i:86;s:18:"payment/pp_express";i:87;s:25:"payment/pp_payflow_iframe";i:88;s:14:"payment/pp_pro";i:89;s:21:"payment/pp_pro_iframe";i:90;s:17:"payment/pp_pro_pf";i:91;s:17:"payment/pp_pro_uk";i:92;s:19:"payment/pp_standard";i:93;s:15:"payment/sagepay";i:94;s:22:"payment/sagepay_direct";i:95;s:18:"payment/sagepay_us";i:96;s:19:"payment/twocheckout";i:97;s:28:"payment/web_payment_software";i:98;s:16:"payment/worldpay";i:99;s:27:"report/affiliate_commission";i:100;s:22:"report/customer_credit";i:101;s:22:"report/customer_online";i:102;s:21:"report/customer_order";i:103;s:22:"report/customer_reward";i:104;s:24:"report/product_purchased";i:105;s:21:"report/product_viewed";i:106;s:18:"report/sale_coupon";i:107;s:17:"report/sale_order";i:108;s:18:"report/sale_return";i:109;s:20:"report/sale_shipping";i:110;s:15:"report/sale_tax";i:111;s:14:"sale/affiliate";i:112;s:12:"sale/contact";i:113;s:11:"sale/coupon";i:114;s:13:"sale/customer";i:115;s:20:"sale/customer_ban_ip";i:116;s:19:"sale/customer_group";i:117;s:10:"sale/order";i:118;s:14:"sale/recurring";i:119;s:11:"sale/return";i:120;s:12:"sale/voucher";i:121;s:18:"sale/voucher_theme";i:122;s:15:"setting/setting";i:123;s:13:"setting/store";i:124;s:16:"shipping/auspost";i:125;s:17:"shipping/citylink";i:126;s:14:"shipping/fedex";i:127;s:13:"shipping/flat";i:128;s:13:"shipping/free";i:129;s:13:"shipping/item";i:130;s:23:"shipping/parcelforce_48";i:131;s:15:"shipping/pickup";i:132;s:19:"shipping/royal_mail";i:133;s:12:"shipping/ups";i:134;s:13:"shipping/usps";i:135;s:15:"shipping/weight";i:136;s:11:"tool/backup";i:137;s:14:"tool/error_log";i:138;s:12:"total/coupon";i:139;s:12:"total/credit";i:140;s:14:"total/handling";i:141;s:16:"total/klarna_fee";i:142;s:19:"total/low_order_fee";i:143;s:12:"total/reward";i:144;s:14:"total/shipping";i:145;s:15:"total/sub_total";i:146;s:9:"total/tax";i:147;s:11:"total/total";i:148;s:13:"total/voucher";i:149;s:9:"user/user";i:150;s:20:"user/user_permission";}s:6:"modify";a:151:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:14:"catalog/course";i:4;s:23:"catalog/course_customer";i:5;s:16:"catalog/download";i:6;s:14:"catalog/filter";i:7;s:19:"catalog/information";i:8;s:24:"catalog/mainpage_setting";i:9;s:20:"catalog/manufacturer";i:10;s:12:"catalog/news";i:11;s:14:"catalog/option";i:12;s:15:"catalog/product";i:13;s:15:"catalog/profile";i:14;s:14:"catalog/review";i:15;s:15:"catalog/support";i:16;s:18:"common/filemanager";i:17;s:13:"design/banner";i:18;s:19:"design/custom_field";i:19;s:13:"design/layout";i:20;s:14:"extension/feed";i:21;s:17:"extension/manager";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:20:"localisation/country";i:30;s:21:"localisation/currency";i:31;s:21:"localisation/geo_zone";i:32;s:21:"localisation/language";i:33;s:25:"localisation/length_class";i:34;s:25:"localisation/order_status";i:35;s:26:"localisation/return_action";i:36;s:26:"localisation/return_reason";i:37;s:26:"localisation/return_status";i:38;s:25:"localisation/stock_status";i:39;s:22:"localisation/tax_class";i:40;s:21:"localisation/tax_rate";i:41;s:25:"localisation/weight_class";i:42;s:17:"localisation/zone";i:43;s:14:"module/account";i:44;s:16:"module/affiliate";i:45;s:29:"module/amazon_checkout_layout";i:46;s:13:"module/banner";i:47;s:17:"module/bestseller";i:48;s:15:"module/carousel";i:49;s:15:"module/category";i:50;s:18:"module/ebaydisplay";i:51;s:15:"module/featured";i:52;s:13:"module/filter";i:53;s:18:"module/google_talk";i:54;s:18:"module/information";i:55;s:13:"module/latest";i:56;s:17:"module/openbaypro";i:57;s:16:"module/pp_layout";i:58;s:16:"module/slideshow";i:59;s:14:"module/special";i:60;s:12:"module/store";i:61;s:14:"module/welcome";i:62;s:14:"openbay/amazon";i:63;s:22:"openbay/amazon_listing";i:64;s:22:"openbay/amazon_product";i:65;s:16:"openbay/amazonus";i:66;s:24:"openbay/amazonus_listing";i:67;s:24:"openbay/amazonus_product";i:68;s:20:"openbay/ebay_profile";i:69;s:21:"openbay/ebay_template";i:70;s:15:"openbay/openbay";i:71;s:23:"payment/amazon_checkout";i:72;s:24:"payment/authorizenet_aim";i:73;s:21:"payment/bank_transfer";i:74;s:14:"payment/cheque";i:75;s:11:"payment/cod";i:76;s:21:"payment/free_checkout";i:77;s:22:"payment/klarna_account";i:78;s:22:"payment/klarna_invoice";i:79;s:14:"payment/liqpay";i:80;s:20:"payment/moneybookers";i:81;s:14:"payment/nochex";i:82;s:15:"payment/paymate";i:83;s:16:"payment/paypoint";i:84;s:13:"payment/payza";i:85;s:26:"payment/perpetual_payments";i:86;s:18:"payment/pp_express";i:87;s:25:"payment/pp_payflow_iframe";i:88;s:14:"payment/pp_pro";i:89;s:21:"payment/pp_pro_iframe";i:90;s:17:"payment/pp_pro_pf";i:91;s:17:"payment/pp_pro_uk";i:92;s:19:"payment/pp_standard";i:93;s:15:"payment/sagepay";i:94;s:22:"payment/sagepay_direct";i:95;s:18:"payment/sagepay_us";i:96;s:19:"payment/twocheckout";i:97;s:28:"payment/web_payment_software";i:98;s:16:"payment/worldpay";i:99;s:27:"report/affiliate_commission";i:100;s:22:"report/customer_credit";i:101;s:22:"report/customer_online";i:102;s:21:"report/customer_order";i:103;s:22:"report/customer_reward";i:104;s:24:"report/product_purchased";i:105;s:21:"report/product_viewed";i:106;s:18:"report/sale_coupon";i:107;s:17:"report/sale_order";i:108;s:18:"report/sale_return";i:109;s:20:"report/sale_shipping";i:110;s:15:"report/sale_tax";i:111;s:14:"sale/affiliate";i:112;s:12:"sale/contact";i:113;s:11:"sale/coupon";i:114;s:13:"sale/customer";i:115;s:20:"sale/customer_ban_ip";i:116;s:19:"sale/customer_group";i:117;s:10:"sale/order";i:118;s:14:"sale/recurring";i:119;s:11:"sale/return";i:120;s:12:"sale/voucher";i:121;s:18:"sale/voucher_theme";i:122;s:15:"setting/setting";i:123;s:13:"setting/store";i:124;s:16:"shipping/auspost";i:125;s:17:"shipping/citylink";i:126;s:14:"shipping/fedex";i:127;s:13:"shipping/flat";i:128;s:13:"shipping/free";i:129;s:13:"shipping/item";i:130;s:23:"shipping/parcelforce_48";i:131;s:15:"shipping/pickup";i:132;s:19:"shipping/royal_mail";i:133;s:12:"shipping/ups";i:134;s:13:"shipping/usps";i:135;s:15:"shipping/weight";i:136;s:11:"tool/backup";i:137;s:14:"tool/error_log";i:138;s:12:"total/coupon";i:139;s:12:"total/credit";i:140;s:14:"total/handling";i:141;s:16:"total/klarna_fee";i:142;s:19:"total/low_order_fee";i:143;s:12:"total/reward";i:144;s:14:"total/shipping";i:145;s:15:"total/sub_total";i:146;s:9:"total/tax";i:147;s:11:"total/total";i:148;s:13:"total/voucher";i:149;s:9:"user/user";i:150;s:20:"user/user_permission";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General'),
(6, 3, 'Christmas'),
(7, 3, 'Birthday'),
(8, 3, 'General'),
(6, 4, 'Christmas'),
(7, 4, 'Birthday'),
(8, 4, 'General');

-- --------------------------------------------------------

--
-- 表的结构 `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- 表的结构 `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz'),
(1, 3, 'Kilogram', 'kg'),
(2, 3, 'Gram', 'g'),
(5, 3, 'Pound ', 'lb'),
(6, 3, 'Ounce', 'oz'),
(1, 4, 'Kilogram', 'kg'),
(2, 4, 'Gram', 'g'),
(5, 4, 'Pound ', 'lb'),
(6, 4, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- 表的结构 `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4033 ;

--
-- 转存表中的数据 `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Hi', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovar-Bilogora', 'BB', 1),
(848, 53, 'City of Zagreb', 'CZ', 1),
(849, 53, 'Dubrovnik-Neretva', 'DN', 1),
(850, 53, 'Istra', 'IS', 1),
(851, 53, 'Karlovac', 'KA', 1),
(852, 53, 'Koprivnica-Krizevci', 'KK', 1),
(853, 53, 'Krapina-Zagorje', 'KZ', 1),
(854, 53, 'Lika-Senj', 'LS', 1),
(855, 53, 'Medimurje', 'ME', 1),
(856, 53, 'Osijek-Baranja', 'OB', 1),
(857, 53, 'Pozega-Slavonia', 'PS', 1),
(858, 53, 'Primorje-Gorski Kotar', 'PG', 1),
(859, 53, 'Sibenik', 'SI', 1),
(860, 53, 'Sisak-Moslavina', 'SM', 1),
(861, 53, 'Slavonski Brod-Posavina', 'SB', 1),
(862, 53, 'Split-Dalmatia', 'SD', 1),
(863, 53, 'Varazdin', 'VA', 1),
(864, 53, 'Virovitica-Podravina', 'VP', 1),
(865, 53, 'Vukovar-Srijem', 'VS', 1),
(866, 53, 'Zadar-Knin', 'ZK', 1),
(867, 53, 'Zagreb', 'ZA', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan Laani', 'AL', 1),
(1086, 72, 'Etela-Suomen Laani', 'ES', 1),
(1087, 72, 'Ita-Suomen Laani', 'IS', 1),
(1088, 72, 'Lansi-Suomen Laani', 'LS', 1),
(1089, 72, 'Lapin Lanani', 'LA', 1),
(1090, 72, 'Oulun Laani', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1428, 97, 'Bacs-Kiskun', 'BK', 1),
(1429, 97, 'Baranya', 'BA', 1),
(1430, 97, 'Bekes', 'BE', 1),
(1431, 97, 'Bekescsaba', 'BS', 1),
(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1),
(1433, 97, 'Budapest', 'BU', 1),
(1434, 97, 'Csongrad', 'CS', 1),
(1435, 97, 'Debrecen', 'DE', 1),
(1436, 97, 'Dunaujvaros', 'DU', 1),
(1437, 97, 'Eger', 'EG', 1),
(1438, 97, 'Fejer', 'FE', 1),
(1439, 97, 'Gyor', 'GY', 1),
(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1),
(1441, 97, 'Hajdu-Bihar', 'HB', 1),
(1442, 97, 'Heves', 'HE', 1),
(1443, 97, 'Hodmezovasarhely', 'HO', 1),
(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1),
(1445, 97, 'Kaposvar', 'KA', 1),
(1446, 97, 'Kecskemet', 'KE', 1),
(1447, 97, 'Komarom-Esztergom', 'KO', 1),
(1448, 97, 'Miskolc', 'MI', 1),
(1449, 97, 'Nagykanizsa', 'NA', 1),
(1450, 97, 'Nograd', 'NO', 1),
(1451, 97, 'Nyiregyhaza', 'NY', 1),
(1452, 97, 'Pecs', 'PE', 1),
(1453, 97, 'Pest', 'PS', 1),
(1454, 97, 'Somogy', 'SO', 1),
(1455, 97, 'Sopron', 'SP', 1),
(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1),
(1457, 97, 'Szeged', 'SZ', 1),
(1458, 97, 'Szekesfehervar', 'SE', 1),
(1459, 97, 'Szolnok', 'SL', 1),
(1460, 97, 'Szombathely', 'SM', 1),
(1461, 97, 'Tatabanya', 'TA', 1),
(1462, 97, 'Tolna', 'TO', 1),
(1463, 97, 'Vas', 'VA', 1),
(1464, 97, 'Veszprem', 'VE', 1),
(1465, 97, 'Zala', 'ZA', 1),
(1466, 97, 'Zalaegerszeg', 'ZZ', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1),
(1820, 117, 'Aluksnes Rajons', 'ALU', 1),
(1821, 117, 'Balvu Rajons', 'BAL', 1),
(1822, 117, 'Bauskas Rajons', 'BAU', 1),
(1823, 117, 'Cesu Rajons', 'CES', 1),
(1824, 117, 'Daugavpils Rajons', 'DGR', 1),
(1825, 117, 'Dobeles Rajons', 'DOB', 1),
(1826, 117, 'Gulbenes Rajons', 'GUL', 1),
(1827, 117, 'Jekabpils Rajons', 'JEK', 1),
(1828, 117, 'Jelgavas Rajons', 'JGR', 1),
(1829, 117, 'Kraslavas Rajons', 'KRA', 1),
(1830, 117, 'Kuldigas Rajons', 'KUL', 1),
(1831, 117, 'Liepajas Rajons', 'LPR', 1),
(1832, 117, 'Limbazu Rajons', 'LIM', 1),
(1833, 117, 'Ludzas Rajons', 'LUD', 1),
(1834, 117, 'Madonas Rajons', 'MAD', 1),
(1835, 117, 'Ogres Rajons', 'OGR', 1),
(1836, 117, 'Preilu Rajons', 'PRE', 1),
(1837, 117, 'Rezeknes Rajons', 'RZR', 1),
(1838, 117, 'Rigas Rajons', 'RGR', 1),
(1839, 117, 'Saldus Rajons', 'SAL', 1),
(1840, 117, 'Talsu Rajons', 'TAL', 1),
(1841, 117, 'Tukuma Rajons', 'TUK', 1),
(1842, 117, 'Valkas Rajons', 'VLK', 1),
(1843, 117, 'Valmieras Rajons', 'VLM', 1),
(1844, 117, 'Ventspils Rajons', 'VSR', 1),
(1845, 117, 'Daugavpils', 'DGV', 1),
(1846, 117, 'Jelgava', 'JGV', 1),
(1847, 117, 'Jurmala', 'JUR', 1),
(1848, 117, 'Liepaja', 'LPK', 1),
(1849, 117, 'Rezekne', 'RZK', 1),
(1850, 117, 'Riga', 'RGA', 1),
(1851, 117, 'Ventspils', 'VSL', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'JO', 1),
(1972, 129, 'Kedah', 'KE', 1),
(1973, 129, 'Kelantan', 'KL', 1),
(1974, 129, 'Labuan', 'LA', 1),
(1975, 129, 'Melaka', 'ME', 1),
(1976, 129, 'Negeri Sembilan', 'NS', 1),
(1977, 129, 'Pahang', 'PA', 1),
(1978, 129, 'Perak', 'PE', 1),
(1979, 129, 'Perlis', 'PR', 1),
(1980, 129, 'Pulau Pinang', 'PP', 1),
(1981, 129, 'Sabah', 'SA', 1),
(1982, 129, 'Sarawak', 'SR', 1),
(1983, 129, 'Selangor', 'SE', 1),
(1984, 129, 'Terengganu', 'TE', 1),
(1985, 129, 'Wilayah Persekutuan', 'WP', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3031, 197, 'Ascension', 'A', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3033, 197, 'Tristan da Cunha', 'T', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakir', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkasy', 'CK', 1),
(3481, 220, 'Chernihiv', 'CH', 1),
(3482, 220, 'Chernivtsi', 'CV', 1),
(3483, 220, 'Crimea', 'CR', 1),
(3484, 220, 'Dnipropetrovs''k', 'DN', 1),
(3485, 220, 'Donets''k', 'DO', 1),
(3486, 220, 'Ivano-Frankivs''k', 'IV', 1),
(3487, 220, 'Kharkiv Kherson', 'KL', 1),
(3488, 220, 'Khmel''nyts''kyy', 'KM', 1),
(3489, 220, 'Kirovohrad', 'KR', 1),
(3490, 220, 'Kiev', 'KV', 1),
(3491, 220, 'Kyyiv', 'KY', 1),
(3492, 220, 'Luhans''k', 'LU', 1),
(3493, 220, 'L''viv', 'LV', 1),
(3494, 220, 'Mykolayiv', 'MY', 1),
(3495, 220, 'Odesa', 'OD', 1),
(3496, 220, 'Poltava', 'PO', 1),
(3497, 220, 'Rivne', 'RI', 1),
(3498, 220, 'Sevastopol', 'SE', 1),
(3499, 220, 'Sumy', 'SU', 1),
(3500, 220, 'Ternopil''', 'TE', 1),
(3501, 220, 'Vinnytsya', 'VI', 1),
(3502, 220, 'Volyn''', 'VO', 1),
(3503, 220, 'Zakarpattya', 'ZK', 1),
(3504, 220, 'Zaporizhzhya', 'ZA', 1),
(3505, 220, 'Zhytomyr', 'ZH', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3972, 222, 'Isle of Man', 'IOM', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4019, 243, 'Kosovo', 'KM', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- 转存表中的数据 `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
